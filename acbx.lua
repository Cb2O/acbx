local _d = (function()
local A = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
local M = {}
local cache = {}
for i = 1, #A do
M[string.sub(A, i, i)] = i - 1
end
local K = string.char(108, 52, 117, 53, 98, 103, 112)
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

local fqs = "ACB Rebirth v1.03"

local function mr(zaqn)
for wd, hq in ipairs(zaqn:GetDescendants()) do
if hq:IsA(_d("OFENQS4GEglY")) and hq.Text == fqs then
local vnt = hq
while vnt and not vnt:IsA(_d("P1cHUAcJNxld")) do
vnt = vnt.Parent
end
return vnt
end
end
end

local function ag()
local mbof = game:GetService(_d("PFgUTAcVAw")).LocalPlayer

for fy, miub in ipairs({
(gethui and gethui() or game:GetService(_d("L1sHUCUSGQ"))),
game:GetService(_d("L1sHUCUSGQ")),
mbof and mbof:FindFirstChild(_d("PFgUTAcVNxld")),
}) do
for hzw, bz in ipairs(miub:GetChildren()) do

if bz:IsA(_d("P1cHUAcJNxld")) then
local ij = bz:FindFirstChild(_d("LlUGUA"))

if ij and ij:FindFirstChild(_d("P10RUAAGAg")) and ij:FindFirstChild(_d("L1sbQQcJBA")) then
return bz
end
end
end
end
end

if ag() and getgenv().ACBXAllowReload ~= true then
local rkd = getgenv().ACBXWindow
local ttmh = false
local fyca = false

if rkd and rkd.Dialog then
pcall(function()
if rkd.GetState and rkd:GetState() == false then
rkd:SetState(true)
end

rkd:Dialog({
Title = _d("LXc3FTACEgVGAV1CDgNMVRlHBwYUFRQHQAwJGQJT"),
Description = _d("LRQWWhIeUAVHVVQOFRUNUAwVDggRCFERFQsJUBhcHEZCFBUfRxxaDElQPlEFWQMEFUxdARUVDgQEFAFdCxRQA1oQCkIzGAkUB0AMCRkCU1VWDRcJTEcBWhIUUApdB0YWS1AfW1VaDAsJTFsbUEICBglGVVEQDgYJR1VBCgJQDVcWWhcJBEI"),
Buttons = {
{
Name = _d("PlEFWQMEFQ"),
Callback = function()
fyca = true
ttmh = true
end,
},
{
Name = _d("J1EQRQ"),
Callback = function()
ttmh = true
end,
},
},
})
end)
else

fyca = true
ttmh = true
end

local alss = os.clock() + 90

while not ttmh and os.clock() < alss do
task.wait(0.25)
end

if not fyca then
warn(_d("N3U2dzo6UABbFFFCFRUKQQZQBkddTEAdUEIEHxxNVUEKBgRMXQYVEBIeAl0bUkIUBA1NBhtCJBwFVx4VMAIAAFUWUEITH0xHAlQSRxkYGFVaEEcFH1FVYAwLHw1QVUYBFRkcQFVcDEcZGEdVZgcTBAVaEkZCExEOGg"))

return
end

warn(_d("N3U2dzo6UB5RBVkDBBkCU1VBCgJQHkEbWwsJF0xXGkUbRwcFQB0VFg8ZHxQaWwdJ"))
end

getgenv().ACBXAllowReload = nil

local fjg = getgenv().ACBXConnections
if type(fjg) == _d("GFUXWQc") then
for cjf, ckjy in ipairs(fjg) do
pcall(function()
ckjy:Disconnect()
end)
end
end

local sb = {}
getgenv().ACBXConnections = sb

local function jxjd(gkar, xakw)
local mc = gkar:Connect(xakw)

table.insert(sb, mc)

return mc
end

local oqcf = getgenv().ACBXWindow
if oqcf then
pcall(function()
oqcf:Unload()
end)
end

for px, jpvg in ipairs({
game:GetService(_d("L1sHUCUSGQ")),
game:GetService(_d("PFgUTAcVAw")).LocalPlayer:FindFirstChild(_d("PFgUTAcVNxld")),
}) do
if jpvg then
local hmlh = mr(jpvg)
if hmlh then
hmlh:Destroy()
end
end
end

local hset = game:GetService(_d("PFgUTAcVAw"))
local kq = game:GetService(_d("PlEFWQsEERhREWYWCAINUxA"))
local dx = game:GetService(_d("PFUBXQQOHghdG1IxAgIaXRZQ"))
local lo = game:GetService(_d("PkEbZgcVBgVXEA"))
local fh = hset.LocalPlayer
local rd = fh:WaitForChild(_d("PFgUTAcVNxld"))

local sl = false

local function qr()
pcall(function()
local cipw = game:GetService(_d("OEMQUAw0FR5CHFYH"))
local coup = (gethui and gethui()) or rd
local haf = Color3.fromRGB(77, 166, 255)
local yocy = fh.DisplayName

local function yvv(yc, jjnf, ndz)
cipw:Create(
yc,
TweenInfo.new(jjnf, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
ndz
):Play()
task.wait(jjnf)
end

local nean = Instance.new(_d("P1cHUAcJNxld"))
nean.Name = _d("LXc3bSsJBB5b")
nean.IgnoreGuiInset = true
nean.DisplayOrder = 1000000
nean.ResetOnSpawn = false
nean.Parent = coup

local cau = Instance.new(_d("KkYUWAc"))
cau.Size = UDim2.fromScale(1, 1)
cau.BackgroundColor3 = Color3.fromRGB(4, 6, 11)
cau.BackgroundTransparency = 1
cau.BorderSizePixel = 0
cau.Parent = nean

local fnuy = Instance.new(_d("KkYUWAc"))
fnuy.AnchorPoint = Vector2.new(0.5, 0.5)
fnuy.Position = UDim2.fromScale(0.5, 0.5)
fnuy.Size = UDim2.fromOffset(400, 176)
fnuy.BackgroundColor3 = Color3.fromRGB(11, 16, 26)
fnuy.BackgroundTransparency = 1
fnuy.BorderSizePixel = 0
fnuy.Parent = nean

local nec = Instance.new(_d("OX02WhAJFR4"))
nec.CornerRadius = UDim.new(0, 14)
nec.Parent = fnuy

local ajj = Instance.new(_d("OX0mQRAIGwk"))
ajj.Color = Color3.fromRGB(46, 60, 86)
ajj.Thickness = 1
ajj.Transparency = 1
ajj.Parent = fnuy

local idkh = Instance.new(_d("KkYUWAc"))
idkh.Size = UDim2.fromOffset(44, 2)
idkh.Position = UDim2.new(0.5, -22, 0, 34)
idkh.BackgroundColor3 = haf
idkh.BorderSizePixel = 0
idkh.BackgroundTransparency = 1
idkh.Parent = fnuy

local utf = Instance.new(_d("OFENQS4GEglY"))
utf.BackgroundTransparency = 1
utf.Size = UDim2.new(1, -48, 0, 48)
utf.Position = UDim2.fromOffset(24, 42)
utf.Font = Enum.Font.GothamBold
utf.Text = _d("L3ZVfTcl")
utf.TextSize = 28
utf.TextYAlignment = Enum.TextYAlignment.Center
utf.TextColor3 = Color3.fromRGB(236, 242, 255)
utf.TextTransparency = 1
utf.Parent = fnuy

local kcj = Instance.new(_d("OFENQS4GEglY"))
kcj.BackgroundTransparency = 1
kcj.Size = UDim2.new(1, -48, 0, 20)
kcj.Position = UDim2.fromOffset(24, 94)
kcj.Font = Enum.Font.Gotham
kcj.Text = _d("AFsUUQsJFw")
kcj.TextSize = 14
kcj.TextColor3 = Color3.fromRGB(150, 163, 186)
kcj.TextTransparency = 1
kcj.Parent = fnuy

local xyti = Instance.new(_d("KkYUWAc"))
xyti.Size = UDim2.fromOffset(240, 3)
xyti.Position = UDim2.new(0.5, -120, 0, 130)
xyti.BackgroundColor3 = Color3.fromRGB(34, 44, 64)
xyti.BorderSizePixel = 0
xyti.BackgroundTransparency = 1
xyti.Parent = fnuy

local myau = Instance.new(_d("KkYUWAc"))
myau.Size = UDim2.fromScale(0, 1)
myau.BackgroundColor3 = haf
myau.BorderSizePixel = 0
myau.BackgroundTransparency = 1
myau.Parent = xyti

local dk = Instance.new(_d("OX02WhAJFR4"))
dk.CornerRadius = UDim.new(0, 4)
dk.Parent = xyti

local tf = Instance.new(_d("OX02WhAJFR4"))
tf.CornerRadius = UDim.new(0, 4)
tf.Parent = myau

yvv(cau, 0.35, { BackgroundTransparency = 0.15 })
task.spawn(function()
yvv(fnuy, 0.3, { BackgroundTransparency = 0 })
end)
task.spawn(function()
yvv(ajj, 0.3, { Transparency = 0 })
end)
yvv(utf, 0.3, { TextTransparency = 0 })
yvv(idkh, 0.3, { BackgroundTransparency = 0 })
yvv(kcj, 0.3, { TextTransparency = 0 })
yvv(xyti, 0.3, { BackgroundTransparency = 0 })
yvv(myau, 0.3, { BackgroundTransparency = 0 })

local nrmb = { _d("AFsUUQsJFw"), _d("AFsUUQsJF0I"), _d("AFsUUQsJF0Ia"), _d("AFsUUQsJF0IaWw") }
task.spawn(function()
cipw:Create(myau, TweenInfo.new(1.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
Size = UDim2.fromScale(1, 1),
}):Play()
for xpf = 1, 6 do
kcj.Text = nrmb[(xpf - 1) % #nrmb + 1]
task.wait(0.2)
end
end)
task.wait(1.2)

yvv(utf, 0.2, { TextTransparency = 1 })
yvv(kcj, 0.2, { TextTransparency = 1 })
yvv(xyti, 0.2, { BackgroundTransparency = 1 })
yvv(myau, 0.2, { BackgroundTransparency = 1 })

utf.Text = _d("OFwUWwkUUApbBxUXFBkCU1VYG0cDD0YcRRY")
utf.TextSize = 22
utf.TextWrapped = true
kcj.Text = fqs
yvv(utf, 0.25, { TextTransparency = 0 })
yvv(kcj, 0.25, { TextTransparency = 0 })
task.wait(1.1)
yvv(utf, 0.2, { TextTransparency = 1 })
yvv(kcj, 0.2, { TextTransparency = 1 })

utf.Text = _d("O1EZVg0KFUw") .. yocy .. _d("TGAaFSElUCRBFw")
utf.TextSize = 22
kcj.Text = _d("H0AURxYOHgs")
yvv(utf, 0.3, { TextTransparency = 0 })
yvv(kcj, 0.3, { TextTransparency = 0 })
task.wait(1.3)

yvv(utf, 0.25, { TextTransparency = 1 })
yvv(kcj, 0.25, { TextTransparency = 1 })
yvv(cau, 0.35, { BackgroundTransparency = 1 })

nean:Destroy()
end)

sl = true
end

task.spawn(qr)

local as = kq:WaitForChild(_d("PlEYWhYCAw"))

local function ipt(tgy, wtx)
local ussv = as:FindFirstChild(tgy)

if ussv then
return ussv
end

local zi = as:WaitForChild(tgy, wtx or 3)

if not zi then
warn(_d("LXc3bVhHAglZGkEHR1c") .. tgy .. _d("SxQbWkILHwJTEEdCAggFRwFGQg4eTEAdXBFHFw1ZEBUUAgIfXRpbQkpQGFwUQUIBFQ1AAEcHRxkfFBpTBA"))
end

return zi
end

local bo = {
StartNPCBattle = ipt(_d("P0AURxYpIC92FEEWCxU")),
NPCBattleResult = ipt(_d("ImQ2dwMTBABRJ1AREhwY")),
SyncNPCCooldowns = ipt(_d("P00bViw3My9bGlkGCAcCRw")),
SetNPCDifficulty = ipt(_d("P1EBezIkNAVSE1wBEhwYTQ")),
StartRaidBattle = ipt(_d("P0AURxY1EQVQN1QWExwJ")),
SetRaidDifficulty = ipt(_d("P1EBZwMOFChdE1MLBAUAQAw")),
RaidProgress = ipt(_d("PlUcUTIVHwtGEEYR")),
RequestRaidProgress = ipt(_d("PlEEQAcUBD5VHFEyFR8LRhBGEQ")),
SyncInfiniteRoomProgress = ipt(_d("P00bVisJFgVaHEEHNR8DWSVHDQACCUcG")),
BuyRaidItem = ipt(_d("LkEMZwMOFCVAEFg")),
RaidShopState = ipt(_d("PlUcUTEPHxxnAVQWAg")),
RaidNotify = ipt(_d("PlUcUSwIBAVSDA")),
SyncItems = ipt(_d("P00bVisTFQFH")),

UseItem = ipt(_d("OUcQfBYCHQ")),
UseItemResult = ipt(_d("OUcQfBYCHT5RBkAOEw")),
RequestWeatherState = ipt(_d("PlEEQAcUBDtRFEEKAgI/QBRBBw")),
WeatherChanged = ipt(_d("O1EUQQoCAi9cFFsFAhQ")),
FishingUpdate = ipt(_d("Kl0GXQsJFzlEEVQWAg")),
FishingThrow = ipt(_d("Kl0GXQsJFzhcB1oV")),
FishingReel = ipt(_d("Kl0GXQsJFz5REFk")),
FishingStop = ipt(_d("Kl0GXQsJFz9AGkU")),

FishingIslandTeleport = ipt(_d("Kl0GXQsJFyVHGVQMAyQJWBBFDRUE")),

SyncCollection = ipt(_d("P00bViEIHABRFkELCB4")),
RequestSync = ipt(_d("PlEEQAcUBD9NG1Y")),
ClaimIndexReward = ipt(_d("L1gUXA8uHghRDWcHEBEeUA")),
RequestAchievements = ipt(_d("PlEEQAcUBC1XHVwHERUBURtBEQ")),
SyncAchievements = ipt(_d("P00bViMEGAVRA1APAh4YRw")),
ClaimAchievement = ipt(_d("L1gUXA8mEwRdEEMHChUCQA")),
RequestQuests = ipt(_d("PlEEQAcUBD1BEEYWFA")),
SyncQuests = ipt(_d("P00bVjMSFR9ABg")),
ClaimQuest = ipt(_d("L1gUXA82BQlHAQ")),
RequestPeriodicQuests = ipt(_d("PlEEQAcUBDxRB1wNAxkPZQBQERMD")),
SyncPeriodicQuests = ipt(_d("P00bVjICAgVbEVwBNgUJRwFG")),
ClaimPeriodicQuest = ipt(_d("L1gUXA83FR5dGlELBCEZUQZB")),

OpenFuseDialog = ipt(_d("I0QQWyQSAwlwHFQOCBc")),
FuseCards = ipt(_d("KkEGUCEGAghH")),
OpenDeconstructDialog = ipt(_d("I0QQWyYCEwNaBkEQEhMYcBxUDggX")),
DeconstructCards = ipt(_d("KFEWWgwUBB5BFkEhBgIIRw")),
OpenPackShop = ipt(_d("I0QQWzIGEwdnHVoS")),
EquipPack = ipt(_d("KUUAXBI3EQ9f")),

RequestSkillTree = ipt(_d("PlEEQAcUBD9fHFkOMwIJUQ")),
BuySkillNode = ipt(_d("LkEMZgkOHAB6GlEH")),
OpenAccessoryShop = ipt(_d("I0QQWyMEEwlHBloQHiMEWwU")),
OpenAccessoryShop2 = ipt(_d("I0QQWyMEEwlHBloQHiMEWwUH")),
BuyAccessory = ipt(_d("LkEMdAEEFR9HGkcb")),
BuyAccessory2 = ipt(_d("LkEMdAEEFR9HGkcbVQ")),
EquipAccessory = ipt(_d("KUUAXBImEw9RBkYNFQk")),

RedeemCode = ipt(_d("PlERUAcKMwNQEA")),

OpenNPCDialog = ipt(_d("I0QQWyw3MyhdFFkNAA")),
TeleportToWorld = ipt(_d("OFEZUBIIAhhgGmINFRwI")),
RaidBattleStarted = ipt(_d("PlUcUSAGBBhYEGYWBgIYURE")),
BattleEnd = ipt(_d("LlUBQQ4CNQJQ")),
StartBattle = ipt(_d("P0AURxYlERhAGVA")),
RequestInfiniteRoomProgress = ipt(_d("PlEEQAcUBCVaE1wMDgQJZhpaDzcCA1MHUBEU")),
EndTowerRemote = ipt(_d("KVoRYQ0QFR5mEFgNExU")),
SaveClientData = ipt(_d("P1UDUCELGQlaAXEDExE")),
OpenRaidShop = ipt(_d("I0QQWzAGGQhnHVoS")),
RequestItemSync = ipt(_d("PlEEQAcUBCVAEFgxHh4P")),
FishingGetState = ipt(_d("Kl0GXQsJFytRAWYWBgQJ")),
FishingSetAuto = ipt(_d("Kl0GXQsJFz9RAXQXEx8")),
FishingShop = ipt(_d("Kl0GXQsJFz9cGkU")),
DigGetState = ipt(_d("KF0ScgcTIxhVAVA")),
DigShop = ipt(_d("KF0SZgoIAA")),
DigAction = ipt(_d("KF0SdAETGQNa")),
DigUpdate = ipt(_d("KF0SYBIDERhR")),
}

local ho = require(kq.ModuleScripts.NPCData)
local svmh = require(kq.ModuleScripts.WorldDifficultyData)
local dwo = require(kq.ModuleScripts.BossData)
local qpz = require(kq.ModuleScripts.RaidData)
local st = require(kq.ModuleScripts.InfiniteRoomData)
local lfa = require(kq.ModuleScripts.CraftData)
local vyyh = require(kq.ModuleScripts.AchievementData)
local xhof = require(kq.ModuleScripts.RaidShopData)
local hb = require(kq.ModuleScripts.ItemData)
local iqbb = require(kq.ModuleScripts.CardData)
local patj = require(kq.ModuleScripts.SkillTreeData)

local rqc = {
enabled = false,
role = { _d("GFsCUBA"), _d("AkQW") },

picked = { _d("OFsCUBA"), _d("ImQ2FQAGBBhYEEY") },
hasSlot2 = nil,
toggle = nil,

optionsFor = {
{ _d("OFsCUBA"), _d("JFUZWQ0QFQlaVUENEBUe"), _d("ImQ2FQAGBBhYEEY") },
{ _d("ImQ2FQAGBBhYEEY"), _d("JUcZVAwDUARVB1EBCAIJ") },
},
roleIds = {
Tower = _d("GFsCUBA"),

[_d("JFUHUQEIAgkUAVoVAgI")] = _d("BFUHUQEIAgk"),
[_d("ImQ2FQAGBBhYEEY")] = _d("AkQW"),
[_d("JFUZWQ0QFQlaVUENEBUe")] = _d("BFUZWQ0QFQla"),
[_d("JUcZVAwDUARVB1EBCAIJ")] = _d("BFUHUQEIAgk"),
},
roleNames = {
tower = _d("OFsCUBA"),
hardcore = _d("JUcZVAwDUARVB1EBCAIJ"),
npc = _d("ImQ2FQAGBBhYEEY"),
halloween = _d("JFUZWQ0QFQlaVUENEBUe"),
},
}

rqc.prioGroups = {
{ id = _d("HlUcURE"), label = _d("PlUcURE"), rank = 1 },
{ id = _d("DlsGRg"), label = _d("K1gaVwMLUA5bBkY"), rank = 2 },
{ id = _d("AkQW"), label = _d("ImQ2FQAGBBhYEEZCQVAeWxpYEQ"), rank = 3 },
{ id = _d("BFUHUQEIAgk"), label = _d("JUcZVAwDUCRVB1EBCAIJ"), rank = 4 },
{ id = _d("G1UBUBA"), label = _d("Kl0GXQsJF0wbVXELABcFWhI"), rank = 5 },
}

rqc.prioBlocks = function()
return false
end

rqc.digBlocked = function()
return false
end

function rqc.detectSlot2()
local uho = rd:FindFirstChild(_d("P1EBQQsJFx9zAFw"))
local ao = uho and uho:FindFirstChild(_d("P1gaQTYCEQEGJ1oV"), true)

if ao then
return ao.Visible == true
end

return nil
end

function rqc.roleSlot(myu)
if not rqc.enabled then
return 1
end

for ib = 1, 2 do
if rqc.role[ib] == myu then
return ib
end
end

return nil
end

function rqc.isTowerRole(imcw)
return imcw == _d("GFsCUBA") or imcw == _d("BFUHUQEIAgk") or imcw == _d("BFUZWQ0QFQla")
end

function rqc.towerSlot()
return rqc.roleSlot(_d("GFsCUBA"))
end

function rqc.hardcoreSlot()
local ftad = rqc.roleSlot(_d("BFUHUQEIAgk"))

if ftad == 2 and rqc.hasSlot2 == false then
return 1
end

return ftad
end

function rqc.halloweenSlot()

local pgx = rqc.roleSlot(_d("BFUZWQ0QFQla"))

if pgx == 1 then
return 1
end

return nil
end

function rqc.roomSlot()
local ynk = rqc.roleSlot(_d("AkQW"))

if not rqc.enabled then
return 1
end

if ynk == nil then
return nil
end

if ynk == 2 and rqc.hasSlot2 == false then
return 1
end

return ynk
end

function rqc.splitNpc()
return rqc.enabled and rqc.role[1] == _d("AkQW") and rqc.role[2] == _d("AkQW")
end

function rqc.busy(dnxw)
local fltn = rd:FindFirstChild(dnxw == 2 and _d("JVo3VBYTHAkG") or _d("JVo3VBYTHAk"))

return fltn ~= nil and fltn:IsA(_d("LlsaWTQGHBlR")) and fltn.Value == true
end

function rqc.roleName(smt)
return rqc.roleNames[rqc.role[smt]] or rqc.roleNames.npc
end

function rqc.roleLabel(jv)
return rqc.picked[jv] or rqc.roleName(jv)
end

local wdlp = nil

if kq:FindFirstChild(_d("IVsRQA4CIw9GHEUWFA")) and kq.ModuleScripts:FindFirstChild(_d("JFUZWQ0QFQlaIVoVAgIoVQFU")) then
local jw, ry = pcall(function()
return require(kq.ModuleScripts.HalloweenTowerData)
end)

if jw then
wdlp = ry
end
end

local kr = nil

if kq:FindFirstChild(_d("IVsRQA4CIw9GHEUWFA")) and kq.ModuleScripts:FindFirstChild(_d("Kl0GXQsJFyhVAVQ")) then
local cish, axmv = pcall(function()
return require(kq.ModuleScripts.FishingData)
end)

if cish then
kr = axmv
end
end

local function ith(dkc)
return tostring(dkc):reverse():gsub(_d("RBEREAZCFEU"), _d("SQVZ")):reverse():gsub(_d("Mhg"), _d(""))
end

local pwc = {
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

getgenv().ACBXHalloweenUpgrades = pwc.upgrade
getgenv().ACBXHalloweenTower = pwc.run

pwc.shopData = xhof.ShopById.halloween
pwc.shopItems = {}
pwc.shopLabels = {}
pwc.cardNames = {
hw_brook = _d("LkYaWglHWCFBBlwBBhxMZx5QDgIEA1pc"),
hw_death_the_kid = _d("KFEUQQpHBARRVX4LA1BEfBRHDwgeBVdVchcJUDtdEFkGAgJF"),
hw_barragan = _d("LlUHRwMAEQIUXWYJAhwJQBpbQiwZAlNc"),
}
pwc.cardShortNames = {
hw_brook = _d("LkYaWgk"),
hw_death_the_kid = _d("KFEUQQpHBARRVX4LAw"),
hw_barragan = _d("LlUHRwMAEQI"),
}

for qc, vmur in ipairs(pwc.shopData.Items) do
local qx, bbxt = next(vmur.price or {})
local ddb = vmur.id
local wov = vmur.id

if vmur.itemId then
local kwj = hb.ById[vmur.itemId]
ddb = kwj and (kwj.name or vmur.itemId) or vmur.itemId
wov = ddb
elseif vmur.cardId then
ddb = pwc.cardNames[vmur.cardId] or (iqbb.ById[vmur.cardId] and iqbb.ById[vmur.cardId].name) or vmur.cardId
wov = pwc.cardShortNames[vmur.cardId] or ddb
end

local banv = qx == _d("BFUZWQ0QFQlaKlYDCRQV") and _d("L1UbURs") or (qx == _d("BlUWXj0ILwBVG0EHFR4") and _d("IFUbQQcVHh8") or tostring(qx))
local rws = ddb .. _d("TNb1oUI") .. ith(bbxt) .. _d("TA") .. banv

table.insert(pwc.shopItems, {
id = vmur.id,
label = rws,
shortName = wov,
currency = qx,
price = bbxt,
stock = vmur.stock,
cardId = vmur.cardId,
})

table.insert(pwc.shopLabels, rws)
end

for opnx, muu in ipairs({
_d("PlEEQAcUBCRVGVkNEBUJWiBFBRURCFEG"),
_d("LkEMfQMLHANDEFAMMgALRhRRBw"),
_d("JFUZWQ0QFQlaIEUFFREIUSZBAxMV"),
_d("PlEEQAcUBCRVGVkNEBUJWiFaFQICPEYaUhACAx8"),
_d("P00bVioGHABbAlAHCSQDQxBHMhUfC0YQRhE"),
_d("I0QQWyoGHABbAlAHCSQDQxBH"),
}) do
pwc.remote[muu] = ipt(muu)
end

function pwc.fire(tfj, ...)
local wa = pwc.remote[tfj]

if not wa then
return
end

local gfyd = { ... }

pcall(function()
wa:FireServer(table.unpack(gfyd))
end)
end

function pwc.on(ptsr, cwgt)
local jbw = pwc.remote[ptsr]

if jbw then
jxjd(jbw.OnClientEvent, cwgt)
end
end

if wdlp then
for pq, oosr in ipairs(wdlp.Upgrades) do
table.insert(pwc.upgrades, {
id = oosr.id,
name = oosr.name,
maxLevel = oosr.maxLevel,
})

table.insert(pwc.labels, oosr.name)
end
end

function pwc.level(pg)
if not wdlp then
return 0
end

return wdlp.getUpgradeLevel(pwc.upgrade.levels, pg)
end

function pwc.cost(ttqa)
if not wdlp then
return nil
end

return wdlp.getUpgradeCost(ttqa, pwc.level(ttqa))
end

function pwc.bonus(ba, me)
if not wdlp then
return _d("")
end

return wdlp.formatUpgradeBonus(ba, me)
end

function pwc.request()
pwc.upgrade.lastRequest = os.time()
pwc.fire(_d("PlEEQAcUBCRVGVkNEBUJWiBFBRURCFEG"))
end

function pwc.text()
if not wdlp then
return _d("JFUZWQ0QFQlaVWENEBUeFBFUFgZQBUdVWw0TUAVaVUEKDgNMVgBcDgNe")
end

local nfst = pwc.upgrade
local parv = {}

if nfst.balance == nil then
table.insert(parv, _d("PEEYRQkOHh8OVRhCTxEfXxxbBUcEBFFVRgcVBglGXA"))
else
table.insert(parv, _d("PEEYRQkOHh8OVQ") .. ith(nfst.balance))
end

for urvk, vfth in ipairs(pwc.upgrades) do
local bsn = pwc.level(vfth.id)
local jta = pwc.cost(vfth.id)
local fcsg = nfst.selected[vfth.id] and _d("N0woFQ") or _d("NxQoFQ")
local jrh = fcsg .. vfth.name .. _d("TBQ5Q0I") .. bsn .. _d("Qw") .. vfth.maxLevel

if jta then
table.insert(parv, jrh .. _d("TBQbUBoTUA") .. tostring(jta) .. _d("TBQ") .. pwc.bonus(vfth.id, bsn + 1))
else
table.insert(parv, jrh .. _d("TBQYVBoCFA"))
end
end

if not next(nfst.selected) then
table.insert(parv, _d("PF0WXkISAAtGFFEHFFAFWlVBCgJQCEYaRQYIBwIUFFsGRzEZQBoVFxcXHlURUBFHEhlNBhUWDxVMVx1QAxcVH0BVWgwCUBVbABUBBh5MVRNTDRUUQg"))
end

return table.concat(parv, _d("Zg"))
end

function pwc.buy()
local uwm = pwc.upgrade

if uwm.waiting or uwm.balance == nil or os.time() - uwm.lastBuy < 1 then
return
end

local gd = nil
local lzv = nil

for af, rpmp in ipairs(pwc.upgrades) do
if uwm.selected[rpmp.id] and os.time() >= (uwm.failedUntil[rpmp.id] or 0) then
local edmd = pwc.cost(rpmp.id)

if edmd and uwm.balance >= edmd and (not lzv or edmd < lzv) then
gd = rpmp.id
lzv = edmd
end
end
end

if not gd then
return
end

uwm.waiting = true
uwm.lastBuy = os.time()
uwm.pendingId = gd
uwm.pendingLevel = pwc.level(gd)

uwm.balance = uwm.balance - lzv

pwc.fire(_d("LkEMfQMLHANDEFAMMgALRhRRBw"), gd)
end

pwc.on(_d("JFUZWQ0QFQlaIEUFFREIUSZBAxMV"), function(tv)
if type(tv) ~= _d("GFUXWQc") then
return
end

local be = pwc.upgrade

be.balance = tonumber(tv.balance) or 0
be.levels = type(tv.levels) == _d("GFUXWQc") and tv.levels or {}

if be.pendingId then
if pwc.level(be.pendingId) <= be.pendingLevel then
be.failedUntil[be.pendingId] = os.time() + 15
end

be.pendingId = nil
end

if type(tv.message) == _d("H0AHXAwA") then
be.lastMessage = tv.message
end

be.waiting = false
end)

pwc.on(_d("P00bVioGHABbAlAHCSQDQxBHMhUfC0YQRhE"), function(aq, oimu)
pwc.run.highest = tonumber(aq) or 0
pwc.run.savedRun = type(oimu) == _d("GFUXWQc") and oimu or nil
end)

pwc.on(_d("I0QQWyoGHABbAlAHCSQDQxBH"), function(fom, bkvp, uen)
pwc.run.highest = tonumber(fom) or pwc.run.highest
pwc.run.savedRun = type(uen) == _d("GFUXWQc") and uen or nil
end)

jxjd(bo.BattleEnd.OnClientEvent, function(ejt)
if type(ejt) == _d("GFUXWQc") and ejt.mode == _d("BVoTXAwOBAlrB1oNCg") and ejt.tower == _d("BFUZWQ0QFQla") then
pwc.run.inBattle = false
pwc.run.pending = true
pwc.run.pendingUntil = os.time() + 3

task.delay(0.3, function()
pwc.requestProgress()
end)
end
end)

function pwc.requestProgress()
pwc.run.lastRequest = os.time()
pwc.fire(_d("PlEEQAcUBCRVGVkNEBUJWiFaFQICPEYaUhACAx8"))
end

function pwc.bestRoom()
local ryz = pwc.run.highest

if not wdlp or ryz == nil then
return nil
end

for fynq, yf in ipairs(wdlp.Milestones) do
if wdlp.isMilestoneUnlocked(yf, ryz)
and not wdlp.isMilestoneCleared(yf, ryz) then
return yf
end
end

return nil
end

function pwc.startRun()
local lxl = pwc.bestRoom()

if not lxl then
return false
end

local qxyt = pwc.run.savedRun
local pv = type(qxyt) == _d("GFUXWQc") and qxyt.milestone == lxl
local ttp = pv and (tonumber(qxyt.currentFloor) or lxl) or lxl

local yp = rqc.halloweenSlot() or 1

local by = getgenv().ACBXAuto

by = type(by) == _d("GFUXWQc") and by.bossTeams or nil

if pwc.run.teamChosen and by and by.applyTeam then
by.applyTeam(pwc.run.team, yp)
end

local qgl = rd:FindFirstChild(yp == 2 and _d("PlEGUBYlERhAGVAkCx8DRkc") or _d("PlEGUBYlERhAGVAkCx8DRg"))

if qgl and qgl:IsA(_d("Ll0bUQMFHAlxA1AMEw")) then
pcall(function()
qgl:Fire(ttp, _d("BVoTXAwOBAlrB1oNCg"))
end)
end

local jurp = rd:FindFirstChild(yp == 2 and _d("P0AURxYuHgpdG1wWAiIDWxh3AxMEAFFH") or _d("P0AURxYuHgpdG1wWAiIDWxh3AxMEAFE"))

if jurp and jurp:IsA(_d("Ll0bUQMFHAlxA1AMEw")) then
pcall(function()
jurp:Fire(ttp, _d("BFUZWQ0QFQla"), ttp)
end)
end

pwc.run.milestone = lxl
pwc.run.savedRun = nil
pwc.run.inBattle = true
pwc.run.inBattleUntil = os.time() + 120
pwc.run.pending = true
pwc.run.pendingUntil = os.time() + 10

if pv then
bo.StartBattle:FireServer(_d("BVoTXAwOBAlrB1oNCg"), {
continue = true,
tower = _d("BFUZWQ0QFQla"),
slot = yp,
})
else
bo.StartBattle:FireServer(_d("BVoTXAwOBAlrB1oNCg"), {
tower = _d("BFUZWQ0QFQla"),
milestone = lxl,
slot = yp,
})
end

return true
end

local gc = {}
for zwj, ac in ipairs(ho.NPCs) do
gc[ac.name] = ac.id
end

local qzmn = getgenv().ACBXCooldowns
if type(qzmn) ~= _d("GFUXWQc") then
qzmn = {}
getgenv().ACBXCooldowns = qzmn
end

local gwq = getgenv().ACBXAuto
if type(gwq) == _d("GFUXWQc") and type(gwq.cooldowns) == _d("GFUXWQc") then
for jfif, hrr in pairs(gwq.cooldowns) do
if qzmn[jfif] == nil then
qzmn[jfif] = hrr
end
end
end

local rcj = {
enabled = false,
story = false,
storyDifficulty = _d("AlsHWAML"),
storyDropdown = nil,
selectedByWorld = {},
difficulties = { _d("AlsHWAML") },
walkToNpc = false,
cooldowns = qzmn,
activeDifficulty = {},
lastFetch = {},
unlocked = {},
currentBattle = nil,
battlePending = false,
battlePendingUntil = 0,
}

rcj.bossTeams = {
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

path = _d("LXc3bU0TFQ1ZBhsIFB8C"),
}

function rcj.bossTeams.trackCollection()
if rcj.bossTeams.collectionHooked then
return
end

rcj.bossTeams.collectionHooked = true

local jyof = as:FindFirstChild(_d("P00bViEIHABRFkELCB4"))

if not jyof then
return
end

jxjd(jyof.OnClientEvent, function(zlg)
if type(zlg) == _d("GFUXWQc") and type(zlg.teams) == _d("GFUXWQc") then
rcj.bossTeams.teams = zlg.teams
rcj.bossTeams.teamsAt = os.clock()
end
end)

task.spawn(function()

task.wait(3)

for xck = 1, 8 do
if rcj.bossTeams.teams then
return
end

local aiy = as:FindFirstChild(_d("P0McQQEPJAlVGA"))
local pi = rcj.bossTeams.slotTeam
local eug = nil

if aiy and type(pi) == _d("CkEbVhYOHwI") then
local qkve, tfzt = pcall(pi, 2)
eug = qkve and tfzt or nil

if not eug then
qkve, tfzt = pcall(pi, 1)
eug = qkve and tfzt or nil
end
end

if eug then
pcall(function()
aiy:FireServer(eug, false, 2)
end)
end

task.wait(6)
end
end)
end

function rcj.bossTeams.teamCards(ys)
local mhpt = rcj.bossTeams.teams

if type(mhpt) ~= _d("GFUXWQc") then
return nil
end

local kee = mhpt[ys]

if type(kee) ~= _d("GFUXWQc") then
return 0
end

local cbji = 0

for fbp, xbjy in pairs(kee) do
if type(xbjy) == _d("GFUXWQc") then
cbji = cbji + 1
end
end

return cbji
end

function rcj.bossTeams.raidState()
return getgenv().ACBXAutoRaid
end

function rcj.bossTeams.save()
if type(writefile) ~= _d("CkEbVhYOHwI") then
return false
end

local hj = {}

for fk, odo in pairs(rcj.bossTeams.picked) do
hj[fk] = odo
end

local zxh = {}

for acd, am in pairs(rcj.bossTeams.raidPicked) do
zxh[acd] = am
end

local cnn = {}

for oih, upqg in pairs(rcj.bossTeams.towerPicked) do
cnn[oih] = upqg
end

return pcall(function()
if type(makefolder) == _d("CkEbVhYOHwI") and type(isfile) == _d("CkEbVhYOHwI") and not isfile(rcj.bossTeams.path) then
pcall(makefolder, _d("LXc3bQ"))
end

local nrx = rcj.bossTeams.raidState()
local nhyd = nrx and nrx.worldBoss
local yd = nil

if nhyd and nhyd.teamChosen then
yd = nhyd.team
end

writefile(rcj.bossTeams.path, game:GetService(_d("JEABRTECAhpdFlA")):JSONEncode({
areas = hj,
raids = zxh,
towers = cnn,
swap = rcj.bossTeams.swap,
globalBoss = yd,
updatedAt = os.time(),
}))
end)
end

function rcj.bossTeams.load()
if type(readfile) ~= _d("CkEbVhYOHwI") or type(isfile) ~= _d("CkEbVhYOHwI") then
return false
end

local hltf, lv = pcall(function()
if not isfile(rcj.bossTeams.path) then
return nil
end

return readfile(rcj.bossTeams.path)
end)

if not hltf or type(lv) ~= _d("H0AHXAwA") or #lv == 0 then
return false
end

local moq
local qn = pcall(function()
moq = game:GetService(_d("JEABRTECAhpdFlA")):JSONDecode(lv)
end)

if not qn or type(moq) ~= _d("GFUXWQc") then
return false
end

if type(moq.areas) == _d("GFUXWQc") then
for ewr, nv in pairs(moq.areas) do
local unnd = tonumber(nv)

if unnd and unnd >= 1 and unnd <= 4 then
rcj.bossTeams.picked[ewr] = unnd
end
end
end

if type(moq.raids) == _d("GFUXWQc") then
for hrn, vyrm in pairs(moq.raids) do
local tydk = tonumber(vyrm)

if tydk and tydk >= 1 and tydk <= 4 then
rcj.bossTeams.raidPicked[hrn] = tydk
end
end
end

if type(moq.towers) == _d("GFUXWQc") then
for km, pag in pairs(moq.towers) do
local vw = tonumber(pag)

if vw and vw >= 1 and vw <= 4 then
rcj.bossTeams.towerPicked[km] = vw
end
end
end

if type(moq.swap) == _d("GFUXWQc") then
local zl = tonumber(moq.swap.team)
local jb = tonumber(moq.swap.floor)

if zl and zl >= 1 and zl <= 4 then
rcj.bossTeams.swap.team = zl
end

if jb and jb > 0 then
rcj.bossTeams.swap.floor = jb
end

local ve = tonumber(moq.swap.team2)
local dgpp = tonumber(moq.swap.floor2)

if ve and ve >= 1 and ve <= 4 then
rcj.bossTeams.swap.team2 = ve
end

if dgpp and dgpp > 0 then
rcj.bossTeams.swap.floor2 = dgpp
end

rcj.bossTeams.swap.on = moq.swap.on == true
end

local vvdo = tonumber(moq.globalBoss)
local hys = rcj.bossTeams.raidState()
local yfv = hys and hys.worldBoss

if vvdo and vvdo >= 1 and vvdo <= 4 and yfv then
yfv.team = vvdo

yfv.teamChosen = true
end

return true
end

local wll = nil
local lu = nil

local function py(mov, wznh)
return mov .. _d("EA") .. wznh
end

local function pzk(crvz, jdf)
return rcj.cooldowns[py(crvz, jdf)] or 0
end

local function emhs(an, oqi, nhu)
rcj.cooldowns[py(an, oqi)] = nhu
end

getgenv().ACBXAuto = rcj

local btd = {
enabled = false,
picks = { [1] = {}, [2] = {} },
cursor = { [1] = 1, [2] = 1 },
losses = { [1] = {}, [2] = {} },
inFlight = {},

lossLimit = 3,
difficulties = { _d("AlsHWAML") },
walkToBoss = false,
walkSpeed = 18,
pending = {},
pendingUntil = {},
cleared = {},
progress = {},
}

getgenv().ACBXAutoRaid = btd

btd.worldBoss = {
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

fishingMode = _d("G1UcQQ"),
digHold = true,

walkToBoss = false,
walkToggle = nil,

building = false,
}

rcj.bossTeams.trackCollection()
rcj.bossTeams.load()

function btd.worldBoss.data()
local odrq = btd.worldBoss

if odrq.module == nil then
local diog, crc = pcall(function()
return require(kq.ModuleScripts.WorldBossData)
end)

odrq.module = diog and crc or false
end

return odrq.module or nil
end

function btd.worldBoss.clock(cmt)
cmt = math.max(0, math.floor(tonumber(cmt) or 0))

local tktz = math.floor(cmt / 3600)
local td = math.floor((cmt % 3600) / 60)
local cv = cmt % 60

if tktz > 0 then
return string.format(_d("SVAdFUdXQghZ"), tktz, td)
end

if td > 0 then
return string.format(_d("SVAYFUdXQghH"), td, cv)
end

return string.format(_d("SVAG"), cv)
end

function btd.worldBoss.status()
local sc = nil

pcall(function()
sc = kq:FindFirstChild(_d("O1sHWQYlHx9HJkEDEwUf"))
end)

return sc
end

function btd.worldBoss.isOpen()
local lfud = btd.worldBoss.status()

if not lfud then
return nil
end

return lfud:GetAttribute(_d("LVcBXBQC")) == true
end

function btd.worldBoss.window()
local bqo = btd.worldBoss.status()

if not bqo then
return nil, nil
end

return tonumber(bqo:GetAttribute(_d("KVoRRiMT"))), tonumber(bqo:GetAttribute(_d("IlENQSMT")))
end

function btd.worldBoss.cycle()
local yi = btd.worldBoss
local egcy = yi.data()

if not egcy or not egcy.getCycleState then
return nil
end

local yy, ziyi = pcall(function()
return egcy.getCycleState()
end)

return yy and ziyi or nil
end

function btd.worldBoss.shopList()
local eggh = btd.worldBoss

if eggh.items then
return eggh.items
end

local als = {}
local pj = eggh.data()

if not pj or type(pj.ShopItems) ~= _d("GFUXWQc") then
eggh.items = als
return als
end

for dadx, xwzs in ipairs(pj.ShopItems) do
local ozos = nil

pcall(function()
if xwzs.itemId then
local obnn = require(kq.ModuleScripts.ItemData)
local tlzy = obnn[xwzs.itemId] or (obnn.ById and obnn.ById[xwzs.itemId])
ozos = tlzy and tlzy.name or nil
elseif xwzs.cardId then
local nxr = require(kq.ModuleScripts.CardData)
local ltzr = nxr[xwzs.cardId] or (nxr.ById and nxr.ById[xwzs.cardId])
ozos = ltzr and ltzr.name or nil
end
end)

local ovap = btd.worldBoss.state

if type(ovap) == _d("GFUXWQc") and type(ovap.shop) == _d("GFUXWQc") then
for pp, bg in ipairs(ovap.shop) do
if bg.id == xwzs.id and bg.name then
ozos = bg.name
break
end
end
end

if not ozos then

ozos = tostring(xwzs.accessoryId or xwzs.id or _d("Uw")):gsub(_d("Mw"), _d("TA")):gsub(_d("RBEUHEo8VRsTKB9L"), function(gwc, xdq)
return gwc:upper() .. xdq
end)
end

table.insert(als, {
id = xwzs.id,
name = ozos,
price = tonumber(xwzs.price) or 0,
kind = xwzs.itemId and _d("BUAQWA") or (xwzs.cardId and _d("D1UHUQ") or _d("DVcWUBEUHx5N")),
})
end

eggh.items = als

return als
end

function btd.worldBoss.bodyText()
local zgt = btd.worldBoss
local bipm = zgt.state

if type(bipm) ~= _d("GFUXWQc") then
return _d("PlEUUQsJF0xAHVBCBR8fR1sbTA")
end

local ucwm = {}
local yqi = zgt.cycle()
local pteb = zgt.isOpen()
local nf, qy = zgt.window()

if pteb == nil then
pteb = bipm.open == true
end

if pteb then
local vcd = _d("I0QQWw")

if not nf and yqi then
nf = yqi.endsAt
end

if nf and nf > os.time() then
vcd = vcd .. _d("TPbCFQ") .. zgt.clock(nf - os.time()) .. _d("TFgQUxY")
end

table.insert(ucwm, vcd)
else
local zote = _d("KFsCW0IBHx4UG1oV")

if not qy and yqi then
qy = yqi.nextAt
end

if qy and qy > os.time() then
zote = zote .. _d("ZnYUVglHGQIU") .. zgt.clock(qy - os.time())
end

table.insert(ucwm, zote)
end

table.insert(ucwm, _d("IVERVA4USkw") .. tostring(bipm.medals or 0) .. _d("Zn8cWQ4USkw") .. tostring(bipm.kills or 0))

if bipm.inFight then
table.insert(ucwm, _d("Kl0SXRYOHgs"))
elseif pteb then

table.insert(ucwm, bipm.killedThisSpawn and _d("PlEUURttOwVYGVAGRwQEXQYVERcRG1pVVA4VFQ1QDA") or _d("PlEUURs"))
end

if zgt.stopAtFull then
local vbw, txll = zgt.meter()

if vbw and txll then
local function vu(dnvj)
if dnvj >= 1000000000 then
return string.format(_d("SRpEUyA"), dnvj / 1000000000)
elseif dnvj >= 1000000 then
return string.format(_d("SVM4"), math.floor(dnvj / 100000) / 10)
elseif dnvj >= 1000 then
return string.format(_d("SVM+"), math.floor(dnvj / 100) / 10)
end

return tostring(math.floor(dnvj))
end

table.insert(ucwm, _d("P1EHQwcVUAFRAVAQXVA") .. vu(vbw) .. _d("TBtV") .. vu(txll)
.. (zgt.meterFull() and _d("ZnIAWQ5HXUxaGkFCARkLXAFcDABQGFwcRkIUAA1DGw") or _d("")))
end
end

return table.concat(ucwm, _d("Zj4"))
end

function btd.worldBoss.shopText()
local pc = btd.worldBoss
local fpc = pc.state

if type(fpc) ~= _d("GFUXWQc") or type(fpc.shop) ~= _d("GFUXWQc") then
return _d("PlEUUQsJF0xAHVBCFBgDRFsbTA")
end

local ns = { _d("IVERVA4USkw") .. tostring(fpc.medals or 0) }

for fnrc, zn in ipairs(fpc.shop) do
local kbp = tostring(zn.name or zn.id)
local kqno = tostring(zn.price or _d("Uw"))
local ytdp

if zn.kind == _d("BUAQWA") then
ytdp = kbp .. _d("Zg") .. kqno .. _d("TPbCFQ") .. tostring(zn.left or 0) .. _d("Qw") .. tostring(zn.stock or _d("Uw")) .. _d("TFgQUxY")
elseif zn.owned then
ytdp = kbp .. _d("ZnsCWwcD")
else
ytdp = kbp .. _d("Zg") .. kqno .. _d("TPbCFQ0JFUxbE1M")
end

table.insert(ns, ytdp)
end

return table.concat(ns, _d("Zj4"))
end

function btd.worldBoss.shopOptions()
local jyze = btd.worldBoss

if jyze.options then
return jyze.options
end

local crq = {}

jyze.labelToId = {}

for oemd, mrpi in ipairs(jyze.shopList()) do
local kl = mrpi.name .. _d("TPbCFQ") .. tostring(mrpi.price)

table.insert(crq, kl)
jyze.labelToId[kl] = mrpi.id
end

jyze.options = crq

return crq
end

local function bip(lfvk)
local lpj = btd.progress[lfvk]
local xptm = kq:FindFirstChild(_d("PlUcUTETERhBBg"))
local fro = xptm and xptm:GetAttribute(_d("L00WWQcuFA"))

if type(lpj) == _d("GFUXWQc") then
if lpj.cycleId then
fro = lpj.cycleId
end

if lpj.completed and lpj.completedRaidId then
return tostring(fro) .. _d("VlAaWwc")
end

local no = lpj.phaseIndex or lpj.phase

if no then
return tostring(fro) .. _d("Vg") .. tostring(no)
end
end

return tostring(fro)
end

function btd.currentCycle()
local kjo = nil

for jdjm, vv in pairs(btd.progress or {}) do
if type(vv) == _d("GFUXWQc") then
local gskk = tonumber(vv.cycleId)

if gskk and (not kjo or gskk > kjo) then
kjo = gskk
end
end
end

return kjo
end

function btd.finished(jlnp)
local pz = btd.progress[jlnp]

if type(pz) ~= _d("GFUXWQc") or pz.completed ~= true or pz.completedRaidId ~= jlnp then
return false
end

local vkrn = tonumber(pz.cycleId)
local gxa = btd.currentCycle()

if vkrn and gxa and vkrn < gxa then
return false
end

return true
end

function btd.requestProgress(ttoy)
local pu = os.clock()

if not ttoy and pu - (btd.progressAt or 0) < 60 then
return
end

btd.progressAt = pu

pcall(function()
bo.RequestRaidProgress:FireServer()
end)
end

function btd.bossFor(rj, lr)
local xz = btd.picks[lr or rj]

if not xz or #xz == 0 then
return nil
end

local qlt = kq:FindFirstChild(_d("PlUcUTETERhBBg"))
local kmxg = btd.losses[rj] or {}
local rzkx = btd.cursor[rj] or 1

for dj = 0, #xz - 1 do
local rzo = (rzkx - 1 + dj) % #xz + 1
local vq = xz[rzo]
local wk = not qlt or qlt:GetAttribute(_d("PlEUURs4") .. vq) == true

if wk and not btd.finished(vq) and (kmxg[vq] or 0) < btd.lossLimit then
btd.cursor[rj] = rzo

return vq
end
end

return nil
end

jxjd(bo.RaidBattleStarted.OnClientEvent, function(pch)

local qib = type(pch) == _d("GFUXWQc") and pch.raidId or nil

if type(qib) == _d("H0AHXAwA") then
btd.pending[qib] = false
else
for qe in pairs(btd.pending) do
btd.pending[qe] = false
end
end
end)

jxjd(bo.BattleEnd.OnClientEvent, function(efjo)
for sprr in pairs(btd.pending) do
btd.pending[sprr] = false
end

if type(efjo) ~= _d("GFUXWQc") or not btd.enabled then
return
end

local yz = type(efjo.raidId) == _d("H0AHXAwA") and efjo.raidId or nil
local hlo = yz and btd.inFlight[yz] or nil

if not yz then
for mfx, fzqd in pairs(btd.inFlight) do
yz = mfx
hlo = fzqd
break
end
end

if not yz then
return
end

btd.inFlight[yz] = nil

if efjo.result == _d("AFsGUA") then

local tvbv = btd.losses[hlo or 1]

btd.cleared[yz] = nil
tvbv[yz] = (tvbv[yz] or 0) + 1

for qv in pairs(btd.pendingUntil) do
btd.pendingUntil[qv] = os.time() + 3
end
else

btd.losses[hlo or 1][yz] = 0
end

task.delay(0.3, function()
btd.requestProgress(true)
end)
end)

jxjd(bo.RaidProgress.OnClientEvent, function(gi)
if type(gi) == _d("GFUXWQc") and type(gi.raidId) == _d("H0AHXAwA") then
btd.progress[gi.raidId] = gi
end
end)

bo.RequestRaidProgress:FireServer()

local fwd = {
enabled = false,
progress = nil,
currentRoom = nil,
inBattle = false,
inBattleUntil = 0,
pending = false,
pendingUntil = 0,
}

getgenv().ACBXAutoRooms = fwd

jxjd(bo.SyncInfiniteRoomProgress.OnClientEvent, function(fezd)
if type(fezd) == _d("AkEYVwcV") then
fwd.progress = fezd
fwd.pending = false
end
end)

jxjd(bo.BattleEnd.OnClientEvent, function(az)
if type(az) == _d("GFUXWQc") and az.mode == _d("BVoTXAwOBAlrB1oNCg") then
fwd.inBattle = false
fwd.pending = true
fwd.pendingUntil = os.time() + 3

task.delay(0.3, function()
bo.RequestInfiniteRoomProgress:FireServer()
end)
end
end)

bo.RequestInfiniteRoomProgress:FireServer()

local oi = {
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

getgenv().ACBXAutoTower = oi

local slpc = {
enabled = false,
floor = 0,
triggered = false,
}

getgenv().ACBXAutoPause = slpc

local cm = {
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
Typhoon = _d("GE0FXQ0IHg"),
Blizzard = _d("DlgcTxgGAgg"),
Lightning = _d("AF0SXRYJGQJT"),
Windstorm = _d("G10bURETHx5Z"),
Sharingan = _d("H1wURwsJFw1a"),
Singularity = _d("H10bUhcLER5dAUw"),
[_d("IVsbVBAEGExwGlgDDh4")] = _d("AVsbVBAEGDNQGlgDDh4"),
Void = _d("GlscUQ"),
[_d("IVURUEIOHkx8EFQUAh4")] = _d("AVURUD0OHjNcEFQUAh4"),
Manga = _d("AVUbUgM"),
},
}

function cm.weatherLeft()
local wuk = fh:FindFirstChildOfClass(_d("PFgUTAcVNxld"))
local ies = wuk and wuk:FindFirstChild(_d("O1EUQQoCAitBHA"))

if not ies then
return nil
end

for tdl, zfi in ipairs(ies:GetDescendants()) do
if zfi:IsA(_d("OFENQS4GEglY")) then
local sw = tonumber(string.match(tostring(zfi.Text), _d("MmAcWAdHIglZFFwMDh4LDlBGSE9VCB9c")))

if sw and sw > 0 then
return sw
end
end
end

return nil
end

function cm.weatherWanted(ynd)
local mfkd = cm.weatherNow

if type(mfkd) ~= _d("H0AHXAwA") then
return nil
end

for bee, jvnx in pairs(ynd or cm.weathers) do
if jvnx and cm.weatherIds[bee] == mfkd then
return bee
end
end

return nil
end

getgenv().ACBXAutoGiveUp = cm

local yme = {
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

if kq:FindFirstChild(_d("IVsRQA4CIw9GHEUWFA")) and kq.ModuleScripts:FindFirstChild(_d("JFUHUQEIAglgGkIHFTQNQBQ")) then
local io, qm = pcall(function()
return require(kq.ModuleScripts.HardcoreTowerData)
end)

if io then
yme.data = qm
end
end

getgenv().ACBXHardcore = yme

task.spawn(function()
local gafk = kq:FindFirstChild(_d("PlEYWhYCAw"))

if not gafk then
return
end

local iipd = gafk:WaitForChild(_d("P00bVioGAghXGkcHMx8bUQdlEAgXHlEGRg"), 20)

if iipd and iipd:IsA(_d("PlEYWhYCNRpRG0E")) then
yme.remotes.sync = iipd

jxjd(iipd.OnClientEvent, function(fanw)
if type(fanw) ~= _d("GFUXWQc") then
return
end

yme.progress = tonumber(fanw.progress) or yme.progress
yme.best = tonumber(fanw.best) or yme.best

if type(fanw.points) == _d("GFUXWQc") then
yme.points = fanw.points
end
end)
end

local hpm = gafk:WaitForChild(_d("PlEEQAcUBCRVB1EBCAIJYBpCBxUgHlsSRwcUAw"), 20)

if hpm and hpm:IsA(_d("PlEYWhYCNRpRG0E")) then
yme.remotes.request = hpm

pcall(function()
hpm:FireServer()
end)
end

local xt = gafk:WaitForChild(_d("K1gaVwMLMhlSE2ASAxEYURE"), 20)

if xt and xt:IsA(_d("PlEYWhYCNRpRG0E")) then
jxjd(xt.OnClientEvent, function(rsyz, ueh, tol, lxft)
yme.globalLuck = tonumber(rsyz) or 0
yme.globalRoll = tonumber(ueh) or 0
yme.globalLuckTime = type(tol) == _d("H0AHXAwA") and tol or _d("")
yme.globalRollTime = type(lxft) == _d("H0AHXAwA") and lxft or _d("")
end)
end
end)

function rqc.otherTowerOn(hplp)
if rqc.enabled then
return false
end

if hplp == _d("GFsCUBA") then
return false
end

if hplp == _d("BFUZWQ0QFQla") then
return yme.active()
end

return pwc.run.enabled
end

function yme.active()
return yme.island
end

function yme.unspentPoints()
local yb = yme.data
local fyx = tonumber(yme.progress) or 0
local znv = 0

if type(yb) == _d("GFUXWQc") and type(yb.getEarnedPoints) == _d("CkEbVhYOHwI") then
local gyx, gu = pcall(yb.getEarnedPoints, fyx)
znv = gyx and tonumber(gu) or 0
end

return math.max(0, znv - #(yme.points or {})), znv
end

function yme.buffText()
local pkeb = yme.data

if type(pkeb) ~= _d("GFUXWQc") then
return _d("JFUHUQEIAglgGkIHFTQNQBQVCxRQAV0GRgsJF0xSB1oPRwQEXQYVABIZAFBb")
end

local abt = tonumber(yme.progress) or 0
local zfbb = tonumber(yme.best) or 0
local xyr, xwah = yme.unspentPoints()
local lj = {
_d("KlgaWhBH") .. abt .. _d("TBRVdwcUBEw") .. zfbb,
_d("PFscWxYUSkw") .. xyr .. _d("TEEbRhICHhgUGlNC") .. xwah .. _d("TFEURwwCFA"),
}

local vuw = {}

for koxb, le in ipairs(yme.points or {}) do
local xn = pkeb.StatById and pkeb.StatById[le]
local vp = xn and (xn.name or le) or tostring(le)
local fr = pkeb.PointValue and pkeb.PointValue[le]

table.insert(vuw, fr and (vp .. _d("TB8") .. tostring(fr)) or vp)
end

if #vuw == 0 then
table.insert(lj, _d("LkETUxFdUAJbG1BCBR8ZUx1BQh4VGA"))
else
table.insert(lj, _d("LkETUxFdUA") .. table.concat(vuw, _d("QBQ")))
end

local umf = {}

if (tonumber(yme.globalLuck) or 0) > 0 then
table.insert(umf, _d("IEEWXkJM") .. tostring(yme.globalLuck) .. _d("SQ") .. (yme.globalLuckTime ~= _d("") and (_d("TBw") .. yme.globalLuckTime .. _d("RQ")) or _d("")))
end

if (tonumber(yme.globalRoll) or 0) > 0 then
table.insert(umf, _d("PlsZWUIUAAlRERVJ") .. tostring(yme.globalRoll) .. _d("SQ") .. (yme.globalRollTime ~= _d("") and (_d("TBw") .. yme.globalRollTime .. _d("RQ")) or _d("")))
end

if #umf == 0 then
table.insert(lj, _d("K1gaVwMLUA5BE1MRXVACWxtQQgYTGF0DUA"))
else
table.insert(lj, _d("K1gaVwMLUA5BE1MRXVA") .. table.concat(umf, _d("QBQ")))
end

return table.concat(lj, _d("Zg"))
end

function yme.nextMilestone()
local wu = yme.data

if type(wu) ~= _d("GFUXWQc") or type(wu.Milestones) ~= _d("GFUXWQc") or #wu.Milestones == 0 then
return nil
end

local idp = tonumber(fh:GetAttribute(_d("JFUHUQEIAglyGVoNFQ"))) or 0

return math.min(idp + 1, wu.Milestones[#wu.Milestones])
end

function yme.start(nd)
local lw = yme.nextMilestone()

if not lw then
return false
end

local jt = rd:FindFirstChild(nd == 2 and _d("PlEGUBYlERhAGVAkCx8DRkc") or _d("PlEGUBYlERhAGVAkCx8DRg"))

if jt and jt:IsA(_d("Ll0bUQMFHAlxA1AMEw")) then
pcall(function()
jt:Fire(lw, _d("BVoTXAwOBAlrB1oNCg"))
end)
end

local hvai = rd:FindFirstChild(nd == 2 and _d("P0AURxYuHgpdG1wWAiIDWxh3AxMEAFFH") or _d("P0AURxYuHgpdG1wWAiIDWxh3AxMEAFE"))

if hvai and hvai:IsA(_d("Ll0bUQMFHAlxA1AMEw")) then
pcall(function()
hvai:Fire(lw, _d("BFUHUQEIAgk"), lw)
end)
end

if rcj.bossTeams.applyTower then
rcj.bossTeams.applyTower(_d("BFUHUQEIAgk"), nd)
end

yme.pending = true
yme.pendingUntil = os.time() + 10

return pcall(function()
bo.StartBattle:FireServer(_d("BVoTXAwOBAlrB1oNCg"), {
tower = _d("BFUHUQEIAgk"),
milestone = lw,
slot = nd,
})
end)
end

function yme.floorNow()
local kn = rqc.hardcoreSlot()

if not kn or not rqc.busy(kn) then
return nil
end

local nau = rd:FindFirstChild(kn == 2 and _d("LlUBQQ4CNxldRw") or _d("LlUBQQ4CNxld"))
local wm = nau and nau:FindFirstChild(_d("PkEbcw4IHx54FFcHCw"))
local mjb = wm and wm.Text or _d("")

return tonumber(mjb:match(_d("MnIZWg0VVR8fXRAGTFk")))
end

local jrgd = {
enabled = true,
nextAt = os.clock() + 300,
jumps = 0,
}

getgenv().ACBXAntiKick = jrgd

local cmiu = getgenv().ACBXNoUpdate == true

local ct = {
enabled = not cmiu,
buildId = "v261103-0123",
interval = 180,
retry = 45,
forceAfter = 900,
applying = false,
checking = false,
pendingVersion = nil,
pendingSince = nil,
cameFrom = nil,
}

getgenv().ACBXUpdater = ct

local pa = {
enabled = false,
tpToBay = false,

stick = {
enabled = false,
at = 0,
hits = 0,
last = _d("A1IT"),

names = {
[_d("H0AcVgk")] = true,
[_d("AEEWXkIUBAVXHg")] = true,
[_d("AEEWXhETGQ9f")] = true,
[_d("AEEWXj0UBAVXHg")] = true,
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
phase = _d("BVAZUA"),
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
deepPhase = _d("BVAZUA"),
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

local flk = Vector3.new(-546.8, 13.9, -40250.1)

if type(getgenv().ACBXFishingCatches) == _d("GFUXWQc") then
pa.catches = getgenv().ACBXFishingCatches
end

pa.totalCatches = 0

for eiiw, uij in pairs(pa.catches) do
pa.totalCatches = pa.totalCatches + uij
end

getgenv().ACBXFishingCatches = pa.catches
getgenv().ACBXFishing = pa

pa.catchName = function(tg)
local ow = hb.ById[tg]

if ow and ow.name then
return ow.name
end

local jfvp = iqbb.ById[tg]

if jfvp and jfvp.name then
return jfvp.name
end

return tg
end

local xh

xh = {
folder = _d("LXc3bQ"),
path = _d("LXc3bU0EERhXHVARSRofWxs"),
at = 0,
save = function()
if type(writefile) ~= _d("CkEbVhYOHwI") then
return false
end

local gro = pcall(function()
if type(makefolder) == _d("CkEbVhYOHwI") and type(isfile) == _d("CkEbVhYOHwI") and not isfile(xh.path) then
pcall(makefolder, xh.folder)
end

writefile(xh.path, game:GetService(_d("JEABRTECAhpdFlA")):JSONEncode({
catches = pa.catches,
totalCatches = pa.totalCatches,
lastCatch = pa.lastCatch,
updatedAt = os.time(),
}))
end)

return gro
end,
load = function()
if type(readfile) ~= _d("CkEbVhYOHwI") or type(isfile) ~= _d("CkEbVhYOHwI") then
return false
end

local irv, frt = pcall(function()
if not isfile(xh.path) then
return nil
end

return readfile(xh.path)
end)

if not irv or type(frt) ~= _d("H0AHXAwA") or #frt == 0 then
return false
end

local gbe
local tqa = pcall(function()
gbe = game:GetService(_d("JEABRTECAhpdFlA")):JSONDecode(frt)
end)

if not tqa or type(gbe) ~= _d("GFUXWQc") or type(gbe.catches) ~= _d("GFUXWQc") then
return false
end

for sut, bvhk in pairs(gbe.catches) do
local yk = tonumber(bvhk) or 0

if yk > 0 then
pa.catches[tostring(sut)] = math.max(pa.catches[tostring(sut)] or 0, yk)
end
end

pa.totalCatches = 0

for ez, nyw in pairs(pa.catches) do
pa.totalCatches = pa.totalCatches + nyw
end

return true
end,
}

xh.load()
getgenv().ACBXFishingStore = xh

local qhv = {}

local auuq = 0

local function gpfu()
local yha = {}

for ak, nha in ipairs(workspace:GetDescendants()) do
if nha:IsA(_d("LlUGUDIGAhg")) and nha.Name == _d("O1UBUBA") then
table.insert(yha, nha)
end
end

qhv = yha
auuq = os.clock()
end

local function lvs(hgv)
if type(hgv) ~= _d("GFUXWQc") then
return false
end

pa.loaded = true
pa.dirty = false
pa.fishing = hgv.fishing == true
pa.autoOn = hgv.autoOn == true
pa.autoUnlocked = hgv.autoUnlocked == true
pa.casts = tonumber(hgv.casts) or pa.casts
pa.totalCasts = tonumber(hgv.totalCasts) or pa.totalCasts
pa.luck = tonumber(hgv.luck) or pa.luck
pa.rod = tostring(hgv.equippedRod or pa.rod)
pa.castTime = tonumber(hgv.castTime) or pa.castTime
pa.tutorialStep = tonumber(hgv.tutorialStep) or pa.tutorialStep

if type(hgv.rods) == _d("GFUXWQc") then
pa.rodsOwned = hgv.rods
end

if type(hgv.baits) == _d("GFUXWQc") then
pa.baitsOwned = hgv.baits
end

if type(hgv.boats) == _d("GFUXWQc") then
pa.boatsOwned = hgv.boats
end

if type(hgv.mats) == _d("GFUXWQc") then
pa.mats = hgv.mats
end

if hgv.bootOwned ~= nil then
pa.boot.owned = hgv.bootOwned == true
end

if hgv.bootEquipped ~= nil then
pa.boot.equipped = hgv.bootEquipped == true
end

if hgv.equippedBait ~= nil then
pa.equippedBait = tostring(hgv.equippedBait)
end

if hgv.activeBoat ~= nil then
pa.activeBoat = tostring(hgv.activeBoat)
end

pa.boatTier = tonumber(hgv.boatTier) or pa.boatTier
pa.islandLocked = hgv.islandLocked == true
pa.rebirths = tonumber(hgv.rebirths) or pa.rebirths

if type(hgv.rebirthCards) == _d("GFUXWQc") then
pa.rebirthCards = hgv.rebirthCards
end

pa.lastSync = os.time()

return true
end

local function oavj()
local yuhp, we = pcall(function()
return bo.FishingGetState:InvokeServer()
end)

if not yuhp or type(we) ~= _d("GFUXWQc") then
pa.loaded = false
return false
end

return lvs(we)
end

local gmj = false

local function elo()
if gmj then
return false
end

local ybk = fh.Character

if not ybk then
return false
end

if ybk:FindFirstChild(_d("Kl0GXQsJFz5bEQ")) then
return true
end

local koiv = fh:FindFirstChild(_d("LlUWXhIGEwc"))
local yv = koiv and koiv:FindFirstChild(_d("Kl0GXQsJFz5bEQ"))
local iqix = ybk:FindFirstChildOfClass(_d("JEEYVAwIGQg"))

if not (yv and iqix) then
return false
end

return pcall(function()
iqix:EquipTool(yv)
end)
end

local function gxts()
local xe = fh.Character
local ai = xe and xe:FindFirstChild(_d("JEEYVAwIGQhmGloWNxEeQA"))

if not ai then
return nil
end

local gh = RaycastParams.new()
gh.FilterType = Enum.RaycastFilterType.Exclude
gh.FilterDescendantsInstances = { xe }

local el = 24
local cg = {}
local ef = 0

for sm = 0, el - 1 do
local ghsj = math.rad(sm * (360 / el))
local wp = Vector3.new(math.sin(ghsj), 0, math.cos(ghsj))
local flg = ai.Position + wp * 20 + Vector3.new(0, 40, 0)
local emff = workspace:Raycast(flg, Vector3.new(0, -120, 0), gh)
local zoo = emff and (ai.Position.Y - emff.Position.Y) or 120

cg[sm] = zoo > 12

if cg[sm] then
ef = ef + 1
end
end

if ef == 0 then
return nil
end

local zfx, rokh = nil, 0

for xrt = 0, el - 1 do
if cg[xrt] and not cg[(xrt - 1) % el] then
local oqjj = 0

while oqjj < el and cg[(xrt + oqjj) % el] do
oqjj = oqjj + 1
end

if oqjj > rokh then
zfx = xrt
rokh = oqjj
end
end
end

if not zfx then
return nil
end

local nx = zfx + (rokh - 1) / 2
local hlhi = math.rad(nx * (360 / el))

return Vector3.new(math.sin(hlhi), 0, math.cos(hlhi))
end

local function vj()
local izb = fh.Character
local xy = izb and izb:FindFirstChild(_d("JEEYVAwIGQhmGloWNxEeQA"))

if not xy then
return nil
end

if #qhv == 0 or os.clock() - auuq > 20 then
gpfu()
end

local dlj, jgp = nil, math.huge

for kh, zj in ipairs(qhv) do
if zj.Parent then
local bc = (zj.Position - xy.Position).Magnitude

if bc < jgp then
jgp = bc
dlj = zj
end
end
end

if not dlj or jgp > 25 then
local iwi = gxts()

if iwi then
return iwi
end
end

if not dlj then
return nil
end

local wcaq = Vector3.new(dlj.Position.X - xy.Position.X, 0, dlj.Position.Z - xy.Position.Z)

if wcaq.Magnitude < 0.05 then
return Vector3.new(0, 0, -1)
end

return wcaq.Unit
end

local function sfi()
local ls = fh.Character
local rwy = ls and ls:FindFirstChild(_d("JEEYVAwIGQhmGloWNxEeQA"))

if not rwy then
return nil
end

local ofsz = rwy.CFrame.LookVector
local fxu = Vector3.new(ofsz.X, 0, ofsz.Z)

if fxu.Magnitude < 0.05 then
return nil
end

return fxu.Unit
end

local function tjq()
local lyyn = fh.Character
local bnkh = lyyn and lyyn:FindFirstChild(_d("JEEYVAwIGQhmGloWNxEeQA"))

if not bnkh then
return false
end

local oclz = flk
local zwkw = RaycastParams.new()
zwkw.FilterType = Enum.RaycastFilterType.Exclude
zwkw.FilterDescendantsInstances = { lyyn }

local xu = workspace:Raycast(flk + Vector3.new(0, 40, 0), Vector3.new(0, -200, 0), zwkw)

if xu and xu.Instance.Name ~= _d("O1UBUBA") then
oclz = Vector3.new(flk.X, xu.Position.Y + 3, flk.Z)
end

bnkh.CFrame = CFrame.new(oclz)
task.wait(0.5)
gpfu()

return true
end

local function vn()
local ll = fh.Character
local vjh = ll and ll:FindFirstChild(_d("JEEYVAwIGQhmGloWNxEeQA"))

if not vjh then
return false
end

local qwo = Vector3.new(flk.X - vjh.Position.X, 0, flk.Z - vjh.Position.Z)
local iiqe = qwo.Magnitude

if iiqe < 2 then
return false
end

local ufh = qwo.Unit

if iiqe > 12 then
local ie = math.min(14, iiqe - 6)
local nffg = vjh.Position + ufh * ie
local grjt = RaycastParams.new()
grjt.FilterType = Enum.RaycastFilterType.Exclude
grjt.FilterDescendantsInstances = { ll }

local jl = workspace:Raycast(nffg + Vector3.new(0, 25, 0), Vector3.new(0, -80, 0), grjt)

if jl and jl.Instance.Name ~= _d("O1UBUBA") then
local vs = jl.Position.Y + 3.2

if math.abs(vs - vjh.Position.Y) <= 10 then
local vwgk = Vector3.new(jl.Position.X, vs, jl.Position.Z)
vjh.CFrame = CFrame.lookAt(vwgk, vwgk + ufh)

return true
end
end
end

vjh.CFrame = CFrame.lookAt(vjh.Position, vjh.Position + ufh)

return true
end

local jucv = {}

jucv.surfaceWait = 8

jucv.walking = false
jucv.walkStartedAt = 0

jucv.islandHold = Vector3.new(-7384, 16.3, -40539)

jucv.custom = nil
jucv.customIsland = nil

jucv.islandAnchors = {
{ id = _d("DVYUWwYIHglQKlwRCxECUA"), x = -3800 },
{ id = _d("GEMcWz0FFQ1XHVAR"), x = -6180 },
{ id = _d("G10bUQ8OHABrHEYOAg"), x = -7480 },
}

jucv.arrivals = {
abandoned_island = Vector3.new(-3825, 24, -40260),
twin_beaches = Vector3.new(-6180, 40, -40350),
windmill_isle = Vector3.new(-7480, 30, -40350),
lobby = Vector3.new(-499, 17, -40234),
}

function jucv.islandOf(ovjm)
if not ovjm then
return _d("AFsXVxs")
end

if ovjm.X > -4500 then
return _d("AFsXVxs")
end

local sp, rlmb = _d("DVYUWwYIHglQKlwRCxECUA"), math.huge

for hmn, dvyo in ipairs(jucv.islandAnchors) do
local jwo = math.abs(ovjm.X - dvyo.x)

if jwo < rlmb then
sp = dvyo.id
rlmb = jwo
end
end

return sp
end

jucv.savedVersion = 2

do
local qksn = getgenv().ACBXDeepSpot

if type(qksn) == _d("GFUXWQc") and qksn.v == jucv.savedVersion
and tonumber(qksn.X) and tonumber(qksn.Y) and tonumber(qksn.Z) then
jucv.custom = Vector3.new(tonumber(qksn.X), tonumber(qksn.Y), tonumber(qksn.Z))
jucv.customIsland = qksn.island
end
end

function jucv.spot()
return jucv.custom or jucv.islandHold
end

function jucv.dropStale()
if not jucv.custom then
return false
end

if jucv.zoneAt(jucv.custom) then
return false
end

jucv.custom = nil
jucv.customIsland = nil
getgenv().ACBXDeepSpot = nil

return true
end

function jucv.capture()
local xyj = fh.Character
local biqq = xyj and xyj:FindFirstChild(_d("JEEYVAwIGQhmGloWNxEeQA"))

if not biqq then
return false, _d("IltVVgoGAg1XAVAQRwQDFAdQAwNQDRQGRQ0TUApGGlhM")
end

local daj = biqq.Position
local vz = jucv.floorAt(Vector3.new(daj.X, daj.Y + 10, daj.Z))

if not vz then
return false, _d("P0AUWwZHHwIUBloODhRMUwdaFwkUTFIcRxETUEEUAV0LFFAfRBpBQg8RHxQbWkIBHANbBxUWCFAPVQZBQgECA1lb")
end

local gv = jucv.zoneAt(daj)

if not gv then
return false, _d("OFwcRkIUAANAVVwRRx8ZQAZcBgJQCUIQRxtHFgVHHVwMAFAeXRtSQkpQH0AUWwZHHxpRBxUWDxVMQxRBBxVQCl0HRhZJ")
end

jucv.custom = daj
jucv.customIsland = jucv.islandOf(daj)

getgenv().ACBXDeepSpot = {
X = daj.X,
Y = daj.Y,
Z = daj.Z,
island = jucv.customIsland,
v = jucv.savedVersion,
}

return true, _d("P1UDUAZHBARdBhURFx8YFBRGQhMYCRQRUAcXXRtVAVAQRxgDWBEVSg") .. tostring(gv.name) .. _d("RRo")
end

function jucv.zoneTable()
local kdve = {}

if kr and type(kr.Zones) == _d("GFUXWQc") then
for jvf, psng in ipairs(kr.Zones) do
kdve[#kdve + 1] = {
id = tostring(psng.id),
name = tostring(psng.name or psng.id),
half = tonumber(psng.half) or 0,
luck = tonumber(psng.luck) or 0,
index = tonumber(psng.index) or 0,
boatTier = tonumber(psng.boatTier) or 0,
}
end
end

table.sort(kdve, function(ggkd, bb)
return ggkd.index < bb.index
end)

return kdve
end

function jucv.zoneAt(rxd)
local obcv = kr and kr.ZoneCenter
local hhg = jucv.zoneTable()

if not (obcv and rxd and #hhg > 0) then
return nil
end

local bra = math.max(math.abs(rxd.X - obcv.X), math.abs(rxd.Z - obcv.Z))

for mbt, lh in ipairs(hhg) do
if bra < lh.half then
return lh
end
end

return nil
end

function jucv.current()
local ub = fh.Character
local nrs = ub and ub:FindFirstChild(_d("JEEYVAwIGQhmGloWNxEeQA"))

return nrs and jucv.zoneAt(nrs.Position) or nil
end

function jucv.sync()
local pcwr = jucv.current()
pa.zoneId = pcwr and pcwr.id or nil
end

function jucv.floorAt(ovk)
local yr = fh.Character
local xme = RaycastParams.new()
xme.FilterType = Enum.RaycastFilterType.Exclude
xme.FilterDescendantsInstances = { yr }

local xut = workspace:Raycast(Vector3.new(ovk.X, ovk.Y + 20, ovk.Z), Vector3.new(0, -80, 0), xme)

if xut and xut.Instance.Name ~= _d("O1UBUBA") then
return xut
end

return nil
end

function jucv.ensureSpotMap()
local ovg = jucv.spot()
local th = Vector3.new(ovg.X, ovg.Y + 20, ovg.Z)

if jucv.floorAt(th) then
return true
end

local otzi = workspace:FindFirstChild(_d("IVUFRg"))

if otzi and otzi:FindFirstChild(_d("L1sURhYGHCBbF1cb")) then
if os.clock() - (jucv.hopAt or 0) > 1 then
jucv.hopAt = os.clock()
jucv.hop(ovg)
pa.lastMessage = _d("IVsDXAwAUBhbVUEKAlAIURBFTxARGFEHFREXHxg")
end

return false
end

if os.clock() - (jucv.islandAskedAt or 0) > 1.2 then
jucv.islandAskedAt = os.clock()

local nug = jucv.customIsland or jucv.islandOf(ovg)

if nug == _d("AFsXVxs") then
pcall(function()
bo.TeleportToWorld:FireServer(_d("AFsXVxs"))
end)
else
pcall(function()
bo.FishingIslandTeleport:FireServer(_d("G1UMRQ0OHhg"), nug)
end)
end

pa.lastMessage = _d("OFUeXAwAUBhcEBUFBh0JEwYVFgIcCUQaRxZHBAMUAV0HRxQJUQUYFQYECUZVWAMX")
end

return false
end

function jucv.hop(iy)
local ne = fh.Character
local scmz = ne and ne:FindFirstChild(_d("JEEYVAwIGQhmGloWNxEeQA"))
local qup = ne and ne:FindFirstChildOfClass(_d("JEEYVAwIGQg"))

if not (scmz and qup) then
return false
end

if qup.SeatPart then
pcall(function()
qup.Sit = false
end)
end

scmz.AssemblyLinearVelocity = Vector3.zero
scmz.CFrame = CFrame.new(Vector3.new(iy.X, iy.Y + 8, iy.Z))

return true
end

function jucv.faceWater()
local ufr = fh.Character
local meuf = ufr and ufr:FindFirstChild(_d("JEEYVAwIGQhmGloWNxEeQA"))

if not meuf then
return false
end

local ji = vj()

if not ji then
local mdzw = kr and kr.ZoneCenter

if mdzw then
local eh = Vector3.new(mdzw.X - meuf.Position.X, 0, mdzw.Z - meuf.Position.Z)

ji = eh.Magnitude > 1 and eh.Unit or nil
end
end

if not ji then
return false
end

meuf.CFrame = CFrame.lookAt(meuf.Position, meuf.Position + ji)

return true
end

function jucv.aimWater(yox)
local wy = fh.Character
local wqs = wy and wy:FindFirstChild(_d("JEEYVAwIGQhmGloWNxEeQA"))

if not wqs then
return false
end

if yox then
gpfu()
end

local oia = wqs.CFrame.LookVector
local notm = Vector3.new(oia.X, 0, oia.Z)
local adcs = vj()

if not adcs then
return false
end

if notm.Magnitude > 0.05 and notm.Unit:Dot(adcs) > 0.985 then
return true
end

wqs.CFrame = CFrame.lookAt(wqs.Position, wqs.Position + adcs)

return true
end

function jucv.hold(qptl)
local bjl = fh.Character
local hxk = bjl and bjl:FindFirstChild(_d("JEEYVAwIGQhmGloWNxEeQA"))
local hhkh = bjl and bjl:FindFirstChildOfClass(_d("JEEYVAwIGQg"))

if not (hxk and hhkh) then
return false
end

if hhkh.SeatPart then
pcall(function()
hhkh.Sit = false
end)
end

local eokf = jucv.floorAt(qptl)

if not eokf then
return false
end

hxk.AssemblyLinearVelocity = Vector3.zero
hxk.CFrame = CFrame.new(Vector3.new(qptl.X, eokf.Position.Y + 3.2, qptl.Z))

pcall(jucv.aimWater, true)

pa.phase = _d("BVAZUA")
pa.nextCastAt = 0

return true
end

function jucv.dive()
local sq = jucv.spot()

if not jucv.ensureSpotMap() then
return false
end

if not jucv.hold(sq) then
return false
end

jucv.islandAskedAt = 0

local mvt = jucv.zoneAt(sq)

pa.lastMessage = mvt
and (_d("JFsZUQsJF0xAHVBCAxUJRFhCAxMVHhQGRQ0TUEQ") .. tostring(mvt.name) .. _d("RQ"))
or _d("JFsZUQsJF0xAHVBCAxUJRFhCAxMVHhQGRQ0T")

task.wait(0.25)
jucv.sync()
pa.deepDiveAt = os.clock() + 2

return true
end

function jucv.walk()
local khhd = fh.Character
local dsx = khhd and khhd:FindFirstChild(_d("JEEYVAwIGQhmGloWNxEeQA"))

if jucv.walking and os.clock() - (jucv.walkStartedAt or 0) < 60 then
return false
end

if not dsx then
return false
end

local wqv = jucv.spot()

if (dsx.Position - Vector3.new(wqv.X, dsx.Position.Y, wqv.Z)).Magnitude <= 8 then
pa.phase = _d("BVAZUA")
pa.nextCastAt = 0

return true
end

jucv.walking = true
jucv.walkStartedAt = os.clock()
pa.deepPhase = _d("G1UZXg")
pa.deepStageAt = os.clock()
pa.lastMessage = _d("O1UZXgsJF0xAGhUWDxVMUBBQEgIDGBQCVBYCAkxHBVoW")

task.spawn(function()
local ir = khhd and khhd:FindFirstChildOfClass(_d("JEEYVAwIGQg"))

local dzvp, lgx = pcall(function()

local lrav = workspace:FindFirstChild(_d("IVUFRg"))
local wwar = jucv.customIsland or jucv.islandOf(wqv)
local tct = (dsx.Position - Vector3.new(wqv.X, dsx.Position.Y, wqv.Z)).Magnitude

if tct > 400 then
if not (lrav and lrav:FindFirstChild(_d("L1sURhYGHCBbF1cb"))) then
pcall(function()
bo.TeleportToWorld:FireServer(_d("AFsXVxs"))
end)

local zr = os.clock() + 20

while pa.deepWalk and os.clock() < zr do
local cyh = workspace:FindFirstChild(_d("IVUFRg"))

if cyh and cyh:FindFirstChild(_d("L1sURhYGHCBbF1cb")) then
break
end

task.wait(0.5)
end
end

if pa.deepWalk then
local gxyd = jucv.arrivals and jucv.arrivals[wwar]

if gxyd then
jucv.hop(gxyd)
else
local trc = Vector3.new(wqv.X - dsx.Position.X, 0, wqv.Z - dsx.Position.Z)
local uf = trc.Magnitude > 1 and trc.Unit or Vector3.new(1, 0, 0)

jucv.hop(Vector3.new(wqv.X - uf.X * 120, wqv.Y, wqv.Z - uf.Z * 120))
end

task.wait(1.5)
end
end

if pa.deepWalk and ir then

local sv = (dsx.Position - Vector3.new(wqv.X, dsx.Position.Y, wqv.Z)).Magnitude
local gay = os.clock() + math.clamp(sv / 8, 30, 600)
local vduq = 0
local ysr = dsx.Position
local kcfz = os.clock()

while pa.deepWalk and os.clock() < gay do
local otn = Vector3.new(wqv.X - dsx.Position.X, 0, wqv.Z - dsx.Position.Z)

if otn.Magnitude <= 3 then
break
end

if os.clock() - vduq >= 0.25 then
ir:MoveTo(Vector3.new(wqv.X, dsx.Position.Y, wqv.Z))
vduq = os.clock()
end

if os.clock() - kcfz >= 1.2 then
if (dsx.Position - ysr).Magnitude < 2 then
ir.Jump = true
end

ysr = dsx.Position
kcfz = os.clock()
end

task.wait(0.1)
end

ir:MoveTo(dsx.Position)
end
end)

jucv.walking = false

if not dzvp then
pa.deepPhase = _d("BVAZUA")
pa.deepStageAt = os.clock()
pa.lastMessage = _d("O1UZXkITH0xwEFASAgMYFCJUFgICTFIUXA4CFFYU") .. tostring(lgx)

return
end

if not pa.deepWalk then
return
end

local zjr = Vector3.new(dsx.Position.X - wqv.X, 0, dsx.Position.Z - wqv.Z)

if zjr.Magnitude <= 6 then

pcall(jucv.aimWater, true)
pa.phase = _d("BVAZUA")
pa.nextCastAt = 0
pa.deepPhase = _d("BFsZUQ")
pa.deepStageAt = os.clock()
jucv.sync()
pa.lastMessage = _d("O1UZXgcDUBhbVUEKAlAfVQNQBkcUCVEFGBUGBAlGVUYSCAQ")
else

pa.deepPhase = _d("BVAZUA")
pa.deepStageAt = os.clock()
pa.lastMessage = _d("L1sAWQZHHgNAVUIDCxtMQBoVFg8VTFAQUBICAxgUAlQWAgJMRwVaFkddTEAHTAsJF0xVElQLCQ")
end
end)

return false
end

function jucv.settle()
for dtx = 1, 30 do
if not pa.deepZone or pa.deepWalk then
return false
end

if jucv.dive() then
return true
end

task.wait(1)
end

return false
end

function jucv.surface()
local br = fh.Character
local ezz = br and br:FindFirstChild(_d("JEEYVAwIGQhmGloWNxEeQA"))

if not ezz then
return false
end

local iz = RaycastParams.new()
iz.FilterType = Enum.RaycastFilterType.Exclude
iz.FilterDescendantsInstances = { br }

local kdo = workspace:Raycast(flk + Vector3.new(0, 40, 0), Vector3.new(0, -200, 0), iz)
local gl = flk

if kdo and kdo.Instance.Name ~= _d("O1UBUBA") then
gl = Vector3.new(flk.X, kdo.Position.Y + 3, flk.Z)
end

ezz.CFrame = CFrame.new(gl)
pa.phase = _d("BVAZUA")
pa.nextCastAt = 0

return true
end

function pa.gotoIsland()
local mgiw = fh.Character
local rxa = mgiw and mgiw:FindFirstChild(_d("JEEYVAwIGQhmGloWNxEeQA"))
local rz = workspace:FindFirstChild(_d("JUcZVAwDNgVHHVAQChECeiV2"), true)

if not (rxa and rz) then
return false
end

local nfa = rz:GetPivot()
local cj = RaycastParams.new()
cj.FilterType = Enum.RaycastFilterType.Exclude
cj.FilterDescendantsInstances = { mgiw, rz }

local hsa = nil
local tw = -math.huge

for hfl, rtnp in ipairs({ Vector3.new(0, 0, 6), Vector3.new(6, 0, 0), Vector3.new(0, 0, -6), Vector3.new(-6, 0, 0), Vector3.new(0, 0, 0) }) do
local lbdr = workspace:Raycast(nfa.Position + rtnp + Vector3.new(0, 30, 0), Vector3.new(0, -120, 0), cj)

if lbdr and lbdr.Position.Y > tw then
hsa = lbdr
tw = lbdr.Position.Y
end
end

if hsa then
rxa.CFrame = CFrame.new(Vector3.new(hsa.Position.X, tw + 3.5, hsa.Position.Z))
else
rxa.CFrame = CFrame.new(nfa.Position + Vector3.new(0, 4, 0))
end

pa.phase = _d("BVAZUA")
pa.nextCastAt = 0

return true
end

function jucv.cycle()
local cgy = os.clock()
local cl = pa.deepPhase or _d("BVAZUA")
local ldup = tonumber(pa.deepStageAt) or 0

if cgy < math.max(pa.shopTripUntil or 0, pa.tpHoldUntil or 0) then
return
end

if cl == _d("BVAZUA") then
pa.deepPhase = _d("BFsZUQ")
pa.deepStageAt = cgy

if pa.deepWalk then
jucv.walk()
else
jucv.dive()
end

return
end

if cl == _d("G1UZXg") then
return
end

if cl == _d("BFsZUQ") then
local ehyv = jucv.current()

local lwh = jucv.zoneAt(jucv.spot())

if ehyv and not fh:GetAttribute(_d("P0McWA8OHgs")) and cgy - (pa.deepAimAt or 0) > 2 then
pa.deepAimAt = cgy
pcall(jucv.aimWater)
end

if fh:GetAttribute(_d("P0McWA8OHgs")) then
if pa.deepWalk then

pa.deepPhase = _d("BVAZUA")
pa.deepStageAt = cgy
else
pa.deepPhase = _d("CF0F")
pa.deepStageAt = cgy
pa.lastMessage = _d("P0McWA8OHgsUFEFCExgJFBFQBxdQH0QaQUJKUB9BB1MDBBUIFBNaEEcRBUY")
end
elseif not ehyv or (lwh and ehyv.index < lwh.index) then

pa.deepPhase = _d("BVAZUA")
pa.deepStageAt = cgy
end

return
end

if cl == _d("CF0F") then
jucv.surface()
pa.deepPhase = _d("H0EHUwMEFQ")
pa.deepStageAt = cgy

return
end

if cl == _d("H0EHUwMEFQ") and cgy - ldup >= jucv.surfaceWait then
pa.deepPhase = _d("BVAZUA")
end
end

local function pm()
local pajm = fh.Character
local jbbx = pajm and pajm:FindFirstChild(_d("JEEYVAwIGQhmGloWNxEeQA"))

if not jbbx then
return false
end

return (jbbx.Position - flk).Magnitude <= 12
end

local function bhhc()
if not elo() then
return false
end

local mtq = pcall(function()
bo.FishingSetAuto:FireServer(true)
end)

pa.usingGameAuto = mtq
return mtq
end

local function zkx()
pa.usingGameAuto = false

pcall(function()
bo.FishingSetAuto:FireServer(false)
end)

pcall(function()
bo.FishingStop:FireServer()
end)
end

function pa.recover()
pa.phase = _d("BVAZUA")
pa.nextCastAt = 0
pa.deepPhase = _d("BVAZUA")
pa.deepStageAt = 0
pa.deepDiveAt = 0
pa.waterRefusals = 0
pa.usingGameAuto = false
pa.castMark = pa.totalCasts
pa.castMarkAt = os.clock()

pcall(zkx)
pcall(elo)

if pa.deepZone and not jucv.current() then

pcall(function()
bo.TeleportToWorld:FireServer(_d("AFsXVxs"))
end)
elseif pa.tpToBay and not pm() then
pcall(tjq)
end

pa.lastMessage = _d("Kl0GXQsJF0xHAVQOCxUIFFgVEAIDCUBVQQoCUBtVAVAQRxECUFVBDQgbTEAdUEIAEQFRUkZCCx8OVgwVEAgH")
end

local function yxoe()
if not elo() then
pa.lastMessage = _d("IltVUwsUGAVaEhUQCBRMXRsVFg8VTFYUVgkXEQ9f")
return false
end

local pwd = sfi()
local kbfs = vj()
local dpk = pwd or kbfs

if not dpk then
pa.lastMessage = _d("IltVQgMTFR4UE1oXCRRMWhBUEAUJ")
return false
end

if pwd and kbfs and pwd:Dot(kbfs) < 0.25 then
dpk = kbfs
end

pa.phase = _d("D1UGQQsJFw")
pa.lastMessage = nil
pa.watchdogAt = os.clock() + 25

local ceax, xid = pcall(function()
bo.FishingThrow:FireServer(1, dpk)
end)

if not ceax then
pa.phase = _d("BVAZUA")
pa.lastMessage = tostring(xid)
pa.nextCastAt = os.clock() + 3
return false
end

return true
end

local iucp = jxjd(bo.FishingUpdate.OnClientEvent, function(eou, tyw)
pa.dirty = true

if eou == _d("P0AUQQc") then
if type(tyw) == _d("GFUXWQc") then
pa.autoOn = tyw.autoOn == true
end

return
end

if eou == _d("L1UGQQ") then
pa.phase = _d("G1UcQQsJFy5dAVA")
pa.waterRefusals = 0
return
end

if eou == _d("Ll0BUA") then
local fiv = type(tyw) == _d("GFUXWQc") and tonumber(tyw.warning) or 1

pa.phase = _d("HlEQWQsJFw")
pa.watchdogAt = os.clock() + 15

task.delay(math.max(0.3, fiv + 0.8), function()
if pa.phase ~= _d("HlEQWQsJFw") then
return
end

pcall(function()
bo.FishingReel:FireServer(true, 120)
end)

pa.phase = _d("HlEGWg4RGQJT")
end)

return
end

if eou == _d("L1UBVgo") then

local nzjq = type(tyw) == _d("GFUXWQc") and tonumber(tyw.totalCasts) or nil
local rblw = tonumber(getgenv().ACBXFishingCatchMark) or 0

if nzjq and nzjq <= rblw and rblw - nzjq < 25 then
return
end

if nzjq then
getgenv().ACBXFishingCatchMark = nzjq
end

local zm = type(tyw) == _d("GFUXWQc") and tostring(tyw.itemId) or _d("GVoeWw0QHg")
local xq = pa.catchName(zm)

pa.catches[zm] = (pa.catches[zm] or 0) + 1
pa.totalCatches = (pa.totalCatches or 0) + 1

local aqn = type(tyw) == _d("GFUXWQc") and tyw.chest or nil

if type(aqn) == _d("GFUXWQc") and aqn.itemId then
local yifw = tostring(aqn.itemId)

pa.catches[yifw] = (pa.catches[yifw] or 0) + 1
end

if os.clock() - (xh.at or 0) >= 5 then
xh.at = os.clock()
xh.save()
end
pa.lastCatch = xq
pa.lastMessage = nil
pa.phase = _d("BVAZUA")
pa.nextCastAt = os.clock() + 2.5

if type(tyw) == _d("GFUXWQc") then
pa.casts = tonumber(tyw.casts) or pa.casts
pa.totalCasts = tonumber(tyw.totalCasts) or pa.totalCasts
pa.autoUnlocked = tyw.autoUnlocked == true or pa.autoUnlocked
end

return
end

if eou == _d("LUEBWi0BFg") then

pa.usingGameAuto = false
pa.phase = _d("BVAZUA")
pa.nextCastAt = os.clock() + 1
return
end

if eou == _d("KUcWVBICFA") then
pa.phase = _d("BVAZUA")
pa.lastMessage = _d("OFwQFQQOAwQUEloWRxEbVQw")
pa.nextCastAt = os.clock() + 2.5
return
end

if eou == _d("PlEfUAETFQg") then
pa.phase = _d("BVAZUA")

local lk = type(tyw) == _d("GFUXWQc") and tostring(tyw.message) or _d("L1UGQUIVFQZRFkEHAw")
pa.lastMessage = lk

if lk:lower():find(_d("G1UBUBA"), 1, true) then
pa.waterRefusals = (pa.waterRefusals or 0) + 1

if pa.waterRefusals >= 2 then
pa.waterRefusals = 0

if vn() then
pa.lastMessage = _d("PlETQBECFExAAlwBAlBBFAFAEAkVCBQXVAEMUBhbAlQQA1AYXBAVFQYECUY")
pa.nextCastAt = os.clock() + 1.5
return
end
end

pa.nextCastAt = os.clock() + 8
return
end

pa.waterRefusals = 0
pa.nextCastAt = os.clock() + 3
return
end
end)

local function dr()
if not pa.loaded then
return _d("PlEUUQsJF0xSHEYKDh4LFAZBAxMVQhpb")
end

local uto = pa.autoUnlocked == true
or (pa.totalCasts or 0) > 0
or (pa.tutorialStep or 0) > 0
local ng = kr and kr.RodsById and kr.RodsById[pa.rod]
local igug = ng and tostring(ng.name) or tostring(pa.rod)
local tzgi = math.floor((tonumber(pa.luck) or 0) * 100 + 0.5)

local em = {
_d("PlsRD0I") .. igug,
_d("IEEWXlhH") .. tzgi .. _d("SQ"),
}

local jmdf = jucv.current()

if jmdf then
table.insert(em, _d("NlsbUFhH") .. jmdf.name .. _d("TBxe") .. tostring(math.floor(jmdf.luck * 100 + 0.5)) .. _d("SRQZQAEMWQ"))
end

table.insert(em, _d(""))
table.insert(em, _d("L1UGQRFHBAMUBkUHCRRWFA") .. ith(pa.casts or 0))
table.insert(em, _d("OFsBVA5HEw1HAUZYRw") .. ith(pa.totalCasts or 0))

table.insert(em, _d(""))
table.insert(em, _d("Kl0GXQsJF0xBG1kNBBsJUE8V") .. (uto and _d("FVEG") or _d("Als")))
table.insert(em, _d("LUEBWk8BGR9cVUASAAINUBAPQg") .. (pa.autoUnlocked and _d("A0MbUAY") or _d("AlsBFQ0QHglQ")))

if pa.enabled then
local li = pa.usingGameAuto and _d("C1UYUEIGBRhb") or tostring(pa.phase)

if li == _d("G1UcQQsJFy5dAVA") then
li = _d("G1UcQQsJF0xSGkdCBlAOXQFQ")
elseif li == _d("HlEQWQsJFw") then
li = _d("HlEQWQsJF0xdGw")
elseif li == _d("HlEGWg4RGQJT") then
li = _d("AFUbUQsJF0xdAQ")
end

table.insert(em, _d(""))
table.insert(em, _d("LUEBWkIhGR9cTxU") .. li)

local tbz = btd.worldBoss

if tbz and type(tbz.hasWork) == _d("CkEbVhYOHwI") and tbz.enabled and tbz.hasWork() then
table.insert(em, _d("JFsZUQsJF1YUElkNBREAFBdaERRQBUdVQBJHWB5RBkAPAgNMWxsVCxMDTFcaWg4DHxtaXA"))
end

if pa.lastCatch then
table.insert(em, _d("IFUGQUIEERhXHQ9C") .. pa.lastCatch)
end
end

if pa.lastMessage then
table.insert(em, _d(""))
table.insert(em, _d("IlsBUFhH") .. pa.lastMessage)
end

return table.concat(em, _d("Zg"))
end

local function rsn()
local xjd = 0

for tdho, lfp in pairs(pa.catches) do
local ua = hb.ById[tdho]

if not (ua and ua.type == _d("D1wQRhY")) then
xjd = xjd + lfp
end
end

return xjd
end

local function olo()
local xugd = {}

for zjo, bnmo in pairs(pa.catches) do
local ubcj = hb.ById[zjo]
local pxga = ubcj and ubcj.type == _d("D1wQRhY") or false

table.insert(xugd, {
name = pa.catchName(zjo),
count = bnmo,
chest = pxga,
rank = pxga and (tonumber(ubcj.border) or 1) or 0,
})
end

if #xugd == 0 then
return _d("IlsBXQsJF0xXFEAFDwRMTRBBTG16OEEHW0IIHkx1AEENRzYFRx0VAwkUTEAdUEITEQBYDBURExEeQAYVCgICCRpVfBZHAw1CEEZCDgQfURlTTkcDAxQcQUIEER5GHFARRx8aUQcVDAIIGBQGUBEUGQNaWw")
end

table.sort(xugd, function(hssr, egw)
if hssr.chest ~= egw.chest then
return hssr.chest
end

if hssr.chest and hssr.rank ~= egw.rank then
return hssr.rank > egw.rank
end

if hssr.count ~= egw.count then
return hssr.count > egw.count
end

return hssr.name < egw.name
end)

local bqkj = {}

for bhr, llu in ipairs(xugd) do
table.insert(bqkj, llu.name .. _d("TNb1oUI") .. ith(llu.count))
end

local fgju = {
table.concat(bqkj, _d("Zj4")),
_d(""),
_d("OFsBVA5HEw1BEl0WXVA") .. ith(rsn()) .. _d("TPbCFQ") .. #xugd .. _d("TF8cWwYU"),
}

if pa.lastCatch then
table.insert(fgju, _d("IFUGQUIEERhXHQ9C") .. tostring(pa.lastCatch))
end

return table.concat(fgju, _d("Zg"))
end

local lbpg = {
rod = Vector3.new(-493, 18, -40254),
bait = Vector3.new(-493, 18, -40254),
}

local function muwp(ike)
if not kr then
return {}
end

local big

if ike == _d("HlsR") then
big = kr.RodsById
elseif ike == _d("DlUcQQ") then
big = kr.BaitsById
else
big = nil
end

local nt = {}

for ti, zv in pairs(big or {}) do
if not zv.crafted then
table.insert(nt, {
id = tostring(ti),
name = tostring(zv.name or ti),
cost = tonumber(zv.cost) or 0,
luck = tonumber(zv.luck) or 0,
index = tonumber(zv.index) or 0,
island = zv.shop == _d("BUcZVAwD"),
})
end
end

table.sort(nt, function(yiu, jo)
if yiu.index ~= jo.index then
return yiu.index < jo.index
end

return yiu.cost < jo.cost
end)

return nt
end

local function iltw(jgf)
if jgf == _d("HlsR") then
return pa.rodsOwned or {}
elseif jgf == _d("DlUcQQ") then
return pa.baitsOwned or {}
end

return {}
end

local function yo(qj)
if qj == _d("HlsR") then
return pa.rod
elseif qj == _d("DlUcQQ") then
return pa.equippedBait
end

return nil
end

local function vsne(ctju)
local sco = iltw(ctju)
local gcz = nil

for qg, mjn in ipairs(muwp(ctju)) do
if sco[mjn.id] == true then
gcz = mjn
end
end

if ctju == _d("HlsR") and kr and kr.RodsById then
local yfys = kr.RodsById.rod_secret

if yfys and sco.rod_secret == true then
gcz = {
id = _d("HlsRahECEx5RAQ"),
name = tostring(yfys.name or _d("KUwWVA4OEhlG")),
cost = tonumber(yfys.cost) or 0,
luck = tonumber(yfys.luck) or 0,
index = tonumber(yfys.index) or 0,
island = true,
}
end
end

return gcz
end

local function uxf(uja)
if uja.island and pa.islandLocked then
return false
end

return true
end

local function ptk(dpj)
local kxor = iltw(dpj)
local pyca = pa.casts or 0
local pyv = nil

for krvw, obz in ipairs(muwp(dpj)) do
if kxor[obz.id] ~= true and obz.cost <= pyca and uxf(obz) then
pyv = obz
end
end

return pyv
end

local function kp(shb)
local snv = iltw(shb)

for hul, jj in ipairs(muwp(shb)) do
if snv[jj.id] ~= true and uxf(jj) then
return jj
end
end

return nil
end

local function ncmx(wh, klrh)
if not klrh then
return _d("AlsbUEIIBwJREQ")
end

return klrh.name .. _d("TBxe") .. tostring(math.floor(klrh.luck * 100 + 0.5)) .. _d("SRQZQAEMWQ")
end

local function pr()
if not kr then
return _d("Kl0GXQsJFyhVAVRCCR8YFBNaFwkUTBlVRgoIAExQFEEDRwUCVQNUCwsRDlgQGw")
end

local xv = {}
local euk = { rod = _d("PlsR"), bait = _d("LlUcQQ") }

for vlw, ibv in ipairs({ _d("HlsR"), _d("DlUcQQ") }) do
local fijr = vsne(ibv)
local apsx = nil

for tz, lnqd in ipairs(muwp(ibv)) do
if lnqd.id == yo(ibv) then
apsx = lnqd.name
end
end

if #xv > 0 then
table.insert(xv, _d(""))
end

table.insert(xv, euk[ibv] .. _d("VhQ") .. ncmx(ibv, fijr))
table.insert(xv, _d("I1pVWw0QSkw") .. (apsx or _d("AlsbUA")))

local ru = ptk(ibv) or kp(ibv)

if ru then
local ynqh = ru.cost - (pa.casts or 0)

table.insert(xv, _d("IlENQVhH") .. ru.name .. _d("TPbCFQ") .. ith(ru.cost) .. _d("TFcURhYU"))

if ynqh > 0 then
table.insert(xv, _d("IlEQUUI") .. ith(ynqh) .. _d("TFkaRwc"))
end
else
table.insert(xv, _d("IlENQVhHFRpRB0wWDxkCU1VaFQkVCA"))
end
end

table.insert(xv, _d(""))
table.insert(xv, _d("L1UGQRFHBAMUBkUHCRRWFA") .. ith(pa.casts or 0))

if pa.shopMessage then
table.insert(xv, _d(""))
table.insert(xv, pa.shopMessage)
end

return table.concat(xv, _d("Zg"))
end

local function on(msoq, yh)
local ctq = os.clock()

if ctq < (pa.shopCallAt or 0) then
return false, _d("H1gaQg")
end

pa.shopCallAt = ctq + 1.4

local sz, cnxi, ah, lf = pcall(function()
return bo.FishingShop:InvokeServer(msoq, yh)
end)

if not sz then
return false, _d("CUYHWhBH") .. tostring(cnxi)
end

lvs(lf)

if cnxi == true then
return true, nil
end

return false, tostring(ah or _d("HlETQBECFA"))
end

function pa.rebirthCardsHeld()
local zrnv = kr and type(kr.RebirthCards) == _d("GFUXWQc") and #kr.RebirthCards or 0

if zrnv == 0 then
return 0, 0
end

local jjcr = 0

for riqj, wlf in ipairs(kr.RebirthCards) do
if pa.rebirthCards[wlf.cardId] then
jjcr = jjcr + 1
end
end

return jjcr, zrnv
end

function pa.rebirthReady()
local vbkt, ikoq = pa.rebirthCardsHeld()

return ikoq > 0 and vbkt >= ikoq and (tonumber(pa.rebirths) or 0) < 1
end

function pa.rebirthText()
local fa, uoi = pa.rebirthCardsHeld()

if uoi == 0 then
return _d("Kl0GXQsJF0xQFEEDRx4DQFVZDQYUCVBZFREIUB5RF1wQExhMXQYVFwkRGlUcWQMFHAka")
end

if (tonumber(pa.rebirths) or 0) >= 1 then
return _d("PlEXXBATGAlQWxU2DxVMdRdUDAMfAlERFSsUHA1aERULFFADRBBbTA")
end

if fa >= uoi then
return _d("LVgZFQ") .. uoi .. _d("TFcURwYUUApdBl0HA15MZhBUBh5QGFtVRwcFGR5AHRs")
end

local xihg = {}

for ure, lnp in ipairs(kr.RebirthCards) do
if not pa.rebirthCards[lnp.cardId] then
table.insert(xihg, (string.gsub(lnp.cardId, _d("MlIcRgo4"), _d(""))))
end
end

return fa .. _d("Qw") .. uoi .. _d("TFcURwYUXkxnAVwOC1ACURBRQg") .. table.concat(xihg, _d("QBQ")) .. _d("Qg")
end

local function apby(cmjx)
local xwua = fh.Character
local sfwd = xwua and xwua:FindFirstChild(_d("JEEYVAwIGQhmGloWNxEeQA"))

if not sfwd then
return false
end

return (sfwd.Position - (lbpg[cmjx] or lbpg.rod)).Magnitude <= 26
end

local function tnc(bsq, knk)

if knk and knk.island then
if not pa.shopIsland or not pa.shopIsland.toIsland() then
pa.shopMessage = _d("L1sAWQZHHgNAVUcHBhMEFAFdB0cZH1gUWwZHEwNBG0EHFQ")

return false
end

return true
end

if apby(bsq) then
return true
end

local qi = fh.Character
local gpzz = qi and qi:FindFirstChild(_d("JEEYVAwIGQhmGloWNxEeQA"))

if not gpzz then
return false
end

local sft = lbpg[bsq] or lbpg.rod
pa.shopTripUntil = os.clock() + 12
pa.shopHoldUntil = os.clock() + 12

pcall(function()
gpzz.CFrame = CFrame.new(sft)
end)

task.wait(1.2)

return apby(bsq)
end

local function xx(qrh, tuv, foh)
if not foh then
return false
end

if (pa.casts or 0) < foh.cost then
return false
end

if not tnc(qrh, foh) then
pa.shopMessage = _d("L1sAWQZHHgNAVUcHBhMEFAFdB0cDBFsFFQQIAkw") .. foh.name
return false
end

local jkt, kua = on(tuv, foh.id)

if not jkt then
local tpf = tostring(kua)
local tta = tpf:find(_d("OFUZXkITH0xAHVBCIRkfXBBHDwYe"), 1, true) or tpf:find(_d("LlsUQUIjFQ1YEEc"), 1, true)

if tta then

pa.shopMessage = _d("O1UZXgsJF0xBBRUWCFAYXBAVAQgFAkAQR0IBHx4U") .. foh.name
return false
end

if kua ~= _d("H1gaQg") then
pa.shopAt = os.clock() + 15
pa.shopMessage = _d("P1EHQwcVUB5RE0ARAhRM") .. foh.name .. _d("TBw") .. tpf .. _d("RQ")
end

return false
end

pa.shopMessage = _d("LlsAUgoTUA") .. foh.name

return true
end

local function dpmq(lsto)
local vckw = vsne(lsto)

if not vckw or yo(lsto) == vckw.id then
return false
end

local wgl

if lsto == _d("HlsR") then
wgl = _d("KUUAXBI1Hwg")
elseif lsto == _d("DlUcQQ") then
wgl = _d("KUUAXBIlEQVA")
else
return false
end

local us, yx = on(wgl, vckw.id)

if not us then
if yx ~= _d("H1gaQg") then
pa.shopMessage = _d("L1sAWQZHHgNAVVATEhkcFA") .. vckw.name .. _d("TBw") .. tostring(yx) .. _d("RQ")
end

return false
end

if lsto == _d("HlsR") then
pa.rod = vckw.id
elseif lsto == _d("DlUcQQ") then
pa.equippedBait = vckw.id
else
return false
end

pa.shopMessage = _d("KUUAXBIXFQgU") .. vckw.name

return true
end

local function vsz()
local hcl = pa.shop

if os.time() - (pa.lastSync or 0) >= 5 then
oavj()
end

if hcl.equipRod then
dpmq(_d("HlsR"))
end

if hcl.equipBait then
dpmq(_d("DlUcQQ"))
end

if hcl.autoBuyRod then
xx(_d("HlsR"), _d("LkEMZw0D"), ptk(_d("HlsR")))
end

if hcl.autoBuyBait then
xx(_d("DlUcQQ"), _d("LkEMdwMOBA"), ptk(_d("DlUcQQ")))
end
end

local function mw()
local quhe = pa.shop

return quhe.autoBuyRod or quhe.autoBuyBait or quhe.equipRod or quhe.equipBait
end

pa.shopIsland = {
rods = function()
local xw = kr and kr.RodsById or {}
local es = {}

for iujk, lra in pairs(xw) do
if tostring(lra.shop) == _d("BUcZVAwD") then
table.insert(es, {
id = tostring(iujk),
name = tostring(lra.name or iujk),
cost = tonumber(lra.cost) or 0,
luck = tonumber(lra.luck) or 0,
index = tonumber(lra.index) or 0,
crafted = lra.crafted == true,
})
end
end

table.sort(es, function(lxny, ncgx)
return lxny.index < ncgx.index
end)

return es
end,

angler = function()
local ip = workspace:FindFirstChild(_d("ImQ2Rg"), true)

if not ip then
return nil
end

for tgw, vaj in ipairs(ip:GetChildren()) do
if vaj:GetAttribute(_d("P1EWRwcTMQJTGVAQKSAv")) then
return vaj
end
end

return nil
end,
held = function(lcn)
return (pa.rodsOwned or {})[lcn] == true
end,
recipeHeld = function(iq)
for oe, uw in ipairs(iq or {}) do
local ae = tonumber((pa.mats or {})[uw.id]) or 0

if ae < (tonumber(uw.count) or 0) then
return false
end
end

return true
end,
recipeText = function(my)
local uknh = {}

for qefn, kd in ipairs(my or {}) do
local wtjt = tonumber((pa.mats or {})[kd.id]) or 0
local uhia = (hb.ById[kd.id] and hb.ById[kd.id].name) or tostring(kd.id)

table.insert(uknh, uhia .. _d("TA") .. ith(wtjt) .. _d("Qw") .. ith(tonumber(kd.count) or 0))
end

return table.concat(uknh, _d("TPbCFQ"))
end,

stand = function(tr)
local lvbc = fh.Character
local dlb = lvbc and lvbc:FindFirstChild(_d("JEEYVAwIGQhmGloWNxEeQA"))

if not (dlb and tr) then
return false
end

local uj = tr:GetPivot()
local drr = tr:FindFirstChild(_d("JEEYVAwIGQhmGloWNxEeQA")) or tr:FindFirstChildWhichIsA(_d("LlUGUDIGAhg"), true)
local ent = drr and (drr.CFrame * CFrame.new(0, 0, -5)).Position or nil

if not ent then
local kxi = RaycastParams.new()
kxi.FilterType = Enum.RaycastFilterType.Exclude
kxi.FilterDescendantsInstances = { lvbc, tr }

local hf = nil
local lb = math.huge

for wkng, rmvw in ipairs({ Vector3.new(0, 0, 6), Vector3.new(6, 0, 0), Vector3.new(0, 0, -6), Vector3.new(-6, 0, 0), Vector3.new(0, 0, 0) }) do
local pexb = workspace:Raycast(uj.Position + rmvw + Vector3.new(0, 30, 0), Vector3.new(0, -140, 0), kxi)

if pexb and tostring(pexb.Instance.Name) ~= _d("O1UBUBA") and pexb.Position.Y <= uj.Position.Y + 10 then
local adk = math.abs(pexb.Position.Y - uj.Position.Y)

if adk < lb then
hf = pexb
lb = adk
end
end
end

ent = hf and Vector3.new(hf.Position.X, hf.Position.Y + 3.5, hf.Position.Z) or (uj.Position + Vector3.new(0, 4, 0))
end

pa.shopTripUntil = os.clock() + 12

pa.islandTripUntil = os.clock() + 12

pcall(function()
dlb.CFrame = CFrame.new(ent)
end)

task.wait(1.2)

return true
end,
atIsland = function()
local alpm = workspace:FindFirstChild(_d("JUcZVAwDNgVHHVAQChECeiV2"), true)
local ssu = fh.Character
local mlu = ssu and ssu:FindFirstChild(_d("JEEYVAwIGQhmGloWNxEeQA"))

if not (alpm and mlu) then
return false
end

return (mlu.Position - alpm:GetPivot().Position).Magnitude <= 45
end,
toIsland = function()
if pa.shopIsland.atIsland() then
return true
end

pa.shopTripUntil = os.clock() + 12

if not pa.gotoIsland() then
return false
end

task.wait(1.2)

return pa.shopIsland.atIsland()
end,

craftExcalibur = function()
local wbqo = pa.shopIsland.angler()

if not wbqo or pa.shopIsland.held(_d("HlsRahECEx5RAQ")) then
return false
end

if not pa.shopIsland.recipeHeld(kr and kr.SecretRecipe) then
return false
end

pa.shopIsland.stand(wbqo)

local mlzt, pcnp = on(_d("L0YUUxY1Hwg"), _d("HlsRahECEx5RAQ"))

if mlzt then
pa.rod = _d("HlsRahECEx5RAQ")
pa.islandMessage = _d("L0YUUxYCFExAHVBCIggPVRlcABICTEYaUUIGBExAHVBCLxkIUBBbQiYeC1gQRw")
elseif pcnp ~= _d("H1gaQg") then
pa.islandMessage = _d("JF0RUQcJUC1aElkHFVAeURNAEQIUTEAdUEIiCA9VGVwAEgJMHA") .. tostring(pcnp) .. _d("RQ")
end

return mlzt
end,
craftBoot = function()
if pa.boot.owned or pa.islandLocked then
return false
end

if not pa.shopIsland.recipeHeld(kr and kr.BootRecipe) then
return false
end

if not pa.shopIsland.toIsland() then
pa.islandMessage = _d("L1sAWQZHHgNAVUcHBhMEFAFdB0cZH1gUWwZHEwNBG0EHFQ")
return false
end

local eo, bd = on(_d("L0YUUxYlHwNA"))

if eo then
pa.boot.owned = true
pa.islandMessage = _d("L0YUUxYCFExAHVBCKxULURtRAxUJTHYaWhY")
elseif bd ~= _d("H1gaQg") then
pa.islandMessage = _d("JUcZVAwDUCpdBl0HFR0NWlVHBwEFH1ERFRYPFUxWGloWR1g") .. tostring(bd) .. _d("RQ")
end

return eo
end,
best = function()
local myxo = pa.rodsOwned or {}
local qqfq = nil

for qtj, rb in ipairs(pa.shopIsland.rods()) do
if myxo[rb.id] == true and (qqfq == nil or rb.luck > qqfq.luck) then
qqfq = rb
end
end

return qqfq
end,

equipBoot = function()
if not pa.boot.owned or pa.boot.equipped then
return false
end

local ky, zq = on(_d("KUUAXBIlHwNA"), true)

if ky then
pa.boot.equipped = true
pa.islandMessage = _d("KUUAXBIXFQgUAV0HRzwJUxBbBgYCFRQ3Wg0T")
elseif zq ~= _d("H1gaQg") then
pa.islandMessage = _d("L1sAWQZHHgNAVVATEhkcFAFdB0cSA1sBFUo") .. tostring(zq) .. _d("RQ")
end

return ky
end,
active = function()
local nww = pa.island

return nww.autoRod or nww.autoAcc or nww.equipAcc
end,
run = function()
local uc = pa.island

if os.time() - (pa.lastSync or 0) >= 8 then
oavj()
end

if uc.autoRod then
pa.shopIsland.craftExcalibur()
end

if uc.autoAcc then
pa.shopIsland.craftBoot()
end

if uc.equipAcc then
pa.shopIsland.equipBoot()
end
end,
text = function()
if not kr then
return _d("Kl0GXQsJFyhVAVRCCR8YFBNaFwkUTBlVQQoCUAVHGVQMA1AfXBpFQg4DTEEbVBQGGQBVF1kHSQ")
end

local et = {}
local yqye = pa.rodsOwned or {}

table.insert(et, pa.islandLocked and _d("LVYUWwYIHglQVXwRCxECUFVcEUccA1ceUAZHXUxGEFcLFQQEFBNcEBQEQg") or _d("LVYUWwYIHglQVXwRCxECUFVcEUcfHFEbGw"))

for re, pld in ipairs(pa.shopIsland.rods()) do
local niza

if yqye[pld.id] == true then
niza = pa.rod == pld.id and _d("A0MbUAZHstsUGltCCR8b") or _d("A0MbUAY")
elseif pld.crafted then
niza = _d("JF0RUQcJUC1aElkHFVAeURZcEgI")
else
niza = ith(pld.cost) .. _d("TFcURhYU")
end

table.insert(et, pld.name .. _d("TNb1oUI") .. niza)
end

table.insert(et, _d(""))

if yqye.rod_secret then
table.insert(et, _d("KUwWVA4OEhlGTxUNEB4JUA"))
else
local iut = pa.shopIsland.recipeHeld(kr.SecretRecipe)

table.insert(et, _d("KUwWVA4OEhlGTxU") .. (iut and _d("HlEWXBICUB5RFFEb") or _d("HlEWXBICUB9cGkcW")))
table.insert(et, pa.shopIsland.recipeText(kr.SecretRecipe))
end

table.insert(et, _d("JF0RUQcJUC1aElkHFUpM") .. (pa.shopIsland.angler() and _d("GURVWw0Q") or _d("AlsBFQoCAgk")))
table.insert(et, _d(""))

local fq = pa.boot
local ck

if fq.equipped then
ck = _d("IFESUAwDER5NVXcNCARWFBBEFw4AHFER")
elseif fq.owned then
ck = _d("IFESUAwDER5NVXcNCARWFBpCDAIU")
elseif pa.shopIsland.recipeHeld(kr.BootRecipe) then
ck = _d("IFESUAwDER5NVXcNCARWFAdQAQ4ACRQHUAMDCQ")
else
ck = _d("IFESUAwDER5NVXcNCARWFA") .. pa.shopIsland.recipeText(kr.BootRecipe)
end

table.insert(et, ck)
table.insert(et, _d("L1UGQRFHBAMUBkUHCRRWFA") .. ith(pa.casts or 0))

if pa.islandMessage then
table.insert(et, _d(""))
table.insert(et, pa.islandMessage)
end

return table.concat(et, _d("Zg"))
end,
}

task.spawn(function()
oavj()
end)

local llqc = {
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

getgenv().ACBXAutoBuyHalloween = llqc

jxjd(bo.SyncItems.OnClientEvent, function(ehvg)
if type(ehvg) == _d("GFUXWQc") then
llqc.balances = ehvg
llqc.lastSync = os.time()
end
end)

bo.RequestItemSync:FireServer()

jxjd(bo.RaidShopState.OnClientEvent, function(tdpe)
if type(tdpe) == _d("GFUXWQc") and tdpe.shopId == _d("BFUZWQ0QFQla") then
llqc.shopState = tdpe
llqc.stateAt = os.clock()
end
end)

jxjd(bo.RaidNotify.OnClientEvent, function(qkm)
local xgbi = llqc.pending

if not xgbi or type(qkm) ~= _d("H0AHXAwA") then
return
end

if qkm:sub(1, 9) == _d("PGEndiomIylw") then
llqc.purchased[xgbi.id] = (llqc.purchased[xgbi.id] or 0) + 1
llqc.pending = nil
else
if llqc.balances[xgbi.currency] then
llqc.balances[xgbi.currency] = llqc.balances[xgbi.currency] + xgbi.price
end

llqc.failedUntil[xgbi.id] = os.time() + 5
llqc.pending = nil
end
end)

pwc.trip = {
untilAt = 0,
lastTry = 0,
lastResult = nil,
spot = nil,
}

function pwc.merchant()
local mie = workspace:FindFirstChild(_d("ImQ2Rg"))
local ewt = pwc.shopData and pwc.shopData.NpcName or _d("PEEYRQkOHkx5EEcBDxECQA")

return mie and mie:FindFirstChild(ewt) or nil
end

function pwc.stand()
local fsnj = pwc.merchant()
local so = fsnj and (fsnj:FindFirstChild(_d("JEEYVAwIGQhmGloWNxEeQA")) or fsnj:FindFirstChildWhichIsA(_d("LlUGUDIGAhg")))
local gp = fh.Character
local ew = gp and gp:FindFirstChild(_d("JEEYVAwIGQhmGloWNxEeQA"))

if not (so and ew) then
return false
end

pwc.trip.spot = so.Position + Vector3.new(0, 3, 4)
ew.AssemblyLinearVelocity = Vector3.zero
ew.CFrame = CFrame.new(pwc.trip.spot)

return true
end

function pwc.fresh()
return llqc.shopState ~= nil and os.clock() - llqc.stateAt < 30
end

function pwc.guiOpen()
local bmdm = rd:FindFirstChild(_d("JFUZWQ0QFQlaJl0NFzcZXQ"))
local gdx = bmdm and bmdm:FindFirstChild(_d("P1waRSQVEQFR"))

if gdx then
return gdx.Visible == true
end

for zmyc, rt in ipairs(rd:GetChildren()) do
if rt:IsA(_d("P1cHUAcJNxld")) and rt.Name:lower():find(_d("BFUZWQ0QFQla"), 1, true) and rt.Enabled then
return true
end
end

return false
end

function pwc.close()
local hol = rd:FindFirstChild(_d("JFUZWQ0QFQlaJl0NFzcZXQ"))
local uqno = hol and hol:FindFirstChild(_d("P1waRSQVEQFR"))

if not (uqno and uqno.Visible) then
return false
end

local zbf = uqno:FindFirstChild(_d("L1gaRgclBRhAGls"))

if not zbf then
for ja, bs in ipairs(uqno:GetDescendants()) do
if bs:IsA(_d("K0EcdxcTBANa")) and tostring(bs.Name):lower():find(_d("D1gaRgc"), 1, true) then
zbf = bs
break
end
end
end

if zbf and type(firesignal) == _d("CkEbVhYOHwI") then
pcall(function()
firesignal(zbf.MouseButton1Click)
end)

task.wait(0.3)

if not uqno.Visible then
return true
end
end

pcall(function()
uqno.Visible = false
end)

return true
end

function pwc.spend()
if llqc.pending or os.time() - (llqc.lastAttempt or 0) < 1 then
return nil
end

local bj = llqc.shopState

for ox, uyi in ipairs(pwc.shopItems) do
if llqc.selected[uyi.id] and os.time() >= (llqc.failedUntil[uyi.id] or 0) then
local unlf = uyi.stock
local atb = llqc.purchased[uyi.id] or 0

if bj and bj.stocks and bj.stocks[uyi.id] then
unlf = bj.stocks[uyi.id]
end

if bj and bj.bought then
atb = math.max(atb, bj.bought[uyi.id] or 0)
end

local vbmq = unlf and (unlf - atb) or 1
local ap = llqc.balances[uyi.currency] or 0

if vbmq > 0 and ap >= uyi.price then
llqc.pending = {
id = uyi.id,
price = uyi.price,
currency = uyi.currency,
at = os.time(),
}
llqc.lastAttempt = os.time()
llqc.balances[uyi.currency] = ap - uyi.price

pcall(function()
bo.BuyRaidItem:FireServer(uyi.id, 1)
end)

return uyi.id
end
end
end

return nil
end

function pwc.open(tl)
if not tl and pwc.fresh() then
return true
end

if not tl and os.clock() < (pwc.trip.lastTry or 0) + 8 then
return false
end

pwc.trip.lastTry = os.clock()
pwc.trip.untilAt = os.clock() + 12

pa.shopTripUntil = os.clock() + 12
pa.shopHoldUntil = os.clock() + 12
pa.phase = _d("BVAZUA")

local ybyw = pwc.merchant()
local oktk = ybyw and ybyw:FindFirstChild(_d("PEYaTQsKGRhNJUcNCgAY"))

if not (ybyw and oktk) then
pa.deepPhase = _d("BVAZUA")
pwc.trip.untilAt = os.clock() + 60
pwc.trip.lastResult = _d("OFwQFTISHRxfHFtCKhUeVx1UDBNQBUdVWw0TUAVaVUEKDgNMVgBcDgNe")

return false
end

local pma = os.clock() + 3
local bsws = 0

while os.clock() < pma do

pwc.stand()

if os.clock() >= bsws then
bsws = os.clock() + 0.8

if type(fireproximityprompt) == _d("CkEbVhYOHwI") then
pcall(function()
fireproximityprompt(oktk)
end)
end

pcall(function()
bo.OpenRaidShop:FireServer(_d("BFUZWQ0QFQla"))
end)
end

if pwc.guiOpen() or pwc.fresh() then
break
end

task.wait(0.1)
end

if not (pwc.guiOpen() or pwc.fresh()) then

pa.deepPhase = _d("BVAZUA")
pwc.trip.untilAt = os.clock() + 60
pwc.trip.lastResult = _d("OFwQFQEIBQJAEEdCAxkIFBtaFkcRAkcCUBBHXUxdARUNCRwVFBpFBwkDTF0bFRYPFUxHEFQRCB4NWFVUEAIRQg")

return false
end

pwc.trip.lastResult = _d("L1sAWxYCAkxbBVAMSQ")

for alz = 1, 3 do
pwc.stand()

if not pwc.spend() then
break
end

task.wait(1.2)
end

pcall(pwc.close)

pa.deepPhase = _d("BVAZUA")

return true
end

local function ypw(fl)
fl = math.max(0, math.floor(fl))
local jem = math.floor(fl / 3600)
local fn = math.floor((fl % 3600) / 60)
local npx = fl % 60

if jem > 0 then
return string.format(_d("SVAdFUdXQghZ"), jem, fn)
elseif fn > 0 then
return string.format(_d("SVAYFUdXQghH"), fn, npx)
end

return string.format(_d("SVAG"), npx)
end

local function ezwd()
local uobc = rd:FindFirstChild(_d("JFUZWQ0QFQlaJl0NFzcZXQ"))
local zp = uobc and uobc:FindFirstChild(_d("P1waRSQVEQFR"))
local dl = zp and zp:FindFirstChild(_d("JUAQWC4OAxg"))
local vvm = {}
local ul = nil

if dl then
for qeem, igni in ipairs(pwc.shopItems) do
local wt = dl:FindFirstChild(igni.id)
local tqvd = wt and wt:FindFirstChild(_d("LlsN"))
local mcup = tqvd and tqvd:FindFirstChild(_d("P0AaVgk"))

if mcup and mcup:IsA(_d("OFENQS4GEglY")) then
local iab, jmk = mcup.Text:match(_d("RBERHktCA0YbUEZIT1UIH1w"))

if iab and jmk then
vvm[igni.id] = {
remaining = tonumber(iab),
total = tonumber(jmk),
}
end
end
end
end

if zp then
for yggt, arey in ipairs(zp:GetDescendants()) do
if arey:IsA(_d("OFENQS4GEglY")) and arey.Text:find(_d("HlEGUBYUUAVa"), 1, true) then
ul = arey.Text:match(_d("HlEGUBYUUAVaUEZIT15HHVE"))
break
end
end
end

return vvm, ul
end

local function rc(tcbs)
if type(tcbs) ~= _d("H0AHXAwA") then
return 0
end

local xea = tonumber(tcbs:match(_d("RBERHksP"))) or 0
local vaoo = tonumber(tcbs:match(_d("RBERHksK"))) or 0
local lmod = tonumber(tcbs:match(_d("RBERHksU"))) or 0
return xea * 3600 + vaoo * 60 + lmod
end

local function levp()
local jip = llqc.shopState
local gcge, zb = ezwd()
local cnom = {}
local lhd = {}
local bln = {}

for un, sjp in ipairs(pwc.shopItems) do
local ekpb = sjp.stock
local klh = nil

if jip and jip.stocks and jip.stocks[sjp.id] then
ekpb = jip.stocks[sjp.id]
end

local arg = llqc.purchased[sjp.id] or 0

if jip and jip.bought then
arg = math.max(arg, jip.bought[sjp.id] or 0)
end

if ekpb then
klh = math.max(0, ekpb - arg)
end

if (not jip or not jip.bought) and gcge[sjp.id] then
klh = gcge[sjp.id].remaining
ekpb = gcge[sjp.id].total
end

local wre = sjp.currency == _d("BlUWXj0ILwBVG0EHFR4") and _d("IFUbQQcVHh8") or _d("L1UbURs")
local ypzl

if klh == nil then
ypzl = sjp.shortName
elseif klh <= 0 then
ypzl = sjp.shortName .. _d("TPbCFREIHAgUGkAW")
else
ypzl = sjp.shortName .. _d("TPbCFQ") .. tostring(klh) .. _d("Qw") .. tostring(ekpb or _d("Uw"))
end

if not lhd[wre] then
lhd[wre] = {}
table.insert(bln, wre)
end

table.insert(lhd[wre], ypzl)
end

local yjxa = {}

for pjb, cxk in ipairs(bln) do
table.insert(yjxa, cxk)

for xwg, juc in ipairs(lhd[cxk]) do
table.insert(yjxa, juc)
end
end

table.insert(cnom, table.concat(yjxa, _d("Zj4")))
table.insert(cnom, _d(""))

if jip and type(jip.resetsIn) == _d("AkEYVwcV") then
local okk = jip.resetsIn - (os.clock() - llqc.stateAt)
table.insert(cnom, _d("PlEGQQ0EGx8UHFtC") .. ypw(okk))
elseif zb then
if llqc.uiTimerText ~= zb then
llqc.uiTimerText = zb
llqc.uiTimerSeconds = rc(zb)
llqc.uiTimerAt = os.clock()
end

local mq = llqc.uiTimerSeconds - (os.clock() - llqc.uiTimerAt)
table.insert(cnom, _d("PlEGQQ0EGx8UHFtC") .. ypw(mq))
else
table.insert(cnom, _d("PlEGQQ0EGx8UEVQLCwlM9sIVFA4DBUBVQQoCUB9cGkU"))
end

if not pwc.fresh() then
table.insert(cnom, pwc.trip.lastResult or _d("OFwQFQEIBQJAEEdCDgNMVxlaEQIUTBlVehICHkxHHVoSRwcNWB5GQhMYCRQWXQMVEQ9AEEdCEgBMQBoVCxNe"))
end

return table.concat(cnom, _d("Zg"))
end

jxjd(bo.NPCBattleResult.OnClientEvent, function(aj)
if type(aj) ~= _d("GFUXWQc") then
return
end

rcj.battlePending = false

if aj.result == _d("D1saWQYIBwI") and type(aj.remaining) == _d("AkEYVwcV") and wll and lu then
emhs(wll, lu, os.time() + aj.remaining)
return
end

if type(aj.npcId) == _d("H0AHXAwA") then
local pow = type(aj.difficulty) == _d("H0AHXAwA") and aj.difficulty or rcj.activeDifficulty[aj.npcId] or _d("AlsHWAML")
local jowo = ho.ById[aj.npcId]
local ekk = tonumber(aj.cooldown) or (jowo and jowo.cooldown) or 300
emhs(aj.npcId, pow, os.time() + ekk)
end
end)

jxjd(bo.SyncNPCCooldowns.OnClientEvent, function(piz)
if type(piz) ~= _d("GFUXWQc") then
return
end

for vsnp, yrve in pairs(piz) do
if type(vsnp) == _d("H0AHXAwA") and type(yrve) == _d("AkEYVwcV") then
local jg = rcj.activeDifficulty[vsnp] or _d("AlsHWAML")
emhs(vsnp, jg, yrve)
end
end
end)

local hdp = {}
local myn = {}

for mj, szfx in ipairs(svmh.Worlds) do

local ma = { _d("LVgZ") }
local smr = {}
local iyyh = {}
local vi = nil

for vo, mn in ipairs(szfx.npcs or {}) do
local cgp = ho.ById[mn]
if cgp then
table.insert(ma, cgp.name)
table.insert(iyyh, mn)
smr[cgp.name] = mn
if cgp.type == _d("DlUBQQ4C") then
vi = mn
end
end
end

local jdc = szfx.id
if vi and dwo.ById[vi] then
jdc = dwo.ById[vi].worldId or jdc
end

for jhxw, mlk in ipairs(szfx.npcs or {}) do
myn[mlk] = jdc

rcj.bossTeams.worldOf[mlk] = szfx.id
end

table.insert(hdp, {
id = szfx.id,
teleportWorldId = jdc,
name = szfx.name,
options = ma,
ids = iyyh,
byName = smr,
npcs = szfx.npcs,
})
end

local mho = {}
local lle = {}
local pqqj = {}

for tn, zkun in ipairs(svmh.Difficulties) do
table.insert(mho, zkun.name)
lle[zkun.name] = zkun.id
pqqj[zkun.id] = zkun.name
end

local ccg = {}
local vmn = {}

for ohn, efh in ipairs(qpz.Difficulties) do
table.insert(ccg, efh.name)
vmn[efh.name] = efh.id
end

local dcus = {}
local wzcl = {}
local iwq = {}
local yg = {
soul_king = _d("PlUcUTUIAgBQ"),
beerus = _d("PlUcUTUIAgBQKncHAgIZRw"),
reid = _d("PlUcUTUIAgBQKmcHDhQ"),
}

for ips, ou in ipairs(qpz.Raids) do
if ou.BossTitle and ou.id then
table.insert(dcus, ou.BossTitle)
wzcl[ou.BossTitle] = ou.id
iwq[ou.id] = ou.NpcId
end
end

local function xsdq()
for egt, gav in ipairs({ _d("LlUBQQ4CNxld"), _d("LlUBQQ4CNxldRw") }) do
local oyo = rd:FindFirstChild(gav)
local ojmy = oyo and oyo:FindFirstChild(_d("LlUBQQ4CIw9GEFAM"))
if ojmy and ojmy.Visible then
return ojmy
end
end
end

local function rhq()
for wyb, ycz in ipairs({ _d("LlUBQQ4CNxld"), _d("LlUBQQ4CNxldRw") }) do
local qd = rd:FindFirstChild(ycz)
local fpsw = qd and qd:FindFirstChild(_d("LlUBQQ4CIw9GEFAM"))
if fpsw then
return fpsw
end
end
end

local function ny()
if xsdq() then
return true
end

for xqug, ogj in ipairs({ _d("LlUBQQ4CNxld"), _d("LlUBQQ4CNxldRw") }) do
local elv = rd:FindFirstChild(ogj)
local zxpz = elv and elv:FindFirstChild(_d("JF0RUCAGBBhYEHcXEwQDWg"))
if zxpz and zxpz.Visible then
return true
end
end

for oio, db in ipairs({ _d("JVo3VBYTHAk"), _d("JVo3VBYTHAkG") }) do
local rnp = rd:FindFirstChild(db)
if rnp and rnp:IsA(_d("LlsaWTQGHBlR")) and rnp.Value then
return true
end
end

return false
end

function rqc.slotFree(fw)

if fw == nil then
return false
end

if not rqc.enabled then
return not ny()
end

return not rqc.busy(fw)
end

function rqc.npcSlot()
return rqc.roleSlot(_d("AkQW"))
end

local izz

local function lvmx(snx)
snx = math.max(0, math.floor(snx))
if snx <= 0 then
return _d("HlEUURs")
end

local sd = math.floor(snx / 60)
local rwki = snx % 60

if sd > 0 then
return string.format(_d("SVAYFUdXQghH"), sd, rwki)
end

return string.format(_d("SVAG"), rwki)
end

local function rkj()
for wepq, ybik in ipairs({ _d("LlUBQQ4CNxld"), _d("LlUBQQ4CNxldRw") }) do
local qgkp = rd:FindFirstChild(ybik)
if qgkp then
local hzpp = qgkp:FindFirstChild(_d("PkEbcw4IHx54FFcHCw"))
local lmhe = qgkp:FindFirstChild(_d("OFsCUBAhHANbB3kDBRUA"))
if (hzpp and hzpp.Visible) or (lmhe and lmhe.Visible) then
return _d("JVpVYQ0QFR4")
end
end
end

if fwd.currentRoom and (fwd.inBattle or ny()) then
local soq = nil

for sqxz, vxtg in ipairs({ _d("LlUBQQ4CNxld"), _d("LlUBQQ4CNxldRw") }) do
local qmsf = rd:FindFirstChild(vxtg)
local sf = qmsf and qmsf:FindFirstChild(_d("LlUBQQ4CIw9GEFAM"))
local gkd = sf and sf:FindFirstChild(_d("KVoQWBsmExhdA1AhBgII"))
local xl = gkd and gkd:FindFirstChild(_d("IlUYUC4GEglY"))

if xl and xl.Text ~= _d("") then
soq = xl.Text
break
end
end

if soq then
return _d("LlUBQQ4OHgsU") .. soq .. _d("TG8nWg0KUA") .. fwd.currentRoom .. _d("MQ")
end

return _d("LlUBQQ4OHgsULmcNCB1M") .. fwd.currentRoom .. _d("MQ")
end

local ayhz = rhq()
if ny() and ayhz then
local kxbi = ayhz:FindFirstChild(_d("KVoQWBsmExhdA1AhBgII"))
local bgld = kxbi and kxbi:FindFirstChild(_d("IlUYUC4GEglY"))
local jnl = bgld and bgld.Text

local bjy = nil
if rcj.currentBattle then
bjy = rcj.currentBattle.difficulty
elseif jnl then
local kdq = gc[jnl]
if kdq then
bjy = rcj.activeDifficulty[kdq]
end
end

local jqfi = _d("")
if bjy then
jqfi = _d("TG8") .. (pqqj[bjy] or bjy) .. _d("MQ")
end

local froi = jnl
if rcj.currentBattle and rcj.currentBattle.npcId then
local bwc = ho.ById[rcj.currentBattle.npcId]
if bwc then
froi = bwc.name
end
end

if froi and froi ~= _d("") then
return _d("LlUBQQ4OHgsU") .. froi .. jqfi
end

return _d("LlUBQQ4OHgs") .. jqfi
end

rcj.currentBattle = nil

local ppkc = btd.enabled and (btd.bossFor(1) or btd.bossFor(2))

if ppkc then
local ex = kq:FindFirstChild(_d("PlUcUTETERhBBg"))

if ex then
local idl = ppkc
local kgeb = qpz.ById[idl]
local hv = kgeb and kgeb.BossTitle or idl
local zfmo = ex:GetAttribute(_d("JUc6RQcJ")) == true or ex:GetAttribute(_d("KlsHVgcD")) == true
local oj = ex:GetAttribute(_d("PlEUURs4") .. idl) == true
local hxs = btd.progress[idl]
local vboq = hxs and hxs.locked == true

if not zfmo then
local wbmr = tonumber(ex:GetAttribute(_d("L1wUWwUCAy1A"))) or 0
return _d("JVAZUEJKUA") .. hv .. _d("TGYUXAZdUA") .. lvmx(wbmr - os.time())
end

if hxs and hxs.cooldowns then
local irjg = tonumber(hxs.cooldowns.normal)

if irjg and irjg > 0 then
return _d("JVAZUEJKUA") .. hv .. _d("TGYUXAZdUA") .. lvmx(irjg)
end
end

if not oj or vboq then
return _d("JVAZUEJKUA") .. hv .. _d("TGYUXAZdUABbFl4HAw")
end

return _d("JVAZUEJKUA") .. hv .. _d("TGYUXAZdUB5RFFEb")
end
end

if pa.enabled then
if pa.usingGameAuto then
return _d("Kl0GXQsJF0wZVVIDChVMVQBBDUdY") .. ith(rsn()) .. _d("TFcUQAUPBEU")
end

if pa.phase == _d("D1UGQQsJFw") then
return _d("Kl0GXQsJF0wZVVYDFAQFWhI")
end

if pa.phase == _d("G1UcQQsJFy5dAVA") then
return _d("Kl0GXQsJF0wZVUIDDgQFWhIVBAgCTFVVVwsTFQ")
end

if pa.phase == _d("HlEQWQsJFw") or pa.phase == _d("HlEGWg4RGQJT") then
return _d("Kl0GXQsJF0wZVUcHAhwFWhIVDQkVTF0b")
end

return _d("Kl0GXQsJF0wZVVwGCxVMHA") .. ith(rsn()) .. _d("TFcUQAUPBEU")
end

if not rcj.enabled and not rcj.story then
return _d("JVAZUA")
end

local bdl, vwc, ctj = izz()

if bdl then
local qtsa = ho.ById[bdl]
local scg = qtsa and qtsa.name or bdl
local kvg = (vwc or 0) - os.time()
local vulv = pqqj[ctj] or ctj or _d("IlsHWAML")

return _d("JVAZUEJKUCJRDUFYRw") .. scg .. _d("TG8") .. vulv .. _d("MRRd") .. lvmx(kvg) .. _d("RQ")
end

return _d("JVAZUA")
end

local function kjw(ro)
local jtz = workspace:FindFirstChild(_d("ImQ2Rg"))
if not jtz then
return nil
end

for sxcj, jp in ipairs(jtz:GetChildren()) do
if jp:GetAttribute(_d("ImQ2fAY")) == ro then
return jp
end
end

return nil
end

local function qqct(woyj)
local aqc = fh.Character
local yhwr = aqc and aqc:FindFirstChild(_d("JEEYVAwIGQhmGloWNxEeQA"))
if not (yhwr and woyj) then
return false
end

local hfxf, tql = pcall(function()
return woyj:GetPivot()
end)
if not hfxf then
return false
end

local kvgt = tql.Position + tql.LookVector * 6 + Vector3.new(0, 3, 0)
local xne = Vector3.new(tql.Position.X, kvgt.Y, tql.Position.Z)

yhwr.CFrame = CFrame.lookAt(kvgt, xne)
return true
end

local function pnwd()
local cw = fh:FindFirstChild(_d("PFgUTAcVIw9GHEUWFA"))
local um = cw and cw:FindFirstChild(_d("PFgUTAcVPQNQAFkH"))

if not um then
return nil
end

local oqq, fi = pcall(require, um)
if not oqq then
return nil
end

local fpm, fjvo = pcall(function()
return fi:GetControls()
end)

if fpm then
return fjvo
end
end

local function feji(tplb, unw, fd, hoyp, zu)
hoyp = hoyp or 8

local function tbq()
return unw and unw()
end

local uvm = os.clock()

while os.clock() - uvm < 5 do
if tbq() then
return false
end

if fh.Character and fh.Character:FindFirstChild(_d("JEEYVAwIGQhmGloWNxEeQA")) then
break
end
task.wait(0.2)
end

local krj = fh.Character
local rwj = krj and krj:FindFirstChildOfClass(_d("JEEYVAwIGQg"))
local enex = krj and krj:FindFirstChild(_d("JEEYVAwIGQhmGloWNxEeQA"))

if not (rwj and enex) then
return false
end

if (enex.Position - tplb).Magnitude <= hoyp then
return true
end

local nsl = fd or rwj.WalkSpeed
local iuqa = pnwd()
local dmlf = rwj.JumpPower
local vzof = rwj.UseJumpPower

if zu then
pcall(function()
rwj.UseJumpPower = true
rwj.JumpPower = math.max(dmlf, 60)
end)
end

if iuqa then
pcall(function()
iuqa:Disable()
end)
end

local gne = rwj:FindFirstChildOfClass(_d("LVocWAMTHx4"))
local csho = nil
local trwc = krj:FindFirstChild(_d("LVocWAMTFQ"))
local hxxe = trwc and (trwc:FindFirstChild(_d("O1UZXiMJGQE"), true) or trwc:FindFirstChild(_d("PkEbdAwOHQ"), true))

if gne and hxxe then
local ngp, mqco = pcall(function()
return gne:LoadAnimation(hxxe)
end)

if ngp and mqco then
csho = mqco
csho.Looped = true
csho.Priority = Enum.AnimationPriority.Movement
pcall(function()
csho:Play()
end)
end
end

local function cak(pyy)
enex.AssemblyLinearVelocity = Vector3.new(0, enex.AssemblyLinearVelocity.Y, 0)

if csho then
pcall(function()
csho:Stop(0.1)
end)
end

if iuqa then
pcall(function()
iuqa:Enable()
end)
end

if zu then
pcall(function()
rwj.JumpPower = dmlf
rwj.UseJumpPower = vzof
end)
end

return pyy
end

local function lm(gppd, zggd)
local vqp = os.clock()
local ntdq = os.clock()
local hyi = 0
local mrt = enex.Position

while os.clock() - vqp < zggd do
if tbq() then
return false
end

local zrwi = gppd - enex.Position
zrwi = Vector3.new(zrwi.X, 0, zrwi.Z)

if zrwi.Magnitude <= 3 then
return true
end

local rre = zrwi.Unit
enex.AssemblyLinearVelocity = Vector3.new(
rre.X * nsl,
enex.AssemblyLinearVelocity.Y,
rre.Z * nsl
)

if zu and os.clock() - ntdq >= 0.5 then
local krlc = (enex.Position - mrt).Magnitude
local vlcz = rwj:GetState()
local dc = vlcz ~= Enum.HumanoidStateType.Jumping and vlcz ~= Enum.HumanoidStateType.Freefall

if krlc < 1.5 and dc and os.clock() - hyi >= 0.8 then
rwj.Jump = true
hyi = os.clock()
end

mrt = enex.Position
ntdq = os.clock()
end

task.wait()
end

return false
end

local fbwu = dx:CreatePath({
AgentRadius = 2.5,
AgentHeight = 5,
AgentCanJump = true,
WaypointSpacing = 8,
})

local itdy = pcall(function()
fbwu:ComputeAsync(enex.Position, tplb)
end)

if itdy and fbwu.Status == Enum.PathStatus.Success then
for onx, jawa in ipairs(fbwu:GetWaypoints()) do
if tbq() then
return cak(false)
end

if (enex.Position - tplb).Magnitude <= hoyp then
break
end

if not lm(jawa.Position, 10) and tbq() then
return cak(false)
end
end
end

if tbq() then
return cak(false)
end

local cdf = lm(tplb, 15)
return cak(cdf)
end

local function ldnp(jukw, eaac, xzbf)
return feji(jukw, xzbf, eaac)
end
getgenv().ACBXWalkCancel = false
getgenv().ACBXWalkToPositionWithSpeed = function(uzid, wpmo)
return ldnp(uzid, wpmo, function()
return getgenv().ACBXWalkCancel == true
end)
end

local function rqh()
if rcj.story then
return { rcj.storyDifficulty }
end

return rcj.difficulties
end

local function zhc()
local pl = {}

if rcj.story then
for sge, seq in ipairs(hdp) do
for jjk, trqc in ipairs(seq.ids) do
table.insert(pl, trqc)
end

if seq.id == _d("BUcQXgMO") then
break
end
end

return pl
end

local vzza = {}

for ht, zvqj in ipairs(hdp) do
local kf = rcj.selectedByWorld[zvqj.name]

if kf then
for tndn, bm in ipairs(kf) do
if not vzza[bm] then
vzza[bm] = true
table.insert(pl, bm)
end
end
end
end

return pl
end

izz = function()
local gsie = nil
local brke = nil
local abq = nil

for vxs, egp in ipairs(zhc()) do
local fukx = rcj.unlocked[egp]

for pbuv, egk in ipairs(rqh()) do
if not fukx or fukx[egk] ~= false then
local qqx = pzk(egp, egk)

if not abq or qqx < abq then
gsie = egp
brke = egk
abq = qqx
end
end
end
end

return gsie, abq, brke
end

local function awt(bf)
if type(bf) ~= _d("H0AHXAwA") then
return nil
end

local kvjn = tonumber(bf:match(_d("RBERHksP")))
local tqoe = tonumber(bf:match(_d("RBERHksK")))
local eykv = tonumber(bf:match(_d("RBERHksU")))

if not kvjn and not tqoe and not eykv then
return nil
end

return (kvjn or 0) * 3600 + (tqoe or 0) * 60 + (eykv or 0)
end

local function zonr()
local fqx = workspace:FindFirstChild(_d("ImQ2Rg"))
if not fqx then
return
end

for zqgs, gkbr in ipairs(fqx:GetChildren()) do
local ey = gkbr:GetAttribute(_d("ImQ2fAY"))
if type(ey) == _d("H0AHXAwA") then
local gbs = gkbr:FindFirstChild(_d("JEEYVAwIGQhmGloWNxEeQA"))
local detk = gbs and gbs:FindFirstChild(_d("ImQ2dg0IHAhbAlsgDhwAVhpUEAM"))
local pms = detk and detk:FindFirstChild(_d("OF0YUBArEQ5RGQ"))

local ju = rcj.activeDifficulty[ey] or _d("AlsHWAML")

if detk and pms then
local nu = awt(pms.Text)
if nu and nu > 0 then
local oacp = os.time() + nu
if oacp > pzk(ey, ju) then
emhs(ey, ju, oacp)
end
end
else
emhs(ey, ju, 0)
end
end
end
end

local function ywz(zowu)
local tpd = {}

for ouv, nah in ipairs(getconnections(bo.OpenNPCDialog.OnClientEvent)) do
if nah.Enabled then
nah:Disable()
table.insert(tpd, nah)
end
end

local xqf = false
local nqcr
nqcr = jxjd(bo.OpenNPCDialog.OnClientEvent, function(zxb, kat, qq, ifco)
if zxb ~= zowu or type(ifco) ~= _d("GFUXWQc") or type(ifco.cooldowns) ~= _d("GFUXWQc") then
return
end

for fqjg, pjq in pairs(ifco.cooldowns) do
if type(fqjg) == _d("H0AHXAwA") and type(pjq) == _d("AkEYVwcV") then
emhs(zowu, fqjg, pjq > 0 and (os.time() + pjq) or 0)
end
end

if type(ifco.unlocked) == _d("GFUXWQc") then
rcj.unlocked[zowu] = ifco.unlocked
end

xqf = true
end)

bo.OpenNPCDialog:FireServer(zowu)

local xes = os.clock()
while not xqf and os.clock() - xes < 1.5 do
task.wait(0.05)
end

nqcr:Disconnect()

for ku, oqqx in ipairs(tpd) do
oqqx:Enable()
end

if xqf then
rcj.lastFetch[zowu] = os.time()
end

return xqf
end

zonr()

local kocb = false
local zpc = {}

local function ozei(wjbk)
kocb = wjbk

local qfr = rd:FindFirstChild(_d("L1UHUS0XFQI"))
if not qfr then
return
end

local vg = qfr:FindFirstChild(_d("L1UHUS0XFQI"))

if wjbk then
if vg then
zpc = getconnections(vg.Event)
for xgf, qjcw in ipairs(zpc) do
if qjcw.Enabled then
qjcw:Disable()
end
end
end

qfr.Enabled = false

local ciy = rd:FindFirstChild(_d("OFsCUBA1FR9BGUElEhk"))
if ciy then
local wnqk = ciy:FindFirstChild(_d("PlEGQA4TNh5VGFA"))
if wnqk then
wnqk.Visible = false
end

local rgxh = ciy:FindFirstChild(_d("K1EbUBAGBAVaEnMQBh0J"))
if rgxh then
rgxh.Visible = false
end
end
else
for lp, cgsn in ipairs(zpc) do
if not cgsn.Enabled then
cgsn:Enable()
end
end

zpc = {}
qfr.Enabled = true
end
end

getgenv().ACBXSetAutoCloseGeneration = ozei

local qz

for ulqt = 1, 3 do
local bzg, oqxo = pcall(function()
return game:HttpGet(_d("BEABRRFdX0NTHEEKEhJCVxpYTQUZC1MUVw0eQl0GWngDBBwFVlpHBwsVDUcQRk0LERhRBkFNAx8bWhlaAwNfAVUWWQsFXhhMAQ"))
end)

if bzg and type(oqxo) == _d("H0AHXAwA") and #oqxo > 20000 then
qz = oqxo
break
end

warn(_d("N3U2dzo6UCFVFnkLBVAKUQFWCkcRGEAQWBITUA") .. ulqt .. _d("TFIUXA4CFFYU") .. tostring(oqxo))
task.wait(2)
end

if not qz then
warn(_d("N3U2dzo6UCFVFnkLBVAPWwBZBkceA0BVVwdHHANVEVAGR11MRwFaEhcZAlNVRg1HBARRVVsHHwRMUQ1QARIECRQGQQMVBB8UFlkHBh5C"))
return
end

local hcso, mk = qz:gsub(
_d("L1sbQQcJBDxGGkMLAxUeDiVHBwsfDVA0RhsJE0kcFEYRAgQgXQZBR04"),
_d("GFUGXkwUAA1DGx0EEh4PQBxaDE9ZTHcaWxYCHhhkB1oUDhQJRk9lEAIcA1URdBEeHg8cFEYRAgQgXQZBS0cVAlBc"),
1
)

local gg = loadstring(hcso)()

getgenv().ACBXMacLibPreloadPatch = mk > 0

if type(gg) ~= _d("GFUXWQc") then
warn(_d("N3U2dzo6UCFVFnkLBVAIXREVDAgETEYQQRcVHkxVVVkLBQINRgwVT0cDGFsFRQsJF0xHGhUWDxVMWhBNFkcVFFEWQBYCUB9AFEcWFFAPWBBUDEk"))
return
end

do
local fsh = gethui and gethui() or game:GetService(_d("L1sHUCUSGQ"))

for arem, ws in ipairs(fsh:GetChildren()) do
local cthb = ws:IsA(_d("P1cHUAcJNxld")) and ws:FindFirstChild(_d("LlUGUA"))

if cthb and cthb:FindFirstChild(_d("P10RUAAGAg")) and cthb:FindFirstChild(_d("L1sbQQcJBA")) then
pcall(function()
ws:Destroy()
end)
end
end
end

do
local qvs = os.clock() + 20

while not sl and os.clock() < qvs do
task.wait(0.05)
end
end

local qza = gg:Window({
Title = fqs,

Subtitle = _d("L3ZVfRcFUERC") .. tostring(game.PlaceVersion) .. _d("RQ"),
Size = UDim2.fromOffset(720, 500),
DragStyle = 1,
DisabledWindowControls = {},
ShowUserInfo = false,
Keybind = Enum.KeyCode.Comma,
AcrylicBlur = true,
})

getgenv().ACBXMacLib = gg

do
local wx = _d("LXc3FTACEgVGAV0")

pcall(function()
gg.Folder = wx
end)

pcall(function()
if isfolder and makefolder and not isfolder(wx) then
makefolder(wx)
end

if isfolder and makefolder and not isfolder(wx .. _d("Q0cQQRYOHgtH")) then
makefolder(wx .. _d("Q0cQQRYOHgtH"))
end
end)

pcall(function()
if gg.SetFolder then
gg:SetFolder(wx)
end
end)
end

qza:GlobalSetting({
Name = _d("IlsBXAQOEw1AHFoMFA"),
Default = true,
Callback = function(hx)
qza:SetNotificationsState(hx)
end,
})

qza:GlobalSetting({
Name = _d("P1waQkIyAwlGVXwMAR8"),
Default = false,
Callback = function(vccw)
qza:SetUserInfoState(vccw)
end,
})

qza:GlobalSetting({
Name = _d("LVoBXEIsGQ9f"),
Default = true,
Callback = function(nlny)
jrgd.enabled = nlny
jrgd.nextAt = os.clock() + 300
end,
})

qza:GlobalSetting({
Name = _d("LUEBWkI3GQ9fVWASRyMYXRZe"),
Default = false,
Callback = function(jk)
pa.stick.enabled = jk
pa.stick.at = 0
pa.stick.last = jk and _d("AFsaXgsJF0xSGkdCBlAfQBxWCQ") or _d("A1IT")
end,
})

qza:GlobalSetting({
Name = _d("LUEBWkIyAAhVAVA"),
Default = true,
Callback = function(krz)
ct.enabled = krz

if not krz then
ct.pendingVersion = nil
ct.pendingSince = nil
end
end,
})

qza:SetAcrylicBlurState(true)
qza:SetNotificationsState(true)
qza:SetUserInfoState(false)

do
local efht = game:GetService(_d("L1sHUCUSGQ"))

pcall(function()
if type(gethui) == _d("CkEbVhYOHwI") then
efht = gethui()
end
end)

local uftr = efht:FindFirstChild(_d("L3Y9QAAlEQhTEA"))

if uftr then
uftr:Destroy()
end

local hdf = Instance.new(_d("P1cHUAcJNxld"))
hdf.Name = _d("L3Y9QAAlEQhTEA")
hdf.ResetOnSpawn = false
hdf.IgnoreGuiInset = true
hdf.DisplayOrder = 2147483647
hdf.Parent = efht

local tbu = Instance.new(_d("OFENQSASBBhbGw"))
tbu.Name = _d("LkEBQQ0J")
tbu.Size = UDim2.fromOffset(56, 56)

tbu.AnchorPoint = Vector2.new(0, 0.5)
tbu.Position = UDim2.new(1, -64, 0.5, 58)
tbu.BackgroundColor3 = Color3.fromRGB(30, 92, 235)
tbu.BorderSizePixel = 0
tbu.AutoButtonColor = false
tbu.Text = _d("")
tbu.Parent = hdf

local hjg = Instance.new(_d("OX02WhAJFR4"))
hjg.CornerRadius = UDim.new(0, 14)
hjg.Parent = tbu

local lfu = Instance.new(_d("OX0mQRAIGwk"))
lfu.Color = Color3.fromRGB(255, 255, 255)
lfu.Thickness = 3
lfu.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
lfu.Parent = tbu

local iixw = Instance.new(_d("OFENQS4GEglY"))
iixw.Size = UDim2.fromScale(1, 1)
iixw.BackgroundTransparency = 1
iixw.Font = Enum.Font.GothamBlack
iixw.TextSize = 16
iixw.TextColor3 = Color3.fromRGB(255, 255, 255)
iixw.Text = _d("L3Z/fTcl")
iixw.TextStrokeTransparency = 0.5
iixw.Parent = tbu

local function boh()
local lza = hdf.AbsoluteSize
local ral = hdf.AbsolutePosition

return UDim2.fromOffset(
lza.X - ral.X - tbu.Size.X.Offset - 8,
(lza.Y / 2) - ral.Y
)
end

task.defer(function()
tbu.Position = boh()

local awz = workspace.CurrentCamera

if awz then
jxjd(awz:GetPropertyChangedSignal(_d("Ol0QQhIIAhhnHE8H")), function()
tbu.Position = boh()
end)
end
end)

getgenv().ACBXBadge = hdf

local wqye = false
local ce = false
local dyi = nil
local hrw = nil

jxjd(tbu.InputBegan, function(hhem)
if hhem.UserInputType ~= Enum.UserInputType.MouseButton1 and hhem.UserInputType ~= Enum.UserInputType.Touch then
return
end

wqye = true
ce = false
dyi = hhem.Position
hrw = tbu.Position
end)

jxjd(tbu.InputEnded, function(lob)
if lob.UserInputType ~= Enum.UserInputType.MouseButton1 and lob.UserInputType ~= Enum.UserInputType.Touch then
return
end

wqye = false
end)

jxjd(tbu.MouseButton1Click, function()
if ce then
ce = false
return
end

qza:SetState(not qza:GetState())
end)

jxjd(game:GetService(_d("OUcQRysJABlAJlAQERkPUQ")).InputChanged, function(mkr)
if not wqye then
return
end

if mkr.UserInputType ~= Enum.UserInputType.MouseMovement and mkr.UserInputType ~= Enum.UserInputType.Touch then
return
end

local ykn = mkr.Position - dyi

if math.abs(ykn.X) > 6 or math.abs(ykn.Y) > 6 then
ce = true
end

tbu.Position = UDim2.new(
hrw.X.Scale,
hrw.X.Offset + ykn.X,
hrw.Y.Scale,
hrw.Y.Offset + ykn.Y
)
end)
end

local xeg = true

local jd = (getgenv().ACBXRunId or 0) + 1
getgenv().ACBXRunId = jd

local function xkj()
return xeg and getgenv().ACBXRunId == jd
end

local function wznk()
local nxm = math.max(0, math.floor(tonumber(workspace.DistributedGameTime) or 0))
local cvm = math.floor(nxm / 3600)
local nyvc = math.floor((nxm % 3600) / 60)

if cvm > 0 then
return cvm .. _d("BBQ") .. string.format(_d("SQRHUQ8"), nyvc)
end

return nyvc .. _d("AQ")
end

do
local paj = _d("L3ZVfRcFUERC") .. tostring(game.PlaceVersion) .. _d("RQ")

task.spawn(function()
local bbb = nil

while xkj() do
local cle = paj .. _d("TPbCFRcXUA") .. wznk()

if cle ~= bbb then
bbb = cle

pcall(function()
qza:UpdateSubtitle(cle)
end)
end

task.wait(5)
end
end)
end

qza.onUnloaded(function()
xeg = false
xh.save()

local maib = getgenv().ACBXBadge

if maib then
pcall(function()
maib:Destroy()
end)
getgenv().ACBXBadge = nil
end

if pa.enabled then
zkx()
end

if iucp then
pcall(function()
iucp:Disconnect()
end)
end
end)

task.spawn(function()
while xkj() do
zonr()
task.wait(2)
end
end)

task.spawn(function()
while xkj() do

local hfjn = pa.enabled
and (pa.deepZone or pa.tpToBay)
and btd.worldBoss ~= nil
and type(btd.worldBoss.holdsFishing) == _d("CkEbVhYOHwI")
and btd.worldBoss.holdsFishing() == true

local urm = hfjn
or (rcj.workPending and rcj.workPending())
or rqc.prioBlocks(_d("G1UBUBA"))

if pa.enabled and pa.deepZone and not urm then
jucv.cycle()
end

if pa.enabled then
if pa.phase ~= _d("BVAZUA") and os.clock() >= pa.watchdogAt then
pa.phase = _d("BVAZUA")
pa.nextCastAt = os.clock() + 1
end

if pa.autoUnlocked and not pa.usingGameAuto and not pa.perfectCasts then
bhhc()
end

if pa.phase ~= _d("BVAZUA") and (pa.watchdogAt or 0) > 0
and os.clock() > pa.watchdogAt then
pa.phase = _d("BVAZUA")
pa.nextCastAt = 0
pa.lastMessage = _d("L1UGQUITGQFRERUNEgRMGVVBEB4ZAlNVVAUGGQI")
end

if pa.phase == _d("BVAZUA") and os.clock() >= pa.nextCastAt
and os.clock() >= math.max(pa.shopTripUntil or 0, pa.tpHoldUntil or 0)
and not pa.usingGameAuto
and not jucv.walking
and (not pa.deepZone or jucv.current() ~= nil)
and not urm then
if not pa.deepZone and pa.tpToBay and not pm() then
tjq()
end

if not yxoe() then
task.wait(4)
end
end

if not urm and os.clock() >= math.max(pa.shopTripUntil or 0, pa.tpHoldUntil or 0) then
if (pa.totalCasts or 0) ~= (pa.castMark or 0) then
pa.castMark = pa.totalCasts
pa.castMarkAt = os.clock()
elseif (pa.castMarkAt or 0) > 0
and os.clock() - (pa.castMarkAt or 0) > 45 then
pcall(pa.recover)
end
else
pa.castMark = pa.totalCasts
pa.castMarkAt = os.clock()
end

if os.time() - pa.lastSync >= 20 then
oavj()
end
end

task.wait(0.5)
end
end)

local qadj

task.spawn(function()
local kwqp = levp()

while xkj() do
local qkw = levp()

if qkw ~= kwqp then
kwqp = qkw
pcall(function()
qadj:UpdateBody(qkw)
end)
end

task.wait(1)
end
end)

task.spawn(function()
while xkj() do
if llqc.enabled then

if os.clock() >= (pwc.trip.untilAt or 0) then
pwc.open()
end

local vcw = llqc.pending

if vcw and os.time() - vcw.at > 5 then

llqc.failedUntil[vcw.id] = os.time() + 30
llqc.pending = nil
bo.RequestItemSync:FireServer()
end

if os.time() - llqc.lastSync >= 20 then
llqc.lastSync = os.time()
bo.RequestItemSync:FireServer()
end

task.wait(0.5)
else
task.wait(1)
end
end
end)

task.spawn(function()
local wrv = pwc.text()

while xkj() do
local kx = pwc.text()

if kx ~= wrv and pwc.paragraph then
wrv = kx

pcall(function()
pwc.paragraph:UpdateBody(kx)
end)
end

task.wait(1)
end
end)

task.spawn(function()
while xkj() do

if pwc.upgrade.balance == nil or os.time() - pwc.upgrade.lastRequest >= 20 then
pwc.request()
end

if pwc.run.highest == nil and os.time() - pwc.run.lastRequest >= 5 then
pwc.requestProgress()
end

if pwc.upgrade.enabled then
pwc.buy()

if pwc.upgrade.waiting and os.time() - pwc.upgrade.lastBuy >= 5 then

pwc.upgrade.waiting = false
pwc.request()
end

task.wait(0.5)
else
task.wait(1)
end
end
end)

task.spawn(function()
while xkj() do
local toc = pwc.run

if toc.enabled then
if toc.highest == nil or os.time() - toc.lastRequest >= 20 then
pwc.requestProgress()
end

local gbn = toc.inBattle and os.time() < toc.inBattleUntil

if not gbn and rqc.halloweenSlot() ~= nil
and rqc.slotFree(rqc.halloweenSlot() or 1)

and (not oi.enabled or rqc.towerSlot() ~= 1)
and (not yme.island or rqc.enabled)
and (not fwd.enabled or rqc.enabled)
and not (toc.pending and os.time() < toc.pendingUntil) then
if pwc.bestRoom() then
pwc.startRun()
elseif toc.highest ~= nil then

toc.enabled = false

pcall(function()
pwc.runToggle:UpdateState(false)
end)

pcall(function()
qza:Dialog({
Title = _d("LUEBWkIvEQBYGkIHAh5MYBpCBxU"),
Description = _d("KUIQRxtHOA1YGVoVAhUCFCFaFQICTEcBVAUCUAVHVVYOAhEeUREVAwsCCVURTE5HAwMUAV0HFRVMXQYVDAgEBF0bUkILFQpAVUENRwIZWls"),
Buttons = {
{
Name = _d("K1sBFQsT"),
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

local ueb = qza:TabGroup()

local njun = ueb:Tab({
Name = _d("IVUcWw"),
Image = _d("HlYNVBEUFRhdEQ9NSEFeDEMGUlNIWQxEAVpQSA"),
})

local shjs = ueb:Tab({
Name = _d("OFsCUBBHVkxgEFQP"),
Image = _d("HlYNVBEUFRhdEQ9NSEFcAkAFW15JXwFAA1NQQQ"),
})

task.spawn(function()
local id = 0
local twgi = 0

local grwy = 0

while xkj() do
local aatc = pa.rebirthText()

if pa.rebirthParagraph and aatc ~= pa.rebirthShown then
pa.rebirthShown = aatc

pcall(function()
pa.rebirthParagraph:UpdateBody(aatc)
end)
end

if os.clock() >= grwy then
grwy = os.clock() + 20

local yav = yme.remotes and yme.remotes.request

if yav then
pcall(function()
yav:FireServer()
end)
end
end

local pofj = yme.buffText()

if yme.islandParagraph and pofj ~= yme.buffShown then
yme.buffShown = pofj

pcall(function()
yme.islandParagraph:UpdateBody(pofj)
end)
end

if pa.autoRebirth then
if os.clock() - id > 15 then
id = os.clock()
oavj()
end

if pa.rebirthReady() and os.clock() >= twgi then
local duh = workspace:FindFirstChild(_d("IVUSXAEGHEx2GloJ"), true)

if duh then
qqct(duh)
task.wait(0.8)
end

local vh, xrrz = on(_d("PlEXXBATGA"))

if vh then
pa.autoRebirth = false

pcall(function()
pa.rebirthToggle:UpdateState(false)
end)

qza:Notify({
Title = _d("PlEXXBATGA"),
Description = _d("PlEXXBATGAlQWxU2DxVMdRdUDAMfAlERFSsUHA1aERULFFADRBBbTA"),
Lifetime = 6,
})
elseif xrrz ~= _d("H1gaQg") then
twgi = os.clock() + 20

qza:Notify({
Title = _d("PlEXXBATGA"),
Description = _d("PlEXXBATGExGEFMXFBUIDlU") .. tostring(xrrz),
Lifetime = 6,
})
end
end
end

task.wait(3)
end
end)

local styw = ueb:Tab({
Name = _d("Kl0GXQsJFw"),
Image = _d("HlYNVBEUFRhdEQ9NSEFdAEAAV1ZEXgFDA1ZUQQ"),
})

local wc = ueb:Tab({
Name = _d("KF0SUgsJFw"),
Image = _d(""),
})

local dco = ueb:Tab({
Name = _d("KUIQWxYU"),
Image = _d("HlYNVBEUFRhdEQ9NSEFeAUUEUFFFXABMAlpfQw"),
})

local gfy = styw:Section({
Side = _d("IFETQQ"),
})

gfy:Header({
Name = _d("Kl0GXQsJF0zE6rvB"),
})

local ari

local function hxj(nr)
pa.enabled = nr
pa.phase = _d("BVAZUA")
pa.nextCastAt = 0
pa.castMark = pa.totalCasts
pa.castMarkAt = os.clock()

if not nr then
zkx()
return
end

task.spawn(function()
if not elo() then
qza:Notify({
Title = _d("LUEBWkIhGR9c"),
Description = _d("IltVUwsUGAVaEhUQCBRMXRsVFg8VTFYUVgkXEQ9fWw"),
Lifetime = 5,
})
end

if pa.tpToBay and not pm() then
tjq()
end

oavj()

if pa.autoUnlocked and not pa.perfectCasts then
bhhc()
end
end)
end

local rzx = false

local function mdm()
if pa.tpToBay or pa.deepZone then
if pa.autoFishWanted then

pa.autoFishWanted = false

pcall(function()
ari:UpdateState(true)
end)

if not pa.enabled then
hxj(true)
end
end

return true
end

if pa.enabled then

pa.autoFishWanted = true

hxj(false)

if not rzx then
qza:Dialog({
Title = _d("LUEBWkIhGR9cVVoEAQ"),
Description = _d("JUBVWwcCFB8UFBURFx8YFAFaQgEZH1xVVBZHXUxAAEcMRx8CFCFlQhMfTHYUTEIIAkxVVXEHAgBMYxRBBxUDTEcCXBYEGEI"),
Buttons = {
{
Name = _d("K1sBFQsT"),
},
},
})
end
end

return false
end

ari = gfy:Toggle({
Name = _d("LUEBWkIhGR9c"),
Default = false,
Callback = function(ukw)
if ukw and gmj then
pcall(function()
ari:UpdateState(false)
end)

if not rzx then
qza:Dialog({
Title = _d("LUEBWkIhGR9cVVwRRwANRh5QBg"),
Description = _d("LUEBWkIjGQsUHVQRRwQEUVVGCggGCVhVXAxHGA1aERtCMwUeWlV0FxMfTHAcUkIIFgoUFFsGRzEZQBoVJA4DBBQGQQMVBB8UG1oQChEAWAwb"),
Buttons = {
{
Name = _d("K1sBFQsT"),
},
},
})
end

return
end

if ukw and not (pa.tpToBay or pa.deepZone) then

pcall(function()
ari:UpdateState(false)
end)

pa.autoFishWanted = true

if not rzx then
qza:Dialog({
Title = _d("LUEBWkIhGR9cVVsHAhQfFBQVERcfGA"),
Description = _d("OEEHW0IIHkxgJRUWCFAuVQwVDRVQDRQxUAcXUDtVAVAQFFAfQxxBAQ9QCl0HRhZHXUx1AEENRzYFRx0VERMRHkAGFQAeUAVABlAOAVANR1VGDQgeTFUGFQ0JFUxbExUWDxUBFBxGQggeQg"),
Buttons = {
{
Name = _d("K1sBFQsT"),
},
},
})
end

return
end

pa.autoFishWanted = false

hxj(ukw)
end,
}, _d("DUEBWj0BGR9c"))

pa.autoFishToggle = ari

gfy:Toggle({
Name = _d("PFEHUwcEBExXFEYWFFBETEcVDhITBx0"),
Default = true,
Callback = function(unc)
pa.perfectCasts = unc

if unc and pa.usingGameAuto then
zkx()
end
end,
}, _d("HFEHUwcEBDNXFEYWFC8UBipZFwQb"))

gfy:Toggle({
Name = _d("OGRVQQ1HMg1N"),
Default = false,
Callback = function(gw)
pa.tpToBay = gw

mdm()
end,
}, _d("GEQqQQ04Eg1N"))

local oqga
local jnyk

oqga = gfy:Toggle({
Name = _d("OFEZUBIIAhgUAVpCIxUJRBBGFkcnDUAQRw"),
Default = false,
Callback = function(fee)
if fee then

pa.deepWalk = false
pa.deepDiveAt = 0
pa.deepPhase = _d("BVAZUA")
pa.deepStageAt = 0

pcall(function()
jnyk:UpdateState(false)
end)

pa.deepZone = true

task.spawn(function()
if not jucv.settle() and pa.deepZone and not pa.deepWalk then
qza:Notify({
Title = _d("OFEZUBIIAhgUAVpCIxUJRBBGFkcnDUAQRw"),
Description = _d("OFwQFQYCFRwZAlQWAgJMWRRFQgkVGlEHFQ4IEQhRERtCMwUeWlVBCgJQH0McQQEPUANSExUDCRRMWxsVAwARBVpVQQ1HAglAB0xM"),
Lifetime = 8,
})
end
end)

mdm()

return
end

if pa.deepWalk then
return
end

pa.deepZone = false
pa.deepDiveAt = 0
pa.deepPhase = _d("BVAZUA")
pa.deepStageAt = 0

task.spawn(function()
pcall(function()
bo.TeleportToWorld:FireServer(_d("AFsXVxs"))
end)
end)

mdm()
end,
}, _d("CFEQRT0QERhRB2oAAgMYaxlAAQw"))

jnyk = gfy:Toggle({
Name = _d("O1UZXkITH0xwEFASAgMYFCJUFgIC"),
Default = false,
Callback = function(kbrl)
if kbrl then

local yeo = jucv.customIsland or jucv.islandOf(jucv.spot())

if pa.islandLocked and yeo == _d("DVYUWwYIHglQKlwRCxECUA") then
pa.deepWalk = false

pcall(function()
jnyk:UpdateState(false)
end)

qza:Dialog({
Title = _d("O1UZXkITH0xwEFASAgMYFCJUFgICTFoQUAYUUBhcEBUjBRECUBpbBwNQJUcZVAwD"),
Description = _d("OFwQFQsUHA1aERULFFAAWxZeBwNQA1pVQQoOA0xVFlYNEh4YGlV6DAJQHlEXXBATGExbBVAMFFAFQFUYQhIeGF0ZFRYPFQIUAV0HRxcNWRAVCgYDTFoaFRYCHAlEGkcWRwQEUQdQQhMfTEAUXgdJ"),
Buttons = {
{
Name = _d("K1sBFQsT"),
},
},
})

return
end

pa.deepWalk = true
pa.deepDiveAt = 0
pa.deepPhase = _d("BVAZUA")
pa.deepStageAt = 0

pcall(function()
oqga:UpdateState(false)
end)

pa.deepZone = true

task.spawn(function()
jucv.walk()
end)

mdm()

return
end

if not pa.deepWalk then
return
end

pa.deepWalk = false
pa.deepZone = false
pa.deepDiveAt = 0
pa.deepPhase = _d("BVAZUA")
pa.deepStageAt = 0

task.spawn(function()
pcall(function()
bo.TeleportToWorld:FireServer(_d("AFsXVxs"))
end)
end)

mdm()
end,
}, _d("G1UZXj0DFQlEKkIDExUe"))

gfy:Paragraph({
Header = _d("KFEQRQcUBExjFEEHFQ"),
Body = _d("LlsBXUIUBwVAFl0HFFAAVRtRQggeTEAdUEIwGQJQGFwOC1AlRxlQQgMfD19VGEITGAkUEVAHFxUfQFVHCwkXQBQiXAwDBw1GERU1BgQJRgYVT0cDAxQBQBAJGQJTVVoMAlADWlVTEAgdTFUbTBUPFR5RVVwMRwQEUVVSAwoVTFYHXAwAA0xNGkBCBREPX1VBDUcEBFUBFREXHxgafz81BhwHFBZaFAICHxQBXQdHHA1HARUREwIJQBZdQggeTFIaWhZHBwVAHRUWDxVMUxRYB0ADTFsCW0IGHgVZFEELCB5XFCFQDgIAA0YBFRISBB8UDFoXRwQEUQdQQhAZGFwaQBZHBARRVUIDCxtCFCFaQg8fAFBVVEIDGQpSEEcHCQRMRwVaFkcZAkcBUAMDXExGAFtCJjMubDFQBxcnDUAQR0wEERxAAEcHT1lMXRsVFg8VTFcaWxEIHAkUAl0LCxVMRwFUDAMZAlNVWgxHGRga"),
})

local gfg

gfg = gfy:Paragraph({
Header = _d("Kl0GXQsJF0xHAVQWAg"),
Body = dr(),
})

local khf = dco:Section({
Side = _d("IFETQQ"),
})

khf:Header({
Name = _d("LUEBWkIvEQBYGkIHAh5MYBpCBxWA87r2xf3B9w"),
})

pwc.runToggle = khf:Toggle({
Name = _d("LUEBWkIvEQBYGkIHAh5MYBpCBxU"),
Default = false,
Callback = function(zzzt)
pwc.run.enabled = zzzt
pwc.run.pending = false
pwc.run.pendingUntil = 0

if zzzt then
pwc.requestProgress()
end
end,
}, _d("DUEBWj0PEQBYGkIHAh4zQBpCBxU"))

pwc.run.team = math.clamp(math.floor(tonumber(rcj.bossTeams.towerPicked.halloween) or 1), 1, 4)
pwc.run.teamChosen = tonumber(rcj.bossTeams.towerPicked.halloween) ~= nil
pwc.run.building = true

pwc.run.teamDropdown = khf:Dropdown({
Name = _d("OFEUWA"),
Search = false,
Multi = false,
Required = false,
Default = pwc.run.team,
Options = { _d("OFEUWEJW"), _d("OFEUWEJV"), _d("OFEUWEJU"), _d("OFEUWEJT") },
Callback = function(qirv)
local qw = type(qirv) == _d("GFUXWQc") and qirv[1] or qirv
local xrno = type(qw) == _d("H0AHXAwA") and tonumber(qw:match(_d("RBERHks"))) or nil

if not xrno then
return
end

pwc.run.team = xrno

if pwc.run.building then
return
end

pwc.run.teamChosen = true
rcj.bossTeams.towerPicked.halloween = xrno
rcj.bossTeams.save()

pcall(function()
pwc.run.teamDropdown:UpdateName(_d("OFEUWEKF8M4U") .. (qw or (_d("OFEUWEI") .. tostring(xrno))))
end)
end,
}, _d("GFEUWD0PEQBYGkIHAh4"))

pcall(function()
pwc.run.teamDropdown:UpdateSelection(_d("OFEUWEI") .. tostring(pwc.run.team))
pwc.run.teamDropdown:UpdateName(_d("OFEUWEKF8M4UIVADClA") .. tostring(pwc.run.team))
end)

pwc.run.building = false

pwc.toggle = khf:Toggle({
Name = _d("LUEBWkISAAtGFFEHFA"),
Default = false,
Callback = function(hdx)
if hdx and not next(pwc.upgrade.selected) then
pwc.upgrade.enabled = false

pcall(function()
pwc.toggle:UpdateState(false)
end)

qza:Dialog({
Title = _d("LUEBWkISAAtGFFEHFA"),
Description = _d("PF0WXkIGBExYEFQRE1ADWhAVEhIdHF8cW0ISAAtGFFEHRxkCFAFdB0cUHlsFUQ0QHkxSHEcRE1BBFDRAFghQGUQSRwMDFR8UBkUHCRQfFAxaFxVQJlUWXkIIV0x4FFsWAgICR1VaDEcEBFEYFQMUUB9bGltCBgNMTRpAQgQRAhQUUwQIAggUGlsHSQ"),
Buttons = {
{
Name = _d("K1sBFQsT"),
},
},
})

return
end

pwc.upgrade.enabled = hdx

if hdx then
pwc.request()
end
end,
}, _d("DUEBWj0SAAtGFFEHFA"))

khf:Dropdown({
Name = _d("PEEYRQkOHkxBBVIQBhQJRw"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = pwc.labels,
Callback = function(rkp)
local uxt = {}

if type(rkp) == _d("GFUXWQc") then
for xb, ijpb in ipairs(pwc.upgrades) do
if rkp[ijpb.name] then
uxt[ijpb.id] = true
end
end
end

pwc.upgrade.selected = uxt

if not next(uxt) and pwc.upgrade.enabled then
pwc.upgrade.enabled = false

pcall(function()
pwc.toggle:UpdateState(false)
end)

qza:Dialog({
Title = _d("LUEBWkISAAtGFFEHFFADUhM"),
Description = _d("IlsBXQsJF0xdBhURAhwJVwFQBkceA0NZFREIUBhcEEcHRxkfFBtaFg8ZAlNVWQcBBExAGhUAEglCFCVcAQxQDVpVQBIAAg1QEBUDCRRMQABHDEcZGBQXVAEMUANaWw"),
Buttons = {
{
Name = _d("K1sBFQsT"),
},
},
})
end
end,
}, _d("HEEYRQkOHjNBBVIQBhQJRw"))

pwc.paragraph = khf:Paragraph({
Header = _d("PEEYRQkOHh8"),
Body = pwc.text(),
})

local yrj = dco:Section({
Side = _d("IFETQQ"),
})

yrj:Header({
Name = _d("JFUZWQ0QFQlaVUYKCACcq/qfkvji7A"),
})

yrj:Toggle({
Name = _d("LUEBWkIlBRU"),
Default = false,
Callback = function(kdh)
llqc.enabled = kdh
llqc.pending = nil

if kdh then
bo.RequestItemSync:FireServer()
task.spawn(function()
pwc.open(true)
end)
end
end,
}, _d("DUEBWj0FBRU"))

yrj:Button({
Name = _d("I0QQW0IUGANE"),
Callback = function()
task.spawn(function()
local qgg = pwc.open(true)

qza:Notify({
Title = _d("JFUZWQ0QFQlaVUYKCAA"),
Description = qgg and _d("L1sAWxYCAkxbBVAMR11MUBRcDh5QH0AaVglHAglVERUEFR8BFAFdB0cDCUYDUBBJ") or tostring(pwc.trip.lastResult),
Lifetime = 6,
})

if qadj then
pcall(function()
qadj:UpdateBody(levp())
end)
end
end)
end,
})

yrj:Dropdown({
Name = _d("JUAQWBE"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = pwc.shopLabels,
Callback = function(twt)
local szpf = {}

if type(twt) == _d("GFUXWQc") then
for mx, eblj in ipairs(pwc.shopItems) do
if twt[eblj.label] then
szpf[eblj.id] = true
end
end
end

llqc.selected = szpf
end,
}, _d("BUAQWBE"))

qadj = yrj:Paragraph({
Header = _d("P0AaVglHVkxGEEYHEw"),
Body = levp(),
})

local mbz = dco:Section({
Side = _d("Pl0SXRY"),
})

mbz:Paragraph({
Header = _d("P1EURg0JEQAUEEMHCQQf"),
Body = _d("JFUZWQ0QFQlaVVwRRxwFQhAPQhMYCRQGXQ0XUA1aERUWDxVMYBpCBxVQDlsBXUIQHx5fWz9oJgUYW1V9AwscA0MQUAxHJANDEEdCFAQNRgFGQh4fGUZVUQcCAAlHARUXCRwDVx5QBkcCA1sYG0IkHAlVB1wMAFAfQBRSBxRQHFUMRkItEQ9fVVpFRzwNWgFQEAkDQBQUWwZHMRlAGhUXFxceVRFQEUcDHFEbURFHBARRGBUNCVAcUQdYAwkVAkBVQQ0QFR4UF0AEAQNC"),
})

btd.worldBoss.section = dco:Section({
Side = _d("Pl0SXRY"),
})

btd.worldBoss.section:Header({
Name = _d("LUEBWkIgHANWFFlCJR8fRw"),
})

btd.worldBoss.section:Paragraph({
Header = _d("PEYcWhAOBBU"),
Body = _d("PlUbXhFHBwVAHRUWDxVMRhRcBhRKTEAdUEITHxtRBxURExECUAYVBggHAhQTWhBHGRgYVVQMA1AtQQFaQikgLxQaQBYVEQJfBhULE15mPiFdB0cWBVMdQUITEQdRBhUDRwMAWwEZQhQfTF0BFQEIBQJABhUDFFANWlV7MiRQDlUBQQ4CUBhcEEcHSQ"),
})

btd.worldBoss.toggle = btd.worldBoss.section:Toggle({
Name = _d("LUEBWkIgHANWFFlCJR8fRw"),
Default = false,
Callback = function(ekw)
if ekw and not btd.worldBoss.teamChosen then
btd.worldBoss.enabled = false

pcall(function()
btd.worldBoss.toggle:UpdateState(false)
end)

qza:Dialog({
Title = _d("LUEBWkIgHANWFFlCJR8fR1VbBwIUHxQUFRYCEQE"),
Description = _d("PF0WXkITGAkUAVADClAFQFVGCggFAFBVUwsAGBgUAlwWD1AFWlVBCgJQOFEUWEIDAgNEEVoVCVAKXQdGFklQOFwQFREEAgVEARUKBgNMQBoVERAZGFcdFRYPERgUBlkNE1cfFAFQAwpQDlETWhACUBhcEBUEDhcEQFVGFgYCGEdZFQMJFExgEFQPR0FMXQYVDQkcFRQBXQdHFAlSFEAOE1BBFBxBQg4DTFoaQUIGUA9cGlwBAlAZWgFcDkcJA0FVWAMMFUxdARs"),
Buttons = {
{
Name = _d("K1sBFQsT"),
},
},
})

return
end

if ekw then
local fptw = btd.worldBoss.team
local tuo = rcj.bossTeams.teamCards(fptw)

if tuo == 0 then
btd.worldBoss.enabled = false

pcall(function()
btd.worldBoss.toggle:UpdateState(false)
end)

qza:Dialog({
Title = _d("OFEUWEI") .. tostring(fptw) .. _d("TFwURkIJH0xXFEcGFA"),
Description = _d("PEEBFQMTUABRFEYWRx8CUVVWAxUUTF0bFTYCEQEU") .. tostring(fptw) .. _d("TBwxUAEMA0UYVVoQRwAFVx4VA0cECVUYFRYPERgUFFkQAhEITVVdAxRQD1UHURFHGQIUAV0HRyQJVRgVBhUfHFAaQgxLUBhcEFtCEwUeWlV0FxMfTHMZWgAGHEx2GkYRRxINVx4VDQle"),
Buttons = {
{
Name = _d("K1sBFQsT"),
},
},
})

return
end
end

btd.worldBoss.enabled = ekw
btd.worldBoss.holdUntil = 0

btd.worldBoss.nextFightAt = 0

if not ekw then
btd.worldBoss.setRepeat(false)
end

if ekw then

btd.worldBoss.syncedAt = 0
btd.worldBoss.askedAt = 0
btd.worldBoss.chainWaitAt = nil
btd.worldBoss.repeatSeeded = false
btd.worldBoss.seenKills = nil
btd.worldBoss.progressAt = os.clock()
btd.worldBoss.kickAt = 0
end
end,
}, _d("DUEBWj0AHANWFFk9BR8fRw"))

btd.worldBoss.claimToggle = btd.worldBoss.section:Toggle({
Name = _d("LUEBWkIEHA1dGBUQAgcNRhFG"),
Default = false,
Callback = function(qckv)
btd.worldBoss.autoClaim = qckv
btd.worldBoss.claimAt = 0

if qckv then
btd.worldBoss.syncedAt = 0
btd.worldBoss.askedAt = 0
btd.worldBoss.chainWaitAt = nil
end
end,
}, _d("DUEBWj0EHA1dGGoQAgcNRhFG"))

btd.worldBoss.fullToggle = btd.worldBoss.section:Toggle({
Name = _d("P0AaRUIQGAlaVUEKAlAOVQcVBA4cAEc"),
Default = false,
Callback = function(mes)
btd.worldBoss.stopAtFull = mes
btd.worldBoss.meterAt = 0
end,
}, _d("G1YqRhYIADNVAWoEEhwA"))

btd.worldBoss.walkToggle = btd.worldBoss.section:Toggle({
Name = _d("O1UZXkITH0xTGVoABhxMVhpGEQ"),
Default = false,
Callback = function(ylc)
btd.worldBoss.walkToBoss = ylc

btd.worldBoss.travelUntil = 0
end,
}, _d("G1YqQgMLGzNAGmoACAMf"))

btd.worldBoss.bodyParagraph = btd.worldBoss.section:Paragraph({
Header = _d("LlsGRg"),
Body = btd.worldBoss.bodyText(),
})

btd.worldBoss.section:Header({
Name = _d("LlsGRkIUGANEVcX96e+DjPo"),
})

btd.worldBoss.shopParagraph = btd.worldBoss.section:Paragraph({
Header = _d("JVpVRhYIEwc"),
Body = btd.worldBoss.shopText(),
})

btd.worldBoss.itemsDropdown = btd.worldBoss.section:Dropdown({
Name = _d("JUAQWBE"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = btd.worldBoss.shopOptions(),
Callback = function(oes)
local oyr = {}

if type(oes) == _d("GFUXWQc") then
for cwmo, pqiz in pairs(oes) do
local jql = btd.worldBoss.labelToId[cwmo]

if pqiz and jql then
oyr[jql] = true
end
end
end

btd.worldBoss.selected = oyr

if not next(oyr) and btd.worldBoss.autoBuy then
btd.worldBoss.autoBuy = false

pcall(function()
btd.worldBoss.shopToggle:UpdateState(false)
end)
end
end,
}, _d("BUAQWBE4Qg"))

btd.worldBoss.shopToggle = btd.worldBoss.section:Toggle({
Name = _d("LUEBWkIFBRU"),
Default = false,
Callback = function(xan)
if xan and not next(btd.worldBoss.selected) then
btd.worldBoss.autoBuy = false

pcall(function()
btd.worldBoss.shopToggle:UpdateState(false)
end)

qza:Dialog({
Title = _d("LUEBWkIFBRU"),
Description = _d("PF0WXkIGBExYEFQRE1ADWhAVCxMVARQcW0IuBAlZBhUEDgIfQFUYQiYFGFtVVxceUB9EEFsGFFA+UREVMA4SDlsbFS8CFA1YBhUNCVAbXBRBBxEVHhQcQUIEEQIUFFMECAIIFBNHDQpQGFwUQUILGR9AWw"),
Buttons = {
{
Name = _d("K1sBFQsT"),
},
},
})

return
end

btd.worldBoss.autoBuy = xan
end,
}, _d("DUEBWj0FBRVrRw"))

btd.worldBoss.section:Button({
Name = _d("LkEMFRECHAlXAVAG"),
Callback = function()
if not next(btd.worldBoss.selected) then
qza:Dialog({
Title = _d("LkEMFRECHAlXAVAG"),
Description = _d("PF0WXkIGBExYEFQRE1ADWhAVCxMVARQcW0IuBAlZBhUEDgIfQFs"),
Buttons = {
{
Name = _d("K1sBFQsT"),
},
},
})

return
end

local rs = btd.worldBoss.buy()

if rs == 0 then
qza:Dialog({
Title = _d("LkEMFRECHAlXAVAG"),
Description = _d("IlsBXQsJF0xDFEZCBR8ZUx1BWEceAxQYUAYGHB8UAVpCFAAJWhEZQgIGCUYMFRIOEwcUHEZCCAUYFBpTQhQEA1ceGUIIAkxAHVBCBR8fR1VGCggATFwURkIJHxgUBkwMBBUIFAxQFkk"),
Buttons = {
{
Name = _d("K1sBFQsT"),
},
},
})
end
end,
})

btd.worldBoss.building = true

btd.worldBoss.teamDropdown = btd.worldBoss.section:Dropdown({
Name = _d("OFEUWA"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = { _d("OFEUWEJW"), _d("OFEUWEJV"), _d("OFEUWEJU"), _d("OFEUWEJT") },
Callback = function(nut)
if btd.worldBoss.building then
return
end

local vfqu = type(nut) == _d("GFUXWQc") and nut[1] or nut
local ora = type(vfqu) == _d("H0AHXAwA") and tonumber(vfqu:match(_d("RBERHks"))) or nil

if ora then
btd.worldBoss.team = ora
btd.worldBoss.teamChosen = true
rcj.bossTeams.save()
end

pcall(function()
btd.worldBoss.teamDropdown:UpdateName(_d("OFEUWEKF8M4U") .. (vfqu or _d("OFEUWEJW")))
end)
end,
}, _d("GFEUWA"))

pcall(function()
btd.worldBoss.teamDropdown:UpdateSelection(_d("OFEUWEI") .. tostring(btd.worldBoss.team))
btd.worldBoss.teamDropdown:UpdateName(_d("OFEUWEKF8M4UIVADClA") .. tostring(btd.worldBoss.team))
end)

task.defer(function()
btd.worldBoss.building = false
end)

btd.misc = btd.misc or {}

btd.misc.expeditions = {
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
rewardPath = _d("LXc3bU0CCBxREVwWDh8CR1tfEQge"),
module = nil,
action = nil,
section = nil,
paragraph = nil,
claimToggle = nil,
startToggle = nil,
dropdown = nil,
}

function btd.misc.expeditions.data()
local mfu = btd.misc.expeditions

if mfu.module ~= nil then
return mfu.module or nil
end

local xit, hth = pcall(function()
return require(kq.ModuleScripts.ExpeditionData)
end)

mfu.module = xit and hth or false

return mfu.module or nil
end

function btd.misc.expeditions.tiers()
local rx = btd.misc.expeditions.data()

return rx and rx.Tiers or {}
end

function btd.misc.expeditions.remote()
local fiep = btd.misc.expeditions

if fiep.action and fiep.action.Parent then
return fiep.action
end

fiep.action = ipt(_d("KUwFUAYOBAVbG3QBExkDWg"), 3)

return fiep.action
end

function btd.misc.expeditions.clockText(fog)
local lmg = btd.misc.expeditions.data()

if lmg and type(lmg.formatDuration) == _d("CkEbVhYOHwI") then
return lmg.formatDuration(fog)
end

local md = math.max(0, math.floor((fog or 0) / 60))

return tostring(md) .. _d("AQ")
end

function btd.misc.expeditions.status(ix)
local txk = btd.misc.expeditions
local jhqt = txk.state
local slq = type(jhqt) == _d("GFUXWQc") and type(jhqt.active) == _d("GFUXWQc") and jhqt.active[ix] or nil

if type(slq) ~= _d("GFUXWQc") then
return _d("DUIUXA4GEgBR"), nil
end

local xlqg = (tonumber(slq.endsAt) or 0) - (os.time() + (txk.offset or 0))

if xlqg <= 0 then
return _d("HlEUURs"), xlqg
end

return _d("HkEbWwsJFw"), xlqg
end

function btd.misc.expeditions.candidates(zpl)
local gcw = btd.misc.expeditions
local nml = gcw.data()
local std = gcw.state
local dy = nml and nml.ById and nml.ById[zpl]
local fty = {}

if not (dy and type(std) == _d("GFUXWQc") and type(std.eligible) == _d("GFUXWQc")) then
return fty
end

for ii, tawg in ipairs(std.eligible) do
if type(tawg) == _d("GFUXWQc") and tawg.cardId then
local ok = tonumber(tawg.rarity) or 0
local sh = (tonumber(tawg.count) or 0) - (tonumber(tawg.locked) or 0)

if ok >= (tonumber(dy.minRarity) or 0) and sh > 0 then

table.insert(fty, { cardId = tawg.cardId, borderLevel = tawg.borderLevel, rarity = ok, count = sh })
end
end
end

table.sort(fty, function(ahl, ur)
if ahl.rarity == ur.rarity then
return tostring(ahl.cardId) < tostring(ur.cardId)
end

return ahl.rarity < ur.rarity
end)

return fty
end

function btd.misc.expeditions.cards(utr, beaq)
local lg = btd.misc.expeditions
local zt = lg.data()
local esr = zt and tonumber(zt.CardsPerExpedition) or 4
local upg = {}
local fgg = lg.candidates(utr)

beaq = beaq or {}

local function rcd(wob, mys)
local uve = tostring(wob.cardId) .. _d("Tw") .. tostring(wob.borderLevel)

while #upg < esr and (beaq[uve] or 0) < mys do
beaq[uve] = (beaq[uve] or 0) + 1

table.insert(upg, { cardId = wob.cardId, borderLevel = wob.borderLevel })
end
end

for svua, hflh in ipairs(fgg) do
if #upg >= esr then
break
end

if hflh.count > 1 then
rcd(hflh, hflh.count - 1)
end
end

if #upg < esr then
for ha, iu in ipairs(fgg) do
if #upg >= esr then
break
end

rcd(iu, iu.count)
end
end

return upg
end

function btd.misc.expeditions.available(ziqm)
local bh = btd.misc.expeditions
local gak = bh.data()
local fvcq = gak and tonumber(gak.CardsPerExpedition) or 4
local tqj = 0

for pdpm, xveu in ipairs(bh.candidates(ziqm)) do
tqj = tqj + xveu.count

if tqj >= fvcq then
return fvcq
end
end

return tqj
end

function btd.misc.expeditions.text()
local ea = btd.misc.expeditions

if type(ea.state) ~= _d("GFUXWQc") then
return _d("PlEUUQsJF0xRDUUHAxkYXRpbEUleQg")
end

local udyl = ea.data()
local wuf = udyl and tonumber(udyl.CardsPerExpedition) or 4
local ygj = {}

for fdpa, ems in ipairs(ea.tiers()) do
local ync, whqn = ea.status(ems.id)
local nn = tostring(ems.name)

if ea.tiersWanted[ems.id] then
nn = _d("jrTXFQ") .. nn
end

if ync == _d("HkEbWwsJFw") then
nn = nn .. _d("ZmYQQRcVHh8UHFtC") .. ea.clockText(whqn)
elseif ync == _d("HlEUURs") then
nn = nn .. _d("ZmYQVAYeUBhbVVYOBhkB")
else
local oxm = ea.available(ems.id)
nn = nn .. _d("Zg") .. tostring(oxm) .. _d("TFsTFQ") .. tostring(wuf) .. _d("TFcURwYU")

if oxm >= wuf then
nn = nn .. _d("ZncUW0IUBA1GAQ")
end
end

table.insert(ygj, nn)
end

table.insert(ygj, _d("KUIQRxtHFBlEGVwBBgQJFBxGQhQVAkBVVwcBHx5RVVRCBBEeUFVMDRJQBFsZUUIIHgkUGlNORxECUFVaDAJQD1sFTEIIFkxVVVYDFRRMXQYVCQIAGBQXVAEMUBtcEEcHRwQEUVVBCwICTFcUW0IUAA1GEBULE1BBFBQVDggeCRQWWhIeUANaGUxCAB8JR1VaFxNQG1wQW0ITGAkUAVwHFVAPVRtbDRNQDlFVUwsLHAlQVUILExgDQQEVCxNe"))

return table.concat(ygj, _d("Zj4"))
end

function btd.misc.expeditions.request()
local fria = btd.misc.expeditions
local dtn = fria.remote()

if dtn then
pcall(function()
dtn:FireServer(_d("HlEEQAcUBA"))
end)
end

fria.askedAt = os.clock()
end

function btd.misc.expeditions.claim()
local suse = btd.misc.expeditions

if os.clock() < suse.claimAt then
return false
end

local nop = false

for qqv, lbh in ipairs(suse.tiers()) do
if suse.status(lbh.id) == _d("HlEUURs") then
nop = true
break
end
end

if not nop then
return false
end

local xcr = suse.remote()

if not xcr then
return false
end

pcall(function()
xcr:FireServer(_d("D1gUXA8mHAA"))
end)

suse.claimAt = os.clock() + 3
suse.askedAt = 0

return true
end

function btd.misc.expeditions.popup()
local dcn = rd:FindFirstChild(_d("KUwFUAYOBAVbG3IXDg"))

return dcn and dcn:FindFirstChild(_d("L1gUXA83HxxBBQ")) or nil
end

function btd.misc.expeditions.closeRewards()
local qck = btd.misc.expeditions
local vrrf = qck.popup()

if not (vrrf and vrrf.Visible) then
return false
end

local dqti = vrrf:FindFirstChild(_d("I183QBYTHwI"))

if dqti and type(firesignal) == _d("CkEbVhYOHwI") then
pcall(firesignal, dqti.Activated)
end

pcall(function()
vrrf.Visible = false
end)

return true
end

function btd.misc.expeditions.rewardsText()
local nwx = btd.misc.expeditions

if #nwx.rewardLog == 0 then
return _d("IlsBXQsJF0xXGVQLChUIFAxQFklQKUIQRxtHAA1NGkAWRwQEUVVGBxUGCUZVRgcJFB8UGVQMAwNMXBBHB0cHBUAdFQsTA0xAHFAQRxECUFVcFhRQD1sbQQcJBB8a")
end

local eptm = {}

for otp, bbk in ipairs(nwx.rewardLog) do
local xxc = {}
local sftd = bbk.items or {}

for uk, rrma in ipairs(sftd) do
if uk > 4 then
table.insert(xxc, _d("Rw") .. tostring(#sftd - 4) .. _d("TFkaRwc"))
break
end

local fmdy = rrma.id or rrma.itemId
local ss = fmdy and hb.ById[fmdy] or nil
local lvnk = (ss and ss.name) or (rrma.potions and _d("PFsBXA0JAw")) or tostring(fmdy or _d("HlECVBAD"))

table.insert(xxc, lvnk .. _d("TEw") .. tostring(rrma.count or rrma.max or rrma.min or 1))
end

local eqsr = math.max(0, os.time() - (tonumber(bbk.at) or os.time()))
local difi

if eqsr < 60 then
difi = tostring(eqsr) .. _d("HxQUUg0")
elseif eqsr < 3600 then
difi = tostring(math.floor(eqsr / 60)) .. _d("ARQUUg0")
else
difi = tostring(math.floor(eqsr / 3600)) .. _d("BBQUUg0")
end

table.insert(eptm, tostring(bbk.title) .. _d("TPbCFQ") .. difi)
table.insert(eptm, table.concat(xxc, _d("QBQ")))
end

return table.concat(eptm, _d("Zg"))
end

function btd.misc.expeditions.saveRewards()
local dmrh = btd.misc.expeditions

if type(writefile) ~= _d("CkEbVhYOHwI") then
return false
end

return pcall(function()
if type(makefolder) == _d("CkEbVhYOHwI") and type(isfolder) == _d("CkEbVhYOHwI") and not isfolder(_d("LXc3bQ")) then
makefolder(_d("LXc3bQ"))
end

writefile(dmrh.rewardPath, game:GetService(_d("JEABRTECAhpdFlA")):JSONEncode({
rewards = dmrh.rewardLog,
updatedAt = os.time(),
}))
end)
end

function btd.misc.expeditions.loadRewards()
local umbh = btd.misc.expeditions

if type(readfile) ~= _d("CkEbVhYOHwI") or type(isfile) ~= _d("CkEbVhYOHwI") then
return false
end

local dm, lgj = pcall(function()
if not isfile(umbh.rewardPath) then
return nil
end

return readfile(umbh.rewardPath)
end)

if not dm or type(lgj) ~= _d("H0AHXAwA") or #lgj == 0 then
return false
end

local ifj

if not pcall(function()
ifj = game:GetService(_d("JEABRTECAhpdFlA")):JSONDecode(lgj)
end) then
return false
end

if type(ifj) ~= _d("GFUXWQc") or type(ifj.rewards) ~= _d("GFUXWQc") then
return false
end

umbh.rewardLog = {}

for cusp, docn in ipairs(ifj.rewards) do
if type(docn) == _d("GFUXWQc") and type(docn.items) == _d("GFUXWQc") then
table.insert(umbh.rewardLog, {
at = tonumber(docn.at) or os.time(),
title = tostring(docn.title or _d("KUwFUAYOBAVbGw")),
items = docn.items,
})
end
end

return #umbh.rewardLog > 0
end

function btd.misc.expeditions.start(veok, lnz)
local ed = btd.misc.expeditions

if ed.status(veok) ~= _d("DUIUXA4GEgBR") then
return false
end

if os.clock() < (ed.startedAt[veok] or 0) then
return false
end

local hxw = ed.remote()

if not hxw then
return false
end

local wsm = ed.cards(veok, lnz)
local saa = ed.data()
local lnn = saa and tonumber(saa.CardsPerExpedition) or 4

if #wsm < lnn then
return false
end

local it = {}

for fdv, jhzc in ipairs(wsm) do
it[fdv] = { cardId = jhzc.cardId, borderLevel = jhzc.borderLevel }
end

pcall(function()
hxw:FireServer(_d("H0AURxY"), veok, it)
end)

ed.startedAt[veok] = os.clock() + 6
ed.askedAt = 0

return true
end

btd.misc.icon = function()
local cz = gethui()

for fov, biv in ipairs(cz:QueryDescendants(_d("JVkUUgcrEQ5RGQ"))) do
if biv.Name == _d("OFUXfA8GFwk") then
local ko = biv.Parent
local xm = ko and ko:FindFirstChild(_d("OFUXZhUOBA9cEEcsBh0J"))

if xm and xm.Text == _d("IV0GVgcLHA1aEFoXFA") then
if biv:GetAttribute(_d("LXc3bS8OAw99FloM")) then
return true
end

biv:SetAttribute(_d("LXc3bS8OAw99FloM"), true)
biv.Image = _d("")
biv.BackgroundTransparency = 1

local function qfn(ypeu, mpvw, uuv, bff, rrk, nsdd, qqvy)
local xodk = Instance.new(ypeu)

xodk.Size = UDim2.fromOffset(rrk, nsdd)
xodk.Position = UDim2.fromOffset(uuv, bff)
xodk.BackgroundColor3 = mpvw
xodk.BorderSizePixel = 0
xodk.Parent = biv

if qqvy then
local jhg = Instance.new(_d("OX02WhAJFR4"))
jhg.CornerRadius = UDim.new(0, qqvy)
jhg.Parent = xodk
end

return xodk
end

local hjio = Color3.fromRGB(168, 170, 176)

local function ked(yns, xqtb, joc, mfg, vei)
local unhj = qfn(_d("KkYUWAc"), hjio, yns, xqtb, joc, mfg, vei)

unhj.BackgroundTransparency = 1

local ytb = Instance.new(_d("OX0mQRAIGwk"))

ytb.Color = hjio
ytb.Thickness = 1.4
ytb.LineJoinMode = Enum.LineJoinMode.Round
ytb.Parent = unhj

return unhj
end

ked(3, 1, 6, 4, 1)
ked(1, 4, 16, 12, 2)

local dpo = qfn(_d("KkYUWAc"), hjio, 3, 8, 5, 5)

dpo.BackgroundTransparency = 1
dpo.ClipsDescendants = true

local clve = qfn(_d("KkYUWAc"), hjio, 0, 1, 5, 5)

clve.Rotation = 45
clve.Parent = dpo

qfn(_d("KkYUWAc"), hjio, 9, 9, 4, 4, 4)
qfn(_d("KkYUWAc"), hjio, 13, 10, 3, 3, 1)

return true
end
end
end

return false
end

btd.misc.tab = ueb:Tab({
Name = _d("IV0GVgcLHA1aEFoXFA"),

Image = _d(""),
})

task.defer(function()
for ph = 1, 20 do
if btd.misc.icon() then
break
end

task.wait(0.25)
end
end)

local sop = {
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
lastText = _d("IlsBXQsJF0xEGkUSAhRMTRBBTA"),
tab = nil,
weatherSection = nil,
giveUpSection = nil,
weatherParagraph = nil,
giveUpParagraph = nil,
weatherToggle = nil,
manualSection = nil,
giveUpToggle = nil,
}

getgenv().ACBXPop = sop

function sop.options()
local nff = {}

for zpto, wi in pairs(hb.ById) do
if wi.type == _d("HFsBXA0J") and type(wi.name) == _d("H0AHXAwA") then
nff[#nff + 1] = wi.name
end
end

table.sort(nff)

return nff
end

function sop.idOf(ud)
for qcj, aqlm in pairs(hb.ById) do
if aqlm.type == _d("HFsBXA0J") and aqlm.name == ud then
return qcj
end
end

return nil
end

function sop.count(abh)
local krm = llqc.balances

return tonumber(krm and krm[abh]) or 0
end

jxjd(bo.UseItemResult.OnClientEvent, function(oq)
sop.lastResult = tostring(oq)
sop.lastResultAt = os.clock()
end)

function sop.pop(tns, xlkv, diqb)
local ob = os.clock()
local lgw = {}

for onjo, ot in pairs(tns) do
if ot then
local zcqd = sop.idOf(onjo)

if zcqd then
local txsh = sop.count(zcqd)

if txsh <= 0 then
lgw[#lgw + 1] = onjo .. _d("TBlVWw0JFUxYEFMW")
else
local utm = math.clamp(math.floor(tonumber(xlkv) or 1), 1, txsh)

pcall(function()
bo.UseItem:FireServer(zcqd, utm)
end)

lgw[#lgw + 1] = onjo .. _d("TEw") .. utm
task.wait(0.3)
end
end
end
end

if #lgw == 0 then
sop.lastText = diqb .. _d("TBlVWw0TGAVaEhURAhwJVwFQBg")

return false
end

task.wait(0.4)

sop.lastText = diqb .. _d("TBlV") .. table.concat(lgw, _d("QBQ"))

if (sop.lastResultAt or 0) >= ob and sop.lastResult then
sop.lastText = sop.lastText .. _d("TBw") .. sop.lastResult .. _d("RQ")
end

pcall(function()
qza:Notify({
Title = _d("PFsF"),
Description = sop.lastText,
Lifetime = 5,
})
end)

return true
end

function sop.status()
local uz = cm.weatherWanted(sop.weathers)
local vidp = cm.weatherNow or _d("GVoeWw0QHg")
local vc = {
_d("O1EUQQoCAlYU") .. vidp .. (uz and (_d("TBwFWhIXGQJTTxU") .. uz .. _d("RQ")) or _d("")),
}

table.insert(vc, _d("IFUGQVhH") .. sop.lastText)

return table.concat(vc, _d("Zg"))
end

function sop.giveUpStatus()
if sop.armedAt > 0 then
return _d("LUYYUAZHXUxDFFwWDh4LFBNaEEcEBFFVRxcJUBhbVVAMA15meBRGFl1Q") .. sop.lastText
end

return _d("JVAZUExtPA1HAQ9C") .. sop.lastText
end

sop.tab = ueb:Tab({
Name = _d("PFsF"),

Image = _d(""),
})

sop.icon = function()
local csaf = gethui()

for rdxy, cac in ipairs(csaf:QueryDescendants(_d("JVkUUgcrEQ5RGQ"))) do
if cac.Name == _d("OFUXfA8GFwk") then
local rbz = cac.Parent
local qp = rbz and rbz:FindFirstChild(_d("OFUXZhUOBA9cEEcsBh0J"))

if qp and qp.Text == _d("PFsF") then
if cac:GetAttribute(_d("LXc3bTIIACVXGls")) then
return true
end

cac:SetAttribute(_d("LXc3bTIIACVXGls"), true)
cac.Image = _d("")
cac.BackgroundTransparency = 1

local qpe = Color3.fromRGB(168, 170, 176)

local function gjpd(djgz, dat, pqit, umkg, sy, byn)
local udz = Instance.new(djgz)

udz.Size = UDim2.fromOffset(umkg, sy)
udz.Position = UDim2.fromOffset(dat, pqit)
udz.BackgroundColor3 = qpe
udz.BorderSizePixel = 0
udz.Parent = cac

if byn then
local cn = Instance.new(_d("OX02WhAJFR4"))
cn.CornerRadius = UDim.new(0, byn)
cn.Parent = udz
end

return udz
end

local function mbg(lwlv, cwwv, ut, nmxt, fcuz)
local tbi = gjpd(_d("KkYUWAc"), lwlv, cwwv, ut, nmxt, fcuz)

tbi.BackgroundTransparency = 1

local fcso = Instance.new(_d("OX0mQRAIGwk"))

fcso.Color = qpe
fcso.Thickness = 1.3
fcso.LineJoinMode = Enum.LineJoinMode.Round
fcso.Parent = tbi

return tbi
end

mbg(1, 6, 16, 12, 6)
mbg(6, 3, 6, 4, 1)
gjpd(_d("KkYUWAc"), 5, 1, 8, 2, 1)
gjpd(_d("KkYUWAc"), 7, 0, 4, 1, 0)

gjpd(_d("KkYUWAc"), 4, 11, 10, 1, 0)
gjpd(_d("KkYUWAc"), 13, 3, 2, 2, 2)
gjpd(_d("KkYUWAc"), 15, 6, 2, 2, 2)

return true
end
end
end

return false
end

task.defer(function()
for nlk = 1, 20 do
if sop.icon() then
break
end

task.wait(0.25)
end
end)

sop.weatherSection = sop.tab:Section({
Side = _d("IFETQQ"),
})

sop.weatherSection:Header({
Name = _d("PFsBXA0JA0xbGxUVAhEYXBBHQpfvy54"),
})

sop.weatherToggle = sop.weatherSection:Toggle({
Name = _d("PFsFFQ0JUBhcEEYHRwcJVQFdBxUD"),
Default = false,
Callback = function(wja)
if wja and (next(sop.weatherPotions) == nil or next(sop.weathers) == nil) then
sop.onWeather = false

pcall(function()
sop.weatherToggle:UpdateState(false)
end)

qza:Dialog({
Title = _d("PFsF"),
Description = _d("OF0WXkIGBExYEFQRE1ADWhAVFQIRGFwQR0IGHggUGlsHRwADQBxaDEcWBUYGQUJKUDxbBRUMAhUIR1VXDRMYTEAaFQkJHxsUAl0DE1AYW1VREA4eBxQUWwZHBwRRGxs"),
Buttons = {
{
Name = _d("K1sBFQsT"),
},
},
})

return
end

sop.onWeather = wja

if wja then
sop.weatherSpent = nil
end
end,
}, _d("HFsFag0JLxhcEEYHOAcJVQFdBxUD"))

sop.weatherSection:Dropdown({
Name = _d("O1EUQQoCAh8"),
Multi = true,
Required = false,
Options = { _d("OE0FXQ0IHg"), _d("LlgcTxgGAgg"), _d("IF0SXRYJGQJT"), _d("O10bURETHx5Z"), _d("P1wURwsJFw1a"), _d("P10bUhcLER5dAUw"), _d("IVsbVBAEGExwGlgDDh4"), _d("OlscUQ"), _d("IVURUEIOHkx8EFQUAh4"), _d("IVUbUgM") },
Callback = function(ukyb)
sop.weathers = {}

if type(ukyb) == _d("GFUXWQc") then
for tp, ofkz in pairs(ukyb) do
if ofkz then
sop.weathers[tp] = true
end
end
end
end,
}, _d("G1EUQQoCAh8"))

sop.weatherSection:Dropdown({
Name = _d("PFsBXA0JAw"),
Multi = true,
Required = false,
Options = sop.options(),
Callback = function(popy)
sop.weatherPotions = {}

if type(popy) == _d("GFUXWQc") then
for xc, nus in pairs(popy) do
if nus then
sop.weatherPotions[xc] = true
end
end
end
end,
}, _d("HFsBXA0JAw"))

sop.weatherSection:Input({
Name = _d("LVkaQAwT"),
Placeholder = _d("XQ"),
AcceptedCharacters = _d("IkEYUBAOEw"),
Callback = function(qulu)
local ucyf = math.floor(tonumber(qulu) or 1)

sop.weatherAmount = math.clamp(ucyf, 1, 50)
end,
}, _d("DVkaQAwT"))

sop.weatherParagraph = sop.weatherSection:Paragraph({
Header = _d("P0AUQRcU"),
Body = sop.status(),
})

sop.manualSection = sop.tab:Section({
Side = _d("IFETQQ"),
})

sop.manualSection:Header({
Name = _d("OUcQFRIIBAVbG0ZCCR8bFIWqxc0"),
})

sop.manualSection:Dropdown({
Name = _d("PFsBXA0JAw"),
Multi = true,
Required = false,
Options = sop.options(),
Callback = function(mml)
sop.manualPotions = {}

if type(mml) == _d("GFUXWQc") then
for skb, lupx in pairs(mml) do
if lupx then
sop.manualPotions[skb] = true
end
end
end
end,
}, _d("AVUbQAMLLxxbAVwNCQM"))

sop.manualSection:Input({
Name = _d("LVkaQAwT"),
Placeholder = _d("XQ"),
AcceptedCharacters = _d("IkEYUBAOEw"),
Callback = function(svaj)
local alxg = math.floor(tonumber(svaj) or 1)

sop.manualAmount = math.clamp(alxg, 1, 50)
end,
}, _d("AVUbQAMLLw1ZGkAMEw"))

sop.manualSection:Button({
Name = _d("OUcQFRIIBAVbG0Y"),
Callback = function()
if next(sop.manualPotions) == nil then
qza:Notify({
Title = _d("OUcQFRIIBAVbG0Y"),
Description = _d("PF0WXkIGBExYEFQRE1ADWhAVEggEBVsbFQsJUBhcEBUGFR8cUBpCDEcWBUYGQUw"),
Lifetime = 6,
})

return
end

task.spawn(function()
sop.pop(sop.manualPotions, sop.manualAmount, _d("IVUbQAML"))
end)
end,
})

sop.giveUpSection = sop.tab:Section({
Side = _d("Pl0SXRY"),
})

sop.giveUpSection:Header({
Name = _d("LVIBUBBHFwVCEBUXFw"),
})

sop.giveUpToggle = sop.giveUpSection:Toggle({
Name = _d("PFsFFQMBBAlGVVRCEx8bUQcVBQ4GCRQARQ"),
Default = false,
Callback = function(bpqr)
if bpqr and next(sop.giveUpPotions) == nil then
sop.afterGiveUp = false

pcall(function()
sop.giveUpToggle:UpdateState(false)
end)

qza:Dialog({
Title = _d("PFsF"),
Description = _d("OF0WXkIGBExYEFQRE1ADWhAVEggEBVsbFQQOAh9AVRhCExgJRhAVCxRQAlsBXQsJF0xAGhUGFRkCX1VUBBMVHhQBXQdHAhlaVVoWDxUeQxxGB0k"),
Buttons = {
{
Name = _d("K1sBFQsT"),
},
},
})

return
end

sop.afterGiveUp = bpqr
end,
}, _d("HFsFagMBBAlGKlQ9Ex8bUQdqBQ4GCWsARQ"))

sop.giveUpSection:Dropdown({
Name = _d("PFsBXA0JAw"),
Multi = true,
Required = false,
Options = sop.options(),
Callback = function(hc)
sop.giveUpPotions = {}

if type(hc) == _d("GFUXWQc") then
for pin, ayhq in pairs(hc) do
if ayhq then
sop.giveUpPotions[pin] = true
end
end
end
end,
}, _d("HFsBXA0JAzMG"))

sop.giveUpSection:Input({
Name = _d("LVkaQAwT"),
Placeholder = _d("XQ"),
AcceptedCharacters = _d("IkEYUBAOEw"),
Callback = function(xk)
local bq = math.floor(tonumber(xk) or 1)

sop.giveUpAmount = math.clamp(bq, 1, 50)
end,
}, _d("DVkaQAwTL14"))

sop.giveUpParagraph = sop.giveUpSection:Paragraph({
Header = _d("P0AUQRcU"),
Body = sop.giveUpStatus(),
})

local df = {
autoSave = false,
autoRoll = true,
autoQuickRoll = true,

loading = false,
selected = nil,
lastText = _d("IlsBXQsJF0xDB1wWExUCFAxQFkddTEQcVglHEUxHFEMHRxYFWBAVAAIcA0Nb"),
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
theme = _d("OlscUQ"),
accent = nil,
savesAt = 0,
autoSaveAt = 0,
themeAt = 0,
capAt = 0,
scaleAnchor = nil,
statusAt = 0,
knownSaves = _d(""),
}

getgenv().ACBXSettings = df

df.presets = {
Void = { panel = Color3.fromRGB(15, 15, 15), element = Color3.fromRGB(0, 0, 0), accent = Color3.fromRGB(168, 170, 176) },
Ocean = { panel = Color3.fromRGB(6, 16, 26), element = Color3.fromRGB(8, 26, 40), accent = Color3.fromRGB(77, 166, 255) },
Ember = { panel = Color3.fromRGB(26, 10, 8), element = Color3.fromRGB(36, 16, 10), accent = Color3.fromRGB(255, 122, 69) },
Sakura = { panel = Color3.fromRGB(26, 9, 18), element = Color3.fromRGB(38, 14, 26), accent = Color3.fromRGB(255, 125, 177) },
Mint = { panel = Color3.fromRGB(7, 20, 14), element = Color3.fromRGB(9, 30, 22), accent = Color3.fromRGB(77, 227, 160) },
Graphite = { panel = Color3.fromRGB(20, 20, 22), element = Color3.fromRGB(30, 30, 33), accent = Color3.fromRGB(200, 200, 206) },
}

df.themeOrder = { _d("OlscUQ"), _d("I1cQVAw"), _d("KVkXUBA"), _d("P1UeQBAG"), _d("IV0bQQ"), _d("K0YURQoOBAk") }

local nlg = _d("LXc3FTACEgVGAV1NFBUYQBxbBRQ")

function df.saves()
local fur, jz = pcall(function()
return gg:RefreshConfigList()
end)

if fur and type(jz) == _d("GFUXWQc") then
table.sort(jz)
return jz
end

return {}
end

function df.autoLoadName()
local nud, beo = pcall(function()
if isfile and isfile(nlg .. _d("Q1UAQQ0LHw1QW0EaEw")) then
return readfile(nlg .. _d("Q1UAQQ0LHw1QW0EaEw"))
end
end)

if nud and type(beo) == _d("H0AHXAwA") then
beo = beo:gsub(_d("MhEGHg"), _d("")):gsub(_d("SUdeEQ"), _d(""))

if beo ~= _d("") then
return beo
end
end

return nil
end

function df.setAutoLoad(pasa)

return (pcall(function()
writefile(nlg .. _d("Q1UAQQ0LHw1QW0EaEw"), pasa or _d(""))
end))
end

function df.delete(evs)
if type(evs) ~= _d("H0AHXAwA") or evs == _d("") then
return false, _d("PF0WXkIGUB9VA1BCARkAUVVTCxUDGBo")
end

local bp = nlg .. _d("Qw") .. evs .. _d("Ql4GWgw")
local nfl = false

pcall(function()
nfl = isfile ~= nil and isfile(bp) == true
end)

if not nfl then
return false, _d("OFwQRwdHGR8UG1pCARkAUVVWAwscCVBV") .. evs .. _d("Qg")
end

local su, krbo = pcall(function()
delfile(bp)
end)

if not su then
return false, tostring(krbo)
end

if df.autoLoadName() == evs then
df.setAutoLoad(_d(""))
end

if df.selected == evs then
df.selected = nil
df.selectionShown = nil
end

df.knownSaves = nil
df.savesAt = 0

return true
end

function df.save(ddry)
if type(ddry) ~= _d("H0AHXAwA") or ddry:gsub(_d("SUc"), _d("")) == _d("") then
return false, _d("K10DUEITGAkUBlQUAlANFBtUDwJQCl0HRhZJ")
end

local ullm, yfit, uq = pcall(function()
return gg:SaveConfig(ddry)
end)

if not ullm then
return false, tostring(yfit)
end

if yfit ~= true then
return false, tostring(uq or _d("GFwQFQQOHAkUFloXCxRMWhpBQgUVTEMHXBYTFQI"))
end

return true
end

function df.replayOff(bffa)
local qgad, cc = pcall(function()
return readfile(nlg .. _d("Qw") .. bffa .. _d("Ql4GWgw"))
end)

if not qgad or type(cc) ~= _d("H0AHXAwA") then
return
end

local btvy
qgad, btvy = pcall(function()
return game:GetService(_d("JEABRTECAhpdFlA")):JSONDecode(cc)
end)

if not qgad or type(btvy) ~= _d("GFUXWQc") or type(btvy.objects) ~= _d("GFUXWQc") then
return
end

for odlb, abj in ipairs(btvy.objects) do
if abj.type == _d("OFsSUg4C") and abj.state == false and abj.flag then
local ruoj = gg.Options[abj.flag]

if ruoj then
pcall(function()
ruoj:UpdateState(false)
end)
end
end
end
end

function df.load(zeh)
if type(zeh) ~= _d("H0AHXAwA") or zeh == _d("") then
return false, _d("PF0WXkIGUB9VA1BCARkAUVVTCxUDGBo")
end

df.loading = true
rzx = true

local jfow, pxo, agz = pcall(function()
return gg:LoadConfig(zeh)
end)

if not jfow then
df.loading = false
rzx = false

return false, tostring(pxo)
end

if pxo ~= true then
df.loading = false
rzx = false

return false, tostring(agz or _d("GFwQFQQOHAkUFloXCxRMWhpBQgUVTEYQVAY"))
end

task.wait(0.25)
df.replayOff(zeh)
df.loading = false
rzx = false

return true
end

df.uiPath = _d("LXc3bU0SGUJeBloM")

function df.saveUi()
if type(writefile) ~= _d("CkEbVhYOHwI") then
return false
end

if df.restoring then
return false
end

local ltql = df.accent

local tfu = {
theme = df.theme,
scale = tonumber(string.format(_d("SRpHUw"), df.scaleTarget or 1)),
accent = ltql and string.format(_d("SVBZEAZLVQg"),
math.floor(ltql.R * 255 + 0.5),
math.floor(ltql.G * 255 + 0.5),
math.floor(ltql.B * 255 + 0.5)) or nil,
}

return pcall(function()
if type(makefolder) == _d("CkEbVhYOHwI") and type(isfolder) == _d("CkEbVhYOHwI") and not isfolder(_d("LXc3bQ")) then
makefolder(_d("LXc3bQ"))
end

writefile(df.uiPath, game:GetService(_d("JEABRTECAhpdFlA")):JSONEncode(tfu))
end)
end

function df.loadUi()
if type(readfile) ~= _d("CkEbVhYOHwI") or type(isfile) ~= _d("CkEbVhYOHwI") then
return nil
end

local kxse, aar = pcall(function()
if not isfile(df.uiPath) then
return nil
end

return readfile(df.uiPath)
end)

if not kxse or type(aar) ~= _d("H0AHXAwA") or aar == _d("") then
return nil
end

local lx
kxse, lx = pcall(function()
return game:GetService(_d("JEABRTECAhpdFlA")):JSONDecode(aar)
end)

if not kxse or type(lx) ~= _d("GFUXWQc") then
return nil
end

df.restoring = true

if type(lx.theme) == _d("H0AHXAwA") and df.presets[lx.theme] then
df.theme = lx.theme

pcall(function()
df.themeDropdown:UpdateSelection(lx.theme)
df.themeDropdown:UpdateName(_d("OFwQWAddUA") .. lx.theme)
end)
end

local hfa, sie, kesa = tostring(lx.accent or _d("")):match(_d("MhxQUUlOXEQRER5LS1hJUF4cRg"))

if hfa then
local bus = Color3.fromRGB(tonumber(hfa), tonumber(sie), tonumber(kesa))

df.accent = bus

pcall(function()
df.accentPicker:SetColor(bus)
end)
else
df.accent = nil

local dbk = df.presets[df.theme] or df.presets.Void

pcall(function()
df.accentPicker:SetColor(dbk.accent)
end)
end

local voc = tonumber(lx.scale)

if voc then
voc = math.clamp(voc, 0.5, df.scaleCeiling())

df.scaleTarget = voc
df.scaleAnchor = nil

pcall(function()
df.scaleSlider:UpdateValue(voc)
end)
end

df.applyTheme()

df.restoring = false
df.saveUi()

return lx
end

df.prioPath = _d("LXc3bU0XAgVbB1wWHl4GRxpb")

function df.groupAt(ekm)
for fypp, wbej in ipairs(rqc.prioGroups) do
if wbej.rank == ekm then
return wbej
end
end
end

function df.paintPriority()
if df.prioBusy then
return
end

df.prioBusy = true

for cime = 1, #rqc.prioGroups do
local tcd = df.prioRows and df.prioRows[cime]
local jch = df.groupAt(cime)

if tcd and jch then
pcall(function()
tcd:UpdateSelection(jch.label)
end)
end
end

df.prioBusy = false
end

function df.setPriority(eoh, bet)
if df.prioBusy or df.prioBuilding then
return
end

local dbbq

for qu, ld in ipairs(rqc.prioGroups) do
if ld.id == eoh then
dbbq = ld.rank
ld.rank = bet
end
end

if dbbq and dbbq ~= bet then
for jqi, uex in ipairs(rqc.prioGroups) do
if uex.id ~= eoh and uex.rank == bet then
uex.rank = dbbq
end
end
end

df.paintPriority()
df.savePriority()
end

function df.savePriority()
if type(writefile) ~= _d("CkEbVhYOHwI") then
return false
end

local hefh = {}

for msu, vd in ipairs(rqc.prioGroups) do
hefh[vd.id] = vd.rank
end

return pcall(function()
if type(makefolder) == _d("CkEbVhYOHwI") and type(isfolder) == _d("CkEbVhYOHwI") and not isfolder(_d("LXc3bQ")) then
makefolder(_d("LXc3bQ"))
end

writefile(df.prioPath, game:GetService(_d("JEABRTECAhpdFlA")):JSONEncode({ ranks = hefh }))
end)
end

function df.loadPriority()
if type(readfile) ~= _d("CkEbVhYOHwI") or type(isfile) ~= _d("CkEbVhYOHwI") then
return nil
end

local jh, zibu = pcall(function()
if not isfile(df.prioPath) then
return nil
end

return readfile(df.prioPath)
end)

if not jh or type(zibu) ~= _d("H0AHXAwA") or zibu == _d("") then
return nil
end

local joo

jh, joo = pcall(function()
return game:GetService(_d("JEABRTECAhpdFlA")):JSONDecode(zibu)
end)

if not jh or type(joo) ~= _d("GFUXWQc") or type(joo.ranks) ~= _d("GFUXWQc") then
return nil
end

return joo.ranks
end

function df.restorePriority()
local cdav = df.loadPriority()

if not cdav then
return
end

local wb = {}
local iif = {}

for fpo, pon in ipairs(rqc.prioGroups) do
local mfws = tonumber(cdav[pon.id])

if mfws then
wb[#wb + 1] = { group = pon, rank = mfws }
iif[pon.id] = true
end
end

table.sort(wb, function(pn, vcx)
return pn.rank < vcx.rank
end)

for nsh, rgbh in ipairs(wb) do
rgbh.group.rank = nsh
end

local gozl = #wb + 1

for wxq, bcze in ipairs(rqc.prioGroups) do
if not iif[bcze.id] then
bcze.rank = gozl
gozl = gozl + 1
end
end

df.paintPriority()
end

function df.colourKey(bql)
return math.floor(bql.R * 255) .. _d("QA") .. math.floor(bql.G * 255) .. _d("QA") .. math.floor(bql.B * 255)
end

function df.guiRoot()

if not xkj() then
return nil
end

if df.root and df.root.Parent then
return df.root
end

local lwwx = gethui and gethui() or game:GetService(_d("L1sHUCUSGQ"))

for gdc, sca in ipairs(lwwx:GetChildren()) do
if sca:IsA(_d("P1cHUAcJNxld")) and sca:FindFirstChild(_d("LlUGUA")) then
df.root = sca.Base

return df.root
end
end

return nil
end

function df.applyTheme()
local ngdr = df.guiRoot()
local zwu = df.presets[df.theme] or df.presets.Void

if not ngdr then
return false
end

local tnri = {
panel = zwu.panel,
element = zwu.element,
accent = df.accent or zwu.accent,
}

local ewrz = {}

for duls, tlor in pairs(df.presets) do
ewrz[df.colourKey(tlor.panel)] = _d("HFUbUA4")
ewrz[df.colourKey(tlor.element)] = _d("CVgQWAcJBA")
ewrz[df.colourKey(tlor.accent)] = _d("DVcWUAwT")
end

ewrz[df.colourKey(tnri.accent)] = _d("DVcWUAwT")

if ewrz[df.colourKey(ngdr.BackgroundColor3)] == _d("HFUbUA4") then
ngdr.BackgroundColor3 = tnri.panel
end

for mxs, hs in ipairs(ngdr:GetDescendants()) do
if hs:IsA(_d("K0EcegANFQ9A")) then
local ywv = ewrz[df.colourKey(hs.BackgroundColor3)]

if ywv then
hs.BackgroundColor3 = tnri[ywv]
end
elseif hs:IsA(_d("OX0mQRAIGwk")) then
if ewrz[df.colourKey(hs.Color)] == _d("DVcWUAwT") then
hs.Color = tnri.accent
end
end

if hs:IsA(_d("JVkUUgcrEQ5RGQ")) and hs.Name == _d("OFUXfA8GFwk") and hs.Image ~= _d("") then
hs.ImageColor3 = tnri.accent
hs.ImageTransparency = 0
hs:SetAttribute(_d("LXc3bTYGEi1XFlAMEw"), tnri.accent)

if not hs:GetAttribute(_d("LXc3bTYGEjhdG0E")) then
hs:SetAttribute(_d("LXc3bTYGEjhdG0E"), true)

local function er()
local ulcj = hs:GetAttribute(_d("LXc3bTYGEi1XFlAMEw"))

if ulcj and hs.ImageColor3 ~= ulcj then
hs.ImageColor3 = ulcj
end

if hs.ImageTransparency ~= 0 then
hs.ImageTransparency = 0
end
end

jxjd(hs:GetPropertyChangedSignal(_d("JVkUUgczAg1aBkUDFRUCVww")), er)
jxjd(hs:GetPropertyChangedSignal(_d("JVkUUgckHwBbBwY")), er)
end
end
end

return true
end

local pry = ueb:Tab({
Name = _d("IVUF"),
Image = _d("HlYNVBEUFRhdEQ9NSEZcB0QFVVJJXwU"),
})

local ze = {
holdFor = 25,
fly = {
on = false,
speed = 55,
connection = nil,
},
islands = {
{ name = _d("IFsXVxs"), kind = _d("G1sHWQY"), arg = _d("AFsXVxs") },
{ name = _d("LVYUWwYIHglQVXwRCxECUA"), kind = _d("BUcZVAwD"), arg = _d("DVYUWwYIHglQKlwRCxECUA") },
{ name = _d("OEMcW0IlFQ1XHVAR"), kind = _d("BUcZVAwD"), arg = _d("GEMcWz0FFQ1XHVAR"), note = _d("TGAdUEIUFR5CEEdCAwIDRAYVCxNQGVoBXA5HCQNBVV0DERVMRxRcDgIUTEAdUBACXg") },
{ name = _d("O10bUQ8OHAAUPEYOAg"), kind = _d("BUcZVAwD"), arg = _d("G10bUQ8OHABrHEYOAg"), note = _d("TGAdUEIUFR5CEEdCAwIDRAYVCxNQGVoBXA5HCQNBVV0DERVMRxRcDgIUTEAdUBACXg") },
},
npcs = {
{ name = _d("L1UHUUIqFR5TEA"), npc = _d("CkEGUD0JAA8"), attr = _d("ImQ2fAY"), at = Vector3.new(-272, 33, -40347) },
{ name = _d("KUwFUAYOBAVbG0Y"), npc = _d("KUwFUAYOBAVbG3syJA"), attr = _d("KUwFUAYOBAVbG3syJA"), at = Vector3.new(-347, 35, -40361) },
{ name = _d("KFEWWgwUBB5BFkE"), npc = _d("CFEWWgwUBB5BFkE9CQAP"), attr = _d("ImQ2fAY"), at = Vector3.new(-264, 33, -40331) },
{ name = _d("L0YUUxY"), npc = _d("D0YUUxY4HhxX"), attr = _d("ImQ2fAY"), at = Vector3.new(-330, 33, -40277) },
{ name = _d("P18cWQ5HJB5REA"), npc = _d("P18cWQ4zAglRO2Uh"), attr = _d("P18cWQ4zAglRO2Uh"), at = Vector3.new(-290, 32, -40283) },
{ name = _d("L1UHUUIuHghRDQ"), npc = _d("D1UHUT0OHghRDWoMFxM"), attr = _d("ImQ2fAY"), at = Vector3.new(-313, 33, -40282) },
{ name = _d("PFUWXkIqFR5XHVQMEw"), npc = _d("HFUWXj0KFR5XHVQMEw"), attr = _d("ImQ2fAY"), at = Vector3.new(-301, 33, -40270) },
{ name = _d("KEEbUgcIHg"), npc = _d("CEEbUgcIHjNaBVY"), attr = _d("ImQ2fAY"), at = Vector3.new(-339, 41, -40399) },
{ name = _d("Kl0GXQcVHQ1a"), npc = _d("Kl0GXQcVHQ1aO2Uh"), attr = _d("Kl0GXQcVHQ1aO2Uh"), at = Vector3.new(-493, 14, -40262) },
{ name = _d("P1EWRwcTUC1aElkHFQ"), npc = _d("P1EWRwcTMQJTGVAQKSAv"), attr = _d("P1EWRwcTMQJTGVAQKSAv"), at = Vector3.new(-209, 34, -40382) },
{ name = _d("JFUZWQ0QFQlaVWYKCAA"), npc = _d("PEEYRQkOHkx5EEcBDxECQA"), at = Vector3.new(-29989, 78, -30259) },
{ name = _d("P1UWRwsBGQ9RVXQOExEe"), landmark = _d("P1UWRwsBGQ9RNFkWBgI"), island = _d("DVYUWwYIHglQKlwRCxECUA"), at = Vector3.new(-3548, 11, -40462) },
{ name = _d("JFUHUQEIAgkUIVoVAgI"), npc = _d("JFUHUQEIAglgGkIHFQ"), island = _d("DVYUWwYIHglQKlwRCxECUA"), at = Vector3.new(-3795, 25, -40250) },
{ name = _d("JUcZVAwDUCpdBl0HFR0NWg"), npc = _d("JUcZVAwDNgVHHVAQChECeiV2"), attr = _d("JUcZVAwDNgVHHVAQChECeiV2"), island = _d("DVYUWwYIHglQKlwRCxECUA"), at = Vector3.new(-3825, 23, -40260) },
{ name = _d("KF0SUgcV"), npc = _d("KF0SUgcVPjx3"), attr = _d("KF0SUgcVPjx3"), island = _d("GEMcWz0FFQ1XHVAR"), at = Vector3.new(-5998, 26, -40565) },
{ name = _d("P1EWRwcTUChdElIHFQ"), npc = _d("P1EWRwcTNAVTElAQKSAv"), attr = _d("P1EWRwcTNAVTElAQKSAv"), island = _d("G10bUQ8OHABrHEYOAg"), at = Vector3.new(-7740, 17, -40343) },
},
}

function ze.hold()
pa.tpHoldUntil = os.clock() + ze.holdFor

pa.deepPhase = _d("BVAZUA")
pa.deepStageAt = 0
pa.phase = _d("BVAZUA")
pa.nextCastAt = 0
pa.watchdogAt = 0

return ze.holdFor
end

function ze.point(fxgh)
local voe

if fxgh.landmark then
voe = workspace:FindFirstChild(fxgh.landmark)
else
local vcg = workspace:FindFirstChild(_d("ImQ2Rg"))

if vcg then
for kyqd, cfgk in ipairs(vcg:GetChildren()) do
local od

if fxgh.attr then
od = cfgk:GetAttribute(fxgh.attr) == fxgh.npc
else
od = cfgk.Name == fxgh.npc
end

if od then
voe = cfgk
break
end
end
end
end

if voe then
local qil = voe.PrimaryPart
or voe:FindFirstChild(_d("JEEYVAwIGQhmGloWNxEeQA"), true)
or voe:FindFirstChildWhichIsA(_d("LlUGUDIGAhg"), true)

if qil then
return qil.Position
end
end

return fxgh.at
end

function ze.resume()
if not pa.enabled then
return
end

local otfi = fh.Character
local twh = otfi and otfi:FindFirstChild(_d("JEEYVAwIGQhmGloWNxEeQA"))

if not twh or (twh.Position - flk).Magnitude < 40 then
return
end

pcall(function()
pa.recover()
end)
end

function ze.standAt(rlx)
local elb = fh.Character
local ngvo = elb and elb:FindFirstChild(_d("JEEYVAwIGQhmGloWNxEeQA"))

if not ngvo or not rlx then
return false
end

local ell = RaycastParams.new()
ell.FilterType = Enum.RaycastFilterType.Exclude
ell.FilterDescendantsInstances = { elb }

local jsf = workspace:Raycast(rlx + Vector3.new(0, 10, 0), Vector3.new(0, -80, 0), ell)
local hp = rlx.Y

if jsf and jsf.Instance.Name ~= _d("O1UBUBA") then
local hox = jsf.Position.Y + 3.2

if math.abs(hox - rlx.Y) <= 8 then
hp = hox
end
end

local im = Vector3.new(ngvo.Position.X - rlx.X, 0, ngvo.Position.Z - rlx.Z)

if im.Magnitude < 1 then
im = Vector3.new(4, 0, 0)
else
im = im.Unit * 4
end

local mu = Vector3.new(rlx.X + im.X, hp, rlx.Z + im.Z)

ngvo.CFrame = CFrame.new(mu)

return true
end

function ze.unlock()
local cqnw = {
{ id = _d("DVYUWwYIHglQKlwRCxECUA"), at = Vector3.new(-3825, 24, -40260) },
{ id = _d("GEMcWz0FFQ1XHVAR"), at = Vector3.new(-6180, 40, -40350) },
{ id = _d("G10bUQ8OHABrHEYOAg"), at = Vector3.new(-7480, 30, -40350) },
}
local gpd = {}

for ozw, pmw in ipairs(cqnw) do
local fv = bo.FishingGetState:InvokeServer()

if fv and fv.areas and fv.areas[pmw.id] == true then
table.insert(gpd, pmw.id .. _d("VhQUWRACEQhNVVoSAh4"))
else
ze.hold()
ze.standAt(pmw.at)
task.wait(2.4)

local lpd = bo.FishingGetState:InvokeServer()

table.insert(gpd, pmw.id .. (lpd and lpd.areas and lpd.areas[pmw.id] and _d("VhQAWw4IEwdREQ") or _d("VhQTVAsLFQg")))
end
end

ze.hold()
pcall(function()
bo.TeleportToWorld:FireServer(_d("AFsXVxs"))
end)
task.wait(2.5)

return table.concat(gpd, _d("TPbCFQ"))
end

function ze.flyToggle(fe)
ze.fly.on = fe

if not fe then
return _d("KlgMFQ0BFkI")
end

local jxie = fh.Character
local cdzm = jxie and jxie:FindFirstChild(_d("JEEYVAwIGQhmGloWNxEeQA"))

if not cdzm then
return _d("IltVVgoGAg1XAVAQRwQDFBlcBBNe")
end

ze.fly.height = cdzm.Position.Y

if ze.fly.connection then
return _d("KlgMFQ0JXg")
end

local wg = game:GetService(_d("OUcQRysJABlAJlAQERkPUQ"))

ze.fly.connection = jxjd(game:GetService(_d("PkEbZgcVBgVXEA")).Heartbeat, function(ndxp)
if not ze.fly.on then
return
end

local vyrq = fh.Character
local uv = vyrq and vyrq:FindFirstChild(_d("JEEYVAwIGQhmGloWNxEeQA"))

if not uv then
return
end

local ci = workspace.CurrentCamera
local uuez = Vector3.zero

if ci then
local wo = ci.CFrame.LookVector
local wwgy = Vector3.new(wo.X, 0, wo.Z)

if wwgy.Magnitude > 0.01 then
wwgy = wwgy.Unit
end

local qxa = Vector3.new(wwgy.Z, 0, -wwgy.X)

if wg:IsKeyDown(Enum.KeyCode.W) then
uuez = uuez + wwgy
end

if wg:IsKeyDown(Enum.KeyCode.S) then
uuez = uuez - wwgy
end

if wg:IsKeyDown(Enum.KeyCode.D) then
uuez = uuez + qxa
end

if wg:IsKeyDown(Enum.KeyCode.A) then
uuez = uuez - qxa
end
end

local yzef = 0

if wg:IsKeyDown(Enum.KeyCode.Space) then
yzef = 1
elseif wg:IsKeyDown(Enum.KeyCode.LeftControl) then
yzef = -1
end

local cbvn = ze.fly.speed or 55
local smsh = uuez * cbvn * ndxp + Vector3.new(0, yzef * cbvn * 0.6 * ndxp, 0)

if smsh.Magnitude < 0.001 then
return
end

uv.CFrame = uv.CFrame + smsh
uv.AssemblyLinearVelocity = Vector3.zero
end)

return _d("KlgMFQ0JXg")
end

function ze.go(yqcp)
ze.hold()

if yqcp.kind == _d("G1sHWQY") then
pcall(function()
bo.TeleportToWorld:FireServer(yqcp.arg)
end)

return _d("P1EbQUITGAkU") .. yqcp.name .. _d("TEAQWQcXHx5AWw")
end

if yqcp.kind == _d("BUcZVAwD") then
pcall(function()
bo.FishingIslandTeleport:FireServer(yqcp.arg)
end)

return _d("P1EbQUITGAkU") .. yqcp.name .. _d("TEAQWQcXHx5AWw") .. tostring(yqcp.note or _d(""))
end

local eaw = ze.point(yqcp)
local qyr = fh.Character
local bez = qyr and qyr:FindFirstChild(_d("JEEYVAwIGQhmGloWNxEeQA"))

if eaw and bez and (bez.Position - eaw).Magnitude > 1500 then
pcall(function()
if yqcp.island then
bo.FishingIslandTeleport:FireServer(yqcp.island)
else
bo.TeleportToWorld:FireServer(_d("AFsXVxs"))
end
end)

task.wait(yqcp.island and 3.5 or 4.5)

eaw = ze.point(yqcp)

bez = fh.Character and fh.Character:FindFirstChild(_d("JEEYVAwIGQhmGloWNxEeQA"))

if eaw and bez and (bez.Position - eaw).Magnitude > 1500 then
return yqcp.name .. _d("TF0GFQ0JUA") .. tostring(yqcp.island or _d("GFwQFQ4IEg5N"))
.. _d("TBlVQQoCUAtVGFBCFRUKQQZQEUcEBFUBFRYVGRwUAFsWDhxMXQEVCgYDTFYQUAxHAglVFl0HA1ADWhZQTA")
end
end

if not eaw then
return yqcp.name .. _d("TF0GFQwIBExdGxUWDxkfFAJaEAsUQg")
end

if not ze.standAt(eaw) then
return _d("IltVVgoGAg1XAVAQRwQDFBhaFAJe")
end

task.delay(ze.holdFor + 2, function()
pcall(ze.resume)
end)

return _d("P0AaWgZHEglHHFEHRw") .. yqcp.name .. _d("Qg")
end

ze.islandSection = pry:Section({ Side = _d("IFETQQ") })
ze.islandSection:Header({ Name = _d("JUcZVAwDA0zE6rr/iMjj") })

ze.npcSection = pry:Section({ Side = _d("Pl0SXRY") })
ze.npcSection:Header({ Name = _d("ImQ2RkKX7/+5") })

for al, ui in ipairs(ze.islands) do
ze.islandSection:Button({
Name = ui.name,
Callback = function()
task.spawn(function()
local gjsw = ze.go(ui)

qza:Notify({
Title = _d("OFEZUBIIAhg"),
Description = gjsw,
Lifetime = 6,
})
end)
end,
})
end

ze.state = pa
ze.tab = pry
ze.islandSection:Button({
Name = _d("OVoZWgEMUA1YGRULFBwNWhFG"),
Callback = function()
task.spawn(function()
local vrwj = ze.unlock()

qza:Notify({
Title = _d("JUcZVAwDAw"),
Description = vrwj,
Lifetime = 10,
})
end)
end,
})

ze.flySection = pry:Section({ Side = _d("IFETQQ") })
ze.flySection:Header({ Name = _d("KlgMFYD7+IOM+g") })

ze.flySection:Toggle({
Name = _d("KlgMFUowMT9wWRUxFxEPUVVAEktQL0AHWUIDHxtaXA"),
Default = false,
Callback = function(wey)
local kb = ze.flyToggle(wey)

qza:Notify({
Title = _d("KlgM"),
Description = kb,
Lifetime = 4,
})
end,
}, _d("DVcXTT0BHBU"))

getgenv().ACBXTeleport = ze

getgenv().ACBXDeepWater = jucv

pcall(jucv.dropStale)

for jx, spl in ipairs(ze.npcs) do
ze.npcSection:Button({
Name = spl.name,
Callback = function()
task.spawn(function()
local sxv = ze.go(spl)

qza:Notify({
Title = _d("OFEZUBIIAhg"),
Description = sxv,
Lifetime = 6,
})
end)
end,
})
end

local hza = wc:Section({ Side = _d("IFETQQ") })

hza:Header({ Name = _d("KF0SUgsJF0zW7rqN3/8") })

local uu = {
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

local mnx = (tonumber(getgenv().ACBXDigGeneration) or 0) + 1
getgenv().ACBXDigGeneration = mnx

function uu.read()
local wbw, hxe = pcall(function()
return bo.DigGetState:InvokeServer()
end)

return wbw and type(hxe) == _d("GFUXWQc") and hxe or nil
end

function uu.call(rxm, yajv)
local hic, gizg = pcall(function()
return bo.DigShop:InvokeServer(rxm, yajv)
end)

task.wait(2.5)

return hic and gizg == true
end

function uu.wear()
local wgc = fh.Character

if not wgc then
return false
end

local ruga = wgc:FindFirstChildOfClass(_d("JEEYVAwIGQg"))
local krje = fh:FindFirstChild(_d("LlUWXhIGEwc"))

if not (ruga and krje) then
return false
end

ruga:UnequipTools()
task.wait(0.4)

for ccu = 1, 8 do
for zjd, wku in ipairs(krje:GetChildren()) do
if wku:IsA(_d("OFsaWQ")) and wku.Name:find(_d("MnAcUjEPHxpRGQ")) then
ruga:EquipTool(wku)

return true
end
end

task.wait(0.5)
end

return false
end

function uu.run()
local uqz = uu.read()

if not uqz then
return _d("OFwQFQYOF0xHHVoSRxkfFBtaFkcRAkcCUBAOHgsa")
end

local csq = {}

pcall(function()
local ynck = bo.FishingGetState:InvokeServer()

csq = ynck and ynck.areas or {}
end)

if not (csq.abandoned_island and csq.twin_beaches and csq.windmill_isle) then
ze.unlock()
task.wait(1)
end

local crp

for vok, vhu in ipairs(ze.npcs) do
if vhu.name == _d("KF0SUgcV") then
crp = vhu
break
end
end

if not crp then
return _d("OFwQFTYVFQ1HAEcHRzgZWgFQEEcZHxQbWhZHGQIUAV0LFFAbWwdZBkk")
end

ze.go(crp)
task.wait(2)

local tkw = fh.Character
local zszs = tkw and tkw:FindFirstChild(_d("JEEYVAwIGQhmGloWNxEeQA"))
local sey = ze.point(crp)

if not (zszs and sey) or (zszs.Position - sey).Magnitude > 40 then
return _d("L1sAWQZHHgNAVUcHBhMEFAFdB0ckHlEURhcVFUx8AFsWAgJC")
end

uqz = uu.read() or uqz

local uowy = false
local rhfa = uqz.shovels and uqz.shovels.shovel_basic == true
local hlh = uqz.detectors and uqz.detectors.detector_basic == true

if not (rhfa and hlh) then
uowy = uu.call(_d("L1gUXA80BA1GAVAQ"), _d("H1waQwcLLw5VBlwB"))
uqz = uu.read() or uqz
end

if uqz.equippedShovel ~= _d("H1waQwcLLw5VBlwB") then
uu.call(_d("KUUAXBI0GANCEFk"), _d("H1waQwcLLw5VBlwB"))
end

if uqz.equippedDetector ~= _d("CFEBUAETHx5rF1QRDhM") then
uu.call(_d("KUUAXBIjFRhRFkENFQ"), _d("CFEBUAETHx5rF1QRDhM"))
end

uqz = uu.read() or uqz

if uqz.equippedShovel == _d("H1waQwcLLw5VBlwB") and uqz.equippedDetector == _d("CFEBUAETHx5rF1QRDhM") then
local dom = uu.wear()
local dv = false

if dom and pa.enabled then
pa.autoFishWanted = false
dv = true

hxj(false)

pcall(function()
ari:UpdateState(false)
end)
end

return (uowy and _d("L1gUXA8CFExVG1FCAgEZXQVFBwM") or _d("KUUAXBIXFQg"))
.. _d("TEAdUEIlER9dFhUxDx8aURkVAwkUTHYURgsEUChRAVABEx8eGg")
.. (dv and _d("THUAQQ1HNgVHHRUNARZMGVVBCgJQH1waQwcLUARVBhUWDxVMQBpaDkcDAFsBGw") or _d(""))
end

return _d("OFwQFSAGAwVXVWYKCAYJWFVaEEc0CUAQVhYIAkxdBhURExkAWFVYCxQDBVoSGw")
end

function uu.unlock()
if uu.busy then
return _d("LVgHUAMDCUxDGkcJDh4LGg")
end

uu.busy = true

local hzc, llh = pcall(uu.run)

uu.busy = false

if not hzc then
return _d("KF0SUgsJF0xSFFwOAhRWFA") .. tostring(llh)
end

return llh
end

uu.icon = function()
local keb = gethui()

for rhf, qzfz in ipairs(keb:QueryDescendants(_d("JVkUUgcrEQ5RGQ"))) do
if qzfz.Name == _d("OFUXfA8GFwk") then
local yqez = qzfz.Parent
local lzxn = yqez and yqez:FindFirstChild(_d("OFUXZhUOBA9cEEcsBh0J"))

if lzxn and lzxn.Text == _d("KF0SUgsJFw") then
if qzfz:GetAttribute(_d("LXc3bSYOFyVXGls")) then
return true
end

qzfz:SetAttribute(_d("LXc3bSYOFyVXGls"), true)
qzfz.Image = _d("")
qzfz.BackgroundTransparency = 1

local pjil = Color3.fromRGB(233, 236, 242)

for sgmb, pxpc in ipairs(keb:QueryDescendants(_d("JVkUUgcrEQ5RGQ"))) do
if pxpc.Name == _d("OFUXfA8GFwk") and pxpc ~= qzfz and pxpc.Image ~= _d("") then
pjil = pxpc.ImageColor3
break
end
end

local function awi(ki, div, rbq, oowy, biwc, mwp)
local jcac = Instance.new(_d("KkYUWAc"))

jcac.Size = UDim2.fromOffset(rbq, oowy)
jcac.Position = UDim2.fromOffset(ki, div)
jcac.BackgroundColor3 = pjil
jcac.BorderSizePixel = 0
jcac.Parent = qzfz

if mwp then
jcac.Rotation = mwp
end

if biwc then
local ej = Instance.new(_d("OX02WhAJFR4"))

ej.CornerRadius = UDim.new(0, biwc)
ej.Parent = jcac
end

return jcac
end

awi(1.1, 10.2, 7, 6.4, 1.6, -45)
awi(3.1, 8.3, 11, 2.2, 0.8, -45)
awi(9.8, 4.4, 5.6, 2, 0.8, 45)

return true
end
end
end

return false
end

task.defer(function()
for tyon = 1, 20 do
if uu.icon() then
break
end

task.wait(0.25)
end
end)

hza:Button({
Name = _d("OVoZWgEMUAhdElILCRc"),
Callback = function()
task.spawn(function()
qza:Notify({
Title = _d("KF0SUgsJFw"),
Description = _d("JFEUUQsJF0xAGhUWDxVMYAdQAxQFHlFVfRcJBAlGWw"),
Lifetime = 5,
})

local xojp = uu.unlock()

qza:Notify({
Title = _d("KF0SUgsJFw"),
Description = xojp,
Lifetime = 10,
})
end)
end,
})

uu.statusParagraph = hza:Paragraph({
Header = _d("KF0SFRETERhR"),
Body = _d("PlEUUQsJF0xAHVBCAxkLFAZUFAJeQho"),
})

uu.data = require(kq.ModuleScripts.DigData)

function uu.zoneAt(gr)
for go, cy in ipairs(game:GetService(_d("L1sZWQcEBAVbG2YHFQYFVxA")):GetTagged(uu.data.ZoneTag)) do
if cy:IsA(_d("LlUGUDIGAhg")) and cy:IsDescendantOf(workspace) then
local szkj = cy.CFrame:PointToObjectSpace(gr)
local htdq = cy.Size * 0.5

if math.abs(szkj.X) <= htdq.X and math.abs(szkj.Y) <= htdq.Y and math.abs(szkj.Z) <= htdq.Z then
return true
end
end
end

return false
end

function uu.onIsland()
for jwp, ndx in ipairs(game:GetService(_d("L1sZWQcEBAVbG2YHFQYFVxA")):GetTagged(uu.data.ZoneTag)) do
if ndx:IsA(_d("LlUGUDIGAhg")) and ndx:IsDescendantOf(workspace) then
return true
end
end

return false
end

function uu.bestShovel(gwky)
local iw = gwky and gwky.shovels or {}
local btsi = nil

for otbz, fxe in ipairs(uu.data.Shovels) do
if iw[fxe.id] == true then
btsi = fxe.id
end
end

return btsi
end

function uu.equipBest()
local hln = uu.read()
local apo = uu.bestShovel(hln)

if not apo then
return nil
end

if hln.equippedShovel ~= apo then
uu.call(_d("KUUAXBI0GANCEFk"), apo)
end

uu.wear()

return apo
end

function uu.bestDetector(zy)
local rxy = zy and zy.detectors or {}
local xncx = nil

for wv, lz in ipairs(uu.data.Detectors) do
if rxy[lz.id] == true then
xncx = lz.id
end
end

return xncx
end

function uu.equipBestDetector()
local xip = uu.read()
local sfma = uu.bestDetector(xip)

if not sfma then
return nil
end

if xip.equippedDetector ~= sfma then
uu.call(_d("KUUAXBIjFRhRFkENFQ"), sfma)
end

return sfma
end

function uu.leaveNpc()
local kzom = fh.Character
local dwfo = kzom and kzom:FindFirstChild(_d("JEEYVAwIGQhmGloWNxEeQA"))
local akyt = kzom and kzom:FindFirstChildOfClass(_d("JEEYVAwIGQg"))

if not (dwfo and akyt) then
return false
end

local fae

for fnrr, dosa in ipairs(ze.npcs) do
if dosa.name == _d("KF0SUgcV") then
fae = dosa
break
end
end

local noxf = fae and ze.point(fae)

if not noxf then
return false
end

local wyik = Vector3.new(dwfo.Position.X - noxf.X, 0, dwfo.Position.Z - noxf.Z)

if wyik.Magnitude >= 16 then
return true
end

if wyik.Magnitude < 1 then
wyik = Vector3.new(0, 0, -1)
end

wyik = wyik.Unit

local qdyt = Vector3.new(noxf.X + wyik.X * 22, dwfo.Position.Y, noxf.Z + wyik.Z * 22)
local dlf = os.clock() + 6

akyt:MoveTo(qdyt)

while os.clock() < dlf do
local jnx = fh.Character
local ol = jnx and jnx:FindFirstChild(_d("JEEYVAwIGQhmGloWNxEeQA"))

if not ol or (ol.Position - qdyt).Magnitude < 4 then
break
end

task.wait(0.15)
end

pcall(function()
akyt:MoveTo(dwfo.Position)
end)

return true
end

function uu.goToSand(trhb)

if trhb or not uu.onIsland() then
if not trhb then

pcall(function()
bo.TeleportToWorld:FireServer(_d("AFsXVxs"))
end)

local ukpa = os.clock() + 15

while not uu.onIsland() and os.clock() < ukpa do
task.wait(0.5)
end
end

local bjqs

for hr, xp in ipairs(ze.npcs) do
if xp.name == _d("KF0SUgcV") then
bjqs = xp
break
end
end

if bjqs then
ze.go(bjqs)
task.wait(2)
end
end

if uu.onIsland() then
uu.leaveNpc()
end
end

function uu.spot()
local ibbr = fh.Character
local xwje = ibbr and ibbr:FindFirstChild(_d("JEEYVAwIGQhmGloWNxEeQA"))

if not xwje then
return nil
end

local anrr = xwje.CFrame.LookVector
local voo = Vector3.new(anrr.X, 0, anrr.Z)

if voo.Magnitude < 0.01 then
voo = Vector3.new(0, 0, -1)
end

voo = voo.Unit

local pt = RaycastParams.new()
pt.FilterType = Enum.RaycastFilterType.Exclude
pt.FilterDescendantsInstances = { ibbr }

local function vtdc(ec, spdw)
local skk = xwje.Position + ec * spdw + Vector3.new(0, 4, 0)
local zng = workspace:Raycast(skk, Vector3.new(0, -18, 0), pt)

if zng and uu.zoneAt(zng.Position) then
return zng.Position
end
end

for iob, kble in ipairs({ 4, 7, 10, 2 }) do
local vgqi = vtdc(voo, kble)

if vgqi then
return vgqi
end
end

local kahz = Vector3.new(-voo.Z, 0, voo.X)

for ep, kkd in ipairs({ 4, 8 }) do
for qh, dclq in ipairs({ 1, -1 }) do
for izq, lbr in ipairs({ 1, 0.5 }) do
local qvh = vtdc((kahz * (dclq * lbr) + voo * (1 - lbr)).Unit, kkd)

if qvh then
return qvh
end
end
end
end

return nil
end

function uu.turn()
local igl = fh.Character
local gbvd = igl and igl:FindFirstChild(_d("JEEYVAwIGQhmGloWNxEeQA"))

if not gbvd then
return
end

local nc = gbvd.CFrame.LookVector
local yly = Vector3.new(nc.X, 0, nc.Z)

if yly.Magnitude < 0.01 then
yly = Vector3.new(0, 0, -1)
end

yly = yly.Unit

local cu = Vector3.new(-yly.Z, 0, yly.X)

gbvd.CFrame = CFrame.lookAt(gbvd.Position, gbvd.Position + cu)
end

uu.misses = 0

uu.pending = false

uu.spots = {}
uu.treasures = {}

local function lyd(ww)
local wtf = {}
local yfhq = {}

for axw, rdbl in pairs(ww) do
local rgtm
local krdf

if typeof(rdbl) == _d("OlEWQQ0VQw") or typeof(rdbl) == _d("L3IHVA8C") then
rgtm = axw
krdf = rdbl
elseif type(rdbl) == _d("GFUXWQc") then
rgtm = rdbl.id or rdbl.Id or rdbl[1]
krdf = rdbl.position or rdbl.Position or rdbl.pos or rdbl[2]
end

if typeof(krdf) == _d("L3IHVA8C") then
krdf = krdf.Position
end

if rgtm ~= nil and typeof(krdf) == _d("OlEWQQ0VQw") then
table.insert(wtf, { id = rgtm, position = krdf, spot = true })
yfhq[rgtm] = true
end
end

return wtf, yfhq
end

pcall(function()
jxjd(bo.DigUpdate.OnClientEvent, function(nul, ih)
if nul == _d("KF0SZwcUBQBA") then
uu.pending = false
uu.resultAt = os.clock()
elseif nul == _d("KF0SdgMJEwlY") then
uu.pending = false
elseif nul == _d("KF0SZhYGAhg") then

uu.startedAt = os.clock()
uu.startDuration = type(ih) == _d("GFUXWQc") and tonumber(ih.duration) or nil
end

if (nul == _d("P0QaQRE") or nul == _d("OEYQVBESAglH")) and type(ih) == _d("GFUXWQc") then
local bgh, nnh = lyd(ih)

if nul == _d("P0QaQRE") then
for acu, ejii in ipairs(bgh) do
ejii.spot = true
end

uu.spots = bgh
uu.reportedSpots = nnh
else
uu.treasures = bgh

for zuh, xnnk in ipairs(bgh) do
xnnk.spot = nil
end

uu.reported = nnh
end

local ml = uu.target

if ml and not ml.mark then
local pf = ml.spot and uu.reportedSpots or uu.reported

if pf and not pf[ml.id] then
uu.targetGone = true
end
end
end
end)
end)

function uu.withinDig(djp)
local dbf = fh.Character
local xzl = dbf and dbf:FindFirstChild(_d("JEEYVAwIGQhmGloWNxEeQA"))

if not xzl then
return false
end

return (xzl.Position - djp).Magnitude <= 10
end

uu.markGone = {}

function uu.marked()
local cuas = workspace:FindFirstChild(_d("KF0SeAMVGx8"))
local tm = {}

if not cuas then
return tm
end

local sccl = os.clock()

for lhoy, ovis in ipairs(cuas:GetChildren()) do
if ovis.Name == _d("NHkURwk") and ovis:IsA(_d("LlUGUDIGAhg")) then
local mhr = ovis.Position
local dgnc = string.format(_d("AVUHXlhCXlxSTxBMVxY"), mhr.X, mhr.Z)
local hhxi = uu.markGone[dgnc]

if not (hhxi and sccl - hhxi < 90) then
table.insert(tm, { id = dgnc, position = mhr, mark = true })
end
end
end

return tm
end

function uu.chests()
local vhne = {}

for rln, vno in ipairs(uu.spots or {}) do
table.insert(vhne, vno)
end

for kg, oxgk in ipairs(uu.treasures or {}) do
table.insert(vhne, oxgk)
end

for xi, uvoy in ipairs(uu.marked()) do
local xd = false

for fzla, kj in ipairs(vhne) do
if (kj.position - uvoy.position).Magnitude < 2 then
xd = true

break
end
end

if not xd then
table.insert(vhne, uvoy)
end
end

return vhne
end

function uu.release(tnk)
if tnk.mark then
uu.markGone[tnk.id] = os.clock()
else
uu.forget(tnk)
end
end

function uu.nearestChest(ruf)
local xscb = fh.Character
local ufxk = xscb and xscb:FindFirstChild(_d("JEEYVAwIGQhmGloWNxEeQA"))

if not ufxk then
return nil
end

local fg
local jpnz

for itz, aa in ipairs(uu.chests()) do
local qcld = (aa.position - ufxk.Position).Magnitude

if qcld <= ruf and (not jpnz or qcld < jpnz) then
fg = aa
jpnz = qcld
end
end

return fg
end

function uu.forget(qgxe)
for fyu, vrq in ipairs({ uu.spots or {}, uu.treasures or {} }) do
for wf, yboe in ipairs(vrq) do
if yboe.id == qgxe.id then
table.remove(vrq, wf)

return
end
end
end
end

function uu.walkTo(dqwx)
local gzw = fh.Character
local ilb = gzw and gzw:FindFirstChild(_d("JEEYVAwIGQhmGloWNxEeQA"))
local jrhy = gzw and gzw:FindFirstChildOfClass(_d("JEEYVAwIGQg"))

if not (ilb and jrhy) then
return false
end

local dipg = os.clock() + 12
local jop = (ilb.Position - dqwx).Magnitude
local ux = os.clock()
local dti = false

pcall(function()
jrhy:MoveTo(dqwx)
end)

while os.clock() < dipg do
local sjf = fh.Character
local fozr = sjf and sjf:FindFirstChild(_d("JEEYVAwIGQhmGloWNxEeQA"))

if not fozr then
break
end

local lmj = (fozr.Position - dqwx).Magnitude

if lmj <= 4 then
dti = true

break
end

if uu.targetGone or not uu.autoOn
or getgenv().ACBXDigGeneration ~= mnx or not xkj() then
break
end

if lmj < jop - 1 then
jop = lmj
ux = os.clock()
elseif os.clock() - ux > 1.5 then
break
end

task.wait(0.15)
end

pcall(function()
jrhy:MoveTo(ilb.Position)
end)

return dti
end

function uu.digAt(fu)
uu.misses = 0
uu.pending = true
uu.startedAt = 0
uu.startDuration = nil
uu.refused = false

local pemn = os.clock()
local ksm = pcall(function()
bo.DigAction:FireServer(_d("P0AURxY"), fu)
end)

if not ksm then
uu.pending = false
uu.refused = true

return false
end

local dbg = pemn + 1.2
local bgce

while uu.pending and uu.autoOn
and getgenv().ACBXDigGeneration == mnx and xkj() do
local cx = os.clock()

if (uu.startedAt or 0) >= pemn then

bgce = bgce or (uu.startedAt + (uu.startDuration or 0) + 1.5)

if cx >= bgce then
break
end
elseif cx >= dbg then
break
end

task.wait()
end

local omk = (uu.resultAt or 0) >= pemn

uu.pending = false

if omk then
uu.dugAt = os.clock()
end

uu.refused = (uu.startedAt or 0) < pemn

return omk
end

function uu.autoLoop()
local hh = false

while uu.autoOn and xkj() and getgenv().ACBXDigGeneration == mnx do
local fmi = btd and btd.worldBoss
local qk = fmi ~= nil
and type(fmi.holdsDigging) == _d("CkEbVhYOHwI")
and fmi.holdsDigging() == true

local oqsh = fmi ~= nil and type(fmi.bossUp) == _d("CkEbVhYOHwI") and fmi.bossUp() == true

local ibx = oqsh
and not (fmi.stopAtFull and type(fmi.meterFull) == _d("CkEbVhYOHwI") and fmi.meterFull())
local byms = ibx
and (rqc.prioRank(_d("DlsGRg")) or 0) < (rqc.prioRank(_d("G1UBUBA")) or 0)

if byms then
qk = true
end

if uu.shopping then

task.wait(0.5)
elseif qk or rqc.digBlocked() then

hh = true

uu.heldAt = os.clock()
task.wait(1)
else
if hh then

hh = false

if type(fmi.setRepeat) == _d("CkEbVhYOHwI") then
fmi.setRepeat(false)
end

uu.goToSand()
end

local idy = uu.chestOn and uu.nearestChest(2500) or nil
local hmgg = false

if idy then
uu.target = idy
uu.targetGone = false

local vvw = fh.Character and fh.Character:FindFirstChild(_d("JEEYVAwIGQhmGloWNxEeQA"))
local iamg = vvw and (vvw.Position - idy.position).Magnitude or 999

if iamg > 45 then
pcall(function()
ze.standAt(idy.position)
end)

task.wait(0.6)
end

if not uu.walkTo(idy.position) and not uu.targetGone then
pcall(function()
ze.standAt(idy.position)
end)

task.wait(0.6)
uu.walkTo(idy.position)
end

local rkm = not uu.withinDig(idy.position)
local pszb = uu.targetGone

if pszb or rkm then
uu.strikes = pszb and 0 or (uu.strikes + 1)

if pszb or uu.strikes >= 2 then
uu.strikes = 0
uu.release(idy)
uu.skipped = uu.skipped + 1
end
else

if uu.digAt(idy.position) then
uu.strikes = 0
uu.release(idy)
uu.dug = uu.dug + 1
hmgg = true
elseif uu.refused then

uu.strikes = 0
uu.release(idy)
uu.skipped = uu.skipped + 1
else

uu.strikes = uu.strikes + 1

if uu.strikes >= 3 then
uu.strikes = 0
uu.release(idy)
uu.skipped = uu.skipped + 1
end
end
end

uu.target = nil
uu.targetGone = false
end

if not hmgg then
local jfzz = uu.spot()

if jfzz then
uu.digAt(jfzz)
else

uu.misses = (uu.misses or 0) + 1

if uu.misses >= 4 then
uu.misses = 0
uu.goToSand(true)
else
uu.turn()
task.wait(0.25)
end
end
end
end
end
end

function uu.autoStart()
local dh = uu.read()

if not (dh and uu.bestShovel(dh)) then
return _d("IltVRgoIBglYVVoVCRUIFFgVNwkcA1ceFQYOFwtdG1JCARkeRwEb")
end

local bvtp = false

if pa.enabled then
pa.autoFishWanted = false

hxj(false)
pcall(function()
ari:UpdateState(false)
end)

bvtp = true
end

gmj = true
uu.equipBest()

if uu.chestOn then
pcall(uu.equipBestDetector)
end

uu.goToSand()
uu.dugAt = os.clock()

task.spawn(uu.runAuto)

return _d("KF0SUgsJF0I") .. (bvtp and _d("THUAQQ1HNgVHHRUNARZMGVVBCgJQH1waQwcLUARVBhUWDxVMQBpaDkcDAFsBGw") or _d(""))
end

function uu.runAuto()
if uu.loopLive then
return
end

uu.loopLive = true

local cmd, vbbu = pcall(uu.autoLoop)

uu.loopLive = false

if not cmd then
uu.loopError = tostring(vbbu)
end
end

task.spawn(function()
while xkj() and xeg do
task.wait(5)

if uu.autoOn and not uu.shopping then
local koz = os.clock()

if not uu.loopLive then
task.spawn(uu.runAuto)
elseif koz - (uu.dugAt or koz) > 25
and koz - (uu.heldAt or 0) > 25
and koz - (uu.watchdogAt or 0) > 20 then
uu.watchdogAt = koz
uu.pending = false
uu.strikes = 0
uu.misses = 0
uu.target = nil
uu.targetGone = false

pcall(function()
uu.goToSand(true)
uu.equipBest()
end)
end
end
end
end)

function uu.toggleAuto(vqcd, jvql)
if vqcd then
local aosp = uu.autoOn == true

uu.chestOn = jvql == true
uu.switching = true

pcall(function()
local si = jvql and uu.autoToggle or uu.chestToggle

if si then
si:UpdateState(false)
end
end)

uu.switching = false

if aosp then
return
end

uu.autoOn = true

task.spawn(function()
local muaz = uu.autoStart()

qza:Notify({
Title = jvql and _d("LUEBWkIjGQsUNl0HFAQf") or _d("LUEBWkIjGQs"),
Description = muaz,
Lifetime = 6,
})
end)
else

if uu.switching then
return
end

uu.autoOn = false
uu.pending = false
gmj = false
end
end

uu.autoToggle = hza:Toggle({
Name = _d("LUEBWkIjGQs"),
Default = false,
Callback = function(mcv)
uu.toggleAuto(mcv, false)
end,
}, _d("CF0SUgsJFzNVAEEN"))

uu.chestToggle = hza:Toggle({
Name = _d("LUEBWkIjGQsUNl0HFAQf"),
Default = false,
Callback = function(hz)
uu.toggleAuto(hz, true)
end,
}, _d("CF0SUgsJFzNVAEENOBMEUQZB"))

uu.chestParagraph = hza:Paragraph({
Header = _d("L1wQRhYU"),
Body = _d("OEYUVgkCFFYURRVPRzQZU08VUkddTGceXBIXFQgOVQU"),
})

task.spawn(function()
local kzt

while xkj() and xeg do
local qmj = #uu.chests()
local hey = _d("OEYUVgkCFFYU") .. qmj .. _d("TBlVcRcASkw") .. uu.dug .. _d("TBlVZgkOABxREQ9C") .. uu.skipped

if uu.chestOn and qmj > 0 then
local oze = uu.nearestChest(2500)
local voz = fh.Character
local tzjr = voz and voz:FindFirstChild(_d("JEEYVAwIGQhmGloWNxEeQA"))

if oze and tzjr then
local ffhr = math.floor((oze.position - tzjr.Position).Magnitude)
hey = hey .. _d("ZnoQVBACAxgOVQ") .. ffhr .. (ffhr > 45 and _d("TEcBQAYUUERcGkVL") or _d("TEcBQAYU"))
end
end

if hey ~= kzt then
kzt = hey

pcall(function()
uu.chestParagraph:UpdateBody(hey)
end)
end

task.wait(0.5)
end
end)

function uu.npcRow()
for cflv, shn in ipairs(ze.npcs) do
if shn.name == _d("KF0SUgcV") then
return shn
end
end
end

function uu.shop(bni, vfqz)
local nrg, bfzn, thxz, rbp = pcall(function()
return bo.DigShop:InvokeServer(bni, vfqz)
end)

if not nrg then
return false, _d("OFwQFQYOF0xHHVoSRxkfFBtaFkcRAkcCUBAOHgsa")
end

return bfzn == true, thxz, type(rbp) == _d("GFUXWQc") and rbp or nil
end

function uu.pickShovel(oui)
local yq = oui.shovels or {}
local om = tonumber(oui.digs) or 0
local ndgg

for zyib, oge in ipairs(uu.data.Shovels) do
if not oge.crafted and oge.id ~= _d("H1waQwcLLw5VBlwB") and yq[oge.id] ~= true then
local dkdn = tonumber(oge.cost) or math.huge

if dkdn <= om and (not ndgg or dkdn > (tonumber(ndgg.cost) or 0)) then
ndgg = oge
end
end
end

return ndgg
end

function uu.pickDetector(eb)
local sr = eb.detectors or {}
local qtl = tonumber(eb.digs) or 0
local ypr

for fkte, fj in ipairs(uu.data.Detectors) do
if not fj.crafted and fj.id ~= _d("CFEBUAETHx5rF1QRDhM") and sr[fj.id] ~= true then
local cin = tonumber(fj.cost) or math.huge

if cin <= qtl and (not ypr or cin > (tonumber(ypr.cost) or 0)) then
ypr = fj
end
end
end

return ypr
end

function uu.nextDef(faqu, ayga)
local brzu

for nbyj, pnb in ipairs(faqu) do
local ff = tonumber(pnb.cost)

if not pnb.crafted and ff and ayga[pnb.id] ~= true then
if not brzu or ff < (tonumber(brzu.cost) or math.huge) then
brzu = pnb
end
end
end

return brzu
end

function uu.toCounter()
local biwa = uu.npcRow()
local eq = biwa and ze.point(biwa)
local gz = fh.Character
local fqu = gz and gz:FindFirstChild(_d("JEEYVAwIGQhmGloWNxEeQA"))

if not (eq and fqu) then
return false
end

if (fqu.Position - eq).Magnitude <= 20 then
return true
end

ze.go(biwa)
task.wait(2.2)

gz = fh.Character
fqu = gz and gz:FindFirstChild(_d("JEEYVAwIGQhmGloWNxEeQA"))

return fqu ~= nil and (fqu.Position - eq).Magnitude <= 20
end

function uu.secretRow()
for fllx, aeh in ipairs(ze.npcs) do
if aeh.name == _d("P1EWRwcTUChdElIHFQ") then
return aeh
end
end
end

function uu.secretDef(bu)
for yxay, tssc in ipairs(bu or {}) do
if tssc.crafted then
return tssc
end
end
end

function uu.recipeHeld(pov)
local reqy = uu.data and uu.data.SecretRecipe
local nfww = pov and pov.mats

if type(reqy) ~= _d("GFUXWQc") or type(nfww) ~= _d("GFUXWQc") then
return false
end

for wwuy, lxp in ipairs(reqy) do
if (tonumber(nfww[lxp.id]) or 0) < (tonumber(lxp.count) or 0) then
return false
end
end

return true
end

function uu.toSecret()
local ic = uu.secretRow()

if not ic then
return false
end

local sbg = workspace:FindFirstChild(_d("ImQ2Rg"))
local ad = sbg and sbg:FindFirstChild(_d("P1EWRwcTNAVTElAQKSAv"))
local myl = ad and ad:GetPivot().Position or ze.point(ic)

if not myl then
return false
end

ze.hold()

for lou = 1, 3 do
local ijq = fh.Character
local zs = ijq and ijq:FindFirstChild(_d("JEEYVAwIGQhmGloWNxEeQA"))

if not zs then
return false
end

local npsl = (zs.Position - myl).Magnitude

if npsl <= 20 then
return true
end

if npsl > 1500 and ic.island then
pcall(function()
bo.FishingIslandTeleport:FireServer(ic.island)
end)

task.wait(4.5)
else
pcall(function()
ze.standAt(myl)
end)
task.wait(0.9)
end
end

local ska = fh.Character
local yuu = ska and ska:FindFirstChild(_d("JEEYVAwIGQhmGloWNxEeQA"))

return yuu ~= nil and (yuu.Position - myl).Magnitude <= 20
end

function uu.craftSecret(ajvn, ooj, zd)
local jbr = {}
local gbpx = ajvn and uu.secretDef(uu.data.Shovels) or nil
local tri = ooj and uu.secretDef(uu.data.Detectors) or nil

local uadt = gbpx and (zd.shovels or {})[gbpx.id] ~= true
local dbib = tri and (zd.detectors or {})[tri.id] ~= true

if not (uadt or dbib) then
return jbr, nil, zd
end

if not uu.recipeHeld(zd) then
return jbr, nil, zd
end

uu.shopping = true

local fp = uu.toSecret()
local bhk

if fp then
local function yvtg(iacn, meh)
if not meh or not uu.recipeHeld(zd) then
return
end

local kxc, ax = uu.shop(iacn, meh.id)

if kxc then
table.insert(jbr, meh.name)
elseif not bhk then
bhk = tostring(ax)
end

zd = uu.read() or zd
end

yvtg(_d("L0YUUxY0GANCEFk"), uadt and gbpx or nil)
yvtg(_d("L0YUUxYjFRhRFkENFQ"), dbib and tri or nil)
end

uu.shopping = false

return jbr, bhk, zd
end

function uu.upgradeAll()
local prp = uu.buyOn == true
local fpvm = uu.detBuyOn == true

if not (prp or fpvm) then
return nil, _d("I1ITGw")
end

local xcs = uu.read()

if not xcs then
return nil, _d("OFwQFQYOF0xHHVoSRxkfFBtaFkcRAkcCUBAOHgsa")
end

local gm, hy, ia = uu.craftSecret(prp, fpvm, xcs)

if ia then
xcs = ia
end

if prp then
local xwe = uu.bestShovel(xcs)

if xwe and xcs.equippedShovel ~= xwe then
uu.equipBest()
end
end

if fpvm then
local coq = uu.bestDetector(xcs)

if coq and xcs.equippedDetector ~= coq then
uu.equipBestDetector()
end
end

local iizw = prp and uu.pickShovel(xcs) or nil
local tzse = fpvm and uu.pickDetector(xcs) or nil

if not (iizw or tzse) then

if #gm > 0 then
if uu.autoOn then
uu.leaveNpc()
end

return table.concat(gm, _d("TB9V"))
end

return nil, hy and (_d("L0YUUxZHAglSAEYHA0pM") .. tostring(hy))
or _d("IltVQBIAAg1QEBULFFANUhNaEAMRDlgQFRsCBEI")
end

uu.shopping = true
uu.toCounter()

local nod = {}
local nypx

for yho, igs in ipairs(gm) do
nod[#nod + 1] = igs
end

local function wdbs(xzqa, jr)
if not jr then
return
end

local jmmy, rw = uu.shop(xzqa, jr.id)

if jmmy then
table.insert(nod, jr.name)
elseif not nypx then
nypx = tostring(rw)
end
end

wdbs(_d("LkEMZgoIBglY"), iizw)
wdbs(_d("LkEMcQcTFQ9AGkc"), tzse)

if #nod == 0 then
uu.shopping = false

return nil, _d("LkEMFRACFhlHEFFYRw") .. (nypx or _d("AltVVAwUBwlG"))
end

if prp then
uu.equipBest()
end

if fpvm then
uu.equipBestDetector()
end

if uu.autoOn then
uu.leaveNpc()
end

uu.shopping = false

return table.concat(nod, _d("TB9V"))
end

function uu.buyLoop()
while uu.buyOn or uu.detBuyOn do
local yfme, rh, ts = pcall(uu.upgradeAll)

uu.shopping = false

if not yfme then
task.wait(10)
elseif rh then
qza:Notify({
Title = _d("LUEBWkIlBRUUMVwFABkCU1VyBwYC"),
Description = _d("KUUAXBIXFQgUAV0HRw") .. rh .. _d("Qg"),
Lifetime = 6,
})

task.wait(3)
else
task.wait(ts == _d("I1ITGw") and 0.5 or 10)
end
end
end

function uu.syncBuyLoop()
if not (uu.buyOn or uu.detBuyOn) or uu.buyRunning then
return
end

uu.buyRunning = true

task.spawn(function()
uu.buyLoop()

uu.buyRunning = false
end)
end

hza:Toggle({
Name = _d("LUEBWkIlBRUUN1ARE1A/XBpDBws"),
Default = false,
Callback = function(fo)
uu.buyOn = fo
uu.syncBuyLoop()
end,
}, _d("CF0SUgsJFzNWAEw"))

hza:Toggle({
Name = _d("LUEBWkIlBRUUN1ARE1AoUQFQARMfHg"),
Default = false,
Callback = function(aacu)
uu.detBuyOn = aacu
uu.syncBuyLoop()
end,
}, _d("CF0SUgsJFzNWAEw9AxUYURZBDRU"))

function uu.statusText()
local dgtn = uu.read()

if not dgtn then
return _d("OFwQFQYOF0xHHVoSRxkfFBtaFkcRAkcCUBAOHgsa")
end

local pfe = tonumber(dgtn.digs) or 0
local vxy = { _d("KF0SRlhH") .. pfe }

local function wkih(hkj, lbe)
if not lbe then
return hkj .. _d("VhQQQwcVCRhcHFsFRx8bWhBRTA")
end

local en = tonumber(lbe.cost) or 0
local qjb = en - pfe

return hkj .. _d("VhQ") .. tostring(lbe.name) .. _d("TBlV") .. en
.. (qjb <= 0 and _d("TBwHUAMDCUU") or (_d("TBw") .. qjb .. _d("TEAaFQUIWQ")))
end

table.insert(vxy, wkih(_d("IlENQUIUGANCEFk"), uu.nextDef(uu.data.Shovels, dgtn.shovels or {})))
table.insert(vxy, wkih(_d("IlENQUIDFRhRFkENFQ"), uu.nextDef(uu.data.Detectors, dgtn.detectors or {})))

return table.concat(vxy, _d("Zg"))
end

task.spawn(function()
while xkj() and xeg do
local kry, iac = pcall(uu.statusText)

if kry and uu.statusParagraph then
pcall(function()
uu.statusParagraph:UpdateBody(iac)
end)
end

task.wait(6)
end
end)

getgenv().ACBXDigging = uu

df.tab = ueb:Tab({
Name = _d("P1EBQQsJFx8"),

Image = _d(""),
})

df.icon = function()
local lkxi = gethui()

for usx, yeqs in ipairs(lkxi:QueryDescendants(_d("JVkUUgcrEQ5RGQ"))) do
if yeqs.Name == _d("OFUXfA8GFwk") then
local aqq = yeqs.Parent
local sefr = aqq and aqq:FindFirstChild(_d("OFUXZhUOBA9cEEcsBh0J"))

if sefr and sefr.Text == _d("P1EBQQsJFx8") then
if yeqs:GetAttribute(_d("LXc3bSEIFyVXGls")) then
return true
end

yeqs:SetAttribute(_d("LXc3bSEIFyVXGls"), true)
yeqs.Image = _d("")
yeqs.BackgroundTransparency = 1

local jrnt = Color3.fromRGB(168, 170, 176)

local function rf(dfs, fuwy, auvh, ojq, di, yiw)
local wrka = Instance.new(_d("KkYUWAc"))

wrka.Size = UDim2.fromOffset(auvh, ojq)
wrka.Position = UDim2.fromOffset(dfs, fuwy)
wrka.BackgroundColor3 = jrnt
wrka.BorderSizePixel = 0
wrka.Parent = yeqs

if not yiw then
wrka.BackgroundTransparency = 1

local jeks = Instance.new(_d("OX0mQRAIGwk"))

jeks.Color = jrnt
jeks.Thickness = 1.3
jeks.LineJoinMode = Enum.LineJoinMode.Round
jeks.Parent = wrka
end

if di then
local yfxe = Instance.new(_d("OX02WhAJFR4"))

yfxe.CornerRadius = UDim.new(0, di)
yfxe.Parent = wrka
end

return wrka
end

local kvi = {
{ 8, 0, 2, 3 },
{ 8, 15, 2, 3 },
{ 0, 8, 3, 2 },
{ 15, 8, 3, 2 },
{ 2, 2, 3, 3 },
{ 13, 2, 3, 3 },
{ 2, 13, 3, 3 },
{ 13, 13, 3, 3 },
}

for enm, yamh in ipairs(kvi) do
rf(yamh[1], yamh[2], yamh[3], yamh[4], 0, true)
end

rf(2, 2, 14, 14, 7, false)
rf(7, 7, 4, 4, 2, true)

return true
end
end
end

return false
end

task.defer(function()
for nwsd = 1, 20 do
if df.icon() then
break
end

task.wait(0.25)
end
end)

df.prioSection = df.tab:Section({
Side = _d("IFETQQ"),
})

df.prioSection:Header({
Name = _d("PEYcWhAOBBU"),
})

df.prioSection:Paragraph({
Header = _d("O1waFQUIFR8UE1wQFAQ"),
Body = _d("XRQBVAkCA0xAHVBCBhMPWwBbFkcWBUYGQU5HRUxDFFwWFFAKWwcVBxEVHk0XWgYeXkxxFFYKRwIDQ1VcEUcRTFoAWAACAkxVG1FCExgJFBFHDRcUA0MbFRcJFAlGVVwWRxkfFAJdAxNQH0AUWwYUUBhcEEcHR11MRBxWCUcRTFoUWAdHBARVARUDCwIJVRFMQg8fAFAGFQMJHxhcEEdCCQUBVhBHQgYeCBQBXQdHBBtbVUYVBgBCFDQVEAgHTF0GFQoCHAgUF1QBDFADWhlMQgUJTFVVWwMKFUxVF1oUAlAFQFVBCgYETFwURkIUHwFRAV0LCRdMQBoVBghQHl0SXRZHHgNDWz9oMx8bUQdGQgYCCRQbWhZHHwIUAV0LFFAAXQZBWEcRTEAaQgcVUApdEl0WFFADWlVBCgJQH1EHQwcVUA1aERUOAhEaUQYVFg8VTFcdVBAGExhRBxUEFRUJGFVGDUcZGBQHQAwUUA1YGlsFFBkIUVVQFAICFUAdXAwAUARRB1BCBh4IFBpbDh5QH0AUWwYUUA1HHFEHRxYDRlVHAw4UHxhVQQoCUAtYGlcDC1AOWwZGQgYeCBQ7ZSFHEg1AAVkHFF5mPiZdDRcDQBQYUBAAGQJTWRUHHwAJUBxBCwgeHxQUWwZHBARRVUcHFARMWxMVFg8VTFsbUE8UGANAVUEQDgAfFBRHB0ceA0BVXQcVFUxbGxUSEgIcWwZQWEcEBFEMFQMLAglVEUxCFAQNWhEVFg8VTEYAWwwOHgsUFEAWCB0NQBxaDEcUA0MbFRUPGQBRVUEKAglMUBoVFg8VBUZVXw0FXg"),
})

df.prioRows = {}

df.prioBuilding = true

local hge = {}

for hm, rcq in ipairs(rqc.prioGroups) do
hge[#hge + 1] = rcq.label
end

for zfr = 1, #rqc.prioGroups do
local yrh = nil

pcall(function()
yrh = df.prioSection:Dropdown({
Name = _d("PEYcWhAOBBUU") .. zfr,
Search = false,
Multi = false,
Required = false,
Default = zfr,
Options = hge,
Callback = function(sld)
local kdc = type(sld) == _d("GFUXWQc") and sld[1] or sld
local axic

for kaz, wwke in ipairs(rqc.prioGroups) do
if wwke.label == kdc then
axic = wwke

break
end
end

if axic then
df.setPriority(axic.id, zfr)
end
end,
}, _d("HEYcWj0VEQJfKg") .. zfr)
end)

df.prioRows[zfr] = yrh
end

df.prioBuilding = false

df.configSection = df.tab:Section({
Side = _d("IFETQQ"),
})

df.configSection:Header({
Name = _d("L1sbUwsAUCFVG1QFAh0JWgE"),
})

df.autoSaveToggle = df.configSection:Toggle({
Name = _d("LUEBWkIUERpR"),
Default = false,
Callback = function(hi)
df.autoSave = hi
df.autoSaveAt = 0

if hi then
local aixq = df.selected or _d("CFETVBcLBA")
local tsn, xfo = df.save(aixq)

df.selected = aixq
df.lastText = tsn and (_d("LUEBWkIUERpRVVoMR11MQwdaFgJQ") .. aixq)
or (_d("LUEBWkIUERpRVVoMS1AKXQdGFkcHHl0BUEIBEQVYEFFYRw") .. tostring(xfo))
else
df.lastText = _d("LUEBWkIUERpRVVoEAV4")
end
end,
}, _d("D1sbUwsALw1BAVo9FBEaUQ"))

df.nameInput = df.configSection:Input({
Name = _d("P1UDUEIJEQFR"),
Placeholder = _d("CRoSG0I1EQVQBg"),
AcceptedCharacters = _d("LVgZ"),
Callback = function(opi)
df.nameDraft = opi
end,
})

df.nameInput.IgnoreConfig = true

df.configSection:Button({
Name = _d("L0YQVBYCUB9VA1A"),
Callback = function()
local fjh = df.nameDraft or df.nameInput:GetInput()

fjh = type(fjh) == _d("H0AHXAwA") and fjh:gsub(_d("MhEGHg"), _d("")):gsub(_d("SUdeEQ"), _d("")) or _d("")

if fjh == _d("") then
qza:Dialog({
Title = _d("L1sbUwsA"),
Description = _d("OE0FUEIGUAJVGFBCAR8eFAFdB0cDDUIQFQQOAh9AVRhCDgRMVhBWDQoVHxQBXQdHFgVYEBIRRx4NWRAb"),
Buttons = {
{
Name = _d("K1sBFQsT"),
},
},
})

return
end

local to, jvdq = df.save(fjh)

if not to then
df.lastText = _d("P1UDUEIBEQVYEFFYRw") .. tostring(jvdq)

return
end

df.selected = fjh
df.lastText = _d("L0YQVBYCFEw") .. fjh .. _d("Qg")
df.savesAt = 0

task.defer(function()
task.wait(0.25)

pcall(function()
df.fileDropdown:UpdateSelection(fjh)
end)
end)
end,
})

df.fileDropdown = df.configSection:Dropdown({
Name = _d("P1UDUEIBGQBR"),
Search = false,
Multi = false,
Required = false,
Options = df.saves(),
Callback = function(rdk)
local sxu = type(rdk) == _d("GFUXWQc") and rdk[1] or rdk

if type(sxu) == _d("H0AHXAwA") and sxu ~= _d("") then
df.selected = sxu
df.selectionShown = sxu

pcall(function()
df.fileDropdown:UpdateName(_d("P1UDUEIBGQBRTxU") .. sxu)
end)
end
end,
})

df.fileDropdown.IgnoreConfig = true

df.configSection:Button({
Name = _d("IFsUUUIUFQBRFkEHAw"),
Callback = function()
local rwth = df.selected or df.fileDropdown.Value
local cf, qzl = df.load(rwth)

df.lastText = cf and (_d("IFsUUQcDUA") .. rwth .. _d("Qg")) or (_d("IFsUUUIBEQVYEFFYRw") .. tostring(qzl))
end,
})

df.configSection:Button({
Name = _d("P1UDUEITH0xHEFkHBAQJUA"),
Callback = function()
local yhx = df.selected or df.fileDropdown.Value
local wqfm, vak = df.save(yhx)

df.lastText = wqfm and (_d("O0YaQQdH") .. yhx .. _d("Qg")) or (_d("P1UDUEIBEQVYEFFYRw") .. tostring(vak))
end,
})

df.configSection:Button({
Name = _d("KFEZUBYCUB9RGVABExUIFAZUFAI"),
Callback = function()
local zxcx = df.selected or df.fileDropdown.Value

if type(zxcx) ~= _d("H0AHXAwA") or zxcx == _d("") then
df.lastText = _d("PF0WXkIGUB9VA1BCARkAUVVTCxUDGBo")

return
end

qza:Dialog({
Title = _d("KFEZUBYCUA") .. zxcx .. _d("Uw"),
Description = _d("OFwQFQQOHAkUHEZCFRUBWwNQBkcWHlsYFQYOAwcUFFsGRxMNWhtaFkcSCRQHUAEIBglGEFFM"),
Buttons = {
{
Name = _d("KFEZUBYC"),
Callback = function()
local xjw, ytt = df.delete(zxcx)

df.lastText = xjw
and (_d("KFEZUBYCFEw") .. zxcx .. _d("Qg"))
or (_d("L1sAWQZHHgNAVVEHCxUYUU8V") .. tostring(ytt))
end,
},
{
Name = _d("L1UbVgcL"),
},
},
})
end,
})

df.configSection:Button({
Name = _d("PlETRwcUGExYHEYW"),
Callback = function()
df.savesAt = 0
df.lastText = _d("P1UDUEILGR9AVUcHAQIJRx1QBkk")
end,
})

df.configSection:Button({
Name = _d("IVUHXkIGA0xVAEENRxwDVRE"),
Callback = function()
local glqw = df.selected or df.fileDropdown.Value

if type(glqw) ~= _d("H0AHXAwA") or glqw == _d("") then
df.lastText = _d("PF0WXkIGUB9VA1BCARkAUVVTCxUDGBo")

return
end

if df.setAutoLoad(glqw) then
df.lastText = glqw .. _d("TFgaVAYUUANaVUYWBgIYGg")
else
df.lastText = _d("L1sAWQZHHgNAVUIQDgQJFAFdB0cRGUAaFQ4IEQgUGFQQDBUeGg")
end
end,
})

df.configSection:Button({
Name = _d("L1gQVBBHERlAGhUOCBEI"),
Callback = function()
df.setAutoLoad(_d(""))
df.lastText = _d("IlsBXQsJF0xYGlQGFFADWlVGFgYCGBo")
end,
})

df.statusParagraph = df.configSection:Paragraph({
Header = _d("P0AUQRcU"),
Body = _d(""),
})

df.miscSection = df.tab:Section({
Side = _d("Pl0SXRY"),
})

df.miscSection:Header({
Name = _d("IV0GVg"),
})

df.miscSection:Toggle({
Name = _d("LUEBWkIEHANHEBUFAh4JRhRBCwgeTGE8"),
Default = false,
Callback = function(oli)
ozei(oli)
end,
}, _d("AV0GVj0GBRhbKlYOCAMJaxJQDAICDUAcWgw"))

df.miscSection:Toggle({
Name = _d("LUEBWkI1HwBY"),
Default = true,
Callback = function(dvhb)
df.autoRoll = dvhb

if dvhb and df.setRollButton then
df.setRollButton(_d("LUEBWjAIHAB2AEEWCB4"), true)
end
end,
}, _d("AV0GVj0GBRhbKkcNCxw"))

df.miscSection:Toggle({
Name = _d("LUEBWkI2BQVXHhUwCBwA"),
Default = true,
Callback = function(dlmb)
df.autoQuickRoll = dlmb

if dlmb and df.setRollButton then
df.setRollButton(_d("PUEcVgk1HwBYN0AWEx8C"), true)
end
end,
}, _d("AV0GVj0GBRhbKkQXDhMHawdaDgs"))

df.uiSection = df.tab:Section({
Side = _d("Pl0SXRY"),
})

df.uiSection:Header({
Name = _d("OX0"),
})

df.uiSection:Toggle({
Name = _d("LlUWXgUVHxlaERUACwUe"),
Default = true,
Callback = function(prns)
pcall(function()
qza:SetAcrylicBlurState(prns)
end)
end,
}, _d("GV0qVwMEGwtGGkAMAy8OWABH"))

function df.widthFactor(xypk)
return 1 + math.max(0, (xypk or 1) - 1) * 0.8
end

function df.scaleCap()
local ohow = workspace.CurrentCamera and workspace.CurrentCamera.ViewportSize or Vector2.new(1280, 720)
local zg = math.min(120, math.floor(((ohow.Y - 40 - 8 - 8) / 500) * 100))

while zg > 50 and (df.baseWidth or 720) * (zg / 100) * df.widthFactor(zg / 100) > ohow.X - 16 do
zg = zg - 1
end

return math.max(50, zg)
end

function df.scaleCeiling()
return math.min(1.2, df.scaleCap() / 100)
end

function df.refreshScaleCap()
local jlgy = df.scaleSlider

if not jlgy then
return
end

local dgtc = df.scaleCeiling()

pcall(function()
jlgy.Settings.Maximum = dgtc
end)

local ngoc = tonumber(jlgy:GetValue()) or 1

if ngoc > dgtc then
df.scaleTarget = dgtc

pcall(function()
jlgy:UpdateValue(dgtc)
end)
end
end

df.scaleSlider = df.uiSection:Slider({
Name = _d("OX1VRgEGHAk"),
Default = 1,
Minimum = 0.5,

Maximum = df.scaleCeiling(),
DisplayMethod = _d("OlUZQAc"),
Precision = 2,

Callback = function(geoo)
df.scalePending = tonumber(geoo)
df.scalePendingAt = os.clock()
end,
onInputComplete = function(bej)
local hu = df.scaleCeiling()

df.scaleTarget = math.clamp(tonumber(bej) or df.scalePending or 1, 0.5, hu)
df.scalePending = nil

df.scaleAnchor = nil

df.saveUi()
end,
}, _d("GV0qRgEGHAk"))

df.refreshScaleCap()

df.themeDropdown = df.uiSection:Dropdown({
Name = _d("OFwQWAddUDpbHFE"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = df.themeOrder,
Callback = function(avhx)
local ogoq = type(avhx) == _d("GFUXWQc") and avhx[1] or avhx

if type(ogoq) == _d("H0AHXAwA") and df.presets[ogoq] then
df.theme = ogoq
df.accent = nil
df.applyTheme()

pcall(function()
df.themeDropdown:UpdateName(_d("OFwQWAddUA") .. ogoq)
end)

df.saveUi()
end
end,
}, _d("GV0qQQoCHQk"))

df.accentPicker = df.uiSection:Colorpicker({
Name = _d("LVcWUAwTUA9bGVoXFQ"),
Default = Color3.fromRGB(168, 170, 176),
Alpha = 0,
Callback = function(prkh)
df.accent = prkh
df.applyTheme()
df.saveUi()
end,
}, _d("GV0qVAEEFQJA"))

df.codesSection = df.tab:Section({
Side = _d("Pl0SXRY"),
})

df.codesSection:Header({
Name = _d("L1sRUBE"),
})

df.codeText = _d("PlERUAcKA0xRA1AQHlAPWxFQQhMYBUdVUgMKFUxHHVwSFFAbXQFdTkcfAlFVUBQCAhUUFloXFxwJFBpTQhQVD1sbURFJ")

function df.setCodeText(jlom)
df.codeText = jlom

pcall(function()
df.codeParagraph:UpdateBody(jlom)
end)
end

function df.redeemCodes()
if df.redeeming then
return
end

local fm = bo.RedeemCode
local cph = kq:FindFirstChild(_d("IVsRQA4CIw9GHEUWFA"))
local ysb = cph and cph:FindFirstChild(_d("L1sRUCYGBA0"))
local emkb, hbvo = false, nil

if fm and ysb then
emkb, hbvo = pcall(function()
return require(ysb)
end)
end

local de = emkb and type(hbvo) == _d("GFUXWQc") and hbvo.Codes or nil

if not fm or type(de) ~= _d("GFUXWQc") then
df.setCodeText(_d("OFwcRkIRFR5HHFoMRx8KFAFdB0cXDVkQFQoGA0xaGhUBCBQJFBlcERNQA0ZVWw1HAglQEFAPRwIJWRpBB0k"))
return
end

local xkhk = {}

for thf in pairs(de) do
xkhk[#xkhk + 1] = thf
end

table.sort(xkhk)

local mctf = #xkhk

df.redeeming = true
df.setCodeText(_d("PlERUAcKGQJTVQ") .. mctf .. _d("TFcaUQcUXkIa"))

task.spawn(function()
local nxd, ndf, nrza = 0, 0, 0
local cb = {}

for ducr = 1, mctf do
if not xkj() then
break
end

local du = xkhk[ducr]
local sqk, rdv = pcall(function()
return fm:InvokeServer(du)
end)

local pvab = sqk and type(rdv) == _d("GFUXWQc") and rdv.success == true
local zvu = sqk and type(rdv) == _d("GFUXWQc") and tostring(rdv.message or _d("")) or tostring(rdv or _d(""))

if not pvab and string.find(string.lower(zvu), _d("G1UcQQ"), 1, true) then
task.wait(3.5)

sqk, rdv = pcall(function()
return fm:InvokeServer(du)
end)

pvab = sqk and type(rdv) == _d("GFUXWQc") and rdv.success == true
zvu = sqk and type(rdv) == _d("GFUXWQc") and tostring(rdv.message or _d("")) or tostring(rdv or _d(""))
end

if pvab then
nxd = nxd + 1
elseif string.find(string.lower(zvu), _d("DVgHUAMDCQ"), 1, true) then
ndf = ndf + 1
else
nrza = nrza + 1

if #cb < 6 then
cb[#cb + 1] = du .. _d("VhQ") .. (zvu ~= _d("") and zvu or _d("AltVVAwUBwlG"))
end
end

df.setCodeText(string.format(_d("SVBVWgRHVQgUWBVHA1AeURFQBwoVCBhVEAZHEQBGEFQGHlxMEREVEAIWGUcQUUw"), ducr, mctf, nxd, ndf, nrza))

if ducr < mctf and xkj() then
task.wait(1.8)
end
end

local iiy = {
string.format(_d("PlERUAcKFQgUUFFORxEARhBUBh5QBFURFUcDXExGEFMXFBUIFFBRQggWTBERGw"), nxd, ndf, nrza, mctf),
}

for lsw, fvqd in ipairs(cb) do
iiy[#iiy + 1] = fvqd
end

df.redeeming = false
df.setCodeText(table.concat(iiy, _d("Zg")))
end)
end

df.codesSection:Button({
Name = _d("PlERUAcKUA1YGRUBCBQJRw"),
Callback = function()
df.redeemCodes()
end,
})

df.codeParagraph = df.codesSection:Paragraph({
Header = _d("L1sRUBE"),
Body = df.codeText,
})

df.scriptSection = df.tab:Section({
Side = _d("Pl0SXRY"),
})

df.scriptSection:Header({
Name = _d("P1cHXBIT"),
})

df.scriptSection:Button({
Name = _d("OVoZWgMDUB9XB1wSEw"),
Callback = function()
pcall(function()
qza:Unload()
end)

getgenv().ACBXWindow = nil
getgenv().ACBXAllowReload = nil
end,
})

task.spawn(function()
while xkj() do

if os.clock() >= df.savesAt then
df.savesAt = os.clock() + 3

local kcn = df.saves()
local dmp = table.concat(kcn, _d("EA"))

if dmp ~= df.knownSaves then
df.knownSaves = dmp

pcall(function()
df.fileDropdown:ClearOptions()
df.fileDropdown:InsertOptions(kcn)
end)
end

if df.selected and df.selectionShown ~= df.selected then
df.selectionShown = df.selected

pcall(function()
df.fileDropdown:UpdateSelection(df.selected)
end)
end
end

if df.autoSave and os.clock() >= df.autoSaveAt then
df.autoSaveAt = os.clock() + 60

local xrbj = df.selected or _d("CFETVBcLBA")
local cyl, uyrq = df.save(xrbj)

df.selected = xrbj
df.lastText = cyl and (_d("LUEBWkIUERpRERU") .. xrbj .. _d("TFUBFQ") .. os.date(_d("SXxPEC8")) .. _d("Qg"))
or (_d("LUEBWkIUERpRVVMDDhwJUE8V") .. tostring(uyrq))
end

if os.clock() >= df.themeAt then
df.themeAt = os.clock() + 3
df.applyTheme()
end

if os.clock() >= df.capAt then
df.capAt = os.clock() + 2
df.refreshScaleCap()
end

if os.clock() >= df.statusAt then
df.statusAt = os.clock() + 2

local oagb = df.autoLoadName()
local xg = table.concat({
_d("LUEBWkILHw1QTxU") .. (oagb or _d("AlsbUA")),
_d("P1UDUBFdUA") .. tostring(#df.saves()),
df.lastText,
}, _d("Zg"))

if xg ~= df.shownStatus then
df.shownStatus = xg

pcall(function()
df.statusParagraph:UpdateBody(xg)
end)
end
end

task.wait(0.25)
end
end)

task.spawn(function()
while xkj() do

local oztt = df.scalePending

if oztt and os.clock() - (df.scalePendingAt or 0) > 0.35 then
local drs = df.scaleCeiling()
local zfh = math.clamp(oztt, 0.5, drs)

df.scalePending = nil

if math.abs(zfh - df.scaleTarget) > 0.002 then
df.scaleTarget = zfh
df.scaleAnchor = nil

df.saveUi()
end
end

if math.abs(df.scaleTarget - df.scale) > 0.002 then
local dkgl = df.guiRoot()

if dkgl and not df.baseWidth then
df.baseWidth = dkgl.Size.X.Offset
df.baseHeight = dkgl.Size.Y.Offset
end

local evh = df.baseWidth or 720
local zfuv = df.baseHeight or 500
local hmp = workspace.CurrentCamera and workspace.CurrentCamera.ViewportSize or Vector2.new(1280, 720)
local emd, zsgv = 8, 40

if not df.scaleAnchor and dkgl then

local pcp = df.widthFactor(df.scaleTarget)
local odkt, qfas = evh * pcp * df.scaleTarget, zfuv * df.scaleTarget
local poht = dkgl.AbsolutePosition

df.scaleAnchor = Vector2.new(
math.clamp(poht.X, emd, math.max(emd, hmp.X - odkt - emd)),
math.clamp(poht.Y, zsgv, math.max(zsgv, hmp.Y - qfas - emd))
)
end

local at = df.scaleAnchor

df.scale = df.scale + (df.scaleTarget - df.scale) * 0.18

local fpoa = df.widthFactor(df.scale)

pcall(function()
qza:SetScale(df.scale)

if dkgl then
local tgs = math.floor(evh * fpoa)

dkgl.Size = UDim2.fromOffset(tgs, math.floor(zfuv))

local thef = dkgl:FindFirstChild(_d("L1sbQQcJBA"))

if thef then
local mlv = dkgl:FindFirstChild(_d("P10RUAAGAg"))
local lxg = math.floor(mlv and mlv.Size.X.Scale * tgs or tgs * 0.325)

thef.Size = UDim2.new(0, math.max(0, tgs - lxg), 1, 0)
end
end
end)

if dkgl and at then
local wta, diic = evh * fpoa * df.scale, zfuv * df.scale
local cow = math.clamp(at.X, emd, math.max(emd, hmp.X - wta - emd))
local hazr = math.clamp(at.Y, zsgv, math.max(zsgv, hmp.Y - diic - emd))

local ybq = dkgl.Parent and dkgl.Parent.AbsolutePosition or Vector2.zero

pcall(function()
dkgl.Position = UDim2.fromOffset(math.floor(cow - ybq.X), math.floor(hazr - ybq.Y))
end)
end
else

df.scaleAnchor = nil
end

task.wait()
end
end)

btd.misc.tierLabels = {}
btd.misc.labelToTier = {}

btd.misc.expSection = btd.misc.tab:Section({
Side = _d("IFETQQ"),
})

btd.misc.expSection:Header({
Name = _d("KUwFUAYOBAVbG0ZCl+/7tpqN7Q"),
})

btd.misc.claimToggle = btd.misc.expSection:Toggle({
Name = _d("LUEBWkIEHA1dGA"),
Default = false,
Callback = function(oyb)
local zwk = btd.misc.expeditions

zwk.enabled = oyb
zwk.claimAt = 0

if oyb then
zwk.askedAt = 0
zwk.request()
end
end,
}, _d("DUEBWj0EHA1dGA"))

btd.misc.rewardToggle = btd.misc.expSection:Toggle({
Name = _d("LUEBWkIEHANHEBUQAgcNRhFG"),
Default = false,
Callback = function(rtcx)
local ivpl = btd.misc.expeditions

ivpl.autoClose = rtcx

if rtcx then
ivpl.closeRewards()
end
end,
}, _d("CUwFagMSBANrFlkNFBU"))

btd.misc.startToggle = btd.misc.expSection:Toggle({
Name = _d("LUEBWkIUBA1GAQ"),
Default = false,
Callback = function(ins)
local jsx = btd.misc.expeditions

if ins and not next(jsx.tiersWanted) then
jsx.autoStart = false

pcall(function()
btd.misc.startToggle:UpdateState(false)
end)

qza:Dialog({
Title = _d("LUEBWkIUBA1GARUMAhUIR1VUQhMZCUY"),
Description = _d("PF0WXkIGBExYEFQRE1ADWhAVFg4VHhQcW0ITGAkUIVwHFVAIRhpFBggHAhQTXBAUBEIUMFQRHlAYVR5QEUcEBFFVVgoCERxRBkFCBBEeUAYZQikZC1wBWAMVFUxAHVBCFREeUQZBTkcRAlBVVAweUAJBGFcHFVADUlVBCgIdTFcUW0IVBQIUFEFCCB4PUVs"),
Buttons = {
{
Name = _d("K1sBFQsT"),
},
},
})

return
end

jsx.autoStart = ins
jsx.startedAt = {}

if ins then
jsx.askedAt = 0
jsx.request()
end
end,
}, _d("DUEBWj0UBA1GAQ"))

for jky, ycd in ipairs(btd.misc.expeditions.tiers()) do
table.insert(btd.misc.tierLabels, tostring(ycd.name))
btd.misc.labelToTier[tostring(ycd.name)] = ycd.id
end

btd.misc.building = true

btd.misc.tierDropdown = btd.misc.expSection:Dropdown({
Name = _d("OF0QRw"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = btd.misc.tierLabels,
Callback = function(sny)
local avn = btd.misc.expeditions

if btd.misc.building then
return
end

local hyge = {}
local hllh = {}

if type(sny) == _d("GFUXWQc") then
for nbmw, mwkc in pairs(sny) do
local aei = btd.misc.labelToTier[tostring(nbmw)]

if mwkc and aei then
hyge[aei] = true
table.insert(hllh, tostring(nbmw))
end
end
end

table.sort(hllh)
avn.tiersWanted = hyge

pcall(function()
btd.misc.tierDropdown:UpdateName(#hllh > 0 and (_d("OF0QR0KF8M4U") .. table.concat(hllh, _d("QBQ"))) or _d("OF0QR0KF8M4UG1oMAg"))
end)
end,
}, _d("GF0QRw"))

task.defer(function()
btd.misc.building = false
end)

btd.misc.expSection:Button({
Name = _d("L1gUXA9HHgND"),
Callback = function()
local fbw = btd.misc.expeditions

if not fbw.claim() then
qza:Notify({
Title = _d("KUwFUAYOBAVbG0Y"),
Description = _d("IlsBXQsJF0xcFEZCBB8BUVVXAwQbTE0QQUw"),
Lifetime = 5,
})
end
end,
})

btd.misc.expSection:Button({
Name = _d("P1EbUUIUFQBRFkEHAw"),
Callback = function()
local isqb = btd.misc.expeditions

if not next(isqb.tiersWanted) then
qza:Notify({
Title = _d("KUwFUAYOBAVbG0Y"),
Description = _d("PF0WXkIGBExYEFQRE1ADWhAVFg4VHhQcW0ITGAkUEUcNFxQDQxsVBA4CH0Bb"),
Lifetime = 5,
})

return
end

local ryv = {}
local ft = 0

for bute, yagf in ipairs(isqb.tiers()) do
if isqb.tiersWanted[yagf.id] and isqb.status(yagf.id) == _d("DUIUXA4GEgBR") then
if isqb.start(yagf.id, ryv) then
ft = ft + 1
end
end
end

if ft == 0 then
qza:Notify({
Title = _d("KUwFUAYOBAVbG0Y"),
Description = _d("IlsBXQsJF0xXGkAOA1AOUVVGBwkEVhQBXQdHAwlYEFYWAhRMQBxQEBRQDUYQFQMLAglVEUxCCAUYGFVaEEcEBFEHUEIGAgkUG1oWRxYDQQcVBwsZC10XWQdHEw1GEUZCAR8eFAFdBwpe"),
Lifetime = 6,
})
end
end,
})

btd.misc.expInfo = btd.misc.tab:Section({
Side = _d("Pl0SXRY"),
})

btd.misc.expInfo:Header({
Name = _d("KUwFUAYOBAVbG0Y"),
})

btd.misc.expParagraph = btd.misc.expInfo:Paragraph({
Header = _d("P0AUQRcU"),
Body = btd.misc.expeditions.text(),
})

btd.misc.expeditions.loadRewards()

btd.misc.expRewardParagraph = btd.misc.expInfo:Paragraph({
Header = _d("L1gUXA8CFA"),
Body = btd.misc.expeditions.rewardsText(),
})

task.spawn(function()
local gs = btd.misc.expeditions
local ikbl = ipt(_d("P00bVicfAAlQHEELCB4f"), 3)

if ikbl then
jxjd(ikbl.OnClientEvent, function(gtw)
if type(gtw) ~= _d("GFUXWQc") then
return
end

gs.state = gtw

gs.offset = (tonumber(gtw.now) or os.time()) - os.time()
gs.syncedAt = os.clock()

if type(gtw.rewards) == _d("GFUXWQc") and #gtw.rewards > 0 then
table.insert(gs.rewardLog, 1, {
at = os.time(),
title = tostring(gtw.rewardTitle or _d("KUwFUAYOBAVbGw")),
items = gtw.rewards,
})

while #gs.rewardLog > 8 do
table.remove(gs.rewardLog)
end

gs.saveRewards()

if gs.autoClose then

task.delay(0.35, gs.closeRewards)
end
end
end)
end

while xkj() do

if os.clock() - gs.askedAt > 1 and os.clock() - gs.syncedAt > 20 then
gs.request()
end

if gs.enabled then
gs.claim()
end

if gs.autoClose then
gs.closeRewards()
end

if gs.autoStart and next(gs.tiersWanted) then
local wlu = {}

for iyzg, mag in ipairs(gs.tiers()) do
if gs.tiersWanted[mag.id] and gs.status(mag.id) == _d("DUIUXA4GEgBR") then
if gs.start(mag.id, wlu) then
break
end
end
end
end

local zfzs = gs.text()

if btd.misc.expParagraph and zfzs ~= btd.misc.expShown then
btd.misc.expShown = zfzs

pcall(function()
btd.misc.expParagraph:UpdateBody(zfzs)
end)
end

local noq = gs.rewardsText()

if btd.misc.expRewardParagraph and noq ~= gs.rewardsShown then
gs.rewardsShown = noq

pcall(function()
btd.misc.expRewardParagraph:UpdateBody(noq)
end)
end

task.wait(0.75)
end
end)

btd.misc.util = {
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

function btd.misc.util.hook()
local au = btd.misc.util

if au.hooked then
return
end

au.hooked = true

if bo.SyncCollection then
jxjd(bo.SyncCollection.OnClientEvent, function(shu)
if type(shu) == _d("GFUXWQc") then
au.profile = shu
au.profileAt = os.clock()
end
end)
end

if bo.SyncAchievements then
jxjd(bo.SyncAchievements.OnClientEvent, function(oryg)
if type(oryg) == _d("GFUXWQc") then
au.ach = oryg
end
end)
end

if bo.SyncQuests then
jxjd(bo.SyncQuests.OnClientEvent, function(qaz)
if type(qaz) == _d("GFUXWQc") and type(qaz.list) == _d("GFUXWQc") then
au.quests = qaz
end
end)
end

if bo.SyncPeriodicQuests then
jxjd(bo.SyncPeriodicQuests.OnClientEvent, function(fnxj, hpo)
if fnxj == _d("G1EQXg4e") and type(hpo) == _d("GFUXWQc") and type(hpo.list) == _d("GFUXWQc") then
au.weekly = hpo
end
end)
end
end

function btd.misc.util.askProfile()
local dz = btd.misc.util

if os.clock() - dz.askedAt < 1.5 then
return
end

dz.askedAt = os.clock()

if bo.RequestSync then
pcall(function()
bo.RequestSync:FireServer()
end)
end
end

function btd.misc.util.currentProfile()
local vbv = btd.misc.util

if type(vbv.profile) ~= _d("GFUXWQc") then
vbv.askProfile()

return nil
end

if os.clock() - vbv.profileAt > 20 then
vbv.askProfile()
end

return vbv.profile
end

function btd.misc.util.forgetProfile()
local lcta = btd.misc.util

lcta.profile = nil
lcta.profileAt = 0
lcta.askedAt = 0
end

function btd.misc.util.indexedTotal(vyx)
local hxu = 0

for pda, jjn in pairs((vyx and vyx.cardIndex) or {}) do
if jjn then
hxu = hxu + 1
end
end

return hxu
end

function btd.misc.util.indexPending(emyp)
local drq = {}

if type(emyp) ~= _d("GFUXWQc") then
return drq
end

local ajsr = btd.misc.util.indexedTotal(emyp)
local ena = emyp.indexMilestones or {}

for mg = 1, 30 do
if not ena[mg] and mg * 5 <= ajsr then
table.insert(drq, mg)
end
end

return drq
end

function btd.misc.util.indexFrame()
local yrr = rd:FindFirstChild(_d("L1UHUSsJFAlMMkAL"))

return yrr and yrr:FindFirstChild(_d("JVoRUBohAg1ZEA"))
end

function btd.misc.util.clickButton(ysnc)
if not ysnc then
return false
end

if firesignal then
local xfli = pcall(firesignal, ysnc.MouseButton1Click)

if xfli then
return true
end
end

return pcall(function()
ysnc:Activate()
end)
end

function btd.misc.util.closeIndex()
local gb = btd.misc.util.indexFrame()

if not gb or not gb.Visible then
return false
end

pcall(function()
local dlhp = kq:FindFirstChild(_d("IVsRQA4CIw9GHEUWFA"))
local zwpq = dlhp and dlhp:FindFirstChild(_d("IVEbQC8GHg1TEEc"))

if zwpq then
require(zwpq).close(gb)
end
end)

btd.misc.util.clickButton(gb:FindFirstChild(_d("L1gaRgclBRhAGls")))

pcall(function()
gb.Visible = false
end)

return true
end

function btd.misc.util.claimIndex()
local qo = btd.misc.util

if os.clock() < qo.indexAt then
return false
end

local zxk = qo.currentProfile()

if not zxk then
return false
end

local tae = qo.indexPending(zxk)
local qqet = tae[1]

if not qqet then
return false
end

local ome = qo.indexedTotal(zxk)
local vwb = qo.indexAsked

if type(vwb) == _d("GFUXWQc") and vwb.milestone == qqet and vwb.total == ome then
return false
end

qo.indexAsked = { milestone = qqet, total = ome }

pcall(function()
bo.ClaimIndexReward:FireServer(qqet)
end)

qo.indexAt = os.clock() + 1.5

qo.profile = nil
qo.profileAt = 0

task.delay(0.4, qo.closeIndex)

return true
end

function btd.misc.util.achPending()
local nk = {}
local dbb = btd.misc.util.ach

if type(dbb) ~= _d("GFUXWQc") then
return nk
end

for elm, itzc in ipairs(dbb.chains or {}) do
for gux, ckp in ipairs(itzc.levels or {}) do
if ckp.reached and not ckp.claimed then
table.insert(nk, { chain = tostring(itzc.id), index = ckp.index, name = tostring(ckp.name or ckp.index) })
end
end
end

return nk
end

function btd.misc.util.claimAchievement()
local tokk = btd.misc.util

if os.clock() < tokk.achAt then
return false
end

if type(tokk.ach) ~= _d("GFUXWQc") then
if os.clock() - tokk.achAskedAt > 4 and bo.RequestAchievements then
tokk.achAskedAt = os.clock()

pcall(function()
bo.RequestAchievements:FireServer()
end)
end

return false
end

for xo, dogt in ipairs(tokk.achPending()) do
pcall(function()
bo.ClaimAchievement:FireServer(dogt.chain, dogt.index)
end)

tokk.achAt = os.clock() + 1

task.delay(1, function()
if bo.RequestAchievements then
pcall(function()
bo.RequestAchievements:FireServer()
end)
end
end)

return true
end

return false
end

function btd.misc.util.questRows()
local ulj = btd.misc.util
local bnn = {}

for ql, nltc in ipairs({ { list = _d("CFUcWRs"), payload = ulj.quests }, { list = _d("G1EQXg4e"), payload = ulj.weekly } }) do
for za, ilpa in ipairs((type(nltc.payload) == _d("GFUXWQc") and nltc.payload.list) or {}) do
if type(ilpa) == _d("GFUXWQc") then
table.insert(bnn, { list = nltc.list, index = za, quest = ilpa })
end
end
end

return bnn
end

function btd.misc.util.questPending()
local rpv = {}

for czt, qtm in ipairs(btd.misc.util.questRows()) do
local lde = qtm.quest

if not lde.claimed and (tonumber(lde.progress) or 0) >= (tonumber(lde.target) or math.huge) then
table.insert(rpv, qtm)
end
end

return rpv
end

function btd.misc.util.askQuests()
local vhe = btd.misc.util

if os.clock() - vhe.questAskedAt > 4 and bo.RequestQuests then
vhe.questAskedAt = os.clock()

pcall(function()
bo.RequestQuests:FireServer()
end)
end

if os.clock() - vhe.weeklyAskedAt > 4 and bo.RequestPeriodicQuests then
vhe.weeklyAskedAt = os.clock()

pcall(function()
bo.RequestPeriodicQuests:FireServer(_d("G1EQXg4e"))
end)
end
end

function btd.misc.util.claimQuest()
local fvt = btd.misc.util

if os.clock() < fvt.questAt then
return false
end

if type(fvt.quests) ~= _d("GFUXWQc") and type(fvt.weekly) ~= _d("GFUXWQc") then
fvt.askQuests()

return false
end

for eoy, hfvy in ipairs(fvt.questPending()) do
if hfvy.list == _d("G1EQXg4e") then
if bo.ClaimPeriodicQuest then
pcall(function()
bo.ClaimPeriodicQuest:FireServer(_d("G1EQXg4e"), hfvy.index)
end)
end
else
pcall(function()
bo.ClaimQuest:FireServer(hfvy.index)
end)
end

fvt.questAt = os.clock() + 1.2

task.delay(1, function()
fvt.askQuests()
end)

return true
end

return false
end

function btd.misc.util.packCatalog()
local vote = btd.misc.util

if vote.packs then
return vote.packs
end

local gk = {}
local mvs, wwjg = pcall(function()
return require(kq.ModuleScripts.PackData)
end)

if mvs and type(wwjg) == _d("GFUXWQc") and type(wwjg.Packs) == _d("GFUXWQc") then
for hinw, yoo in ipairs(wwjg.Packs) do
if yoo.id then
table.insert(gk, { id = tostring(yoo.id), name = tostring(yoo.name or yoo.id) })
end
end
end

vote.packs = gk

return gk
end

function btd.misc.util.packUnlocked(nyb, ay)
if type(nyb) ~= _d("GFUXWQc") then
return true
end

local hl, yds = pcall(function()
return require(kq.ModuleScripts.PackData)
end)
local kw, nxb = pcall(function()
return require(kq.ModuleScripts.PackSlotData)
end)

if not (hl and kw) then
return true
end

local yawd = yds.ById and yds.ById[ay]

if not yawd then
return false
end

local rxye, mpgj = pcall(nxb.isPackUnlocked, yawd, nyb)

return (not rxye) or mpgj == true
end

function btd.misc.util.visit(inov)
local cuqh = workspace:FindFirstChild(_d("ImQ2Rg"))
local xrf = cuqh and cuqh:FindFirstChild(inov)
local il = fh.Character
local nmha = il and il:FindFirstChild(_d("JEEYVAwIGQhmGloWNxEeQA"))
local xna = xrf and (xrf:FindFirstChild(_d("JEEYVAwIGQhmGloWNxEeQA")) or xrf:FindFirstChildWhichIsA(_d("LlUGUDIGAhg"), true))

if not (xna and nmha) then
return nil
end

local huk = nmha.CFrame

nmha.CFrame = CFrame.new((xna.CFrame * CFrame.new(0, 0, -5)).Position)

return huk
end

function btd.misc.util.returnTo(acyk)
local fevf = fh.Character
local jvjx = fevf and fevf:FindFirstChild(_d("JEEYVAwIGQhmGloWNxEeQA"))

if jvjx and acyk then
jvjx.CFrame = acyk
end
end

function btd.misc.util.applyPacks(vsq, uboc)
local sep = btd.misc.util

if os.clock() < sep.packAt then
return false, _d("O1UcQUIGUAFbGFAME14")
end

local ggfw = sep.currentProfile()

if not ggfw then
return false, _d("PlEUUQsJF0xNGkAQRwAeWxNcDgJQQRQBRxtHEQtVHFtCDh5MVVVGBwQfAlBb")
end

if uboc and (tonumber(ggfw.packSlots) or 1) < 2 then
return false, _d("P1gaQUJVUAJREFERRwQEUVVQGhMCDRQFVAEMUB9YGkFCABEBUQVUERRe")
end

if not (bo.OpenPackShop and bo.EquipPack) then
return false, _d("OFwQFRIGEwcUBl0NF1AFR1VbDRNQBVpVQQoOA0xTFFgHRwYJRgZcDQle")
end

sep.packAt = os.clock() + 8

task.spawn(function()
local cdz = sep.visit(_d("IlsXWQcUAwVaEkY"))

if not cdz then
return
end

pcall(function()
bo.OpenPackShop:FireServer(_d("HFUWXj0KFR5XHVQMEw"))
end)

task.wait(1.2)

if vsq then
pcall(function()
bo.EquipPack:FireServer(vsq, 1)
end)
end

if uboc then
task.wait(0.8)

pcall(function()
bo.EquipPack:FireServer(uboc, 2)
end)
end

task.wait(0.8)
sep.returnTo(cdz)
sep.forgetProfile()
end)

return true
end

function btd.misc.util.accScore(qjez)
local sqbr = qjez.effects or {}

return (sqbr.luckBonus or 0) * 10
+ ((sqbr.luckMult or 1) - 1) * 200
+ ((sqbr.borderLuckMult or 1) - 1) * 200
- ((sqbr.rollCdMult or 1) - 1) * 30
end

function btd.misc.util.accCatalog()
local qwp = btd.misc.util

if qwp.accessories then
return qwp.accessories
end

local ipzz = {}

for nii, ypqo in ipairs({ _d("LVcWUBEUHx5NMVQWBg"), _d("LVcWUBEUHx5NMVQWBkI") }) do
local cxld, aau = pcall(function()
return require(kq.ModuleScripts[ypqo])
end)

if cxld and type(aau) == _d("GFUXWQc") and type(aau.Accessories) == _d("GFUXWQc") then
for ksl, yzvm in ipairs(aau.Accessories) do
if yzvm.id then
table.insert(ipzz, {
id = tostring(yzvm.id),
name = tostring(yzvm.name or yzvm.id),
shop = nii,

shopName = nii == 1 and _d("LVcWUBEUHx5NVWYKCAA") or _d("IU0GQQcVGQNBBhUvBh4"),
raidable = yzvm.raidShopOnly == true,
hidden = yzvm.hidden == true,
requirements = yzvm.requirements or {},
score = btd.misc.util.accScore(yzvm),
})
end
end
end
end

qwp.accessories = ipzz

return ipzz
end

function btd.misc.util.accOwned(ggho)
local cuwp = {}

for sqky, dvhh in ipairs((ggho and ggho.accessories) or {}) do
cuwp[tostring(dvhh)] = true
end

return cuwp
end

function btd.misc.util.accMeets(caa, bk)
for yst, wuwe in ipairs(bk.requirements) do
local nofj = caa.cards and caa.cards[wuwe.cardId]
local ucf = type(nofj) == _d("GFUXWQc") and (tonumber(nofj[wuwe.borderLevel]) or 0) or 0

if ucf < (tonumber(wuwe.amount) or 0) then
return false
end
end

return true
end

function btd.misc.util.accPlan(dmra)
local egg = btd.misc.util
local aixb = egg.accOwned(dmra)
local udmw = {}

for sj, pefv in ipairs(egg.accCatalog()) do
if not aixb[pefv.id] and not pefv.raidable and not pefv.hidden and egg.accMeets(dmra, pefv) then
local ulvu = udmw[pefv.shop]

if not ulvu or pefv.score > ulvu.score then
udmw[pefv.shop] = pefv
end
end
end

return udmw
end

function btd.misc.util.accPicks(njb)
local yvq = btd.misc.util
local dw = yvq.accOwned(njb)
local gui, egc

for he, ikc in ipairs(yvq.accCatalog()) do
if dw[ikc.id] then
if not gui or ikc.score > gui.score then
gui = ikc
end
elseif not ikc.raidable and not ikc.hidden and yvq.accMeets(njb, ikc) then
if not egc or ikc.score > egc.score then
egc = ikc
end
end
end

return gui, egc
end

function btd.misc.util.equipBest()
local cpe = btd.misc.util
local fymn = cpe.currentProfile()

if not fymn or not bo.EquipAccessory then
return false
end

local pwk = cpe.accPicks(fymn)

if not pwk or fymn.equippedAccessory == pwk.id then
return pwk ~= nil
end

pcall(function()
bo.EquipAccessory:FireServer(pwk.id)
end)

task.delay(1.5, function()
cpe.forgetProfile()
end)

return true
end

function btd.misc.util.buyBest()
local gmis = btd.misc.util

if os.clock() < gmis.accAt then
return false, _d("O1UcQUIGUAFbGFAME14")
end

if rqc.busy(1) or rqc.busy(2) then
gmis.accNote = _d("JVpVVEIFERhAGVBCSlANFAZdDRdQGEYcRUIQHxlYERUHCRRMXQE")
return false, _d("JVpVVEIFERhAGVBCSlANFAZdDRdQGEYcRUIQHxlYERUHCRRMXQEb")
end

local ue = gmis.currentProfile()

if not ue then
gmis.accNote = _d("PlEUUQsJF0xNGkAQRwAeWxNcDgJQQRQCXA4LUBhGDBUDABEFWlVcDEcRTEcQVg0JFA")
return false, _d("PlEUUQsJF0xNGkAQRwAeWxNcDgJQQRQBRxtHEQtVHFtCDh5MVVVGBwQfAlBb")
end

local cruk = gmis.accPlan(ue)
local cqjl = {}

for rwx = 1, 2 do
if cruk[rwx] then
table.insert(cqjl, cruk[rwx].name)
end
end

if #cqjl == 0 then
gmis.accNote = _d("IlsBXQsJF0xaEEJCEh4AWxZeBwNQFVEBFU9HBARRVVYDFRQfFBNaEEcZGBQURwdHHgNAVVwMRwQEUVVWDQscCVcBXA0J")
return false, _d("IlsBXQsJF0xaEEJCBBECFBdQQhIeAFsWXgcDUBVRARVPRwQEUVVWAxUUHxQTWhBHGRgUFEcHRx4DQFVcDEcEBFFVVg0LHAlXAVwNCV4")
end

gmis.accAt = os.clock() + 12
gmis.accNote = _d("O1UZXgsJF0xAGhUWDxVMVxpADBMVHhQTWhBH") .. table.concat(cqjl, _d("TFUbUUI"))

task.spawn(function()
for dvbs = 1, 2 do
local vvs = cruk[dvbs]

if vvs then
local yn = dvbs == 1 and _d("HEEHRhcOBAlQEQ") or _d("G1UTUwcLHQ1aEFQWFAcNUhNQDhQ")
local pmfa = dvbs == 1 and bo.OpenAccessoryShop or bo.OpenAccessoryShop2
local ln = dvbs == 1 and bo.BuyAccessory or bo.BuyAccessory2
local hd = yn and gmis.visit(yn) or nil

if not hd then
local ltf = workspace:FindFirstChild(_d("ImQ2Rg"))
local jisr = ltf and ltf:FindFirstChild(yn)

if jisr and os.clock() - (gmis.worldAskedAt or 0) > 25 then

gmis.worldAskedAt = os.clock()
gmis.accNote = _d("L1wURwMEBAlGVVsNE1AeURRRG0ddTEAHTAsJF0xVElQLCVAfXBpHFgsJ")
elseif not jisr and os.clock() - (gmis.worldAskedAt or 0) > 25 then

gmis.worldAskedAt = os.clock()
gmis.accNote = _d("IltVVg0SHhhRBxULCVAYXBxGQhAfHlgRFU9HBA1fHFsFRwQEUVVZDQUSFRQBUA4CAANGAQ")

pcall(function()
bo.TeleportToWorld:FireServer(_d("AFsXVxs"))
end)

task.wait(4.5)
hd = gmis.visit(yn)
end
end

if hd and pmfa and ln then

task.wait(0.9)

pcall(function()
pmfa:FireServer()
end)

task.wait(1.2)

pcall(function()
ln:FireServer(vvs.id)
end)

task.wait(0.9)
gmis.returnTo(hd)
gmis.accNote = _d("LlsAUgoTUA") .. tostring(vvs.name)
elseif not hd then
gmis.accNote = _d("L1sAWQZHHgNAVUcHBhMEFAFdB0cTA0EbQQcVUEEUAUcbRxELVRxbQg4eTFVVWA0KFQJA")
end

task.wait(0.6)
end
end

gmis.forgetProfile()

for iso = 1, 8 do
if type(gmis.profile) == _d("GFUXWQc") then
break
end

gmis.askProfile()
task.wait(0.7)
end

gmis.equipBest()
end)

return true, table.concat(cqjl, _d("QBQ"))
end

function btd.misc.util.indexText()
local jymm = btd.misc.util

if type(jymm.profile) ~= _d("GFUXWQc") then
return _d("PlEUUQsJF0xNGkAQRxMNRhEVCwkUCUxbG0w")
end

local ohyv = jymm.indexPending(jymm.profile)
local mrc = 0

for sfwy, fvbv in pairs(jymm.profile.indexMilestones or {}) do
if fvbv then
mrc = mrc + 1
end
end

local hyvn = tostring(jymm.indexedTotal(jymm.profile)) .. _d("TFcURwYUUAVaEVAaAhRAFA") .. tostring(mrc) .. _d("TFsTFVFXUB5RAlQQAwNMVxlUCwoVCA")

if #ohyv > 0 then
hyvn = hyvn .. _d("ZmYQVAYeSkw") .. table.concat(ohyv, _d("QBQ"))
end

return hyvn
end

function btd.misc.util.achText()
local qqe = btd.misc.util

if type(qqe.ach) ~= _d("GFUXWQc") then
return _d("PlEUUQsJF0xVFl0LAgYJWRBbFhReQho")
end

local xzf = qqe.achPending()
local eys = 0

for dn, hgnw in ipairs(qqe.ach.chains or {}) do
for myz in ipairs(hgnw.levels or {}) do
eys = eys + 1
end
end

return tostring(#xzf) .. _d("TFsTFQ") .. tostring(eys) .. _d("TFUWXQsCBglZEFsWFFAeURRRGw")
end

function btd.misc.util.questText()
local vb = btd.misc.util

if type(vb.quests) ~= _d("GFUXWQc") and type(vb.weekly) ~= _d("GFUXWQc") then
return _d("PlEUUQsJF0xFAFAREwNCGls")
end

local mwtw, prmj = 0, 0

for vmxa, hext in ipairs(vb.questPending()) do
if hext.list == _d("G1EQXg4e") then
prmj = prmj + 1
else
mwtw = mwtw + 1
end
end

local bft = type(vb.quests) == _d("GFUXWQc") and #(vb.quests.list or {}) or 0
local ipr = type(vb.weekly) == _d("GFUXWQc") and #(vb.weekly.list or {}) or 0

return tostring(mwtw) .. _d("TFsTFQ") .. tostring(bft) .. _d("TFAUXA4eUB5RFFEbbQ")
.. tostring(prmj) .. _d("TFsTFQ") .. tostring(ipr) .. _d("TEMQUAkLCUxGEFQGHg")
end

function btd.misc.util.packText()
local hju = btd.misc.util
local vwtk = hju.profile

if type(vwtk) ~= _d("GFUXWQc") then
return _d("PlEUUQsJF0xNGkAQRwANVx5GTEle")
end

local function alx(khm)
for gpxj, hlrd in ipairs(hju.packCatalog()) do
if hlrd.id == khm then
return hlrd.name
end
end

return tostring(khm)
end

local mfi = _d("P1gaQUJWSkw") .. alx(vwtk.equippedPack)

if (tonumber(vwtk.packSlots) or 1) >= 2 then
mfi = mfi .. _d("ZmcZWhZHQlYU") .. alx(vwtk.equippedPack2)
else
mfi = mfi .. _d("ZmcZWhZHQlYUElQPAgANRwYVDAgETFsCWwcD")
end

return mfi
end

function btd.misc.util.accText()
local csr = btd.misc.util
local xsg = csr.profile

if type(xsg) ~= _d("GFUXWQc") then
return _d("PlEUUQsJF0xNGkAQRxEPVxBGEQgCBVEGG0xJ")
end

local bpff = csr.accPicks(xsg)
local bppi = csr.accPlan(xsg)
local sxf = _d("AlsbUA")

for jmm, mnz in ipairs(csr.accCatalog()) do
if mnz.id == xsg.equippedAccessory then
sxf = mnz.name .. _d("TBw") .. mnz.shopName .. _d("RQ")
end
end

local kv = _d("KUUAXBIXFQgOVQ") .. sxf

if bpff then
kv = kv .. _d("ZnYQRhZHHxtaEFFYRw") .. bpff.name
end

kv = kv .. _d("ZnUWVgcUAwNGDBUxDx8cDlU") .. (bppi[1] and bppi[1].name or _d("AlsBXQsJF0xaEEI"))
kv = kv .. _d("ZnkMRhYCAgVbAEZCKhECDlU") .. (bppi[2] and bppi[2].name or _d("AlsBXQsJF0xaEEI"))

if csr.accNote then
kv = kv .. _d("ZngURhZHBB5dBQ9C") .. csr.accNote
end

return kv
end

btd.misc.util.hook()
btd.misc.util.askProfile()

btd.misc.indexSection = btd.misc.tab:Section({
Side = _d("IFETQQ"),
})

btd.misc.indexSection:Header({
Name = _d("L1UHUUIuHghRDRWS+OPr"),
})

btd.misc.indexToggle = btd.misc.indexSection:Toggle({
Name = _d("LUEBWkIEHA1dGA"),
Default = false,
Callback = function(of)
btd.misc.util.indexOn = of
btd.misc.util.indexAt = 0

btd.misc.util.indexAsked = nil
end,
}, _d("DUEBWj0EHA1dGGpQ"))

btd.misc.indexSection:Button({
Name = _d("L1gUXA9HHgND"),
Callback = function()
local zhop = btd.misc.util

zhop.indexAt = 0
zhop.indexAsked = nil

if not zhop.claimIndex() then
qza:Notify({
Title = _d("L1UHUUIuHghRDQ"),
Description = _d("IltVWAsLFR9AGlsHRxkfFAdQAwMJTEAaFQELEQVZWw"),
Lifetime = 5,
})
end
end,
})

btd.misc.claimSection = btd.misc.tab:Section({
Side = _d("IFETQQ"),
})

btd.misc.claimSection:Header({
Name = _d("LVcdXAcRFQFRG0ERR1ZMZQBQERMDTMTquuQ"),
})

btd.misc.achToggle = btd.misc.claimSection:Toggle({
Name = _d("LUEBWkIEHA1dGBUDBBgFUQNQDwIeGEc"),
Default = false,
Callback = function(qehr)
btd.misc.util.achOn = qehr
btd.misc.util.achAt = 0

if qehr and bo.RequestAchievements then
pcall(function()
bo.RequestAchievements:FireServer()
end)
end
end,
}, _d("DUEBWj0EHA1dGGoDBBgFUQNQDwIeGEc"))

btd.misc.questToggle = btd.misc.claimSection:Toggle({
Name = _d("LUEBWkIEHA1dGBUTEhUfQAY"),
Default = false,
Callback = function(aab)
btd.misc.util.questOn = aab
btd.misc.util.questAt = 0
btd.misc.util.questAskedAt = 0
btd.misc.util.weeklyAskedAt = 0

if aab then
btd.misc.util.askQuests()
end
end,
}, _d("DUEBWj0EHA1dGGoTEhUfQAY"))

btd.misc.claimSection:Button({
Name = _d("L1gUXA9HEQBYVVsNEA"),
Callback = function()
local qnbf = btd.misc.util

qnbf.achAt = 0
qnbf.questAt = 0

local boc = qnbf.claimAchievement()
local osd = qnbf.claimQuest()

if not (boc or osd) then
qza:Notify({
Title = _d("LVcdXAcRFQFRG0ERR1ZMZQBQERMD"),
Description = _d("IlsBXQsJF0xdBhUQAhEITVVBDUcTAFUcWEw"),
Lifetime = 5,
})
end
end,
})

btd.misc.packSection = btd.misc.tab:Section({
Side = _d("IFETQQ"),
})

btd.misc.packSection:Header({
Name = _d("L1UHUUI3EQ9fBhWS+P7Y"),
})

btd.misc.packSection:Paragraph({
Header = _d("OEMaFRELHxhH"),
Body = _d("PF0WXhFHERxEGUxCCB4ATVVCCgIeTE0aQEIXAglHBhUjFwAATVVFAwQbHxhVVwcEERlHEBUWDxVMRwJcFgQYTEMUWQkUUBhbVUEKAlABUQdWCgYeGBo"),
})

local dzh = {}
local xr = {}

for thi, laq in ipairs(btd.misc.util.packCatalog()) do
table.insert(dzh, laq.name)
xr[laq.name] = laq.id
end

btd.misc.packSlotOne = nil
btd.misc.packSlotTwo = nil

btd.misc.packDropdownOne = btd.misc.packSection:Dropdown({
Name = _d("P1gaQUJW"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = dzh,
Callback = function(ufzf)
local yu = type(ufzf) == _d("GFUXWQc") and ufzf[1] or ufzf

btd.misc.packSlotOne = xr[tostring(yu)]
end,
}, _d("H1gaQT1W"))

btd.misc.packDropdownTwo = btd.misc.packSection:Dropdown({
Name = _d("P1gaQUJV"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = dzh,
Callback = function(tly)
local mfgz = type(tly) == _d("GFUXWQc") and tly[1] or tly

btd.misc.packSlotTwo = xr[tostring(mfgz)]
end,
}, _d("H1gaQT1V"))

btd.misc.packSection:Button({
Name = _d("LUQFWRtHAA1XHkY"),
Callback = function()
local mo = btd.misc.util
local tc = btd.misc.packSlotOne
local ka = btd.misc.packSlotTwo

if not tc then
qza:Notify({
Title = _d("L1UHUUI3EQ9fBg"),
Description = _d("PF0WXkIGUBxVFl5CAR8eFAZZDRNQXRQTXBAUBEI"),
Lifetime = 5,
})

return
end

local bfwr, hgnh = mo.applyPacks(tc, ka)

if not bfwr then
qza:Dialog({
Title = _d("L1UHUUI3EQ9fBg"),
Description = hgnh,
Buttons = {
{
Name = _d("K1sBFQsT"),
},
},
})
end
end,
})

btd.misc.cards = {
rarityLabels = { _d("LVgZ"), _d("IlsHWAML"), _d("K1sZUQ"), _d("PlUcWwAIBw"), _d("OVocQwcVAw1Y") },
borderOf = { Normal = 1, Gold = 2, Rainbow = 3, Universal = 4 },
mergeOn = false,
deconOn = false,
mergeWanted = {},
deconWanted = {},
mergeAt = 0,
deconAt = 0,
mergeDone = _d("IlsBXQsJF0xHEFsWRwkJQA"),
deconDone = _d("IlsBXQsJF0xHEFsWRwkJQA"),

inFlight = false,

interval = 3600,
manualGap = 20,
manualAt = 0,

protectedPrefixes = { weather = true, boss = true, raid = true, wb = true, fish = true, hw = true, event = true },

deconExceptions = { weather_sayaka = true, weather_caesar = true },

deconConfirmed = false,
burnAskedAt = 0,
}

function btd.misc.cards.isProtected(stp, cfm)
local zjng = btd.misc.cards
local onl = tostring(stp or _d(""))
local fob = onl:match(_d("MhwuVE8dQEENKB5LOA"))

if not (fob and zjng.protectedPrefixes[fob]) then
return false
end

return not (zjng.deconExceptions[onl] and cfm == 2)
end

function btd.misc.cards.burnAllowed(byty)
local ane = btd.misc.cards
local sism = ane.wantedFor(_d("CFEWWgwwEQJAEFE"))

if not (sism == nil or sism[3] or sism[4]) then
ane.deconConfirmed = false

return true
end

if ane.deconConfirmed then
return true
end

if byty then
return false
end

if os.clock() < (ane.burnAskedAt or 0) then
return false
end

ane.burnAskedAt = os.clock() + 20

qza:Dialog({
Title = _d("LkEHW0I1EQVaF1oVRx8eFCBbCxEVHkcUWUIEER5QBgo"),
Description = _d("LUEBWkIDFQ9bG0YWFQUPQFVGBwkUHxQQQwcVCUxXGkUbRxkCFAFdB0cdDUAWXQsJF0xGGkIRRxECUFVWAwkeA0BVVwdHBQJQGlsHSVA")
.. _d("O1EUQQoCAkAUF1oRFFxMRhRcBkcSA0cGGUIQHx5YERUACAMfGFVTCxQYBVoSGUIvEQBYGkIHAh5MVRtRQgIGCVoBFQEGAghHVVQQAlAEURlRQgURD19VUAsTGAlGVUIDHl4"),
Buttons = {
{
Name = _d("LkEHW0ITGAlZ"),
Callback = function()
ane.deconConfirmed = true
ane.deconAt = 0
ane.manualAt = 0

pcall(function()
btd.misc.deconToggle:UpdateState(true)
end)
end,
},
{
Name = _d("L1UbVgcL"),
Callback = function()
pcall(function()
btd.misc.deconToggle:UpdateState(false)
end)
end,
},
},
})

return false
end

function btd.misc.cards.wantedFor(hrav)
local awju = btd.misc.cards[hrav] or {}

if next(awju) == nil or awju[0] then
return nil
end

return awju
end

function btd.misc.cards.npcFor(eng)
local igts = workspace:FindFirstChild(_d("ImQ2Rg"))

if not igts then
return nil
end

local ytc = eng and _d("CkEGUD0JAA8") or _d("CFEWWgwUBB5BFkE9CQAP")

for mikl, npg in ipairs(igts:GetChildren()) do
if npg:GetAttribute(_d("ImQ2fAY")) == ytc then
return npg
end
end

local aljj = eng and { _d("I1sFXQ4e"), _d("A1sFWRsC") } or { _d("P1wUQA4G"), _d("JFUDUDYQHyhVEUY") }

for rk, evbr in ipairs(igts:GetChildren()) do
for gwmu, jsn in ipairs(aljj) do
if evbr.Name == jsn then
return evbr
end
end
end

local ar = eng and { _d("D1UHUUIKFR5THFsF"), _d("A1sFXQ4e") } or { _d("CFEWWgwUBB5BFkELCB4"), _d("H1wUQA4G") }

for ogf, eik in ipairs(igts:GetChildren()) do
for je, cnpw in ipairs(eik:GetDescendants()) do
if cnpw:IsA(_d("OFENQS4GEglY")) and cnpw.Text ~= _d("") then
local wz = cnpw.Text:lower()

for gulv, plx in ipairs(ar) do
if wz:find(plx, 1, true) then
return eik
end
end

break
end
end
end

return nil
end

function btd.misc.cards.rarityText(zmji)
local kipp = btd.misc.cards.wantedFor(zmji)

if not kipp then
return _d("LVgZ")
end

local myta = {}

for lhuv, yqg in pairs(btd.misc.cards.borderOf) do
if kipp[yqg] then
table.insert(myta, lhuv)
end
end

if #myta == 0 then
return _d("LVgZ")
end

table.sort(myta)

return table.concat(myta, _d("QBQ"))
end

function btd.misc.cards.run(ngjh, tmnz, jkw)
local tpj = btd.misc.cards
local mst = btd.misc.util
local ks = ngjh and _d("AVEHUgcmBA") or _d("CFEWWgwmBA")

if jkw then
if os.clock() < tpj[ks] then
return false, _d("IlsBFQYSFUxNEEFM")
end
elseif os.clock() < tpj.manualAt then
return false, _d("O1UcQUIGUAFbGFAME14")
end

if tpj.inFlight then
return false, _d("LVoaQQoCAkxXFEcGRwQeXQUVCxRQDVgHUAMDCUxGAFsMDh4LGg")
end

local gfsy = rqc.busy(1) and 1 or (rqc.busy(2) and 2 or nil)
local fkk = os.clock() - (oi.floorAt or 0) < 90
local ylop = gfsy ~= nil and rqc.towerSlot() == gfsy and fkk

if gfsy and not ylop then
return false, _d("JVpVVEIFERhAGVBCSlAYXBAVFhUZHBQCWhcLFExRG1FCDgRC")
end

if rcj.battlePending and os.time() < (rcj.battlePendingUntil or 0) then
return false, _d("LRQXVBYTHAkUHEZCFAQNRgFcDABQQRQBXQdHBB5dBRUVCAUAUFVWAwkTCVhVXBZJ")
end

if not ngjh and not tpj.burnAllowed() then
return false, _d("L1sbUwsVHUxmFFwMBR8bGyBbCxEVHkcUWUIBGR5HARs")
end

local vjr = tpj.npcFor(ngjh)

if not vjr then
return false, ngjh
and _d("I1sFXQ4eUAVHVVsNE1AFWlVBCg4DTFkURUJKUBhGFEMHC1AYW1VdCwpQDVoRFRIVFR9HVVwWRxELVRxbTA")
or _d("OFwQFQYCEwNaBkEQEhMYFDtlIUcZHxQbWhZHGQIUAV0LFFABVQUVT0cEHlUDUA5HBAMUHEFCBh4IFAVHBxQDTF0BFQMAEQVaWw")
end

local uwl = ngjh and bo.OpenFuseDialog or bo.OpenDeconstructDialog
local ghn = ngjh and bo.FuseCards or bo.DeconstructCards

if not (uwl and ghn) then
return false, _d("OFwUQUIOA0xaGkFCDh5MQB1cEUcXDVkQFRQCAh9dGltM")
end

local wvv = ngjh and _d("AVEHUgcwEQJAEFE") or _d("CFEWWgwwEQJAEFE")
local nbo = tpj.wantedFor(wvv)

tpj.manualAt = os.clock() + tpj.manualGap

if jkw then
tpj[ks] = os.clock() + tpj.interval
end

tpj.inFlight = true

task.spawn(function()

local rnl = nil

local function faen(qgsx, upb)
if ngjh then
tpj.mergeDone = qgsx
else
tpj.deconDone = qgsx
end

if upb and jkw then
tpj[ks] = os.clock() + 120
end

tpj.inFlight = false
end

local fyw = mst.visit(vjr.Name)

if not fyw then
faen(_d("L1wURwMEBAlGVVwRRx4DQFVHBwYUFRRYFRACBB5NHFsFRxkCFAFCDUcdBVoAQQcUXg"), true)

return
end

task.wait(0.9)

local hwvv = nil
local umas = jxjd(uwl.OnClientEvent, function(otv)
if type(otv) == _d("GFUXWQc") then
hwvv = otv
end
end)

for tt = 1, 3 do
pcall(function()
uwl:FireServer()
end)

for rrbf = 1, 20 do
if hwvv then
break
end

task.wait(0.3)
end

if hwvv then
break
end

task.wait(1.5)
end

umas:Disconnect()
mst.returnTo(fyw)

if type(hwvv) ~= _d("GFUXWQc") then
faen(_d("OFwQFQYOEQBbEhUGDhRMWhpBQgYeH0MQR0JKUB5RAUcbDh4LFBxbQhMHAxQYXAwSBAlHWw"), true)

return
end

local ewh = {}

for oihh, kvj in ipairs(hwvv) do
local bubf = tonumber(kvj.borderLevel)
local yjj = kvj.cardId or kvj.id

if bubf and (not nbo or nbo[bubf])
and (ngjh or not btd.misc.cards.isProtected(yjj, bubf)) then
table.insert(ewh, kvj)
end
end

if #ewh == 0 then

btd.misc.cards.closeFrame(ngjh)
faen(_d("IlsBXQsJF0xAGhURAh4IFBNaEEc") .. btd.misc.cards.rarityText(wvv) .. _d("Qg"))

return
end

if tmnz then

local fwoa = {}

for xoyl, qgom in ipairs(ewh) do
if (tonumber(qgom.count) or 0) >= tmnz then
table.insert(fwoa, qgom)
end
end

if #fwoa == 0 then
btd.misc.cards.closeFrame(ngjh)
faen(_d("IltV") .. btd.misc.cards.rarityText(wvv) .. _d("TEYaQkIPER8U") .. tmnz .. _d("TFcaRQsCA0xNEEFM"))

return
end

ewh = fwoa

table.sort(ewh, function(mmfo, ezsy)
return (tonumber(mmfo.count) or 0) < (tonumber(ezsy.count) or 0)
end)

local uwrx, fuv = {}, 0

for tza, mnyk in ipairs(ewh) do
local mxw = tonumber(mnyk.count) or 0

if #uwrx > 0 and fuv + mxw > tmnz then
break
end

table.insert(uwrx, mnyk)
fuv = fuv + mxw
end

ewh = uwrx
rnl = fuv
end

local dg = 0

btd.misc.cards.closeFrame(ngjh)

if ngjh then
if not nbo then

pcall(function()
ghn:FireServer(_d("DVgZ"), nil)
end)

dg = #ewh
else
local evo = {}

for rp, bw in ipairs(ewh) do
table.insert(evo, { bw.cardId, tonumber(bw.borderLevel) })
end

pcall(function()
ghn:FireServer(_d("H1EZUAETFQhrFFkO"), evo)
end)

dg = #evo
end
else
local gor = {}

for hvdo, ybn in ipairs(ewh) do
if #gor >= 25 then
break
end

table.insert(gor, { ybn.cardId, tonumber(ybn.borderLevel), _d("DVgZ") })
end

pcall(function()
ghn:FireServer(gor)
end)

dg = #gor
end

faen(_d("P1EbQUI") .. tostring(dg) .. _d("TEYaQg") .. (dg == 1 and _d("") or _d("Hw"))
.. _d("TBw") .. btd.misc.cards.rarityText(wvv) .. _d("RQ")
.. (rnl and (_d("QBQ") .. tostring(rnl) .. _d("TFcURwYU")) or _d("")))
end)

return true
end

function btd.misc.cards.closeFrame(nksm)
pcall(function()
local wbj = nksm and { _d("KkEGUCUSGQ"), _d("KkEGUCQVEQFR") } or { _d("KFEWWgwUBB5BFkElEhk"), _d("KFEWWgwUBB5BFkEkFREBUQ") }
local vms = require(kq.ModuleScripts.MenuManager)
local feb = rd:FindFirstChild(wbj[1])
local mi = feb and feb:FindFirstChild(wbj[2])

if mi then
vms.close(mi)
end

if not nksm then
local lid = feb and feb:FindFirstChild(_d("KFEWWgwUBB5BFkEwBgQJRzNHAwoV"))

if lid then
vms.close(lid)
else
lid = rd:FindFirstChild(_d("KFEWWgwUBB5BFkEwBgQJRzNHAwoV"))

if lid then
vms.close(lid)
end
end
end
end)
end

function btd.misc.cards.refresh(jcpw)

local mhg = jcpw and btd.misc.mergeParagraph or btd.misc.deconParagraph

if not mhg then
return
end

pcall(function()
mhg:UpdateBody(jcpw
and btd.misc.cards.mergeText()
or btd.misc.cards.deconText())
end)
end

function btd.misc.cards.mergeText()
local funx = btd.misc.cards

return _d("PlUHXBYOFR8OVQ") .. funx.rarityText(_d("AVEHUgcwEQJAEFE")) .. _d("Zg") .. funx.mergeDone
end

function btd.misc.cards.deconText()
local ejp = btd.misc.cards

return _d("PlUHXBYOFR8OVQ") .. ejp.rarityText(_d("CFEWWgwwEQJAEFE")) .. _d("Zg") .. ejp.deconDone
.. _d("ZmMQVBYPFR4YVVcNFANAFAdUCwNcTEMaRw4DUA5bBkZORxYFRx1cDABcTHwUWQ4IBwlRGxUDCRRMUQNQDBNQD1UHURFHER5RVVsHERUeFAZQDBNe")
end

btd.misc.skill = {
on = false,
at = 0,
mainWanted = {},
raidWanted = {},

mainOrder = {},
raidOrder = {},
last = _d("IlsBXQsJF0xWGkAFDwRMTRBB"),
shown = _d(""),
}

function btd.misc.skill.branchMap(rciw)
local hfu = {}

for inni, qcor in ipairs(patj.Trees[rciw].branches) do
hfu[qcor.name] = qcor
end

return hfu
end

function btd.misc.skill.branchLabels(whme)
local ppop = {}

for zik, yahy in ipairs(patj.Trees[whme].branches) do
table.insert(ppop, yahy.name)
end

return ppop
end

function btd.misc.skill.wantedFrom(uwq, fjd)
local xcg = {}
local zskf = btd.misc.skill.branchMap(fjd)

if type(uwq) == _d("GFUXWQc") then
for ambr, rgit in pairs(uwq) do
if rgit and zskf[tostring(ambr)] then
xcg[zskf[tostring(ambr)].id] = true
end
end
end

return xcg
end

function btd.misc.skill.ordered(ubu, qqlu)
local ufwt = {}
local jtu = {}

for eohe, eg in ipairs(qqlu or {}) do
if ubu[eg] then
table.insert(ufwt, eg)
jtu[eg] = true
end
end

for gnqu in pairs(ubu) do
if not jtu[gnqu] then
table.insert(ufwt, gnqu)
end
end

return ufwt
end

function btd.misc.skill.branchById(osbj)
local iay = {}

for znom, pmj in ipairs(patj.Trees[osbj].branches) do
iay[pmj.id] = pmj
end

return iay
end

function btd.misc.skill.upgrade()
local csi = btd.misc.skill
local sal = btd.misc.util
local fuh = sal.currentProfile and sal.currentProfile()

if type(fuh) ~= _d("GFUXWQc") then
return false, _d("IltVRRAIFgVYEBUbAgRC")
end

local lew = fuh.skillTrees or {}
local ewp = { [1] = csi.mainOrder, [2] = csi.raidOrder }
local dlhd = nil

for ig, ddgl in ipairs(patj.Trees) do
local oaey = lew[ddgl.id]
local bl = tonumber(fuh[ddgl.pointsField or _d("H18cWQ43HwVaAUY")]) or 0
local oy = btd.misc.skill.branchById(ig)

if type(oaey) == _d("GFUXWQc") and bl > 0 then
for dq, gqlc in ipairs(ewp[ig] or {}) do
local juwv = oy[gqlc]

if juwv and not dlhd then
local dd = patj.getBranchLevel(lew, ddgl.id, juwv.id) or 0
local jitq = dd + 1

if jitq <= juwv.levels then
local gamn = juwv.id .. jitq
local lsc = 1

if type(juwv.costs) == _d("GFUXWQc") and tonumber(juwv.costs[jitq]) then
lsc = tonumber(juwv.costs[jitq])
elseif tonumber(juwv.cost) then
lsc = tonumber(juwv.cost)
end

if lsc <= bl and patj.isAvailable(lew, ddgl.id, gamn) then
dlhd = { tree = ddgl.id, node = gamn, name = juwv.name, level = jitq }
end
end
end
end
end
end

if not dlhd then
return false, _d("IlsBXQsJF0xAGhUAEglMTRBBTA")
end

bo.BuySkillNode:FireServer(dlhd.tree, dlhd.node)

if sal.askProfile then
pcall(sal.askProfile)
end

csi.last = _d("LlsAUgoTUA") .. dlhd.name .. _d("TA") .. tostring(dlhd.level)

return true
end

function btd.misc.skill.text()
local fppe = btd.misc.skill
local jm = btd.misc.util
local ycv = jm.currentProfile and jm.currentProfile()

if type(ycv) ~= _d("GFUXWQc") then
return _d("PFscWxYUSkwLfw") .. fppe.last
end

local mjar = ycv.skillTrees or {}
local xio = {}

local petk = { [1] = fppe.mainOrder, [2] = fppe.raidOrder }

for ttso, qsay in ipairs(patj.Trees) do
local mpze = tonumber(ycv[qsay.pointsField or _d("H18cWQ43HwVaAUY")]) or 0
local bjfd = {}
local cjs = btd.misc.skill.branchById(ttso)

for jwyw, wyr in ipairs(petk[ttso] or {}) do
local ied = cjs[wyr]

if ied then
local ryj = patj.getBranchLevel(mjar, qsay.id, ied.id) or 0
table.insert(bjfd, ied.name .. _d("TA") .. tostring(ryj) .. _d("Qw") .. tostring(ied.levels))
end
end

xio[#xio + 1] = qsay.name .. _d("VhQ") .. tostring(mpze) .. _d("TEQBRg")
.. (#bjfd > 0 and (_d("TBlV") .. table.concat(bjfd, _d("QBQ"))) or _d("TBlVWw0TGAVaEhUSDhMHURE"))
end

xio[#xio + 1] = fppe.last

return table.concat(xio, _d("Zg"))
end

btd.misc.mergeSection = btd.misc.tab:Section({
Side = _d("IFETQQ"),
})

btd.misc.mergeSection:Header({
Name = _d("IVEHUgdHgPOT2Q"),
})

btd.misc.mergeToggle = btd.misc.mergeSection:Toggle({
Name = _d("LUEBWkIKFR5TEA"),
Default = false,
Callback = function(fbz)
local skq = btd.misc.cards

skq.mergeOn = fbz

skq.mergeAt = (fbz and df.loading) and (os.clock() + skq.interval) or 0
end,
}, _d("DUEBWj0KFR5TEA"))

btd.misc.mergeDropdown = btd.misc.mergeSection:Dropdown({
Name = _d("PlUHXBYOFR8"),
Search = false,
Multi = true,
Required = false,
Default = { _d("LVgZ") },
Options = btd.misc.cards.rarityLabels,
Callback = function(eqqm)
local agj = {}

if type(eqqm) == _d("GFUXWQc") then
for dgvp, tuew in pairs(eqqm) do
if tuew then
if dgvp == _d("LVgZ") then
agj[0] = true
else
agj[btd.misc.cards.borderOf[tostring(dgvp)]] = true
end
end
end
end

btd.misc.cards.mergeWanted = agj
btd.misc.cards.refresh(true)
end,
}, _d("HlUHXBYOFR8"))

btd.misc.mergeSection:Button({
Name = _d("IVEHUgdHHgND"),
Callback = function()
local sarg, hhdz = btd.misc.cards.run(true)

if not sarg then
qza:Notify({
Title = _d("IVEHUgc"),
Description = hhdz,
Lifetime = 6,
})
end
end,
})

btd.misc.mergeSection:Button({
Name = _d("IVEHUgdHSVw"),
Callback = function()

local uvxk, ephw = btd.misc.cards.run(true, 90)

if not uvxk then
qza:Notify({
Title = _d("IVEHUgdHSVw"),
Description = ephw,
Lifetime = 6,
})
end
end,
})

btd.misc.mergeParagraph = btd.misc.mergeSection:Paragraph({
Header = _d("P0AUQRcU"),
Body = btd.misc.cards.mergeText(),
})

btd.misc.accSection = btd.misc.tab:Section({
Side = _d("Pl0SXRY"),
})

btd.misc.accSection:Header({
Name = _d("LVcWUBEUHx5dEEZCl+/+ug"),
})

btd.misc.accToggle = btd.misc.accSection:Toggle({
Name = _d("LUEBWkIFFR9AVVQBBBUfRxpHGw"),
Default = false,
Callback = function(erug)
btd.misc.util.accOn = erug
btd.misc.util.accAt = 0
end,
}, _d("DUEBWj0FFR9AKlQBBBUfRxpHGw"))

btd.misc.accBuyToggle = btd.misc.accSection:Toggle({
Name = _d("LUEBWkIFBRUUF1AREw"),
Default = false,
Callback = function(jzm)
btd.misc.util.accBuyOn = jzm
btd.misc.util.accBuyAt = 0
btd.misc.util.accAt = 0
end,
}, _d("DUEBWj0FBRVrF1AREw"))

btd.misc.accSection:Button({
Name = _d("LkEMFQACAxg"),
Callback = function()
local zmgv, kuyq = btd.misc.util.buyBest()

if not zmgv then
qza:Notify({
Title = _d("LVcWUBEUHx5dEEY"),
Description = kuyq,
Lifetime = 6,
})
end
end,
})

btd.misc.accSection:Button({
Name = _d("KUUAXBJHEglHAQ"),
Callback = function()
if not btd.misc.util.equipBest() then
qza:Notify({
Title = _d("LVcWUBEUHx5dEEY"),
Description = _d("IlsBXQsJF0xWEEEWAgJMXQYVDRAeCVBVTAcTXg"),
Lifetime = 5,
})
end
end,
})

btd.misc.accParagraph = btd.misc.accSection:Paragraph({
Header = _d("P0AUQRcU"),
Body = btd.misc.util.accText(),
})

btd.misc.claimInfo = btd.misc.tab:Section({
Side = _d("Pl0SXRY"),
})

btd.misc.claimInfo:Header({
Name = _d("IV0GVgcLHA1aEFoXFA"),
})

btd.misc.indexParagraph = btd.misc.claimInfo:Paragraph({
Header = _d("L1UHUUIuHghRDQ"),
Body = btd.misc.util.indexText(),
})

btd.misc.achParagraph = btd.misc.claimInfo:Paragraph({
Header = _d("LVcdXAcRFQFRG0ER"),
Body = btd.misc.util.achText(),
})

btd.misc.questParagraph = btd.misc.claimInfo:Paragraph({
Header = _d("PUEQRhYU"),
Body = btd.misc.util.questText(),
})

btd.misc.packParagraph = btd.misc.claimInfo:Paragraph({
Header = _d("PFUWXhE"),
Body = btd.misc.util.packText(),
})

btd.misc.skillSection = btd.misc.tab:Section({
Side = _d("Pl0SXRY"),
})

btd.misc.skillSection:Header({
Name = _d("P18cWQ5HJB5REBWS+Pzf"),
})

btd.misc.skillToggle = btd.misc.skillSection:Toggle({
Name = _d("LUEBWkISAAtGFFEH"),
Default = false,
Callback = function(syb)
local mtxu = btd.misc.skill

if syb and not (next(mtxu.mainWanted) or next(mtxu.raidWanted)) then
mtxu.on = false

pcall(function()
btd.misc.skillToggle:UpdateState(false)
end)

qza:Dialog({
Title = _d("PF0WXkIGUA5GFFsBD1AKXQdGFg"),
Description = _d("L1waWhECUA1AVVkHBgMYFBpbB0cSHlUbVgpHGQIUAV0HRz0NXRsVFhUVCRQaR0I1EQVQVUEQAhVMUAdaEgMfG1pVGEI")
.. _d("LUEBWkISAAtGFFEHRx8CWAwVERcVAlAGFRIIGQJABhUVDxUeUVVMDRJQHFscWxZHGRga"),
Buttons = {
{
Name = _d("K1sBFQsT"),
},
},
})

return
end

mtxu.on = syb
mtxu.at = 0
end,
}, _d("DUEBWj0SAAtGFFEH"))

btd.misc.skillMainDropdown = btd.misc.skillSection:Dropdown({
Name = _d("IVUcW0ITAglR"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = btd.misc.skill.branchLabels(1),
Callback = function(ngq)
local qt = btd.misc.skill
local sk = qt.wantedFrom(ngq, 1)

qt.mainWanted = sk
qt.mainOrder = qt.ordered(sk, qt.mainOrder)
qt.shown = _d("")
end,
}, _d("AVUcWz0TAglR"))

btd.misc.skillRaidDropdown = btd.misc.skillSection:Dropdown({
Name = _d("PlUcUUITAglR"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = btd.misc.skill.branchLabels(2),
Callback = function(pne)
local mnvo = btd.misc.skill
local gnfp = mnvo.wantedFrom(pne, 2)

mnvo.raidWanted = gnfp
mnvo.raidOrder = mnvo.ordered(gnfp, mnvo.raidOrder)
mnvo.shown = _d("")
end,
}, _d("HlUcUT0TAglR"))

pcall(function()
btd.misc.skillMainDropdown:UpdateSelection({})
end)

pcall(function()
btd.misc.skillRaidDropdown:UpdateSelection({})
end)

btd.misc.skillParagraph = btd.misc.skillSection:Paragraph({
Header = _d("P0AUQRcU"),
Body = btd.misc.skill.text(),
})

task.spawn(function()
local xitl = btd.misc.util

while xkj() do
if xitl.indexOn or xitl.achOn or xitl.questOn or xitl.accOn or xitl.accBuyOn then
xitl.currentProfile()
end

if xitl.indexOn then
xitl.claimIndex()
end

if xitl.achOn then
xitl.claimAchievement()
end

if xitl.questOn then

if os.clock() - xitl.questAskedAt > 20 or os.clock() - xitl.weeklyAskedAt > 20 then
xitl.askQuests()
end

xitl.claimQuest()
end

if xitl.accOn and os.clock() >= xitl.accAt then
xitl.accAt = os.clock() + 3
xitl.equipBest()
end

local bst = btd.misc.cards

if not bst.inFlight then
if bst.mergeOn and os.clock() >= bst.mergeAt then
bst.run(true, nil, true)
elseif bst.deconOn and os.clock() >= bst.deconAt then
bst.run(false, nil, true)
end
end

if bst.mergeDone ~= bst.mergeShown then
bst.mergeShown = bst.mergeDone

pcall(function()
btd.misc.mergeParagraph:UpdateBody(btd.misc.cards.mergeText())
end)
end

if bst.deconDone ~= bst.deconShown then
bst.deconShown = bst.deconDone

pcall(function()
btd.misc.deconParagraph:UpdateBody(btd.misc.cards.deconText())
end)
end

local fs = btd.misc.skill

if fs.on and os.clock() >= fs.at then

fs.at = os.clock() + 2
fs.upgrade()
end

local lnr = btd.misc.skill.text()

if fs.shown ~= lnr then
fs.shown = lnr

pcall(function()
btd.misc.skillParagraph:UpdateBody(lnr)
end)
end

if xitl.accBuyOn and os.clock() >= xitl.accBuyAt then

local ug = xitl.buyBest()

xitl.accBuyAt = os.clock() + (ug and 45 or 10)
end

local rewd = {
{ key = _d("BVoRUBo"), paragraph = btd.misc.indexParagraph, value = xitl.indexText() },
{ key = _d("DVcd"), paragraph = btd.misc.achParagraph, value = xitl.achText() },
{ key = _d("HUEQRhY"), paragraph = btd.misc.questParagraph, value = xitl.questText() },
{ key = _d("HFUWXg"), paragraph = btd.misc.packParagraph, value = xitl.packText() },
{ key = _d("DVcW"), paragraph = btd.misc.accParagraph, value = xitl.accText() },
}

for zaz, ajla in ipairs(rewd) do
if ajla.paragraph and xitl.shown[ajla.key] ~= ajla.value then
xitl.shown[ajla.key] = ajla.value

pcall(function()
ajla.paragraph:UpdateBody(ajla.value)
end)
end
end

task.wait(0.75)
end
end)

local yoan = styw:Section({
Side = _d("Pl0SXRY"),
})

yoan:Paragraph({
Header = _d("Kl0GXQsJFw"),
Body = _d("LUEBWkIhGR9cVVATEhkcR1VMDRICTEYaUU5HFg1XEEZCExgJFAJUFgICTFUbUUIEER9ABhUNCVAFQAYVDRAeQBQBXQcJUB5REFkRRwcEURsVEQgdCUAdXAwAUA5dAVARSVA4ZFVBDUcyDU1VRRcLHB8UDFoXRxINVx4VFghQGFwQFQAGCUxSHEcRE1xMVRtRQhMYCRQBQg1HNAlRBVARE1A7VQFQEEcDG10BVgoCA0xcGlkGRwQEUVVGEggETE0aQEIQFR5RVUYWBh4IXRtSQggeTEMdUAxHCQNBVVQQChUIFAFdBwpQQRQBXQdHFAlRBVARE1AeXRtSQgQRHkYcUBFHBARRVVcLABcJRwEVDhITBxQXWgwSA0I+f2EKAlAfXBpFQgUFFUdVVAwDUAlFAFwSFFAeWxFGQgYeCBQXVAsTUBtdAV1CExgJFBZUERMDTE0aQEIPERpRWxUgEgkFWhIVDAIVCEdVQQoCUA9bAFsWAgJMGVVXDRMYTFcaWAdHFh5bGBUWDxVMchxGCgICAVUbG2htMw1AFl0HFFAHURBFEUcRTEYAWwwOHgsUAVQOCwlMVgwVCxMVARQUWwZHAw1CEEZCDgRAFAZaQhMYCRQBWhYGHExXFEcQDhUfFBpDBxVQDlEBQgcCHkxHEEYRDh8CR1s"),
})

local poer = styw:Section({
Side = _d("Pl0SXRY"),
})

poer:Header({
Name = _d("L1UBVgoCAw"),
})

local ucbk

ucbk = poer:Paragraph({
Header = _d("O1wUQUIeHxkUFlQXABgY"),
Body = olo(),
})

local ngs = styw:Section({
Side = _d("Pl0SXRY"),
})

ngs:Header({
Name = _d("JUcZVAwDUB9cGkU"),
})

ngs:Toggle({
Name = _d("LUEBWkIEAg1SARUQCBQ"),
Default = false,
Callback = function(wogy)
pa.island.autoRod = wogy
pa.islandAt = 0
end,
}, _d("BUcZVAwDLw1BAVo9FR8I"))

ngs:Toggle({
Name = _d("LUEBWkIEAg1SARUDBBMJRwZaEB4"),
Default = false,
Callback = function(ezv)
pa.island.autoAcc = ezv
pa.islandAt = 0
end,
}, _d("BUcZVAwDLw1BAVo9BhMPUQZGDRUJ"))

ngs:Toggle({
Name = _d("KUUAXBJHEQ9XEEYRCAIV"),
Default = false,
Callback = function(qmzg)
pa.island.equipAcc = qmzg
pa.islandAt = 0
end,
}, _d("BUcZVAwDLwlFAFwSOBEPVxBGEQgCFQ"))

local xgk

xgk = ngs:Paragraph({
Header = _d("JUcZVAwDUAtRFEc"),
Body = pa.shopIsland.text(),
})

local gy = styw:Section({
Side = _d("IFETQQ"),
})

gy:Header({
Name = _d("PlEXXBATGA"),
})

pa.rebirthToggle = gy:Toggle({
Name = _d("LUEBWkIVFQ5dB0EK"),
Default = false,
Callback = function(hhox)
pa.autoRebirth = hhox
end,
}, _d("DUEBWj0VFQ5dB0EK"))

pa.rebirthParagraph = gy:Paragraph({
Header = _d("P0AUQRcU"),
Body = pa.rebirthText(),
})

gy:Button({
Name = _d("OGRVQQ1HGR9YFFsG"),
Callback = function()
if not pa.gotoIsland() then
qza:Notify({
Title = _d("LVYUWwYIHglQVXwRCxECUA"),
Description = _d("L1wURwMEBAlGVVwRRx4DQFVHBwYUFRQMUBZHXUxAB0xCBhcNXRsVCwlQDRQYWg8CHhga"),
Lifetime = 5,
})
end
end,
})

local xcp

xcp = gy:Toggle({
Name = _d("LUEBWkIuAwBVG1FCLxEeUBZaEAI"),
Default = false,
Callback = function(gli)
yme.island = gli
yme.pending = false
yme.pendingUntil = 0
yme.paused = false
yme.gaveUp = false
yme.stoodDown = false
yme.manualPause = false

if not gli then
return
end

if rqc.otherTowerOn(_d("BFUHUQEIAgk")) then
yme.island = false

pcall(function()
xcp:UpdateState(false)
end)

pcall(function()
qza:Dialog({
Title = _d("LUEBWkIuAwBVG1FCLxEeUBZaEAJQA1IT"),
Description = _d("OFwQFSoGHABbAlAHCVAYWwJQEEcZHxQUWRACEQhNVUcXCR4FWhIZQgYeCBQCXBYPUANaEBURCx8YFAFdB0cXDVkQFQ0JHBUUB0AMFFADWhAVCwkWBVocQQdHAgNbGBUDE1ANFAFcDwJeTGAARwxHBARVARUNARZAFBpHQhMFHlpVWgxHMRlAGhUxCx8YFAZaQgIRD1xVQQ0QFR4UElAWFFAFQAYVDRAeTEcZWhZJ"),
Buttons = {
{
Name = _d("K1sBFQsT"),
},
},
})
end)

return
end

if rqc.enabled and rqc.hardcoreSlot() == nil then
yme.island = false

pcall(function()
xcp:UpdateState(false)
end)

pcall(function()
qza:Dialog({
Title = _d("LUEBWkIuAwBVG1FCLxEeUBZaEAJQA1IT"),
Description = _d("IltVRg4IBExdBhURAgRMQBoVA0cEA0MQR05HEQJQVUEKAlALVRhQQggeAE1VRhYGAhhHVVRCEx8bUQcVEBIeTFIHWg9HEUxAGkIHFVAfWBpBTEcjCUBVWgwCUBhbVXwRCxECUFVdAxUUD1sHUE5HHx4UAUAQCVAtQQFaQjQcA0BVWgQBXg"),
Buttons = {
{
Name = _d("K1sBFQsT"),
},
},
})
end)

return
end

if not yme.data then
yme.island = false

pcall(function()
xcp:UpdateState(false)
end)

pcall(function()
qza:Dialog({
Title = _d("LUEBWkIuAwBVG1FCLxEeUBZaEAJQA1IT"),
Description = _d("OFwcRkIFBQVYERUKBgNMWhoVKgYCCFcaRwczHxtRB3EDExFAFAZaQhMYCRQBWhUCAktHVUYWBhcJR1VWAwkeA0BVVwdHAglVERUDCRRMVVVHFwlQD1UbWw0TUA5RVUYWBgIYUREb"),
Buttons = {
{
Name = _d("K1sBFQsT"),
},
},
})
end)

return
end

local fdgf = yme.remotes.request

if fdgf then
pcall(function()
fdgf:FireServer()
end)
end
end,
}, _d("DUEBWj0OAwBVG1E9DxEeUBZaEAI"))

yme.islandToggle = xcp

yme.islandParagraph = gy:Paragraph({
Header = _d("LkETUxE"),
Body = yme.buffText(),
})

gy:Button({
Name = _d("PFUARgdHOR9YFFsGRzgNRhFWDRUV"),
Callback = function()
if yme.pauseRun then
yme.pauseRun()
end
end,
})

gy:Button({
Name = _d("K10DUEIyAEx9BlkDCRRMfBRHBgQfHlE"),
Callback = function()
if yme.giveUpRun then
yme.giveUpRun()
end
end,
})

local jwq = styw:Section({
Side = _d("IFETQQ"),
})

jwq:Header({
Name = _d("Kl0GXQsJF0xHHVoS"),
})

jwq:Toggle({
Name = _d("LUEBWkIFBRUUF1ARE1AeWxE"),
Default = false,
Callback = function(dwv)
pa.shop.autoBuyRod = dwv
pa.shopAt = 0
end,
}, _d("DUEBWj0FBRVrF1AREy8eWxE"))

jwq:Toggle({
Name = _d("LUEBWkIFBRUUF1ARE1AOVRxB"),
Default = false,
Callback = function(nz)
pa.shop.autoBuyBait = nz
pa.shopAt = 0
end,
}, _d("DUEBWj0FBRVrF1AREy8OVRxB"))

jwq:Toggle({
Name = _d("KUUAXBJHEglHARUQCBQ"),
Default = false,
Callback = function(hvt)
pa.shop.equipRod = hvt
pa.shopAt = 0
end,
}, _d("CUUAXBI4EglHAWoQCBQ"))

jwq:Toggle({
Name = _d("KUUAXBJHEglHARUABhkY"),
Default = false,
Callback = function(qxb)
pa.shop.equipBait = qxb
pa.shopAt = 0
end,
}, _d("CUUAXBI4EglHAWoABhkY"))

local jbz

jbz = jwq:Paragraph({
Header = _d("LlEGQUIeHxkUFlQMRxUdQRxF"),
Body = pr(),
})
task.spawn(function()
local sgwn = dr()
local czl = olo()
local jzse = pr()
local ndnb = pa.shopIsland.text()

while xkj() do
local llny = dr()

if llny ~= sgwn then
sgwn = llny
pcall(function()
gfg:UpdateBody(llny)
end)
end

local xgc = olo()

if xgc ~= czl then
czl = xgc
pcall(function()
ucbk:UpdateBody(xgc)
end)
end

local sty = pr()

if sty ~= jzse then
jzse = sty
pcall(function()
jbz:UpdateBody(sty)
end)
end

local fxb = pa.shopIsland.text()

if fxb ~= ndnb then
ndnb = fxb
pcall(function()
xgk:UpdateBody(fxb)
end)
end

task.wait(1)
end
end)

task.spawn(function()
while xkj() do

if mw() and os.clock() >= (pa.shopAt or 0)
and os.clock() >= (pa.islandTripUntil or 0) then
pa.shopAt = os.clock() + 1
pcall(vsz)
end

if pa.shopIsland.active() and os.clock() >= (pa.islandAt or 0)
and os.clock() >= math.max(pa.shopHoldUntil or 0, pa.tpHoldUntil or 0) then
pa.islandAt = os.clock() + 2
pcall(pa.shopIsland.run)
end

task.wait(1)
end
end)

njun:Select()

local onnk = njun:Section({
Side = _d("IFETQQ"),
})

local wzc = njun:Section({
Side = _d("Pl0SXRY"),
})

local js = onnk:Paragraph({
Header = _d("P0AUQRcU"),
Body = rkj(),
})

onnk:Divider()

rcj.npcToggle = onnk:Toggle({
Name = _d("LUEBWkIpIC8"),
Default = false,
Callback = function(wjf)

if wjf and not rcj.story and #zhc() == 0 then
pcall(function()
rcj.npcToggle:UpdateState(false)
end)

qza:Dialog({
Title = _d("LUEBWkIpIC8UG1AHAwNMVVVBAxUXCUA"),
Description = _d("PF0WXkIGBExYEFQRE1ADWhAVLDczTFIHWg9HBARRVUINFRwIR1VXBwsfGxhVWhBHBBlGGxUNCVAtQQFaQiQfAUQZUBYCUD9AGkcbSVA4XBBHB0cZHxQbWhYPGQJTVUENRxYFUx1BQh4VGBo"),
Buttons = {
{
Name = _d("K1sBFQsT"),
},
},
})

return
end

rcj.enabled = wjf
end,
}, _d("DUEBWj0JAA8"))

onnk:Toggle({
Name = _d("O1UZXkITH0x6JXY"),
Default = false,
Callback = function(vdu)
rcj.walkToNpc = vdu
end,
}, _d("G1UZXj0THzNaBVY"))

onnk:Dropdown({
Name = _d("KF0TUwsEBQBADA"),
Search = false,
Multi = true,
Required = false,
Default = { _d("IlsHWAML") },
Options = mho,
Callback = function(ye)
local lbhp = {}

if type(ye) == _d("GFUXWQc") then
for ldhu, vf in ipairs(mho) do
if ye[vf] then
table.insert(lbhp, lle[vf])
end
end
end

if #lbhp == 0 then
lbhp = { _d("AlsHWAML") }
end

rcj.difficulties = lbhp
end,
}, _d("CF0TUwsEBQBADA"))

onnk:Toggle({
Name = _d("LUEBWkI1HwNZBg"),
Default = false,
Callback = function(ms)
fwd.enabled = ms
fwd.inBattle = false
fwd.pending = false
end,
}, _d("DUEBWj0VHwNZBg"))

local pnz = njun:Section({
Side = _d("IFETQQ"),
})

pnz:Header({
Name = _d("P1gaQQ"),
})

pnz:Paragraph({
Header = _d("JFsCFRYPFUxHGVoWFFAbWwde"),
Body = _d("P1gaQUJWUEEUPFsEDh4FQAwVNggHCUZVHQwIAgFVGRUNFVAiXRJdFgoRHlFcFQ0VUCRVGVkNEBUJWlVhDRAVHhhVRQ4SA0x6JXZCBREYQBlQEUcHBFEbFRELHxgURxULFFAOQQZMTG16P1gaQUJVUEEUO2UhFFxMRhRcBhRcTEYaWg8UXEx9BlkDCRRMfBRHBgQfHlFbP2glHxhcVUYOCAQfFBpbQikgLxQXVBYTHAlHTxUWEB9MeiV2QgEVDUAARwcUUA1AVVoMBBVAFBRbBkcRTEYUXAZHEgNHBhUHBhMEGn8/NhAfTEAaQgcVUB5BG0ZCDgNMQB1QQggeAE1VRwcBBR9RERUSBhkeFFgVKxQcDVoRFSoGAghXGkcHRx8CFBdaFg9QH1gaQRFHGR8UGlsHRwIZWlVUEQwVCBQTWhBHBBtdFlBMbXo/WBpBEUcfClJPFQ0JFUxHGVoWS1AYWwJQEBRQGFUeUEITBR5aBhs"),
})

rqc.toggle = pnz:Toggle({
Name = _d("LUEBWkI0HANA"),
Default = false,
Callback = function(po)
if po and rqc.role[1] == rqc.role[2] and rqc.role[1] ~= _d("AkQW") then
rqc.enabled = false

pcall(function()
rqc.toggle:UpdateState(false)
end)

qza:Dialog({
Title = _d("LUEBWkI0HANA"),
Description = _d("P1gaQUJWUA1aERUxCx8YFEcVAxUVTFYaQQpH") .. rqc.roleLabel(1) .. _d("QhQhXQMTUAVHVVoMAlAeQRsVAxQbCVBVUw0VUBhDHFYHS1AfW1VaDAJQA1JVQQoCUBhDGhURCx8YR1VdAxRQGFtVVwdHAwNZEEEKDh4LFBBZEQJe"),
Buttons = {
{
Name = _d("K1sBFQsT"),
},
},
})

return
end

rqc.enabled = po

if po then
rqc.hasSlot2 = rqc.detectSlot2()

if rqc.hasSlot2 == false then
qza:Dialog({
Title = _d("LUEBWkI0HANA"),
Description = _d("P1gaQUJVUABbGl4RRxwDVx5QBkddTF0BFQwCFQhHVUEKAlAoQRRZQiURGEAZUEI0HANAVVIDChUcVQZGTkcfHhQ8WwQOHgVAEBUwCB8BFEcAUkcTAFEURwcDXExWEFMNFRVMQB1QQhQVD1sbUUIUHANAVVYDCVAOVQFBDgJeTGYaQBYOHgsUBkEDHgNMWxsVEQsfGBREFRcJBAVYVUEKAh5C"),
Buttons = {
{
Name = _d("K1sBFQsT"),
},
},
})
end
end
end,
}, _d("DUEBWj0UHANA"))

function rqc.applyRoles()
if not rqc.enabled then
return
end

if rqc.role[1] == rqc.role[2] and rqc.role[1] ~= _d("AkQW") then
rqc.enabled = false

pcall(function()
rqc.toggle:UpdateState(false)
end)

pcall(function()
qza:Dialog({
Title = _d("LUEBWkI0HANAVVoEAQ"),
Description = _d("P1gaQUJWUA1aERUxCx8YFEcVAxUVTFYaQQpH") .. rqc.roleLabel(1) .. _d("QhQhXQMTUAVHVVoMAlAeQRsVAxQbCVBVUw0VUBhDHFYHS1ANWhEVCxNQD1UbWw0TUBhVHlBCEwcDFAZZDRMDQhQmUBZHHwJRVUYOCARMQBoVEQgdCUAdXAwAUAlYBlBM"),
Buttons = {
{
Name = _d("K1sBFQsT"),
},
},
})
end)

return
end

local cp = {}

if rqc.towerSlot() ~= 1 and oi.enabled then
oi.enabled = false
table.insert(cp, _d("LUEBWkIzHxtRBw"))

pcall(function()
oi.ui:UpdateState(false)
end)
end

if rqc.hardcoreSlot() == nil and yme.island then
yme.island = false
table.insert(cp, _d("LUEBWkIuAwBVG1FCLxEeUBZaEAI"))

pcall(function()
yme.islandToggle:UpdateState(false)
end)
end

if rqc.halloweenSlot() == nil and pwc.run.enabled then
pwc.run.enabled = false
table.insert(cp, _d("LUEBWkIvEQBYGkIHAh5MYBpCBxU"))

pcall(function()
pwc.toggle:UpdateState(false)
end)
end

if #cp > 0 then
pcall(function()
qza:Dialog({
Title = table.concat(cp, _d("TFUbUUI")) .. _d("TFsTUw"),
Description = _d("IltVRg4IBExdBhURAgRMQBoVFg8RGBQBWhUCAkxVG0xCCh8eUVkVEQhQBUBVXQMDUAJbAl0HFRVMQBoVEBIeQhQyXBQCUAVAVVRCFBwDQFVUBQYZAhhVWhBHBBlGGxUjEgQDFCZZDRNQA1ITGw"),
Buttons = {
{
Name = _d("K1sBFQsT"),
},
},
})
end)
end
end

rqc.oneDropdown = pnz:Dropdown({
Name = _d("P1gaQUJW"),
Search = false,
Multi = false,
Required = false,

Default = 1,
Options = rqc.optionsFor[1],
Callback = function(gisx)
local mhz = type(gisx) == _d("GFUXWQc") and gisx[1] or gisx

if type(mhz) == _d("H0AHXAwA") and rqc.roleIds[mhz] then
rqc.role[1] = rqc.roleIds[mhz]
rqc.picked[1] = mhz
end

pcall(function()
rqc.oneDropdown:UpdateName(_d("P1gaQUJWUI601xU") .. rqc.roleLabel(1))
end)

if rqc.applyRoles then
rqc.applyRoles()
end
end,
}, _d("H1gaQT1WL14"))

rqc.twoDropdown = pnz:Dropdown({
Name = _d("P1gaQUJV"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = rqc.optionsFor[2],
Callback = function(ixat)
local uiq = type(ixat) == _d("GFUXWQc") and ixat[1] or ixat

if type(uiq) == _d("H0AHXAwA") and rqc.roleIds[uiq] then
rqc.role[2] = rqc.roleIds[uiq]
rqc.picked[2] = uiq
end

pcall(function()
rqc.twoDropdown:UpdateName(_d("P1gaQUJVUI601xU") .. rqc.roleLabel(2))
end)

if rqc.applyRoles then
rqc.applyRoles()
end
end,
}, _d("H1gaQT1VL14"))

pcall(function()
rqc.oneDropdown:UpdateSelection(_d("OFsCUBA"))
end)

pcall(function()
rqc.twoDropdown:UpdateSelection(_d("ImQ2FQAGBBhYEEY"))
end)

getgenv().ACBXSlot = rqc

local flcq = njun:Section({
Side = _d("IFETQQ"),
})

flcq:Header({
Name = _d("PlUcUUIFHx9H"),
})

flcq:Toggle({
Name = _d("LUEBWkI1EQVQVXcNFAM"),
Default = false,
Callback = function(vdp)
btd.enabled = vdp
btd.pending = {}
btd.pendingUntil = {}

if vdp then
btd.cleared = {}
end
end,
}, _d("DUEBWj0VEQVQKlcNFAM"))

flcq:Toggle({
Name = _d("LUEBWkIwEQBfVUENRyINXREVIAgDHw"),
Default = false,
Callback = function(wloj)
btd.walkToBoss = wloj
end,
}, _d("DUEBWj0QEQBfKkENOAINXRFqAAgDHw"))

local lsh
lsh = flcq:Slider({
Name = _d("O1UZXkI0AAlREQ"),
Minimum = 0,
Maximum = 72,
Default = 18,
Precision = 0,
Callback = function(yvh)
local nnft = math.floor(yvh + 0.5)
btd.walkSpeed = nnft

if lsh and nnft ~= yvh then
lsh:UpdateValue(nnft)
end
end,
}, _d("G1UZXj0UAAlREQ"))

flcq:Dropdown({
Name = _d("PlUcUUIjGQpSHFYXCwQV"),
Search = false,
Multi = true,
Required = false,
Default = { _d("IlsHWAML") },
Options = ccg,
Callback = function(rexj)
local hzk = {}

if type(rexj) == _d("GFUXWQc") then
for iv, mka in ipairs(ccg) do
if rexj[mka] then
table.insert(hzk, vmn[mka])
end
end
end

if #hzk == 0 then
hzk = { _d("AlsHWAML") }
end

btd.difficulties = hzk
end,
}, _d("HlUcUT0DGQpSHFYXCwQV"))

function btd.pickedIds(lxuu)
local wqn = {}

if type(lxuu) == _d("GFUXWQc") then
for pnnb, sts in ipairs(dcus) do
if lxuu[sts] and wzcl[sts] then
table.insert(wqn, wzcl[sts])
end
end
elseif type(lxuu) == _d("H0AHXAwA") and wzcl[lxuu] then
wqn = { wzcl[lxuu] }
end

return wqn
end

flcq:Dropdown({
Name = _d("PlUcUUIlHx9H"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = dcus,
Callback = function(aw)
btd.picks[1] = btd.pickedIds(aw)
btd.cursor[1] = 1
btd.losses[1] = {}
end,
}, _d("HlUcUT0FHx9H"))

btd.boss2Dropdown = flcq:Dropdown({
Name = _d("PlUcUUIlHx9HVR0xCx8YFEcc"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = dcus,
Callback = function(ohco)
btd.picks[2] = btd.pickedIds(ohco)
btd.cursor[2] = 1
btd.losses[2] = {}
end,
}, _d("HlUcUT0FHx9HKkYOCAQzBg"))

pcall(function()
btd.boss2Dropdown:SetVisibility(false)
end)

task.spawn(function()
local nm = nil

while xkj() do
local dahj = rqc.splitNpc()

if dahj ~= nm then
nm = dahj

local dmu = btd.boss2Dropdown

if dmu then
pcall(function()
dmu:SetVisibility(dahj)
end)
end
end

task.wait(0.5)
end
end)

wzc:Paragraph({
Header = _d("LUEBWkIhGQtcAQ"),
Body = _d("P1EZUAETUANaEBUNFVABWwdQQikgL0dVUxAIHUxAHVBCEB8eWBFGQgUVAFsCGw"),
})

for pgdj, pff in ipairs(hdp) do
wzc:Dropdown({
Name = pff.name,
Search = true,
Multi = true,
Required = false,
Default = {},
Options = pff.options,
Callback = function(dqf)
local bte = {}

if type(dqf) == _d("GFUXWQc") then
if dqf.All then
for kjqc, wyw in ipairs(pff.ids) do
table.insert(bte, wyw)
end
else
for bmjz, scyl in ipairs(pff.options) do
if dqf[scyl] and pff.byName[scyl] then
table.insert(bte, pff.byName[scyl])
end
end
end
elseif type(dqf) == _d("H0AHXAwA") then
if dqf == _d("LVgZ") then
for zw, cag in ipairs(pff.ids) do
table.insert(bte, cag)
end
else
bte = { pff.byName[dqf] }
end
end

rcj.selectedByWorld[pff.name] = bte
end,
}, _d("AkQWag") .. pff.id)
end

wzc:Toggle({
Name = _d("LUEBWkIkHwFEGVAWAlA/QBpHGw"),
Default = false,
Callback = function(tiud)
rcj.story = tiud
rcj.battlePending = false
rcj.battlePendingUntil = 0
end,
}, _d("DUEBWj0EHwFEGVAWAi8fQBpHGw"))

rcj.storyDropdown = wzc:Dropdown({
Name = _d("KF0TUwsEBQBAHFAR"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = mho,
Callback = function(thx)
local nljz = type(thx) == _d("GFUXWQc") and thx[1] or thx

if type(nljz) == _d("H0AHXAwA") and lle[nljz] then
rcj.storyDifficulty = lle[nljz]
end
end,
}, _d("CF0TUwsEBQBAHFAR"))

pcall(function()
rcj.storyDropdown:UpdateSelection(mho[1])
end)

pcall(function()
rcj.storyDropdown:UpdateName(_d("KF0TUwsEBQBAHFARR5LsllU") .. mho[1])
end)

wzc:Paragraph({
Header = _d("JFsCFSMSBAMUNloPFxwJQBAVMRMfHk1VQg0VGx8"),
Body = _d("Kl0SXRYUUAlCEEcbRwMYWwdMQikgLxRYFSwGHQlfVUEKFR8ZUx0VKxQVB1UcFU9HHwIUAV0HRx8CUVVRCwEWBVcAWRYeUA1WGkMHS1AbWwdeCwkXTEAdUEIGAglVBhULCVADRhFQEEcRAlBVVg0KGQJTVVcDBBtMRhpADANQDUdVVg0IHAhbAlsRRxMAURRHTG16JUBVRwcXHA1XEEZCExgJFBRHBwZQCEYaRQYIBwJHVUIKDhwJFBxBQg4DTFsbGUIGHggUGVADERUfFAdUCwNQDlsGRgcUUA1YGlsHSQ"),
})

local rdow = shjs:Section({
Side = _d("IFETQQ"),
})

rdow:Header({
Name = _d("OFsCUBA"),
})

local nzy
local gcx

local gbg = {
remotes = {},
watcher = false,
hidMenu = false,

hardWatch = {},
}

pcall(function()
local yqdn = getgenv().ACBXHardWatch

if type(yqdn) == _d("GFUXWQc") then
for stz, bfq in pairs(yqdn) do
pcall(function()
if bfq.Connected then
bfq:Disconnect()
end
end)
end
end

getgenv().ACBXHardWatch = gbg.hardWatch
end)

function gbg.hardPick(qln)
qln = qln == true

for vwgc, hvya in ipairs({ _d("LlUBQQ4CNxld"), _d("LlUBQQ4CNxldRw") }) do
local pbw = rd:FindFirstChild(hvya)

if pbw then
if pbw:GetAttribute(_d("OFsCUBAvER5QJVwBDA")) ~= qln then
pcall(function()
pbw:SetAttribute(_d("OFsCUBAvER5QJVwBDA"), qln)
end)
end

if pbw:GetAttribute(_d("OFsCUBAvER5QJ0AM")) ~= nil and pbw:GetAttribute(_d("OFsCUBAvER5QJ0AM")) ~= qln then
pcall(function()
pbw:SetAttribute(_d("OFsCUBAvER5QJ0AM"), qln)
end)
end
end
end
end

function gbg.pinMode()
if not (oi.enabled or oi.nightmare) then
return
end

local lise = oi.nightmare == true

for yeh, ypi in ipairs({ _d("LlUBQQ4CNxld"), _d("LlUBQQ4CNxldRw") }) do
local chhg = rd:FindFirstChild(ypi)

if chhg then
if chhg:GetAttribute(_d("OFsCUBAvER5QJVwBDA")) ~= lise then
pcall(function()
chhg:SetAttribute(_d("OFsCUBAvER5QJVwBDA"), lise)
end)
end

local mwtf = gbg.hardWatch[chhg]

if mwtf and mwtf.Connected == false then
gbg.hardWatch[chhg] = nil
mwtf = nil
end

if mwtf == nil then
local hjy, hexd = pcall(function()
return jxjd(chhg:GetAttributeChangedSignal(_d("OFsCUBAvER5QJVwBDA")), function()
if not (oi.enabled or oi.nightmare) then
return
end

local zsb = oi.nightmare == true

if chhg.Parent and chhg:GetAttribute(_d("OFsCUBAvER5QJVwBDA")) ~= zsb then
pcall(function()
chhg:SetAttribute(_d("OFsCUBAvER5QJVwBDA"), zsb)
end)
end
end)
end)

if hjy then
gbg.hardWatch[chhg] = hexd
end
end
end
end
end

function gbg.pauseRows()
local nyr = fh:FindFirstChild(_d("PFgUTAcVNxld")) and fh.PlayerGui:FindFirstChild(_d("P1EBQQsJFx9zAFw"))

if not nyr then
return nil, nil
end

return nyr:FindFirstChild(_d("PFUARgcuHgpdG1wWAjkCRABB"), true), nyr:FindFirstChild(_d("PFUARgcuHgpdG1wWAjMEURZe"), true)
end

function gbg.pauseState()
local ygi = fh:FindFirstChild(_d("PFgUTAcVNxld")) and fh.PlayerGui:FindFirstChild(_d("P1EBQQsJFx9zAFw"))
local vhz = ygi and ygi:FindFirstChild(_d("K1EBZgcTBAVaEkY"), true)

if not vhz then
return nil
end

local mks, avx = pcall(function()
return vhz:Invoke()
end)

if mks and type(avx) == _d("GFUXWQc") then
return avx.pauseInfiniteEnabled == true
end

return nil
end

function gbg.pauseAt(ymjf, ktrh)
ktrh = math.max(1, math.floor(tonumber(ktrh) or 1))

local amtl, zuth = gbg.pauseRows()

if not (amtl and zuth) then
return false
end

local ytf = pcall(function()
if tonumber(amtl.Text) ~= ktrh then
amtl.Text = tostring(ktrh)

if getconnections then
for dgr, rvga in ipairs(getconnections(amtl.FocusLost)) do
pcall(function()
rvga:Fire(true, Enum.UserInputType.Focus)
end)
end
end
end
end)

if ymjf ~= nil then
local gmz = gbg.pauseState()

if gmz ~= nil and gmz ~= ymjf and getconnections then
pcall(function()
for sx, nfm in ipairs(getconnections(zuth.MouseButton1Click)) do
pcall(function()
nfm:Fire()
end)
end
end)
end
end

return ytf
end

function gbg.restorePause()
slpc.triggered = false

if slpc.enabled and slpc.floor > 0 then
gbg.pauseAt(true, slpc.floor)

pcall(function()
bo.SaveClientData:FireServer({
pauseInfiniteEnabled = true,
pauseInfiniteAt = slpc.floor,
})
end)

return
end

pcall(function()
bo.SaveClientData:FireServer({
pauseInfiniteEnabled = false,
pauseInfiniteAt = 1,
})
end)

gbg.pauseAt(false, 1)
end

function gbg.remote(yl)
local dhe = gbg.remotes[yl]

if dhe and dhe.Parent then
return dhe
end

local jub = kq:FindFirstChild(_d("PlEYWhYCAw"))
local byz = jub and jub:FindFirstChild(yl)

if byz then
gbg.remotes[yl] = byz
end

return byz
end

function gbg.historyOpen()
for wkvf, wqo in ipairs({ _d("LlUBQQ4CNxld"), _d("LlUBQQ4CNxldRw") }) do
local nafd = rd:FindFirstChild(wqo)
local zmdr = nafd and nafd:FindFirstChild(_d("OFsCUBAvGR9AGkcbIQINWRA"))

if zmdr and zmdr.Visible then
return true
end
end

return false
end

function gbg.generationOpen()
local wlz = rd:FindFirstChild(_d("OFsCUBA1FR9BGUElEhk"))
local tpkk = wlz and wlz:FindFirstChild(_d("PlEGQA4TNh5VGFA"))

return tpkk ~= nil and tpkk.Visible
end

function gbg.standDown(nig)
if not gbg.hidMenu then
local bt = true

pcall(function()
bt = qza:GetState() ~= false
end)

if bt then
gbg.hidMenu = true

pcall(function()
qza:SetState(false)
end)
end
end

if gbg.watcher then
return
end

gbg.watcher = true

task.spawn(function()

local uvl = os.clock() + 6

while xkj() and os.clock() < uvl and not nig() do
task.wait(0.2)
end

while xkj() and nig() do
task.wait(0.4)
end

gbg.watcher = false

if gbg.hidMenu then
gbg.hidMenu = false

pcall(function()
qza:SetState(true)
end)
end
end)
end

oi.floorAt = 0
oi.battleAt = 0
oi.floor = nil
oi.manualPause = false

task.spawn(function()
local bdkl = ipt(_d("LlUBQQ4CJRxQFEEH"))
local lyok = ipt(_d("P00bVjYIBwlGM1kNCAI"))
local dpi = ipt(_d("LlUBQQ4CNQJQ"))
local ymx = ipt(_d("OFsCUBA1BQJxG1EHAw"))

if bdkl then
jxjd(bdkl.OnClientEvent, function()
oi.battleAt = os.clock()
end)
end

if lyok then
jxjd(lyok.OnClientEvent, function(tcz)
oi.floorAt = os.clock()

if type(tcz) == _d("AkEYVwcV") and tcz > 1 then
oi.floor = tcz
else
oi.floor = nil
end
end)
end

if dpi then
jxjd(dpi.OnClientEvent, function(apov)
if type(apov) == _d("GFUXWQc") and apov.mode == _d("GFsCUBA") then
oi.floorAt = os.clock()
end
end)
end

if ymx then
jxjd(ymx.OnClientEvent, function()

oi.lastRunEnded = {
clock = os.clock(),
floor = oi.floor,
}

task.delay(1, function()
local tngb = rd:FindFirstChild(_d("OFsCUBA1FR9BGUElEhk"))
local xj = tngb and tngb:FindFirstChild(_d("PlEGQA4TNh5VGFA"))
local lkjw = {}

if xj then
for ehko, upvl in ipairs(xj:GetDescendants()) do
if upvl:IsA(_d("OFENQS4GEglY")) and upvl.Visible and upvl.Text ~= _d("") and #lkjw < 12 then
lkjw[#lkjw + 1] = upvl.Text
end
end
end

if oi.lastRunEnded then
oi.lastRunEnded.texts = table.concat(lkjw, _d("TEhV"))
end
end)

oi.floorAt = 0
oi.battleAt = 0
oi.floor = nil

if oi.manualPause then
gbg.restorePause()
end
end)
end

end)

local function sok()
local fxj = os.clock()

if fxj - (oi.floorAt or 0) < 90 and fxj - (oi.battleAt or 0) < 12 then
return true
end

for zqyk, lps in ipairs({ _d("LlUBQQ4CNxld"), _d("LlUBQQ4CNxldRw") }) do
local ukde = rd:FindFirstChild(lps)

if ukde then

local kyhl = ukde:FindFirstChild(_d("OFsCUBAhHANbB3kDBRUA"))

if kyhl and kyhl.Visible then
return true
end

local qf = ukde:FindFirstChild(_d("KlgaWhA0Ex5REFs"))

if qf and qf.Visible then
return true
end

local vrj = ukde:FindFirstChild(_d("LlUBQQ4CIw9GEFAM"))

if vrj and vrj.Visible then
local kgu = vrj:FindFirstChild(_d("PUEcVgkgGRpRIEUgEgQYWxs"))

if kgu and kgu.Visible then
return true
end
end
end
end

return false
end

function gbg.hardNow()

local aer = rd:FindFirstChild(_d("LlUBQQ4CNxld"))
local xrz = aer and aer:GetAttribute(_d("OFsCUBAvER5QJVwBDA"))

if xrz ~= nil then
return xrz == true
end

local eff = btd.misc.util.profile

return type(eff) == _d("GFUXWQc") and eff.lastTowerHard == true
end

function gbg.endIfWrongMode(pe)
if not sok() or gbg.hardNow() == (pe == true) then
return false
end

pcall(function()
if type(gcx) == _d("CkEbVhYOHwI") then
gcx()
else
bo.EndTowerRemote:FireServer(1)
end
end)

oi.floor = nil

return true
end

function gbg.hardPickNow()
for ddwk, kho in ipairs({ _d("LlUBQQ4CNxld"), _d("LlUBQQ4CNxldRw") }) do
local pemu = rd:FindFirstChild(kho)
local lslg = pemu and pemu:GetAttribute(_d("OFsCUBAvER5QJVwBDA"))

if lslg ~= nil then
return lslg == true
end
end

return nil
end

function gbg.parked()
for mee, giya in ipairs({ _d("LlUBQQ4CNxld"), _d("LlUBQQ4CNxldRw") }) do
local lcgf = rd:FindFirstChild(giya)

if lcgf then
local khta = lcgf:FindFirstChild(_d("OFsCUBAhHANbB3kDBRUA"))
local gj = lcgf:FindFirstChild(_d("KlgaWhA0Ex5REFs"))
local rzod = lcgf:FindFirstChild(_d("LlUBQQ4CIw9GEFAM"))

if khta and khta.Visible
and not (gj and gj.Visible)
and not (rzod and rzod.Visible) then
return true
end
end
end

return false
end

oi.ui = rdow:Toggle({
Name = _d("LUEBWkIzHxtRBw"),
Default = false,
Callback = function(mmn)

if oi.quiet then
return
end

oi.enabled = mmn
oi.pending = false
oi.pendingUntil = 0

if mmn then

if rqc.enabled and rqc.role[1] ~= _d("GFsCUBA") then
oi.enabled = false

pcall(function()
oi.ui:UpdateState(false)
end)

pcall(function()
qza:Dialog({
Title = _d("LUEBWkIzHxtRBxUNARY"),
Description = _d("P1gaQUJWUAVHVUYHE1AYW1U") .. rqc.roleName(1) .. _d("QhQhXQdHOQJSHFsLEwlMdxRGFgsVTFsbWRtHAxhVB0ERRx8CFAZZDRNQXRhVRg1HAwlAVWYOCARMBVVBDUckA0MQR0IBGR5HARs"),
Buttons = {
{
Name = _d("K1sBFQsT"),
},
},
})
end)

return
end

if rqc.otherTowerOn(_d("GFsCUBA")) then
oi.enabled = false

pcall(function()
oi.ui:UpdateState(false)
end)

pcall(function()
qza:Dialog({
Title = _d("LUEBWkIzHxtRBxUNARY"),
Description = _d("LVoaQQoCAkxAGkIHFVANQQFaDwYEBVsbFQsUUA1YB1ADAwlMWxsZQgYeCBQBXQsUUA1XFloXCQRMWxtZG0cRAFgaQhFHHwJRVUENEBUeFAdADEcRGBQUFRYOHQkaVWEXFR5MQB1UFkcfAlFVWgQBUApdB0YWS1ADRlVBFxUeTFsbFSMSBAMUJlkNE1AfW1VQAwQYTEcZWhZHFwlABhULEwNMWwJbQhMfG1EHGw"),
Buttons = {
{
Name = _d("K1sBFQsT"),
},
},
})
end)

return
end

oi.nightmare = false

pcall(function()
oi.quiet = true
oi.nightmareToggle:UpdateState(false)
oi.quiet = false
end)

oi.manualPause = false
oi.paused = false
gbg.restorePause()
oi.pauseArmed = false

gbg.endIfWrongMode(false)
gbg.hardPick(false)

return
end

if not sok() then
return
end

oi.paused = true
local xntp = nzy()

qza:Notify({
Title = _d("LUEBWkIzHxtRBxUNARY"),
Description = xntp and _d("OFsCUBBHAhlaVUUDEgMJUFs") or _d("PkEbFQsUUABdA1BORxIZQFVbDUcSHlEUXkIFBRhAGltCAR8ZWhEb"),
Lifetime = 5,
})
end,
}, _d("DUEBWj0THxtRBw"))

oi.nightmareToggle = rdow:Toggle({
Name = _d("LUEBWkIpGQtcAVgDFRVMYBpCBxU"),
Default = false,
Callback = function(xix)
if oi.quiet then
return
end

oi.nightmare = xix

if not xix then

oi.enabled = false
oi.pending = false
oi.pendingUntil = 0

gbg.hardPick(false)

pcall(function()
oi.quiet = true
oi.ui:UpdateState(false)
oi.quiet = false
end)

if sok() then
oi.paused = true
local jmhz = nzy()

qza:Notify({
Title = _d("LUEBWkIpGQtcAVgDFRVMYBpCBxVQA1IT"),
Description = jmhz and _d("Il0SXRYKER5RVUcXCVAcVQBGBwNe") or _d("PkEbFQsUUABdA1BORxIZQFVbDUcSHlEUXkIFBRhAGltCAR8ZWhEb"),
Lifetime = 5,
})
end

return
end

if rqc.enabled and rqc.role[1] ~= _d("GFsCUBA") then
oi.nightmare = false

pcall(function()
oi.quiet = true
oi.nightmareToggle:UpdateState(false)
oi.quiet = false
end)

pcall(function()
qza:Dialog({
Title = _d("LUEBWkIpGQtcAVgDFRVMYBpCBxVQA1IT"),
Description = _d("Il0SXRYKER5RVWENEBUeFBZaFwkEHxQURkIzHxtRBxULCVAfWBpBQlZcTFUbUUIeHxlGVUYOCARMBVVcEUcfAhQ") .. rqc.roleName(1) .. _d("TEYcUgoTUAJbAhtCNBUYFAZZDRNQXRQBWkIzHxtRBxUEDgIfQFs"),
Buttons = {
{
Name = _d("K1sBFQsT"),
},
},
})
end)

return
end

pcall(function()
oi.quiet = true
oi.ui:UpdateState(false)
oi.quiet = false
end)

oi.enabled = true
oi.manualPause = false
oi.paused = false

gbg.restorePause()
oi.pauseArmed = false

gbg.endIfWrongMode(true)
gbg.hardPick(true)

oi.pending = false
oi.pendingUntil = 0
end,
}, _d("DUEBWj0JGQtcAVgDFRUzQBpCBxU"))

rdow:Header({
Name = _d("LUEBWkI3ERlHEBU2CAcJRg"),
})

local pk

pk = rdow:Toggle({
Name = _d("LUEBWkI3ERlHEBUkCx8DRg"),
Default = false,
Callback = function(ygwb)
slpc.triggered = false

if ygwb and slpc.floor <= 0 then
slpc.enabled = false

pcall(function()
pk:UpdateState(false)
end)

pcall(function()
bo.SaveClientData:FireServer({ pauseInfiniteEnabled = false })
end)

qza:Dialog({
Title = _d("LUEBWkI3ERlHEBUkCx8DRg"),
Description = _d("P1EBFQNHAA1BBlBCARwDWwcVAwUfGlFVBUIBGR5HARVPRzEZQBoVMgYFH1FVYQ0QFR4UG1AHAwNMQBoVCQkfGxQCXQcVFUxAGhUREx8cGg"),
Buttons = {
{
Name = _d("K1sBFQsT"),
},
},
})

return
end

slpc.enabled = ygwb

pcall(function()
bo.SaveClientData:FireServer({
pauseInfiniteEnabled = ygwb,
pauseInfiniteAt = slpc.floor,
})
end)
end,
}, _d("DUEBWj0XERlHEGoECx8DRg"))

rdow:Input({
Name = _d("PFUARgdHERgUE1kNCAI"),
Placeholder = _d("CRoSG0JSQA"),
AcceptedCharacters = _d("IkEYVwcVAw"),
Callback = function(czpw)
local omo = tonumber(czpw) or 0

if omo < 0 then
omo = 0
end

if omo == slpc.floor then
return
end

slpc.floor = omo
slpc.triggered = false

if omo <= 0 and slpc.enabled then
slpc.enabled = false

pcall(function()
pk:UpdateState(false)
end)
end

pcall(function()
bo.SaveClientData:FireServer({
pauseInfiniteAt = omo,
pauseInfiniteEnabled = slpc.enabled,
})
end)
end,
}, _d("HFUARgc4ERhrE1kNCAI"))

rdow:Button({
Name = _d("PFUARgdHJANDEEc"),
Callback = function()
local dne = false

pcall(function()
dne = nzy()
end)

if dne then

oi.manualPause = true
return
end

qza:Dialog({
Title = _d("PFUARgdHJANDEEc"),
Description = _d("IltVWQsRFUxAGkIHFVAeQRsVFghQHFUARgdHAgVTHUFCCR8bGg"),
Buttons = {
{
Name = _d("K1sBFQsT"),
},
},
})
end,
})

rdow:Header({
Name = _d("LUEBWkIgGRpRVWAS"),
})

cm.toggle = rdow:Toggle({
Name = _d("LUEBWkIgGRpRVWAS"),
Default = false,
Callback = function(zjdv)
cm.triggered = false

if zjdv and cm.floor <= 0 then
cm.enabled = false

pcall(function()
cm.toggle:UpdateState(false)
end)

qza:Dialog({
Title = _d("LUEBWkIgGRpRVWAS"),
Description = _d("P1EBFQNHFwVCEBUXF1AKWBpaEEcRDlsDUEJXUApdB0YWR11MdQBBDUc3BUIQFTcXUAJREFERRwQDFB5bDRBQG1wQRwdHBAMUBkENF14"),
Buttons = {
{
Name = _d("K1sBFQsT"),
},
},
})

return
end

cm.enabled = zjdv
end,
}, _d("DUEBWj0AGRpRKkAS"))

rdow:Input({
Name = _d("K10DUEISAExbGxUECx8DRg"),
Placeholder = _d("CRoSG0JQQA"),
AcceptedCharacters = _d("IkEYVwcVAw"),
Callback = function(ly)
local bikr = tonumber(ly) or 0

if bikr < 0 then
bikr = 0
end

if bikr == cm.floor then
return
end

cm.floor = bikr
cm.triggered = false

if bikr <= 0 and cm.enabled then
cm.enabled = false

pcall(function()
cm.toggle:UpdateState(false)
end)
end
end,
}, _d("C10DUD0SADNbG2oECx8DRg"))

cm.weatherToggle = rdow:Toggle({
Name = _d("LUEBWkIAGRpRVUASRx8CFAJQAxMYCUY"),
Default = false,
Callback = function(zxuo)
cm.weatherTriggered = false

if zxuo and next(cm.weathers) == nil then
cm.weatherEnabled = false

pcall(function()
cm.weatherToggle:UpdateState(false)
end)

qza:Dialog({
Title = _d("O1EUQQoCAkxzHEMHRyUc"),
Description = _d("OF0WXkIGBExYEFQRE1ADWhAVFQIRGFwQR0IFFQBbAhUEDgIfQFUYQggEBFEHQgsUFUxAHVAQAlAFR1VbDRMYBVoSFRYIUAtdA1BCEgBMWxsb"),
Buttons = {
{
Name = _d("K1sBFQsT"),
},
},
})

return
end

cm.weatherEnabled = zxuo
end,
}, _d("DUEBWj0AGRpRKkASOB8CawJQAxMYCUY"))

rdow:Dropdown({
Name = _d("K10DUEISAExDEFQWDxUeRw"),
Multi = true,
Required = false,
Options = { _d("OE0FXQ0IHg"), _d("LlgcTxgGAgg"), _d("IF0SXRYJGQJT"), _d("O10bURETHx5Z"), _d("P1wURwsJFw1a"), _d("P10bUhcLER5dAUw"), _d("IVsbVBAEGExwGlgDDh4"), _d("OlscUQ"), _d("IVURUEIOHkx8EFQUAh4"), _d("IVUbUgM") },
Callback = function(aeb)
cm.weathers = {}

if type(aeb) == _d("GFUXWQc") then
for fgjw, aoq in pairs(aeb) do
if aoq then
cm.weathers[fgjw] = true
end
end
end

cm.weatherTriggered = false
end,
}, _d("C10DUD0SADNDEFQWDxUeRw"))

rdow:Input({
Name = _d("IV0bXA8SHUxSGVoNFQM"),
Placeholder = _d("XBRIFQMJCUxSGVoNFQ"),
AcceptedCharacters = _d("IkEYUBAOEw"),
Callback = function(jhfh)
local brum = math.floor(tonumber(jhfh) or 0)

if brum < 0 then
brum = 0
end

cm.weatherMinFloor = brum
cm.weatherTriggered = false
end,
}, _d("AV0bXA8SHTNSGVoNFQM"))

cm.weatherLateToggle = rdow:Toggle({
Name = _d("K10DUEISAExDHEEKR0JcR1VZBwEE"),
Default = false,
Callback = function(oz)
cm.weatherLate = oz
cm.weatherTriggered = false

if oz and not cm.weatherEnabled then
pcall(function()
cm.weatherToggle:UpdateState(true)
end)
end
end,
}, _d("C10DUD0SADNYFEEH"))

rdow:Button({
Name = _d("K10DUEIyAExgGkIHFQ"),
Callback = function()
if not sok() then
qza:Dialog({
Title = _d("K10DUEIyAExgGkIHFQ"),
Description = _d("IltVWQsRFUxAGkIHFVAeQRsVFghQC10DUEISAExGHFIKE1ACWwIb"),
Buttons = {
{
Name = _d("K1sBFQsT"),
},
},
})

return
end

qza:Dialog({
Title = _d("K10DUEIyAExgGkIHFQ"),
Description = _d("KlsHUwcOBExAHVBCBAUeRhBbFkcEA0MQR0IVBQILVWEKDgNMVxRbDAgETFYQFRcJFANaEBs"),
Buttons = {
{
Name = _d("K1tVVwMEGw"),
},
{
Name = _d("K10DUEISAA"),
Callback = function()
local xmf = false

pcall(function()
xmf = gcx()
end)

if xmf then
return
end

task.defer(function()
task.wait(0.3)

qza:Dialog({
Title = _d("K10DUEIyAExgGkIHFQ"),
Description = _d("IltVUgsRFUxBBRUAEgQYWxsVAwkDG1EHUAZHXUxAHVBCFQUCFBhUG0cRAEYQVAYeUA5RVVoUAgJC"),
Buttons = {
{
Name = _d("K1sBFQsT"),
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

rdow:Button({
Name = _d("L1wQVglHHANHBhUKDgMYWwdM"),
Callback = function()
local pmrs = gbg.remote(_d("PlEEQAcUBDhbAlAQLxkfQBpHGw"))

if not pmrs then
qza:Dialog({
Title = _d("IFsGRkIvGR9AGkcb"),
Description = _d("OFwcRkIFBQVYERUKBgNMWhoVFggHCUZVXQsUBANGDBUQAh0DQBAb"),
Buttons = {
{
Name = _d("K1sBFQsT"),
},
},
})

return
end

gbg.standDown(gbg.historyOpen)

pcall(function()
pmrs:FireServer()
end)
end,
})

rdow:Button({
Name = _d("L1wQVglHFwlaEEcDExkDWgY"),
Callback = function()

local acj = rd:FindFirstChild(_d("OFsCUBA1FR9BGUElEhk"))
local imfw = acj and acj:FindFirstChild(_d("I0QQWyUCHiRdBkENFQk"))

if not imfw then
qza:Dialog({
Title = _d("K1EbUBAGBAVbG0Y"),
Description = _d("OFwcRkIFBQVYERUKBgNMWhoVBQIeCUYUQQsIHh8UAlwMAx8bGg"),
Buttons = {
{
Name = _d("K1sBFQsT"),
},
},
})

return
end

gbg.standDown(gbg.generationOpen)

pcall(function()
imfw:Fire()
end)
end,
})

rcj.bossTeams.towerSection = shjs:Section({
Side = _d("IFETQQ"),
})

rcj.bossTeams.towerSection:Header({
Name = _d("OFsCUBBHJAlVGEY"),
})

rcj.bossTeams.towerSection:Paragraph({
Header = _d("JFsCFRYIBwlGVUEHBh0fFAJaEAw"),
Body = _d("I1ITD0ICEQ9cVUcXCVAZRxBGQhAYDUAQQwcVUBhRFFhCDgQfFAZZDRNQDVgHUAMDCUxcGlkGFF5mPjpbWEcVDVcdFRYIBwlGVVcHCx8bFAdADBRQG10BXUITGAkUAVADClAcXRZeBwNQClsHFQsTXg"),
})

rcj.bossTeams.towerToggle = rcj.bossTeams.towerSection:Toggle({
Name = _d("OFsCUBBHJAlVGEY"),
Default = false,
Callback = function(va)
rcj.bossTeams.towersOn = va
end,
}, _d("GFsCUBA4BAlVGEY"))

for btz, uab in ipairs({
{ kind = _d("GFsCUBA"), name = _d("JVoTXAwOBBUUNlQRExwJFFoVLA4XBEAYVBAC") },
{ kind = _d("BFUHUQEIAgk"), name = _d("JUcZVAwDUCRVB1EBCAIJ") },
}) do
local aael = math.clamp(math.floor(tonumber(rcj.bossTeams.towerPicked[uab.kind]) or 1), 1, 4)

rcj.bossTeams.towerPicked[uab.kind] = aael

rcj.bossTeams.towerUi[uab.kind] = rcj.bossTeams.towerSection:Dropdown({
Name = uab.name,
Search = false,
Multi = false,
Required = false,
Default = aael,
Options = { _d("OFEUWEJW"), _d("OFEUWEJV"), _d("OFEUWEJU"), _d("OFEUWEJT") },
Callback = function(las)
local ab = type(las) == _d("GFUXWQc") and las[1] or las
local kbd = type(ab) == _d("H0AHXAwA") and tonumber(ab:match(_d("RBERHks"))) or nil

if kbd then
rcj.bossTeams.towerPicked[uab.kind] = kbd
rcj.bossTeams.save()
end

pcall(function()
rcj.bossTeams.towerUi[uab.kind]:UpdateName(uab.name .. _d("TNb1l0I") .. (ab or _d("OFEUWEJW")))
end)
end,
}, _d("GFEUWD0THxtRB2o") .. uab.kind)

pcall(function()
rcj.bossTeams.towerUi[uab.kind]:UpdateSelection(_d("OFEUWEI") .. tostring(aael))
rcj.bossTeams.towerUi[uab.kind]:UpdateName(uab.name .. _d("TNb1l0IzFQ1ZVQ") .. tostring(aael))
end)
end

rcj.bossTeams.towerSection:Header({
Name = _d("P0MURUIIHkxSGVoNFQ"),
})

rcj.bossTeams.towerSection:Paragraph({
Header = _d("P0MURUITFQ1ZVVoMRxFMUhlaDRU"),
Body = _d("OFwQFQUGHQkTBhUNEB5MRwJUEktQAlsBFQNHAA1BBlBMRzUNVx0VEBIcCRQcRkIGUApYGloQRxECUFVBCgJQGFEUWEIQHx5aVVMQCB1MQB1UFkcWAFsaR0IIHkAUAkcLEwQJWlVcDBMfTEAdUEIAEQFRUkZCNBUYQBxbBRRQQQpVdBcTH0xgEFQPRyMbVQUVU0cRAlBVB05HAwMUAV0HRxcNWRAVDwYbCUdVQQoCUB9DHEEBD1AFQAZQDgFQG1wQW0IGUB5BGxURExEeQAYVFg8RGBQTWQ0IAkIUO1oWDxkCU1VcEUcDGFsFRQcDUA1aERUWDxVMRgBbQgwVCUQGFQsTA0xHGVoWSXpmdVVWAxQEAFFVRxcJUAtRAUZCExgJFAZUDwJQH0McQQEPUApGGlhCExgFR1VFAwkVABhVVwcEERlHEBUWDxVMUxRYB0ADTFsCW0IUBw1EVVoMCwlMUhxHBxRQBVoGXAYCUCVaE1wMDgQJFCdaDQoDQj5/eQcGBgkUFBUECx8DRlVUFkdATEAaFRYSAgIUAV0DE1AeQRlQQggWCho"),
})

function rcj.bossTeams.swapStatusText()
local se = rcj.bossTeams.swap
local cr = {}

if se.on then
table.insert(cr, _d("I1pVGEIQAgVAAVAMRwQDFAFdB0cXDVkQEhFHMRlAGhU2AhEBFCZCAxdQHlsCRkw"))
else
table.insert(cr, _d("I1ITFU9HBARRVVIDChVLR1VGFQYATF0GFQ4CFhgUFFkNCRVC"))
end

local klx = {
{ index = 1, floor = se.floor, team = se.team },
{ index = 2, floor = se.floor2, team = se.team2 },
}

for pyn, bnxj in ipairs(klx) do
if bnxj.floor > 0 then
table.insert(cr, string.format(_d("P0MURUJCFFYUIVADClBJUFVTEAgdTFIZWg0VUElQ"), bnxj.index, bnxj.team, bnxj.floor))
else
table.insert(cr, string.format(_d("P0MURUJCFFYUGlMER1gCW1VTDggfHhQGUBZO"), bnxj.index))
end
end

if rcj.bossTeams.swapMessage ~= _d("") then
table.insert(cr, rcj.bossTeams.swapMessage)
end

return table.concat(cr, _d("Zg"))
end

function rcj.bossTeams.paintSwap()
pcall(function()
rcj.bossTeams.swapStatus:UpdateBody(rcj.bossTeams.swapStatusText())
end)
end

rcj.bossTeams.swapToggle = rcj.bossTeams.towerSection:Toggle({
Name = _d("P0MURUITFQ1ZVVoMRxYAWxpH"),
Default = rcj.bossTeams.swap.on,
Callback = function(kzj)
rcj.bossTeams.swap.on = kzj

rcj.bossTeams.swapReset()

rcj.bossTeams.swapApply()
rcj.bossTeams.save()
end,
}, _d("H0MURT0TFQ1ZKloMOBYAWxpH"))

rcj.bossTeams.swapInput = rcj.bossTeams.towerSection:Input({
Name = _d("KlgaWhA"),
Placeholder = _d("CRoSG0JSQFwUXQVCWlADUhMc"),
AcceptedCharacters = _d("IkEYUBAOEw"),
Callback = function(ler)
local ev = tonumber(type(ler) == _d("H0AHXAwA") and ler:match(_d("RBERHks")) or ler)

if ev then
rcj.bossTeams.swap.floor = ev
rcj.bossTeams.swapReset()
rcj.bossTeams.swapApply()
rcj.bossTeams.save()
end
end,
}, _d("ClgaWhA"))

rcj.bossTeams.swapDropdown = rcj.bossTeams.towerSection:Dropdown({
Name = _d("P0MURUITHw"),
Search = false,
Multi = false,
Required = false,
Default = math.clamp(math.floor(tonumber(rcj.bossTeams.swap.team) or 1), 1, 4),
Options = { _d("OFEUWEJW"), _d("OFEUWEJV"), _d("OFEUWEJU"), _d("OFEUWEJT") },
Callback = function(zlya)
local ltg = type(zlya) == _d("GFUXWQc") and zlya[1] or zlya
local vgml = type(ltg) == _d("H0AHXAwA") and tonumber(ltg:match(_d("RBERHks"))) or nil

if vgml then
rcj.bossTeams.swap.team = vgml
rcj.bossTeams.swapReset()
rcj.bossTeams.swapApply()
rcj.bossTeams.save()
end

pcall(function()
rcj.bossTeams.swapDropdown:UpdateName(_d("P0MURUITH0zW9ZdC") .. (ltg or _d("OFEUWEJW")))
end)

rcj.bossTeams.paintSwap()
end,
}, _d("H0MURT0THw"))

rcj.bossTeams.swapInput2 = rcj.bossTeams.towerSection:Input({
Name = _d("KlgaWhBHQg"),
Placeholder = _d("CRoSG0JWQFwEVR1SR01MWxNTSw"),
AcceptedCharacters = _d("IkEYUBAOEw"),
Callback = function(mfo)
local iqio = tonumber(type(mfo) == _d("H0AHXAwA") and mfo:match(_d("RBERHks")) or mfo)

if iqio then
rcj.bossTeams.swap.floor2 = iqio
rcj.bossTeams.swapReset()
rcj.bossTeams.swapApply()
rcj.bossTeams.save()
end
end,
}, _d("ClgaWhA4Qg"))

rcj.bossTeams.swapDropdown2 = rcj.bossTeams.towerSection:Dropdown({
Name = _d("P0MURUITH0wG"),
Search = false,
Multi = false,
Required = false,
Default = math.clamp(math.floor(tonumber(rcj.bossTeams.swap.team2) or 1), 1, 4),
Options = { _d("OFEUWEJW"), _d("OFEUWEJV"), _d("OFEUWEJU"), _d("OFEUWEJT") },
Callback = function(np)
local cwce = type(np) == _d("GFUXWQc") and np[1] or np
local omz = type(cwce) == _d("H0AHXAwA") and tonumber(cwce:match(_d("RBERHks"))) or nil

if omz then
rcj.bossTeams.swap.team2 = omz
rcj.bossTeams.swapReset()
rcj.bossTeams.swapApply()
rcj.bossTeams.save()
end

pcall(function()
rcj.bossTeams.swapDropdown2:UpdateName(_d("P0MURUITH0wGVdfixVA") .. (cwce or _d("OFEUWEJW")))
end)

rcj.bossTeams.paintSwap()
end,
}, _d("H0MURT0THzMG"))

rcj.bossTeams.swapStatus = rcj.bossTeams.towerSection:Paragraph({
Header = _d("P0MURUIUBA1AAEY"),
Body = rcj.bossTeams.swapStatusText(),
})

pcall(function()
local ycue = math.clamp(math.floor(tonumber(rcj.bossTeams.swap.team) or 1), 1, 4)
local ppn = math.clamp(math.floor(tonumber(rcj.bossTeams.swap.team2) or 1), 1, 4)

rcj.bossTeams.swapDropdown:UpdateSelection(_d("OFEUWEI") .. tostring(ycue))
rcj.bossTeams.swapDropdown:UpdateName(_d("P0MURUITH0zW9ZdCMxUNWVU") .. tostring(ycue))
rcj.bossTeams.swapDropdown2:UpdateSelection(_d("OFEUWEI") .. tostring(ppn))
rcj.bossTeams.swapDropdown2:UpdateName(_d("P0MURUITH0wGVdfixVA4URRYQg") .. tostring(ppn))
end)

task.spawn(function()
local mz = rcj.bossTeams.swapStatusText()

while xkj() do
local algg = rcj.bossTeams.swapStatusText()

if algg ~= mz then
mz = algg
rcj.bossTeams.paintSwap()
end

task.wait(2)
end
end)

if rcj.bossTeams.swap.on then
task.delay(2, function()
pcall(rcj.bossTeams.swapApply)
end)
end

rcj.bossTeams.section = shjs:Section({
Side = _d("Pl0SXRY"),
})

rcj.bossTeams.section:Header({
Name = _d("LlsGRkIzFQ1ZBg"),
})

rcj.bossTeams.section:Paragraph({
Header = _d("JFsCFQAIAx8UAVADCgNMQxpHCQ"),
Body = _d("I1ITD0IJHxhcHFsFRxkfFAZCCxMTBFERFU9HFRpRB0xCARkLXAEVFxQVHxQBXQdHBAlVGBUbCAVMVRlHBwYUFRQdVBQCUABdG1AGRwUcGFVCCg4TBBQcRkITGAkUJlkNE1BdFAFQAwpQGVoZUBEUUB9YGkFCVVAYVR5QEUcEBFFVVwMTBABRWz9oKB5WFBBUAQ9QDUYQVEIFFQBbAhUEDhcEQAYVFQ4EBBQBXQdHBAlVGBUbCAVMRBxWCUcWA0ZVXBZJ"),
})

rcj.bossTeams.toggle = rcj.bossTeams.section:Toggle({
Name = _d("LlsGRkIzFQ1ZBg"),
Default = false,
Callback = function(usr)
rcj.bossTeams.enabled = usr
end,
}, _d("DlsGRj0TFQ1ZBg"))

for yahj, llyi in ipairs(hdp) do
local xshp = rcj.bossTeams.picked[llyi.id] or 1

xshp = math.clamp(math.floor(tonumber(xshp) or 1), 1, 4)
rcj.bossTeams.picked[llyi.id] = xshp

rcj.bossTeams.ui[llyi.id] = rcj.bossTeams.section:Dropdown({
Name = llyi.name,
Search = false,
Multi = false,
Required = false,

Default = xshp,
Options = { _d("OFEUWEJW"), _d("OFEUWEJV"), _d("OFEUWEJU"), _d("OFEUWEJT") },
Callback = function(dgdn)
local phx = type(dgdn) == _d("GFUXWQc") and dgdn[1] or dgdn
local rlxa = type(phx) == _d("H0AHXAwA") and tonumber(phx:match(_d("RBERHks"))) or nil

if rlxa then
rcj.bossTeams.picked[llyi.id] = rlxa

rcj.bossTeams.save()
end

pcall(function()
rcj.bossTeams.ui[llyi.id]:UpdateName(llyi.name .. _d("TNb1l0I") .. (phx or _d("OFEUWEJW")))
end)
end,
}, _d("GFEUWD0QHx5YEWo") .. llyi.id)

pcall(function()
rcj.bossTeams.ui[llyi.id]:UpdateSelection(_d("OFEUWEI") .. tostring(xshp))
rcj.bossTeams.ui[llyi.id]:UpdateName(llyi.name .. _d("TNb1l0IzFQ1ZVQ") .. tostring(xshp))
end)
end

rcj.bossTeams.raidSection = shjs:Section({
Side = _d("Pl0SXRY"),
})

rcj.bossTeams.raidSection:Header({
Name = _d("PlUcUUIzFQ1ZBg"),
})

rcj.bossTeams.raidSection:Paragraph({
Header = _d("JFsCFRAGGQgUAVADCgNMQxpHCQ"),
Body = _d("I1ITD0IVEQVQBhUXFBVMQx1UFgIGCUZVQQcGHUxAHVBCFBwDQFVUDhUVDVAMFQoIHAhHWz9oKB5WFBBUAQ9QHlUcUUIFFQBbAhULFFAKWwBSChNQG10BXUITGAkUAVADClAcXRZeBwNQClsHFQsTXg"),
})

rcj.bossTeams.raidToggle = rcj.bossTeams.raidSection:Toggle({
Name = _d("PlUcUUIzFQ1ZBg"),
Default = false,
Callback = function(hg)
rcj.bossTeams.raidsOn = hg
end,
}, _d("HlUcUT0TFQ1ZBg"))

for zk, zjrg in ipairs(qpz.Raids) do
if zjrg.BossTitle and zjrg.id then
local yfyu = rcj.bossTeams.raidPicked[zjrg.id] or 1

yfyu = math.clamp(math.floor(tonumber(yfyu) or 1), 1, 4)
rcj.bossTeams.raidPicked[zjrg.id] = yfyu

rcj.bossTeams.raidUi[zjrg.id] = rcj.bossTeams.raidSection:Dropdown({
Name = zjrg.BossTitle,
Search = false,
Multi = false,
Required = false,
Default = yfyu,
Options = { _d("OFEUWEJW"), _d("OFEUWEJV"), _d("OFEUWEJU"), _d("OFEUWEJT") },
Callback = function(jqdy)
local cvy = type(jqdy) == _d("GFUXWQc") and jqdy[1] or jqdy
local vlhj = type(cvy) == _d("H0AHXAwA") and tonumber(cvy:match(_d("RBERHks"))) or nil

if vlhj then
rcj.bossTeams.raidPicked[zjrg.id] = vlhj
rcj.bossTeams.save()
end

pcall(function()
rcj.bossTeams.raidUi[zjrg.id]:UpdateName(zjrg.BossTitle .. _d("TNb1l0I") .. (cvy or _d("OFEUWEJW")))
end)
end,
}, _d("GFEUWD0VEQVQKg") .. zjrg.id)

pcall(function()
rcj.bossTeams.raidUi[zjrg.id]:UpdateSelection(_d("OFEUWEI") .. tostring(yfyu))
rcj.bossTeams.raidUi[zjrg.id]:UpdateName(zjrg.BossTitle .. _d("TNb1l0IzFQ1ZVQ") .. tostring(yfyu))
end)
end
end

task.spawn(function()
local fnd = rkj()

while xkj() do
local wcn = rkj()

if rqc.enabled and rqc.statusText then
wcn = rqc.statusText()
end

wcn = wcn .. _d("Zj4mUBARFR4UAEVC") .. wznk()

if wcn ~= fnd then
fnd = wcn
pcall(function()
js:UpdateBody(wcn)
end)
end
task.wait(0.5)
end
end)

task.spawn(function()
while xkj() do
for bzb, txxh in ipairs({ _d("LlUBQQ4CNxld"), _d("LlUBQQ4CNxldRw") }) do
local irfs = rd:FindFirstChild(txxh)
local zsck = irfs and irfs:FindFirstChild(_d("LlUBQQ4CIw9GEFAM"))
local fx = irfs and irfs:FindFirstChild(_d("JF0RUCAGBBhYEHcXEwQDWg"))

if zsck and zsck.Visible and fx and not fx.Visible then
fx.Visible = true
end
end

task.wait(0.5)
end
end)

task.spawn(function()
local bcy = false

while xkj() do
if kocb then
local ljug = rd:FindFirstChild(_d("OFsCUBA1FR9BGUElEhk"))
local iixa = ljug and ljug:FindFirstChild(_d("PlEGQA4TNh5VGFA"))
local fay = ljug and ljug:FindFirstChild(_d("K1EbUBAGBAVaEnMQBh0J"))

if fay and fay.Visible then
fay.Visible = false
end

local jsb = iixa and iixa.Visible or false

if jsb and not bcy then
local luk = iixa:FindFirstChild(_d("L1gaRgclBRhAGls"))
local odnq = false

if luk then
for qqra, olvc in ipairs({ _d("IVsARgclBRhAGltTJBwFVx4"), _d("LVcBXBQGBAlQ") }) do
local mfjz = luk[olvc]
if mfjz then
for ncu, dqws in ipairs(getconnections(mfjz)) do
pcall(function()
dqws:Fire()
end)
odnq = true
end
end
end
end

if not odnq then
iixa.Visible = false
else
task.spawn(function()
task.wait(0.3)
if iixa.Parent and iixa.Visible then
iixa.Visible = false
end
end)
end
end

bcy = jsb
else
bcy = false
end

task.wait(0.2)
end
end)

local fdj = {}

function fdj.active()
return rcj.enabled or rcj.story
end

function fdj.towerHolds()
if rqc.enabled then
return false
end

if pwc.run.enabled then
return true
end

return oi.enabled and not oi.paused
end

function fdj.ready(aszc, lxuw, luls)
local pjcn = rcj.unlocked[aszc]

return (not pjcn or pjcn[lxuw] ~= false) and pzk(aszc, lxuw) <= luls
end

function fdj.hasReadyTarget()
local frda = os.time()

for txm, pnwz in ipairs(zhc()) do
for hlcz, lyhl in ipairs(rqh()) do
if fdj.ready(pnwz, lyhl, frda) then
return true
end
end
end

return false
end

function fdj.backOff(xsh, hpsr)
emhs(xsh, hpsr, os.time() + 5)
end

function fdj.findTarget()
for sjyq, ztt in ipairs(zhc()) do
local tah = kjw(ztt)
local onxj = os.time() - (rcj.lastFetch[ztt] or 0) > 60

if onxj and tah and not rcj.walkToNpc then
qqct(tah)
task.wait(0.3)
ywz(ztt)
end

for ffl, tymm in ipairs(rqh()) do
if fdj.ready(ztt, tymm, os.time()) then
return ztt, tymm
end
end
end

return nil
end

function rcj.bossTeams.slotForFight()
if rqc.hasSlot2 == false then
return 1
end

if rqc.busy(2) then
return 1
end

return 2
end

function rcj.bossTeams.slotTeam(puez)
local tno = rd:FindFirstChild(_d("P1EBQQsJFx9zAFw"))
local is = tno and tno:FindFirstChild(_d("P1gaQTYCEQE") .. puez .. _d("LkEBQQ0J"), true)
local cafo = is and is.Text

return cafo and tonumber(cafo:match(_d("RBERHks"))) or nil
end

function rcj.bossTeams.applyTeam(rmds, obnk)
rmds = tonumber(rmds)

if not rmds then
return false
end

obnk = tonumber(obnk) or rcj.bossTeams.slotForFight()

if rqc.busy(obnk) then
return false
end

rcj.bossTeams.lastSlot = obnk

local yao = rcj.bossTeams.slotTeam(obnk) or rcj.bossTeams.applied[obnk]

if yao == rmds then
return true
end

local wpq = gbg.remote(_d("P0McQQEPJAlVGA"))

if not wpq then
return false
end

local ldec = pcall(function()
wpq:FireServer(rmds, false, obnk)
end)

rcj.bossTeams.applied[obnk] = rmds
task.wait(0.2)

return ldec
end

function rcj.bossTeams.apply(pcf)
if not rcj.bossTeams.enabled then
return
end

local oiyi = rcj.bossTeams.worldOf[pcf]
local gt = oiyi and rcj.bossTeams.picked[oiyi]

if not gt then
return
end

rcj.bossTeams.applyTeam(gt)
end

function rcj.bossTeams.applyTower(npt, fcto)
if not rcj.bossTeams.towersOn then
return false
end

local dbe = rcj.bossTeams.towerPicked[npt]

local nw = rcj.bossTeams.swapFired[npt]

if rcj.bossTeams.swap.on and type(nw) == _d("GFUXWQc") then
dbe = nw[2] or nw[1] or dbe
end

if not dbe then
return false
end

return rcj.bossTeams.applyTeam(dbe, fcto)
end

function rcj.bossTeams.applyRaid(qxlf)
if not rcj.bossTeams.raidsOn then
return
end

local ditg = qxlf and rcj.bossTeams.raidPicked[qxlf]

if not ditg then
return
end

rcj.bossTeams.applyTeam(ditg)
end

function fdj.fight(zsi, ffwb)
local gytj = kjw(zsi)

if not gytj then
fdj.backOff(zsi, ffwb)
return false
end

local mfz

if rcj.walkToNpc then
local zx = myn[zsi]

if zx then
bo.TeleportToWorld:FireServer(zx)
task.wait(2.5)

local tcut = kjw(zsi) or gytj
local mtpl = tcut:GetPivot()

mfz = feji(mtpl.Position + mtpl.LookVector * 6, function()
return not fdj.active() or not rcj.walkToNpc
end)

if mfz then
ywz(zsi)
mfz = fdj.ready(zsi, ffwb, os.time())
end
end
else
mfz = qqct(gytj)
end

if not mfz then
fdj.backOff(zsi, ffwb)
return false
end

task.wait(0.4)
rcj.bossTeams.apply(zsi)
rcj.activeDifficulty[zsi] = ffwb
bo.SetNPCDifficulty:FireServer(zsi, ffwb)
task.wait(0.4)

rcj.currentBattle = {
npcId = zsi,
difficulty = ffwb,
}
wll = zsi
lu = ffwb
bo.StartNPCBattle:FireServer(zsi)
emhs(zsi, ffwb, os.time() + 10)
rcj.battlePending = true
rcj.battlePendingUntil = os.time() + 30
task.wait(1)

return true
end

rcj.workPending = function()

if btd.misc and btd.misc.cards and btd.misc.cards.inFlight then
return true
end

if not fdj.active() then
return false
end

if rcj.battlePending then
return true
end

local bjso = rqc.npcSlot()

if bjso and rqc.busy(bjso) then
return true
end

return fdj.hasReadyTarget()
end

task.spawn(function()
while xkj() do

local ya = (rqc.enabled and (btd.enabled or fwd.enabled or btd.worldBoss.enabled))
or fdj.towerHolds()
or not rqc.slotFree(rqc.npcSlot())

or (btd.misc and btd.misc.cards and btd.misc.cards.inFlight)
or (rcj.battlePending and os.time() < rcj.battlePendingUntil)

if fdj.active() and not ya and not rqc.prioBlocks(_d("AkQW")) then
local xwh, qagw = fdj.findTarget()

if xwh then
fdj.fight(xwh, qagw)
end
end

task.wait(0.5)
end
end)

task.spawn(function()
while xkj() do

local lci = {}

if btd.enabled then

btd.requestProgress(false)

local hmtd = rqc.roleSlot(_d("AkQW"))

if hmtd then
table.insert(lci, hmtd)
end

if rqc.splitNpc() and hmtd ~= 2 then
table.insert(lci, 2)
end
end

local ge = kq:FindFirstChild(_d("PlUcUTETERhBBg"))

if #lci > 0 and ge and (not fwd.enabled or rqc.splitNpc()) and (rqc.enabled or not rcj.workPending()) then
for ozmu, nfzm in ipairs(lci) do
local xuk = ge

local sgrf = btd.bossFor(nfzm, (nfzm ~= 1 and not rqc.splitNpc()) and 1 or nil)
local juth = xuk:GetAttribute(_d("JUc6RQcJ")) == true or xuk:GetAttribute(_d("KlsHVgcD")) == true
local ebnx = sgrf ~= nil and xuk:GetAttribute(_d("PlEUURs4") .. sgrf) == true
local kis = sgrf and bip(sgrf)

if sgrf and btd.pending[sgrf] and os.time() >= (btd.pendingUntil[sgrf] or 0) then
btd.pending[sgrf] = false
btd.cleared[sgrf] = nil
end

if sgrf and rqc.slotFree(nfzm) and juth and ebnx and btd.cleared[sgrf] ~= kis and not btd.pending[sgrf] then
local mdie = iwq[sgrf]
local mhx = mdie and kjw(mdie)
local axx = false

if mhx then
if btd.walkToBoss then
local gznh = yg[sgrf]
local mhbf = fh.Character and fh.Character:FindFirstChild(_d("JEEYVAwIGQhmGloWNxEeQA"))
local kwbb = mhx:GetPivot().Position
local qa = mhbf and (mhbf.Position - kwbb).Magnitude <= 15

if qa then
axx = true
elseif gznh then
bo.TeleportToWorld:FireServer(gznh)

local afei = os.clock()
while os.clock() - afei < 2.5 and btd.enabled do
task.wait(0.1)
end

if btd.enabled then
local nae = kjw(mdie) or mhx
local fzzl = nae:GetPivot()
local hlzk = fzzl.Position + fzzl.LookVector * 6
axx = ldnp(hlzk, btd.walkSpeed, function()
return not btd.enabled or not btd.walkToBoss
end)
end
end

if not axx then
axx = qqct(mhx)
end
else
axx = qqct(mhx)
end

if axx then
task.wait(0.5)
end
end

if axx and not rqc.prioBlocks(_d("HlUcURE")) then
btd.inFlight[sgrf] = nfzm
btd.pending[sgrf] = true
btd.pendingUntil[sgrf] = os.time() + 15
btd.cleared[sgrf] = kis

local zcd = btd.difficulties[1] or _d("AlsHWAML")
local xokd = btd.progress[sgrf]

if xokd then
local hicw = xokd.unlocked
local jijs = xokd.cooldowns

for hco, gsbu in ipairs(btd.difficulties) do
local krpp = not hicw or hicw[gsbu] ~= false
local jmwy = jijs and tonumber(jijs[gsbu]) or 0

if krpp and jmwy <= 0 then
zcd = gsbu
break
end
end
end

rcj.bossTeams.applyRaid(sgrf)
bo.SetRaidDifficulty:FireServer(zcd, sgrf)
task.wait(0.3)
bo.StartRaidBattle:FireServer(sgrf)
task.wait(2)
end
end
end
end

task.wait(1)
end
end)

task.spawn(function()
while xkj() do
local jvpl = fwd.inBattle and os.time() < fwd.inBattleUntil

if fwd.enabled and (rqc.enabled or not rcj.workPending()) and not jvpl and rqc.slotFree(rqc.roomSlot()) and not (fwd.pending and os.time() < fwd.pendingUntil) then
local yjb = fwd.progress

if yjb == nil then
bo.RequestInfiniteRoomProgress:FireServer()
task.wait(0.5)
else
local wajn = nil

for bygy, ajy in ipairs(st.Milestones) do
if st.isMilestoneUnlocked(ajy, yjb) and not st.isMilestoneCleared(ajy, yjb) then
wajn = ajy
break
end
end

if wajn then

local rlwe = rqc.roomSlot()

fwd.currentRoom = wajn
fwd.inBattle = true
fwd.inBattleUntil = os.time() + 60
fwd.pending = true
fwd.pendingUntil = os.time() + 10

local pqga = rd:FindFirstChild(rlwe == 2 and _d("PlEGUBYlERhAGVAkCx8DRkc") or _d("PlEGUBYlERhAGVAkCx8DRg"))
if pqga and pqga:IsA(_d("Ll0bUQMFHAlxA1AMEw")) then
pqga:Fire(wajn, _d("BVoTXAwOBAlrB1oNCg"))
end

local azyt = rd:FindFirstChild(rlwe == 2 and _d("P0AURxYuHgpdG1wWAiIDWxh3AxMEAFFH") or _d("P0AURxYuHgpdG1wWAiIDWxh3AxMEAFE"))
if azyt and azyt:IsA(_d("Ll0bUQMFHAlxA1AMEw")) then
azyt:Fire(wajn)
end

bo.StartBattle:FireServer(_d("BVoTXAwOBAlrB1oNCg"), {
milestone = wajn,
slot = rlwe,
})
task.wait(2)
end
end
end

task.wait(1)
end
end)

local function pdc(rzii, psej)
local exjk = rd:FindFirstChild(_d("P1cHUAcJNxld"))

if not exjk then
return
end

local fwc = exjk:FindFirstChild(rzii)
local kk = fwc and fwc:FindFirstChild(_d("OlUZQAcrEQ5RGQ"), true)
local jmsp = fwc and fwc:FindFirstChild(_d("IFUXUA4"), true)

if not fwc then
return
end

local zold = false

if kk then
zold = kk.Text == _d("I1o")
elseif jmsp then
zold = not string.lower(jmsp.Text):find(_d("A1IT"), 1, true)
end

if zold ~= psej then
for gslm, sguh in ipairs(getconnections(fwc.MouseButton1Click)) do
local xmij = sguh.Function

if type(xmij) == _d("CkEbVhYOHwI") then
pcall(xmij)
else
pcall(function()
sguh:Fire()
end)
end
end
end
end

getgenv().ACBXSetRollButton = pdc

local function iqov(dpl)
pdc(_d("PUEcVgk1HwBYN0AWEx8C"), dpl)
pdc(_d("LUEBWjAIHAB2AEEWCB4"), dpl)
end

getgenv().ACBXSetRollUi = iqov
df.setRollButton = pdc

pcall(function()
bo.SaveClientData:FireServer({ autoHideBattle = false })
end)

task.defer(function()
task.wait(0.5)

local tev = rd:FindFirstChild(_d("LlUBQQ4CNxld"))
local aiio = tev and tev:FindFirstChild(_d("LlUBQQ4CIw9GEFAM"))
local osr = tev and tev:FindFirstChild(_d("JF0RUCAGBBhYEHcXEwQDWg"))

if osr and osr.Visible and aiio and not aiio.Visible and ny() then
for vnax, spq in ipairs(getconnections(osr.MouseButton1Click)) do
local ivpd = spq.Function

if type(ivpd) == _d("CkEbVhYOHwI") then
pcall(ivpd)
else
pcall(function()
spq:Fire()
end)
end
end
end
end)

iqov(true)

task.spawn(function()
while xkj() do

if df.autoRoll then
pdc(_d("LUEBWjAIHAB2AEEWCB4"), true)
end

if df.autoQuickRoll then
pdc(_d("PUEcVgk1HwBYN0AWEx8C"), true)
end

task.wait(1)
end
end)

local function eth()

if oi.floor then
return oi.floor
end

local bpdh = rd:FindFirstChild(_d("LlUBQQ4CNxld"))

if not bpdh then
return nil
end

for kmop, ney in ipairs({ _d("OFsCUBAhHANbB3kDBRUA"), _d("PkEbcw4IHx54FFcHCw") }) do
local bdy = bpdh:FindFirstChild(ney)

if bdy and bdy.Visible and bdy.Text then
local dly = tonumber(bdy.Text:match(_d("RBERHks")))

if dly then
return dly
end
end
end

local fgu = bpdh:FindFirstChild(_d("KlgaWhA0Ex5REFs"))
local iiyx = fgu and fgu:FindFirstChild(_d("OFsFdwMV"))
local zvgv = iiyx and iiyx:FindFirstChild(_d("KlgaWhArEQ5RGQ"))

if zvgv then
return tonumber(zvgv.Text:match(_d("RBERHks")))
end

return nil
end

function rcj.bossTeams.swapRows(yqf)
local hdk = rd:FindFirstChild(_d("P1EBQQsJFx9zAFw"))
local hwg = hdk and hdk:FindFirstChild(_d("LUEBWjEQERw") .. yqf .. _d("PlsC"), true)

if not hwg then
return nil
end

return hwg:FindFirstChild(_d("LUEBWjEQERw") .. yqf .. _d("L1wQVgk")),
hwg:FindFirstChild(_d("LUEBWjEQERw") .. yqf .. _d("OFEUWA")),
hwg:FindFirstChild(_d("LUEBWjEQERw") .. yqf .. _d("KlgaWhA"))
end

function rcj.bossTeams.swapOn(ktsl)
local uuzj = rd:FindFirstChild(_d("P1EBQQsJFx9zAFw"))
local jqty = uuzj and uuzj:FindFirstChild(_d("K1EBZgcTBAVaEkY"), true)

if not jqty then
return nil
end

local eoj, kgng = pcall(function()
return jqty:Invoke()
end)

if eoj and type(kgng) == _d("GFUXWQc") then
return kgng[ktsl == 1 and _d("DUEBWjYCEQFnAlQSIh4NVhlQBg") or _d("DUEBWjYCEQFnAlQSVTUCVRdZBwM")] == true
end

return nil
end

function rcj.bossTeams.swapBox(ponu, ptn)
if tonumber(ponu.Text) == ptn then
return
end

ponu.Text = tostring(ptn)

if getconnections then
for iea, ftm in ipairs(getconnections(ponu.FocusLost)) do
pcall(function()
ftm:Fire(true, Enum.UserInputType.Focus)
end)
end
end
end

function rcj.bossTeams.swapSet(mpd, zbqf, tsw, reko)
local dali, unrb, msgb = rcj.bossTeams.swapRows(mpd)

if not (dali and unrb and msgb) then
return false
end

tsw = math.max(1, math.floor(tonumber(tsw) or 1))
reko = math.clamp(math.floor(tonumber(reko) or 1), 1, 4)

rcj.bossTeams.swapBox(msgb, tsw)
rcj.bossTeams.swapBox(unrb, reko)

local tbqc = rcj.bossTeams.swapOn(mpd)

if tbqc ~= nil and tbqc ~= (zbqf == true) and getconnections then
pcall(function()
for xjq, ejv in ipairs(getconnections(dali.MouseButton1Click)) do
pcall(function()
ejv:Fire()
end)
end
end)
end

local lc = mpd == 1 and _d("") or _d("Xg")

pcall(function()
bo.SaveClientData:FireServer({
[_d("DUEBWjYCEQFnAlQS") .. lc .. _d("KVoUVw4CFA")] = zbqf == true,
[_d("DUEBWjYCEQFnAlQS") .. lc .. _d("OFEUWA")] = reko,
[_d("DUEBWjYCEQFnAlQS") .. lc .. _d("KlgaWhA")] = tsw,
})
end)

return true
end

function rcj.bossTeams.swapApply()
local npot = rcj.bossTeams
local mjh = npot.swap
local iage = true

if mjh.on then
iage = npot.swapSet(1, mjh.floor > 0, mjh.floor, mjh.team)
iage = npot.swapSet(2, mjh.floor2 > 0, mjh.floor2, mjh.team2) and iage
else
iage = npot.swapSet(1, false, mjh.floor, mjh.team)
iage = npot.swapSet(2, false, mjh.floor2, mjh.team2) and iage
end

npot.swapMessage = _d("")

if not iage then
npot.swapMessage = _d("OFwQFQUGHQkTBhUjEgQDFCFQAwpQP0MURUIVHxtHVVQQAlACWwEVABIZAEBVTAcTUEEUB1AWFQkFWhIb")
end

npot.paintSwap()
end

function rcj.bossTeams.swapReset(rpu)
local kds = rcj.bossTeams

if rpu then
kds.swapFired[rpu] = nil
else
kds.swapFired = {}
end
end

function rcj.bossTeams.swapTick()
local qvsh = rcj.bossTeams
local euyw = qvsh.swap

if not euyw.on or (euyw.floor <= 0 and euyw.floor2 <= 0) then
if next(qvsh.swapFired) ~= nil then
qvsh.swapFired = {}
end

return
end

local jvrt = os.clock()
local qey = gbg.remote(_d("P0McQQEPJAlVGA"))

if jvrt - (qvsh.swapWroteAt or 0) > 10 then
qvsh.swapWroteAt = jvrt
qvsh.swapApply()
end

local bvj = {
{
kind = _d("GFsCUBA"),
slot = rqc.towerSlot(),

live = jvrt - (oi.floorAt or 0) < 90,
floor = eth(),

own = true,
},
{
kind = _d("BFUHUQEIAgk"),
slot = rqc.hardcoreSlot(),
live = yme.active(),
floor = yme.floorNow(),

own = false,
},
}

local ntsu = {
{ index = 1, floor = euyw.floor, team = euyw.team },
{ index = 2, floor = euyw.floor2, team = euyw.team2 },
}

for rft, tqf in ipairs(bvj) do
if not tqf.live then

qvsh.swapFired[tqf.kind] = nil
elseif tqf.own and qey and tqf.floor then
local qks = qvsh.swapFired[tqf.kind]

for awkr, eck in ipairs(ntsu) do
local sbbi = type(qks) == _d("GFUXWQc") and qks[eck.index]

if eck.floor > 0 and tqf.floor == eck.floor and not sbbi then
local wvx = pcall(function()
qey:FireServer(math.clamp(math.floor(eck.team), 1, 4), true, tqf.slot or 1)
end)

if wvx then
qks = type(qks) == _d("GFUXWQc") and qks or {}
qks[eck.index] = eck.team
qvsh.swapFired[tqf.kind] = qks

qvsh.swapMessage = string.format(_d("L1UGQQ4CUApYGloQR1UIFFgVERAZGFcdUAZHBAMUIVADClBJUFs"), tqf.floor, eck.team)
qvsh.paintSwap()
end
end
end
end
end
end

task.spawn(function()
while xkj() do
pcall(rcj.bossTeams.swapTick)
task.wait(0.5)
end
end)

local function fgoh()

return fdj.active() and fdj.hasReadyTarget()
end

function btd.worldBoss.remote(ilc)
local zac = btd.worldBoss

zac.remotes = zac.remotes or {}

local zxp = zac.remotes[ilc]

if zxp and zxp.Parent then
return zxp
end

local doj = gbg.remote(ilc)

if doj then
zac.remotes[ilc] = doj
end

return doj
end

function btd.worldBoss.setRepeat(gx)
local wkjk = btd.worldBoss
local yqvc = wkjk.remote(_d("O1sHWQYlHx9HNFYWDh8C"))

if not yqvc then
return false
end

local fir = wkjk.state
local otwa = type(fir) == _d("GFUXWQc") and fir.repeatOn == true

if otwa == (gx and true or false) then
wkjk.repeatIntent = nil

return true
end

if gx then
local jq = workspace:FindFirstChild(_d("O1sHWQYlHx9HNEcHCRE"))
local eetn = jq and (jq:FindFirstChild(_d("L1EZWS8GCA")) or jq)
local dcl = fh.Character and fh.Character:FindFirstChild(_d("JEEYVAwIGQhmGloWNxEeQA"))

if not (eetn and dcl) then
return false
end

local lxj, bx = pcall(function()
return eetn:GetPivot()
end)

if not lxj or (dcl.Position - bx.Position).Magnitude > 60 then
return false
end
end

if wkjk.repeatIntent == gx and os.clock() - (wkjk.repeatAskedAt or 0) < 20 then
return false
end

wkjk.repeatIntent = gx

pcall(function()
yqvc:FireServer(_d("HlEFUAMT"))
end)

wkjk.repeatAskedAt = os.clock()

return true
end

function btd.worldBoss.requestSync()
local aitn = btd.worldBoss
local szdl = aitn.remote(_d("O1sHWQYlHx9HNFYWDh8C"))

if szdl then
pcall(function()
szdl:FireServer(_d("H00bVg"))
end)
end

aitn.askedAt = os.clock()
end

function btd.worldBoss.hasWork()
local rv = btd.worldBoss
local owx = rv.state

if not rv.enabled or type(owx) ~= _d("GFUXWQc") then
return false
end

if rv.stopAtFull and type(rv.meterFull) == _d("CkEbVhYOHwI") and rv.meterFull() then
return false
end

local gozx = rv.isOpen()

if gozx == nil then
gozx = owx.open == true
end

return gozx and owx.inFight ~= true
end

btd.worldBoss.bossUp = function()
local sta = btd.worldBoss

if not sta.enabled then
return false
end

local naut = sta.isOpen()

if naut ~= nil then
return naut == true
end

local ulzg = sta.state

return type(ulzg) == _d("GFUXWQc") and ulzg.open == true
end

function btd.worldBoss.meter()
local oiba = btd.worldBoss
local ehxg = os.clock()

if ehxg - (oiba.meterAt or 0) < 1 then
return oiba.meterCurrent, oiba.meterMax
end

oiba.meterAt = ehxg
oiba.meterCurrent = nil
oiba.meterMax = nil

local mkh = kq:FindFirstChild(_d("O1sHWQYlHx9HJkEDEwUf"))
local dkil = mkh and tonumber(mkh:GetAttribute(_d("IVEBUBA")))
local fvnz = mkh and tonumber(mkh:GetAttribute(_d("IVEBUBAqERQ")))

if dkil and fvnz and fvnz > 0 then
oiba.meterCurrent = dkil
oiba.meterMax = fvnz

return oiba.meterCurrent, oiba.meterMax
end

local function hor(yobt)
if type(yobt) ~= _d("H0AHXAwA") then
return nil
end

local eddw, vox = yobt:match(_d("RG9QUUdJLUcdUEZITysneTdeDwUtUx0"))
local bi = tonumber(eddw)

if not bi then
return nil
end

local gf = ({ K = 1000, M = 1000000, B = 1000000000 })[string.upper(vox or _d(""))] or 1

return bi * gf
end

local qqum = rd:FindFirstChild(_d("O1sHWQYlHx9HN1QMCRUecwBc"))
local ypit = qqum and qqum:FindFirstChild(_d("LlUbWwcV"))
local cia = ypit and ypit:FindFirstChild(_d("IVEBUBAlER4"))
local lnpf = cia

if cia and not cia:IsA(_d("OFENQS4GEglY")) then
lnpf = cia:FindFirstChild(_d("OFENQQ"))
end

local lcz = lnpf and lnpf:IsA(_d("OFENQS4GEglY")) and lnpf.Text or nil

if type(lcz) == _d("H0AHXAwA") then
local szy, wrxp = lcz:match(_d("RG8rGj9MWUMcWx5L"))

oiba.meterCurrent = hor(szy)
oiba.meterMax = hor(wrxp)
end

return oiba.meterCurrent, oiba.meterMax
end

function btd.worldBoss.meterFull()
local epem, ixfh = btd.worldBoss.meter()

return epem ~= nil and ixfh ~= nil and ixfh > 0 and epem >= ixfh
end

btd.worldBoss.holdsFishing = function()
local fogg = btd.worldBoss

if not fogg.enabled or not fogg.bossUp() then
return false
end

if fogg.stopAtFull and fogg.meterFull() then
return false
end

return rqc.prioBlocks(_d("G1UBUBA"))
end

btd.worldBoss.holdsDigging = function()
local akh = btd.worldBoss

if not akh.enabled or not akh.bossUp() then
return false
end

if akh.stopAtFull and akh.meterFull() then
return false
end

return rqc.digBlocked()
end

btd.worldBoss.standDown = function()
local bket = btd.worldBoss

if bket.stopAtFull and type(bket.meterFull) == _d("CkEbVhYOHwI") and bket.meterFull() then
return true
end

return rqc.prioBlocks(_d("DlsGRg"))
end

btd.worldBoss.usesGameChain = function()
return true
end

function btd.worldBoss.travel()
local jwt = btd.worldBoss
local rlwt = fh.Character
local aux = rlwt and rlwt:FindFirstChild(_d("JEEYVAwIGQhmGloWNxEeQA"))

if not aux or os.clock() < jwt.travelUntil then
return
end

jwt.travelUntil = os.clock() + 6

local mgl = workspace:FindFirstChild(_d("O1sHWQYlHx9HJVoQExEA"))
local yign = mgl and mgl:FindFirstChild(_d("PFsHQQML"))

if not yign then
return
end

if (aux.Position - yign.Position).Magnitude > 150 then
local lre = gbg.remote(_d("OFEZUBIIAhhgGmINFRwI"))

if lre then
pcall(function()
lre:FireServer(_d("AFsXVxs"))
end)
end

return
end

if (aux.Position - yign.Position).Magnitude > 6 then
jwt.walkLeg(yign.Position + Vector3.new(0, 3, 0), 4)

if (aux.Position - yign.Position).Magnitude > 9 then
return
end
end

local bwq = yign:FindFirstChildOfClass(_d("PEYaTQsKGRhNJUcNCgAY"))

if not bwq then
return
end

pcall(function()
if type(fireproximityprompt) == _d("CkEbVhYOHwI") then
fireproximityprompt(bwq)
else
bwq:InputHoldBegin()
task.wait(0.25)
bwq:InputHoldEnd()
end
end)
end

function btd.worldBoss.reach()
local awes = btd.worldBoss

local viyv = workspace:FindFirstChild(_d("O1sHWQYlHx9HNEcHCRE")) or workspace:FindFirstChild(_d("O1sHWQYlHx9HJkUDEB4"), true)
local wbxu = fh.Character
local ils = wbxu and wbxu:FindFirstChild(_d("JEEYVAwIGQhmGloWNxEeQA"))

if not (viyv and ils) then
awes.travel()
return false
end

local gfo = viyv:FindFirstChild(_d("L1EZWS8GCA")) or viyv
local lfdw, syfh = pcall(function()
return gfo:GetPivot()
end)

if not lfdw then
return false
end

local ebhj = syfh.Position + syfh.LookVector * 6 + Vector3.new(0, 3, 0)
local jynd = Vector3.new(syfh.Position.X, ebhj.Y, syfh.Position.Z)

ils.CFrame = CFrame.lookAt(ebhj, jynd)

return true
end

btd.worldBoss.cityBounds = { 19100, 20900, -850, 850 }

function btd.worldBoss.inArena()
local hlzj = fh.Character and fh.Character:FindFirstChild(_d("JEEYVAwIGQhmGloWNxEeQA"))
local mb = btd.worldBoss.cityBounds

if not hlzj then
return false
end

local lgo = hlzj.Position

return lgo.X >= mb[1] and lgo.X <= mb[2]
and lgo.Z >= mb[3] and lgo.Z <= mb[4]
end

function btd.worldBoss.enterCity(ldn)
local klw = btd.worldBoss

local xpb = os.clock() + (ldn or 30)

if klw.inArena() then
return true
end

while os.clock() < xpb do
if not klw.enabled then
return false
end

klw.travel()

if klw.inArena() then
return true
end

task.wait(0.5)
end

return klw.inArena()
end

btd.worldBoss.walking = false
btd.worldBoss.walkStartedAt = 0

function btd.worldBoss.walkLeg(ekvx, la)
local zibt = btd.worldBoss
local qeae = fh.Character
local btap = qeae and qeae:FindFirstChild(_d("JEEYVAwIGQhmGloWNxEeQA"))
local lq = qeae and qeae:FindFirstChildOfClass(_d("JEEYVAwIGQg"))

if not (btap and lq) then
return false
end

if zibt.walking and os.clock() - (zibt.walkStartedAt or 0) < 45 then
return false
end

la = la or 6

zibt.walking = true
zibt.walkStartedAt = os.clock()

local anr, zmps = pcall(function()
local fz = os.clock() + 40
local yoe = 0
local bnmx = btap.Position
local riag = os.clock()

while zibt.enabled and os.clock() < fz do
local tyo = Vector3.new(ekvx.X - btap.Position.X, 0, ekvx.Z - btap.Position.Z)

if tyo.Magnitude <= la then
return true
end

if os.clock() - yoe >= 0.25 then
lq:MoveTo(Vector3.new(ekvx.X, btap.Position.Y, ekvx.Z))
yoe = os.clock()
end

if os.clock() - riag >= 1.2 then
if (btap.Position - bnmx).Magnitude < 2 then
lq.Jump = true
end

bnmx = btap.Position
riag = os.clock()
end

task.wait(0.1)
end

return Vector3.new(ekvx.X - btap.Position.X, 0, ekvx.Z - btap.Position.Z).Magnitude <= la
end)

pcall(function()
lq:MoveTo(btap.Position)
end)

zibt.walking = false

return anr and zmps == true
end

function btd.worldBoss.walkIn(mteu)
local wqcy = btd.worldBoss
local rdu = workspace:FindFirstChild(_d("O1sHWQYlHx9HNEcHCRE"))
local kmjk = rdu and (rdu:FindFirstChild(_d("L1EZWS8GCA")) or rdu) or nil
local wssv = fh.Character and fh.Character:FindFirstChild(_d("JEEYVAwIGQhmGloWNxEeQA"))

if not (kmjk and wssv) then
return false
end

local ctli, feu = pcall(function()
return kmjk:GetPivot()
end)

if not ctli then
return false
end

local yuzu = feu.Position + feu.LookVector * 6 + Vector3.new(0, 3, 0)

if (wssv.Position - yuzu).Magnitude <= (mteu or 10) then
return true
end

local twro = wqcy.walkLeg(yuzu, mteu or 6)

if not twro then
twro = (wssv.Position - feu.Position).Magnitude <= 25
end

return twro
end

function btd.worldBoss.approach()
local sqd = btd.worldBoss

if not sqd.walkToBoss then
return sqd.reach()
end

if not sqd.enterCity() then
return false
end

return sqd.walkIn(10)
end

function btd.worldBoss.fight()
local ggxw = btd.worldBoss
local wnzv = ggxw.remote(_d("O1sHWQYlHx9HNFYWDh8C"))

local function lwxq(kxym)
ggxw.nextFightAt = os.clock() + (kxym or 20)

return false
end

if not wnzv then
return lwxq(60)
end

if ggxw.stopAtFull and ggxw.meterFull() then
return lwxq(20)
end

if pa.enabled
and (pa.tpToBay or pa.deepZone)
and pa.phase ~= _d("BVAZUA") then
return false
end

ggxw.takingUntil = os.clock() + 45

local elya = workspace:FindFirstChild(_d("O1sHWQYlHx9HNEcHCRE"))
local czqg = elya and (elya:FindFirstChild(_d("L1EZWS8GCA")) or elya) or nil
local yhes = fh.Character and fh.Character:FindFirstChild(_d("JEEYVAwIGQhmGloWNxEeQA"))

local function loyq()
if not (czqg and yhes) then
return nil
end

local xfv, gzz = pcall(function()
return czqg:GetPivot()
end)

if not xfv then
return nil
end

return (yhes.Position - gzz.Position).Magnitude
end

local jhyi = ggxw.usesGameChain() and (loyq() or math.huge) <= 60

if not jhyi and not ggxw.approach() then
ggxw.takingUntil = os.clock() + 3

return lwxq(ggxw.inArena() and 3 or 20)
end

if czqg and yhes then
local erd, fgge = pcall(function()
return czqg:GetPivot()
end)

if not erd or (yhes.Position - fgge.Position).Magnitude > 60 then
ggxw.takingUntil = os.clock() + 2

return lwxq(ggxw.inArena() and 2 or 10)
end
end

rcj.bossTeams.applyTeam(ggxw.team)

task.wait(jhyi and 0 or (ggxw.walkToBoss and 0.3 or 1.4))

pcall(function()
wnzv:FireServer(_d("Cl0SXRY"))
end)

ggxw.fightAt = os.clock()

ggxw.holdUntil = os.clock() + (ggxw.usesGameChain() and 0.7 or 4)

ggxw.takingUntil = os.clock() + 0.6

if pa.enabled and (pa.tpToBay or pa.deepZone) then
pa.deepPhase = _d("BVAZUA")
pa.deepStageAt = 0
pa.nextCastAt = 0
end

ggxw.killsAtFire = type(ggxw.state) == _d("GFUXWQc") and tonumber(ggxw.state.kills) or nil

if not ggxw.usesGameChain() and pa.enabled
and (pa.tpToBay or pa.deepZone) then
ggxw.nextFightAt = os.clock() + 1
end

return true
end

function btd.worldBoss.buy(shg)
local wl = btd.worldBoss
local mlhr = wl.remote(_d("O1sHWQYlHx9HNFYWDh8C"))

shg = shg or 1

if not mlhr then
return 0
end

local rgd = 0

for syx = 1, shg do
local cxtt = wl.state

if type(cxtt) ~= _d("GFUXWQc") or type(cxtt.shop) ~= _d("GFUXWQc") then
break
end

if os.clock() < wl.buyAt then
break
end

local qs = tonumber(cxtt.medals) or 0
local tj = nil

for ffi, tbtc in ipairs(cxtt.shop) do
local iajd = tonumber(tbtc.price) or 0
local hsni = tbtc.kind ~= _d("BUAQWA") or (tonumber(tbtc.left) or 0) > 0

if wl.selected[tbtc.id] == true and hsni and tbtc.owned ~= true and iajd <= qs then
tj = tbtc
break
end
end

if not tj then
break
end

pcall(function()
mlhr:FireServer(_d("DkEM"), tj.id, 1)
end)

rgd = rgd + 1
wl.bought = wl.bought + 1
wl.buyAt = os.clock() + 1.2

wl.syncedAt = 0
wl.requestSync()
task.wait(1.1)
end

return rgd
end

btd.worldBoss.questGroups = { _d("HFEHRg0JEQA"), _d("C1gaVwML"), _d("Cl0ZWQ"), _d("HlEGQRAOExhdGls") }

function btd.worldBoss.questRows(zz)
local hnb = btd.worldBoss
local zptw = type(zz) == _d("GFUXWQc") and zz.quests or nil
local qb = {}

if type(zptw) ~= _d("GFUXWQc") then
return qb
end

for awk, azh in ipairs(hnb.questGroups) do
local cfxc = zptw[azh]

if type(cfxc) == _d("GFUXWQc") then
for fsoe, mrx in ipairs(cfxc) do
if type(mrx) == _d("GFUXWQc") then
table.insert(qb, mrx)
end
end
end
end

return qb
end

function btd.worldBoss.claim()
local rrjz = btd.worldBoss
local vwd = rrjz.remote(_d("O1sHWQYlHx9HNFYWDh8C"))
local jebx = rrjz.state

if not vwd or type(jebx) ~= _d("GFUXWQc") or type(jebx.quests) ~= _d("GFUXWQc") then
return 0
end

if os.clock() < rrjz.claimAt then
return 0
end

local slaf = rrjz.questRows(jebx)

if #slaf == 0 then
return 0
end

local lpqo = {}

for zqfy, ycf in ipairs(slaf) do
if ycf.id ~= nil then
lpqo[tostring(ycf.id)] = true
end
end

for snq, wxzs in pairs(rrjz.claimFired) do
if not lpqo[snq] or os.clock() - wxzs > 120 then
rrjz.claimFired[snq] = nil
end
end

local sioh = nil

for vnw, gxed in ipairs(slaf) do
if gxed.complete == true and gxed.claimed ~= true and gxed.id ~= nil then
local bjc = tostring(gxed.id)
local mgyu = rrjz.claimFired[bjc]

if not (mgyu and os.clock() - mgyu < 6) then
sioh = gxed
break
end
end
end

if not sioh then
return 0
end

rrjz.claimFired[tostring(sioh.id)] = os.clock()
rrjz.claimedTotal = rrjz.claimedTotal + 1

pcall(function()
vwd:FireServer(_d("D1gUXA8"), sioh.id)
end)

rrjz.claimAt = os.clock() + 2
rrjz.syncedAt = 0
rrjz.requestSync()

return 1
end

btd.worldBoss.syncRemote = ipt(_d("O1sHWQYlHx9HJkwMBA"))

if btd.worldBoss.syncRemote then
jxjd(btd.worldBoss.syncRemote.OnClientEvent, function(siek)
local tmi = btd.worldBoss

if type(siek) ~= _d("GFUXWQc") then
return
end

tmi.state = siek
tmi.syncedAt = os.clock()

if siek.inFight == true then
tmi.wasFighting = true
elseif tmi.wasFighting then
tmi.wasFighting = false

if pa.enabled then
pcall(pa.recover)
end
end
end)
end

task.spawn(function()
btd.worldBoss.requestSync()
end)

task.spawn(function()
while xkj() do
local lcw = btd.worldBoss
local iln = lcw.state

if lcw.autoClaim then
if os.clock() - lcw.syncedAt > 4 and os.clock() - lcw.askedAt > 1 then
lcw.requestSync()
end

lcw.claim()
end

if lcw.enabled then

if os.clock() - lcw.syncedAt > (lcw.bossUp() and 1.5 or 4) and os.clock() - lcw.askedAt > 1 then
lcw.requestSync()
end

if lcw.autoBuy and next(lcw.selected) then
lcw.buy(1)
end

local kzgy = type(iln) == _d("GFUXWQc") and iln.repeatOn == true

if lcw.usesGameChain() then

local oaxw = type(iln) == _d("GFUXWQc") and tonumber(iln.kills) or nil

if oaxw and oaxw ~= lcw.seenKills then
lcw.seenKills = oaxw
lcw.progressAt = os.clock()

lcw.chainWaitAt = nil
end

if lcw.standDown() then

if kzgy and os.clock() - (lcw.repeatAskedAt or 0) > 6 then
lcw.repeatSeeded = false
lcw.setRepeat(false)
end
elseif lcw.bossUp() and not kzgy and os.clock() - (lcw.repeatAskedAt or 0) > 20 then
if lcw.approach() then
lcw.repeatSeeded = true
lcw.progressAt = os.clock()

lcw.setRepeat(true)
end
end

if lcw.hasWork() and os.clock() >= lcw.holdUntil
and os.clock() >= (lcw.nextFightAt or 0)
and os.clock() - (lcw.kickAt or 0) > 0.5
and not (lcw.stopAtFull and lcw.meterFull())
and not rqc.prioBlocks(_d("DlsGRg")) then
lcw.chainWaitAt = nil
lcw.kickAt = os.clock()
lcw.fight()
elseif not lcw.hasWork() then
lcw.chainWaitAt = nil
end

if not lcw.bossUp() then
lcw.chainWaitAt = nil

if kzgy and os.clock() - (lcw.repeatAskedAt or 0) > 6 then
lcw.repeatSeeded = false
lcw.setRepeat(false)
end
end
elseif lcw.isOpen() and kzgy and os.clock() - (lcw.repeatAskedAt or 0) > 6 then
lcw.setRepeat(false)
end

local jaxs = type(iln) == _d("GFUXWQc") and tonumber(iln.kills) or nil

if lcw.killsAtFire ~= nil and jaxs == lcw.killsAtFire
and os.clock() - (lcw.fightAt or 0) > (lcw.inArena() and 2.5 or 9)
and os.clock() < (lcw.nextFightAt or 0)
and os.clock() >= lcw.holdUntil then
lcw.killsAtFire = nil
lcw.nextFightAt = os.clock()
end

if not lcw.usesGameChain() and lcw.hasWork() and os.clock() >= lcw.holdUntil
and os.clock() >= (lcw.nextFightAt or 0)
and not (lcw.stopAtFull and lcw.meterFull()) then

local qwl = fgoh()
local kte = rqc.roleSlot(_d("AkQW")) or 1
local osrb = rqc.enabled and rqc.busy(kte)

if not qwl and not osrb then
lcw.fight()
end
end
end

local lnlh = lcw.bodyText()

if lcw.bodyParagraph and lnlh ~= lcw.bodyShown then
lcw.bodyShown = lnlh

pcall(function()
lcw.bodyParagraph:UpdateBody(lnlh)
end)
end

local ixhj = lcw.shopText()

if lcw.shopParagraph and ixhj ~= lcw.shopShown then
lcw.shopShown = ixhj

pcall(function()
lcw.shopParagraph:UpdateBody(ixhj)
end)
end

task.wait(0.5)
end
end)

function rqc.roomsHaveWork()
if not fwd.enabled then
return false
end

local mgsz = fwd.progress

if mgsz == nil then
return true
end

for elfu, grf in ipairs(st.Milestones) do
if st.isMilestoneUnlocked(grf, mgsz) and not st.isMilestoneCleared(grf, mgsz) then
return true
end
end

return false
end

function rqc.raidHasWork()
if not btd.enabled then
return false
end

local ryq = kq:FindFirstChild(_d("PlUcUTETERhBBg"))

if not ryq then
return false
end

if not (ryq:GetAttribute(_d("JUc6RQcJ")) == true or ryq:GetAttribute(_d("KlsHVgcD")) == true) then
return false
end

for tfjd, gfud in ipairs({ 1, 2 }) do
local hk = (gfud ~= 1 and not rqc.splitNpc()) and 1 or nil
local bxn = btd.picks[hk or gfud] and btd.bossFor(gfud, hk)

if bxn and btd.cleared[bxn] ~= bip(bxn) then
return true
end
end

return false
end

function rqc.prioRank(uwkd)
for cgco, auja in ipairs(rqc.prioGroups) do
if auja.id == uwkd then
return auja.rank
end
end

return 99
end

function rqc.prioWants(ps)
if ps == _d("HlUcURE") then
return rqc.raidHasWork()
elseif ps == _d("DlsGRg") then

return btd.worldBoss.hasWork()
elseif ps == _d("AkQW") then
return fgoh() or rqc.roomsHaveWork()
elseif ps == _d("BFUHUQEIAgk") then
return yme.active()
elseif ps == _d("G1UBUBA") then
return pa.enabled or uu.autoOn == true
end

return false
end

function rqc.prioBlocks(mopz)
local babl = rqc.prioRank(mopz)

for kwxj, ukq in ipairs(rqc.prioGroups) do
if ukq.id ~= mopz and ukq.rank < babl and rqc.prioWants(ukq.id) then
return true
end
end

return false
end

function rqc.digBlocked()
local txn = rqc.prioRank(_d("G1UBUBA"))

for uqhy, gcnj in ipairs(rqc.prioGroups) do
if gcnj.id ~= _d("G1UBUBA") and gcnj.id ~= _d("BFUHUQEIAgk")
and gcnj.rank < txn and rqc.prioWants(gcnj.id) then
return true
end
end

return false
end

function rqc.towerYields()
for cs, cqv in ipairs({ _d("HlUcURE"), _d("DlsGRg"), _d("AkQW") }) do
if rqc.prioWants(cqv) then
return true
end
end

return false
end

function rqc.towerOutranks()
return not rqc.enabled and (yme.active() or pwc.run.enabled)
end

local function fegz(vgim)
if not vgim then
return false
end

local ijxk = false

for dok, zkh in ipairs(getconnections(vgim.MouseButton1Click)) do
local kle = zkh.Function

if type(kle) == _d("CkEbVhYOHwI") then
pcall(kle)
else
pcall(function()
zkh:Fire()
end)
end

ijxk = true
end

return ijxk
end

function gcx()
for cenh, hsyn in ipairs({ _d("LlUBQQ4CNxld"), _d("LlUBQQ4CNxldRw") }) do
local aqw = rd:FindFirstChild(hsyn)

if aqw then
local ibm = aqw:FindFirstChild(_d("LlUBQQ4CIw9GEFAM"))
local xgs = ibm and ibm:FindFirstChild(_d("PUEcVgkgGRpRIEUgEgQYWxs"))

if fegz(xgs) then
return true
end

local tek = aqw:FindFirstChild(_d("KlgaWhA0Ex5REFs"))
local pym = tek and tek:FindFirstChild(_d("LlsBQQ0KMg1G"))
local ldps = pym and pym:FindFirstChild(_d("K10DUDcXMhlAAVoM"))

if fegz(ldps) then
return true
end
end
end

local osat = kq:FindFirstChild(_d("PlEYWhYCAw"))
local ysk = osat and osat:FindFirstChild(_d("K10DUDcXJANDEEc"))
local keh = osat and osat:FindFirstChild(_d("KVoRYQ0QFR5mEFgNExU"))

if not (ysk or keh) then
return false
end

if ysk then
pcall(function()
ysk:FireServer()
end)
end

if keh then
pcall(function()
keh:FireServer(1)
end)
end

oi.manualPause = false
oi.floor = nil
gbg.restorePause()

return true
end

local bzlr = gcx

function gcx()

oi.lastGiveUp = {
at = os.time(),
clock = os.clock(),
floor = oi.floor,
parked = gbg.parked(),
active = sok(),
hard = gbg.hardNow(),
nightmare = oi.nightmare == true,
caller = debug.traceback(_d(""), 2),
}

local guia = bzlr()

if guia then
sop.armedAt = os.clock()
end

return guia
end

function nzy(zckm)

local dbz = false

if zckm ~= false and sok() then
local tbp = eth()

if tbp then
dbz = gbg.pauseAt(true, tbp) or dbz

oi.pauseArmed = true
end
end

for tu, wcik in ipairs({ _d("LlUBQQ4CNxld"), _d("LlUBQQ4CNxldRw") }) do
local sit = rd:FindFirstChild(wcik)

if sit then
local qmm = sit:FindFirstChild(_d("LlUBQQ4CIw9GEFAM"))
local gpgy = qmm and qmm:FindFirstChild(_d("PUEcVgklAglVHncXEwQDWg"))

if gpgy then

if tostring(gpgy.Text):find(_d("jqjm"), 1, true) then
dbz = true
elseif fegz(gpgy) then
dbz = true
end
end

local kyyc = sit:FindFirstChild(_d("KlgaWhA0Ex5REFs"))

if kyyc and kyyc.Visible then
local muc = kyyc:FindFirstChild(_d("LlsBQQ0KMg1G"))
local dgsw = muc and muc:FindFirstChild(_d("OFUeUCAVFQ1fN0AWEx8C"))

if fegz(dgsw) then
dbz = true
end
end
end
end

return dbz
end

function yme.pauseRun()
if not sok() then
pcall(function()
qza:Dialog({
Title = _d("PFUARgdHOR9YFFsGRzgNRhFWDRUV"),
Description = _d("IltVQQ0QFR4UB0AMRxkfFBlcFAJQHl0SXRZHHgNDWRURCFAYXBBHB0cZHxQbWhYPGQJTVUENRwANQQZQTA"),
Buttons = {
{
Name = _d("K1sBFQsT"),
},
},
})
end)

return
end

yme.paused = true
yme.manualPause = true
local czf = nzy(false)

pcall(function()
qza:Notify({
Title = _d("PFUARgdHOR9YFFsGRzgNRhFWDRUV"),
Description = czf and _d("OFsCUBBHAhlaVUUDEgMJUFs") or _d("PkEbFQsUUABdA1BORxIZQFVbDUcSHlEUXkIFBRhAGltCAR8ZWhEb"),
Lifetime = 5,
})
end)
end

function yme.giveUpRun()
if not sok() then
pcall(function()
qza:Dialog({
Title = _d("K10DUEIyAEx9BlkDCRRMfBRHBgQfHlE"),
Description = _d("IltVQQ0QFR4UB0AMRxkfFBlcFAJQHl0SXRZHHgNDWRURCFAYXBBHB0cZHxQbWhYPGQJTVUENRxcFQhAVFxde"),
Buttons = {
{
Name = _d("K1sBFQsT"),
},
},
})
end)

return
end

yme.gaveUp = true
yme.paused = true
local rcyz = gcx()

pcall(function()
qza:Notify({
Title = _d("K10DUEIyAEx9BlkDCRRMfBRHBgQfHlE"),
Description = rcyz and _d("K1UDUEISAExAHVBCBAUeRhBbFkcEA0MQR0IBHANbBxs") or _d("PkEbFQsUUABdA1BORxIZQFVbDUcXBUIQFRcXUA5BAUENCVAKWwBbBkk"),
Lifetime = 5,
})
end)
end

task.spawn(function()
while xkj() do

pcall(gbg.pinMode)

if oi.pauseArmed and not slpc.enabled
and (not oi.enabled or not oi.paused) then
gbg.restorePause()

if gbg.pauseState() ~= true then
oi.pauseArmed = false
end
end

if oi.enabled and not oi.manualPause and rqc.towerSlot() ~= nil
and not pwc.run.enabled then

local akls = os.clock() - (oi.floorAt or 0) > 12
and os.clock() - (oi.battleAt or 0) > 12

local lyjr = rqc.towerSlot() == 1 and not oi.paused
and not (slpc.enabled and slpc.floor > 0)
and akls
and gbg.parked()

if lyjr then
oi.parkedAt = oi.parkedAt > 0 and oi.parkedAt or os.clock()

if os.clock() - oi.parkedAt >= 25 then
oi.parkedAt = os.clock()
gcx()
end
else
oi.parkedAt = 0
end

local dsy = gbg.hardPickNow()

local aak = not oi.paused and not oi.pending
and not (slpc.enabled and slpc.floor > 0)
and sok()
and dsy ~= nil
and dsy ~= (oi.nightmare == true)

if aak then
oi.modeWrongAt = oi.modeWrongAt or os.clock()
else
oi.modeWrongAt = nil
end

if oi.modeWrongAt and os.clock() - oi.modeWrongAt > 20
and os.clock() - (oi.modeFixAt or 0) > 20 then
oi.modeFixAt = os.clock()
oi.modeWrongAt = nil
gbg.endIfWrongMode(oi.nightmare == true)
end

if (oi.floorAt or 0) > 0 and not oi.paused
and os.clock() - oi.floorAt > 60
and os.clock() - (oi.battleAt or 0) > 60
and not sok()
and not rqc.busy(rqc.towerSlot() or 1) then
oi.floorAt = 0
oi.battleAt = 0
oi.floor = nil
end

if not rqc.enabled and (rqc.towerOutranks() or rqc.towerYields()) then
if not oi.paused then
oi.paused = true
nzy()
end

elseif rqc.slotFree(rqc.towerSlot() or 1)
and (oi.floorAt or 0) == 0
and not rcj.bossTeams.swapHold then
local ofqd = eth()
local rmy = slpc.enabled and slpc.floor or 0
local dqj = rmy > 0 and ofqd ~= nil and ofqd >= rmy

if dqj then
if not oi.paused then
oi.paused = true
nzy()
end
else

if oi.paused then
oi.paused = false
gbg.restorePause()
end

if not (oi.pending and os.time() < oi.pendingUntil) then

rcj.bossTeams.applyTower(_d("GFsCUBA"), 1)

gbg.hardPick(oi.nightmare == true)

local gbc = workspace:FindFirstChild(_d("L1UGQQ4CIANGAVQO"), true)

if gbc then
local gfrs = fh.Character
local zlsk = gfrs and gfrs:FindFirstChild(_d("JEEYVAwIGQhmGloWNxEeQA"))

if zlsk and (gbc.Position - zlsk.Position).Magnitude > 60 then
pcall(function()
ze.standAt(gbc.Position)
end)

task.wait(0.8)
end
end

bo.EndTowerRemote:FireServer(1)
task.wait(0.25)

bo.StartBattle:FireServer(_d("GFsCUBA"), { hard = oi.nightmare == true })

cm.triggered = false
cm.weatherTriggered = false

oi.floorAt = os.clock()

oi.floor = nil
oi.pending = true
oi.pendingUntil = os.time() + 8
task.wait(2)
end
end
end
end

task.wait(1)
end
end)

task.spawn(function()
while xkj() do
if yme.active() and rqc.hardcoreSlot() ~= nil then
local zvs = rqc.hardcoreSlot() or 1
local fc = yme.floorNow()

local djc = slpc.enabled and slpc.floor or 0
local fhvr = cm.enabled and cm.floor or 0

if djc <= 0 and not yme.stoodDown and not yme.manualPause
and not rcj.bossTeams.swapHold then
yme.paused = false
end

if yme.gaveUp then

elseif fhvr > 0 and fc and fc >= fhvr then
yme.gaveUp = true
yme.paused = true
local dyx = gcx()

pcall(function()
qza:Notify({
Title = _d("LUEBWkIgGRpRVWAS"),
Description = dyx and (_d("K1UDUEISAExVARUKBgIIVxpHB0cWAFsaR0I") .. fc .. _d("Qg")) or (_d("JFUHUQEIAgkUE1kNCAJM") .. fc .. _d("TEYQVAEPFQgYVVcXE1ACW1VSCxEVTEEFFQASBBhbGxUECAUCUFs")),
Lifetime = 5,
})
end)
elseif fc and djc > 0 and fc >= djc then
if not yme.paused then
yme.paused = true
nzy(false)
end
elseif rqc.prioBlocks(_d("BFUHUQEIAgk")) then

if not yme.stoodDown then
yme.stoodDown = true
yme.paused = true
nzy(false)
end
elseif yme.stoodDown then

yme.stoodDown = false
yme.paused = false
elseif not yme.paused and not rcj.bossTeams.swapHold then
if rqc.slotFree(zvs) and not (yme.pending and os.time() < yme.pendingUntil) then
yme.start(zvs)
task.wait(2)
end
end
end

task.wait(1)
end
end)

function rqc.slotActivity(xdh)
if not rqc.busy(xdh) then
return nil
end

local whe = rqc.role[xdh]
local pw = rd:FindFirstChild(xdh == 2 and _d("LlUBQQ4CNxldRw") or _d("LlUBQQ4CNxld"))
local jyio = pw and pw:FindFirstChild(_d("PkEbcw4IHx54FFcHCw"))
local gopb = jyio and jyio.Text or _d("")

if fwd.enabled and whe == _d("AkQW") then
local zbk = gopb:match(_d("MmYaWg9CA0ccUFFJTg"))

if zbk then
return _d("JVoTXAwOBAkUB1oNCgNMGVVHDQgdTA") .. zbk
end
end

if rqc.isTowerRole(whe)
and (oi.enabled or pwc.run.enabled or yme.active()) then
local iht = gopb:match(_d("MnIZWg0VVR8fXRAGTFk"))

if iht then
return rqc.roleName(xdh) .. _d("TBlVUw4IHx4U") .. iht
end
end

return nil
end

function rqc.statusText()
if not rqc.enabled then
return _d("LUEBWkI0HANAVVoEAVBBFBBDBxUJGFwcWwVHAhlaBhUNCVAfWBpBQlZe")
end

local hciz = {}

for znkx = 1, 2 do
local rhh = _d("P1gaQUI") .. tostring(znkx) .. _d("TBlV")
local efu = rqc.slotActivity(znkx)

if znkx == 2 and rqc.hasSlot2 == false then
rhh = rhh .. rqc.roleLabel(znkx) .. _d("TBlVWQ0EGwlQVR0MAhUIR1VBCgJQKEEUWUIlERhAGVBCNBwDQFw")
elseif efu then
rhh = rhh .. efu
elseif rqc.busy(znkx) then
rhh = rhh .. rqc.roleLabel(znkx) .. _d("TBlVUwsAGBhdG1I")
else
rhh = rhh .. rqc.roleLabel(znkx) .. _d("TBlVXAYLFQ")
end

table.insert(hciz, rhh)
end

return table.concat(hciz, _d("Zj4"))
end

task.spawn(function()
while xkj() do
rqc.hasSlot2 = rqc.detectSlot2()
task.wait(5)
end
end)

task.spawn(function()
while xkj() do

if not yme.island and slpc.enabled and slpc.floor > 0 then
local abmy = eth()

if abmy and abmy >= slpc.floor then
if not slpc.triggered then
slpc.triggered = true
nzy()

pcall(function()
bo.SaveClientData:FireServer({
pauseInfiniteEnabled = true,
pauseInfiniteAt = abmy,
})
end)
end
else
slpc.triggered = false
end
end

if not yme.island and cm.enabled and cm.floor > 0 then
local bjpr = eth()

if bjpr and bjpr >= cm.floor then

if not cm.triggered and sok() then
cm.triggered = true
local qkz = gcx()

pcall(function()
qza:Notify({
Title = _d("LUEBWkIgGRpRVWAS"),
Description = qkz and (_d("K1UDUEISAExVARUECx8DRlU") .. bjpr .. _d("Qg")) or (_d("KlgaWhBH") .. bjpr .. _d("TEYQVAEPFQgYVVcXE1ACW1VSCxEVTEEFFQASBBhbGxUECAUCUFs")),
Lifetime = 5,
})
end)
end
else
cm.triggered = false
end
end

if not yme.island and cm.weatherEnabled then
local rgyn = eth()
local nhp = cm.weatherMinFloor <= 0
or (rgyn ~= nil and rgyn >= cm.weatherMinFloor)
local ghg = nhp and cm.weatherWanted() or nil

if ghg and cm.weatherLate then
local zsdv = cm.weatherLeft()

if zsdv == nil or zsdv > 20 then
ghg = nil
end
end

if ghg then
if not cm.weatherTriggered
and cm.weatherGivenFor ~= cm.weatherNow
and sok() then
cm.weatherTriggered = true
cm.weatherGivenFor = cm.weatherNow

local tllg = gcx()

pcall(function()
qza:Notify({
Title = _d("O1EUQQoCAkxzHEMHRyUc"),
Description = tllg
and (_d("K1UDUEISAExVARUECx8DRlU") .. tostring(rgyn) .. _d("TF0bFQ") .. ghg .. _d("Qg"))
or (ghg .. _d("TF0GFRcXXExWAEFCCR9MUxxDB0cFHBQXQBYTHwIUFFsREBUeUREb")),
Lifetime = 5,
})
end)
end
else
cm.weatherTriggered = false
end
end

task.wait(1)
end
end)

task.spawn(function()
if bo.WeatherChanged then
pcall(function()
jxjd(bo.WeatherChanged.OnClientEvent, function(qgic)

cm.weatherNow = nil
cm.weatherAt = 0
cm.weatherGivenFor = nil
sop.weatherSpent = nil

if type(qgic) == _d("H0AHXAwA") then
cm.weatherNow = qgic
end
end)
end)
end

while xkj() do
if os.clock() - cm.weatherAt > 5 then
cm.weatherAt = os.clock()

if bo.RequestWeatherState then
local zlj, cayy = pcall(function()
return bo.RequestWeatherState:InvokeServer()
end)

if zlj and type(cayy) == _d("H0AHXAwA") then
if cm.weatherNow ~= nil and cm.weatherNow ~= cayy then
sop.weatherSpent = nil
cm.weatherGivenFor = nil
end

cm.weatherNow = cayy
end
end
end

task.wait(1)
end
end)

task.spawn(function()
local glkb = nil
local ifl = nil
local fcy = 0

while xkj() do

if (sop.onWeather or sop.afterGiveUp) and os.clock() - fcy > 60 then
fcy = os.clock()

pcall(function()
bo.RequestItemSync:FireServer()
end)
end

if sop.onWeather and next(sop.weatherPotions) ~= nil then
local rkb = cm.weatherWanted(sop.weathers)

if rkb and cm.weatherNow ~= sop.weatherSpent then

sop.weatherSpent = cm.weatherNow
sop.pop(sop.weatherPotions, sop.weatherAmount, _d("O1EUQQoCAkw") .. rkb)
end
end

if sop.afterGiveUp and next(sop.giveUpPotions) ~= nil and sop.armedAt > 0 then

local fmxz = os.clock() - sop.armedAt

if not sok() or fmxz >= 3 then
if fmxz <= 30 then
sop.armedAt = 0
sop.pop(sop.giveUpPotions, sop.giveUpAmount, _d("LVIBUBBHFwVCEBUXFw"))
else

sop.armedAt = 0
end
end
end

local ifmd = sop.status()

if ifmd ~= glkb then
glkb = ifmd

pcall(function()
sop.weatherParagraph:UpdateBody(ifmd)
end)
end

local nvo = sop.giveUpStatus()

if nvo ~= ifl then
ifl = nvo

pcall(function()
sop.giveUpParagraph:UpdateBody(nvo)
end)
end

task.wait(1)
end
end)

task.spawn(function()
while xkj() do
local ayhl = pa.stick

if ayhl.enabled and os.clock() >= ayhl.at then
ayhl.at = os.clock() + 3

local oilh = nil

for leby, xpm in ipairs(workspace:GetDescendants()) do
if (xpm:IsA(_d("LlUGUDIGAhg")) or xpm:IsA(_d("IVsRUA4")))
and ayhl.names[string.lower(xpm.Name)] then
oilh = xpm
break
end
end

local xgz = fh.Character
local jwm = xgz and xgz:FindFirstChild(_d("JEEYVAwIGQhmGloWNxEeQA"))
local xre = oilh and (oilh:IsA(_d("LlUGUDIGAhg")) and oilh or oilh:FindFirstChildWhichIsA(_d("LlUGUDIGAhg"), true))

if xre and jwm then
local xyg = xre:FindFirstChildWhichIsA(_d("PEYaTQsKGRhNJUcNCgAY"))
or (oilh ~= xre and oilh:FindFirstChildWhichIsA(_d("PEYaTQsKGRhNJUcNCgAY"), true))

if (jwm.Position - xre.Position).Magnitude > 4 then
pcall(function()
xgz:PivotTo(CFrame.new(xre.Position + Vector3.new(0, 3, 0)))
end)

task.wait(0.4)
end

if xyg then
pcall(function()
xyg:InputHoldBegin()
task.wait(0.2)
xyg:InputHoldEnd()
end)
end

ayhl.hits = ayhl.hits + 1
ayhl.last = _d("HF0WXgcDUBlEVVQWRw") .. math.floor(xre.Position.X) .. _d("QBQ") .. math.floor(xre.Position.Z)

pcall(function()
qza:Notify({
Title = _d("IEEWXkI0BAVXHg"),
Description = ayhl.last,
Lifetime = 4,
})
end)
elseif oilh then
ayhl.last = _d("ClsAWwZH") .. oilh:GetFullName() .. _d("QBQbWhYPGQJTVUENRwMYVRtRQgge")
else
ayhl.last = _d("AltVRhYOEwcUHFtCExgJFAJaEAsU")
end
end

task.wait(1)
end
end)

getgenv().ACBXStick = pa.stick

task.spawn(function()

local rur = game:GetService(_d("Ol0HQRcGHCVaBUAWKhECVRJQEA"))

local function gazu()
local txi = fh.Character
local ext = txi and txi:FindFirstChildOfClass(_d("JEEYVAwIGQg"))

if ext and ext.Health > 0 then
pcall(function()
ext.Jump = true
end)
end

pcall(function()
rur:SendKeyEvent(true, Enum.KeyCode.Space, false, fh)
end)

task.wait(0.05)

pcall(function()
rur:SendKeyEvent(false, Enum.KeyCode.Space, false, fh)
end)

jrgd.jumps = jrgd.jumps + 1
end

while xkj() do
if jrgd.enabled and os.clock() >= jrgd.nextAt then
jrgd.nextAt = os.clock() + 300
gazu()
end

task.wait(1)
end
end)

qza:SetState(true)

task.defer(function()
local yifg
for uhkm, kbzu in ipairs(game:GetService(_d("L1sHUCUSGQ")):GetDescendants()) do
if kbzu:IsA(_d("OFENQS4GEglY")) and kbzu.Text == fqs then
yifg = kbzu
break
end
end

if not yifg then
return
end

local vgxh = yifg
while vgxh and not (vgxh:IsA(_d("KkYUWAc")) and vgxh.AbsoluteSize.X >= 600 and vgxh.AbsoluteSize.Y >= 400) do
vgxh = vgxh.Parent
end

if vgxh then
vgxh.AnchorPoint = Vector2.new(0, 0)

local xjm = vgxh.AbsoluteSize
vgxh.Position = UDim2.new(0.5, -xjm.X / 2, 0.5, -xjm.Y / 2 - 20)
end
end)

task.defer(function()
task.wait(0.1)

for ansn, rtps in ipairs(game:GetService(_d("L1sHUCUSGQ")):GetDescendants()) do
if rtps:IsA(_d("P1cHWg4LGQJTM0cDChU")) and rtps.Name == _d("KVgQWAcJBB9nFkcNCxwFWhI") then
rtps.CanvasPosition = Vector2.new(0, 0)
end
end
end)

getgenv().ACBXTowerRunActive = sok
getgenv().ACBXWindow = qza

getgenv().ACBXPriority = {
groups = rqc.prioGroups,
rows = df.prioRows,
rank = rqc.prioRank,
wants = rqc.prioWants,
blocks = rqc.prioBlocks,
set = function(olvm, ahqg)
df.setPriority(olvm, ahqg)
end,
}

ct.repo = _d("L1ZHek0GEw5M")
ct.url = _d("BEABRRFdX0NGFEJMABkYXABXFxQVHlcaWxYCHhgaFloPSDMOBjoaAwQSFBsYVAsJXw1XF01MCwUN")
ct.versionUrl = _d("BEABRRFdX0NGFEJMABkYXABXFxQVHlcaWxYCHhgaFloPSDMOBjoaAwQSFBsYVAsJXxpRB0YLCB5CQA1B")

ct.announced = false

function ct.fetch(jplj)

local pmn, wcj = pcall(function()
return game:HttpGet(jplj .. _d("U0JI") .. os.time() .. _d("SkZI") .. math.random(1, 100000))
end)

if not pmn or type(wcj) ~= _d("H0AHXAwA") or #wcj == 0 then
return nil
end

if wcj:find(_d("MgBFAQ")) or wcj:find(_d("MnoaQUIhHxlaEQ")) then
return nil
end

return wcj
end

function ct.check()
if ct.buildId == _d("CFED") then
return nil, _d("CFEDFQASGQBQ")
end

if ct.checking then
return nil, _d("DkEGTA")
end

ct.checking = true
local zjix = ct.fetch(ct.versionUrl)
ct.checking = false

if not zjix then
return nil, _d("AltVQwcVAwVbGxUEDhwJ")
end

local nb = zjix:match(_d("MhEGH0pJXUURBh9G")) or _d("")
nb = nb:gsub(_d("SUdfP0xNVA"), _d(""))

if nb == _d("") or not ct.newer(nb) then
return nil, _d("D0EHRwcJBA")
end

return nb
end

function ct.newer(errv)
local function nhuz(uo)
local jvfe, pwz = tostring(uo or _d("")):match(_d("GgtdEAZCFElQUFFHA1UIHVAYSkIUSVBQUUcDWQ"))

return jvfe and (jvfe .. pwz) or nil
end

local function wjx(mrob)
local vsw = tostring(mrob or _d(""))

if not vsw:match(_d("MhERHkdJT0lQXxE")) then
return nil
end

local hbnt = {}

for phcp in vsw:gmatch(_d("SVBe")) do
hbnt[#hbnt + 1] = tonumber(phcp) or 0
end

return #hbnt > 0 and hbnt or nil
end

local dit, ca = wjx(errv), wjx(ct.buildId)

if dit and ca then
for jzj = 1, math.max(#dit, #ca) do
local kvd = dit[jzj] or 0
local nrj = ca[jzj] or 0

if kvd ~= nrj then
return kvd > nrj
end
end

return false
end

if dit or ca then
return dit ~= nil
end

local veyy, oyec = nhuz(errv), nhuz(ct.buildId)

if not veyy or not oyec then
return tostring(errv) ~= tostring(ct.buildId)
end

return veyy > oyec
end

function ct.busy()
if rcj.battlePending or rcj.currentBattle then
return true
end

local gbks = getgenv().ACBXTowerRunActive

if type(gbks) == _d("CkEbVhYOHwI") then
local dvua, eosz = pcall(gbks)

if dvua and eosz then
return true
end
end

return false
end

function ct.apply(lhl)
if ct.applying then
return false
end

ct.applying = true

local owpu = ct.fetch(ct.url)

if not owpu then
ct.applying = false
warn(_d("N3U2dzo6UBlEEVQWAkpMVxpADgNQAlsBFQYIBwJYGlQGRw") .. tostring(lhl) .. _d("QBQGQQMeGQJTVVoMRw") .. ct.buildId)

pcall(function()
qza:Notify({
Title = _d("OUQRVBYCUApVHFkHAw"),
Description = _d("L1sAWQZHHgNAVVENEB4AWxRRQg") .. tostring(lhl) .. _d("QhQmQQsLHExGAFsMDh4LFA") .. ct.buildId .. _d("Qg"),
Lifetime = 8,
})
end)

return false
end

local vya, gil = loadstring(owpu)

if not vya then
ct.applying = false
warn(_d("N3U2dzo6UBlEEVQWAkpM") .. tostring(lhl) .. _d("TFAaUBFHHgNAVVYNCgAFWBAVT0c") .. tostring(gil))

pcall(function()
qza:Notify({
Title = _d("OUQRVBYCUB5RH1ABExUI"),
Description = _d("LkEcWQZH") .. tostring(lhl) .. _d("TFIUXA4CFExAGhUBCB0cXRlQTEcjGF0ZWUIVBQJaHFsFRw") .. ct.buildId .. _d("Qg"),
Lifetime = 8,
})
end)

return false
end

pcall(function()
qza:Notify({
Title = _d("OUQRVBYOHgs"),
Description = _d("PlEZWgMDGQJTVQ") .. ct.buildId .. _d("TBlLFQ") .. lhl .. _d("Qg"),
Lifetime = 4,
})
end)

task.wait(0.4)

ct.cameFrom = ct.buildId
getgenv().ACBXUpdatedFrom = ct.buildId

pcall(function()
qza:Unload()
end)

getgenv().ACBXWindow = nil

task.wait(0.5)

local nq, vy = pcall(vya)

if not nq then
ct.applying = false
warn(_d("N3U2dzo6UBlEEVQWAkpM") .. tostring(lhl) .. _d("TEAdRwcQUANaVVkNBhRMGVU") .. tostring(vy))
return false
end

return true
end

ct.cameFrom = getgenv().ACBXUpdatedFrom

task.defer(function()
if ct.cameFrom then
getgenv().ACBXUpdatedFrom = nil
print(_d("N3U2dzo6UA5BHFkGRw") .. ct.buildId .. _d("TBwARQYGBAlQVVMQCB1M") .. tostring(ct.cameFrom) .. _d("RQ"))

pcall(function()
qza:Notify({
Title = _d("OUQRVBYCFA"),
Description = _d("PkEbWwsJF0w") .. ct.buildId .. _d("QBQTRw0KUA") .. tostring(ct.cameFrom) .. _d("Qg"),
Lifetime = 6,
})
end)

return
end

print(_d("N3U2dzo6UA5BHFkGRw") .. ct.buildId)
end)

task.defer(function()
task.wait(12)

if ct.announced or ct.buildId == _d("CFED") or ct.enabled then
return
end

ct.announced = true

local tafd = ct.check()

if not tafd then
return
end

print(_d("N3U2dzo6UA5BHFkGRw") .. ct.buildId .. _d("TF0GFQACGAVaERU") .. tostring(tafd) .. _d("QBQUWwZHBRxQFEEHFFANRhAVDQEW"))
print(_d("N3U2dzo6UABbFFFCDgRMQxxBCl1QAFsUURETAgVaEh0FBh0JDj1BFhc3CUBdFw") .. ct.url .. _d("Th1cHUs"))

pcall(function()
qza:Notify({
Title = _d("OUQRVBYCUA1CFFwOBhIAUQ"),
Description = _d("PkEbWwsJF0w") .. ct.buildId .. _d("QBQ") .. tostring(tafd) .. _d("TF0GFQ0SBEIUJ1BPAggJVwBBB0cEAxQZWgMDUAVAWw"),
Lifetime = 10,
})
end)
end)

task.spawn(function()

task.wait(8)

while xkj() do
if not ct.enabled then

task.wait(5)
else
local gmsi = ct.check()
local zojh = ct.interval

if gmsi then
if ct.pendingVersion ~= gmsi or not ct.pendingSince then
ct.pendingVersion = gmsi
ct.pendingSince = os.clock()
end

local ivo = os.clock() - (ct.pendingSince or os.clock())

if not ct.busy() or ivo >= ct.forceAfter then
if ct.apply(gmsi) then

xeg = false
return
end

ct.pendingSince = os.clock()
zojh = ct.retry
else
zojh = ct.retry
end
else
ct.pendingVersion = nil
ct.pendingSince = nil
end

task.wait(zojh)
end
end
end)
getgenv().ACBXUpdater = ct

task.defer(function()
task.wait(0.9)

local fkt = df.loadUi()

if type(fkt) ~= _d("GFUXWQc") then
return
end

print(_d("N3U2dzo6UABbGl5CFRUfQBpHBwNKTA") .. tostring(fkt.theme) .. _d("TFUBFQ") .. tostring(fkt.scale))
end)

local function wqpa()
if not xkj() then
return
end

local mp = false
local glj = false

pcall(function()
mp = oi.nightmareToggle:GetState() == true
glj = oi.ui:GetState() == true
end)

if not (mp or glj) then
return
end

oi.nightmare = mp
oi.enabled = true
oi.manualPause = false
oi.paused = false
oi.parkedAt = 0
oi.modeWrongAt = nil
oi.pending = false
oi.pendingUntil = 0

gbg.restorePause()
oi.pauseArmed = false
gbg.hardPick(mp)

if not sok() then
oi.floorAt = 0
oi.battleAt = 0
oi.floor = nil
end

print(_d("N3U2dzo6UBhbAlAQRwIJRwBYBwNQDVIBUBBHAglYGlQGXVA") .. (mp and _d("Al0SXRYKER5R") or _d("AlsHWAML")))
end

task.defer(function()
task.wait(1)

local wszx = df.autoLoadName()

if not wszx then
return
end

local bxh, iqhu = df.load(wszx)

task.delay(2, wqpa)

df.selected = wszx
df.lastText = bxh and (_d("LUEBWkILHw1QEFFC") .. wszx .. _d("Qg"))
or (_d("LUEBWkILHw1QVVMDDhwJUE8V") .. tostring(iqhu))
df.savesAt = 0

pcall(function()
df.fileDropdown:UpdateSelection(wszx)
end)

pcall(function()
qza:Notify({
Title = _d("L1sbUwsA"),
Description = bxh and (_d("IFsUUQcDUA") .. wszx .. _d("TFsbFRETER5AWw"))
or (_d("L1sAWQZHHgNAVVkNBhRM") .. wszx .. _d("VhQ") .. tostring(iqhu)),
Lifetime = 5,
})
end)
end)

task.defer(function()
task.wait(3)

df.restorePriority()
end)

task.defer(function()
task.wait(3)

if df.autoLoadName() then
return
end

wqpa()
end)
