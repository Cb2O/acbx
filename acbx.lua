local _d = (function()
local A = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
local M = {}
local cache = {}
for i = 1, #A do
M[string.sub(A, i, i)] = i - 1
end
local K = string.char(57, 99, 113, 57, 101, 115, 109)
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

local yxvr = "ACB Rebirth v1.0"

local function tn(sa)
for gou, ejf in ipairs(sa:GetDescendants()) do
if ejf:IsA(_d("bQYJTSkSD1wP")) and ejf.Text == yxvr then
local ud = ejf
while ud and not ud:IsA(_d("agADXAAdKkwK")) do
ud = ud.Parent
end
return ud
end
end
end

local function smbq()
local hxf = game:GetService(_d("aQ8QQAABHg")).LocalPlayer

for udc, xga in ipairs({
(gethui and gethui() or game:GetService(_d("egwDXCIGBA"))),
game:GetService(_d("egwDXCIGBA")),
hxf and hxf:FindFirstChild(_d("aQ8QQAABKkwK")),
}) do
for sryj, nz in ipairs(xga:GetChildren()) do

if nz:IsA(_d("agADXAAdKkwK")) then
local ux = nz:FindFirstChild(_d("ewICXA"))

if ux and ux:FindFirstChild(_d("agoVXAcSHw")) and ux:FindFirstChild(_d("egwfTQAdGQ")) then
return nz
end
end
end
end
end

if smbq() and getgenv().ACBXAllowReload ~= true then
local tcn = getgenv().ACBXWindow
local uq = false
local ross = false

if tcn and tcn.Dialog then
pcall(function()
if tcn.GetState and tcn:GetState() == false then
tcn:SetState(true)
end

tcn:Dialog({
Title = _d("eCAzGTcWD1ARBVFFGh4ZAh1LABIJQEMDTAsdBFcE"),
Description = _d("eEMSVhUKTVAQUVgJAQhYBwgZCRwMXQYVGQwdTU0LGEpFAAhKEBhWC11NawYBVQQQCBkKBRkSGhlRQwVRDABNVg0UBkUnBVxDA0wLHQRXBFFaCgMUGRAFVhUATV8KA0oRX01KDFFWCx8UGQwfXEUWG1wRUV0XGhtcEFFNDRZNWAASVhAdGRc"),
Buttons = {
{
Name = _d("awYBVQQQCA"),
Callback = function()
ross = true
uq = true
end,
},
{
Name = _d("cgYUSQ"),
Callback = function()
uq = true
end,
},
},
})
end)
else

ross = true
uq = true
end

local bwdm = os.clock() + 90

while not uq and os.clock() < bwdm do
task.wait(0.25)
end

if not ross then
warn(_d("YiIyez0uTVUMEF1FAQhfFgJcAVNAGRcZXEUQAkkaUU0NEhkZCgIZFwYDVwofXkUAGVgaAhdFMAFQABoZNxYdVQISXEUHAhkQBlgVUwRNT1FWF1MYSgZRbAsfAlgHUUoGAQRJF1FQC1METRBRagAHGVANFkpFBwxbTQ"))

return
end

warn(_d("YiIyez0uTUsGAVUEEARXBFFNDRZNSxYfVwwdChkAHkkcUxpQFxkZERsESkMeVwBd"))
end

getgenv().ACBXAllowReload = nil

local yal = getgenv().ACBXConnections
if type(yal) == _d("TQITVQA") then
for fiw, al in ipairs(yal) do
pcall(function()
al:Disconnect()
end)
end
end

local ntkj = {}
getgenv().ACBXConnections = ntkj

local function jdcu(mxw, vjq)
local axuf = mxw:Connect(vjq)

table.insert(ntkj, axuf)

return axuf
end

local pn = getgenv().ACBXWindow
if pn then
pcall(function()
pn:Unload()
end)
end

for fjfd, ugt in ipairs({
game:GetService(_d("egwDXCIGBA")),
game:GetService(_d("aQ8QQAABHg")).LocalPlayer:FindFirstChild(_d("aQ8QQAABKkwK")),
}) do
if ugt then
local otne = tn(ugt)
if otne then
otne:Destroy()
end
end
end

local yk = game:GetService(_d("aQ8QQAABHg"))
local phy = game:GetService(_d("awYBVQwQDE0GFWoRHB9YBBQ"))
local zyrf = game:GetService(_d("aQIFUQMaA10KH142Fh9PChJc"))
local jtms = game:GetService(_d("axYfagABG1AAFA"))
local ovr = yk.LocalPlayer
local hk = ovr:WaitForChild(_d("aQ8QQAABKkwK"))

local dobi = false

local function cuim()
pcall(function()
local tgx = game:GetService(_d("bRQUXAsgCEsVGFoA"))
local erkv = (gethui and gethui()) or hk
local upjf = Color3.fromRGB(77, 166, 255)
local vuyy = ovr.DisplayName

local function ed(rh, cx, gqg)
tgx:Create(
rh,
TweenInfo.new(cx, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
gqg
):Play()
task.wait(cx)
end

local gh = Instance.new(_d("agADXAAdKkwK"))
gh.Name = _d("eCAzYSwdGUsM")
gh.IgnoreGuiInset = true
gh.DisplayOrder = 1000000
gh.ResetOnSpawn = false
gh.Parent = erkv

local fz = Instance.new(_d("fxEQVAA"))
fz.Size = UDim2.fromScale(1, 1)
fz.BackgroundColor3 = Color3.fromRGB(4, 6, 11)
fz.BackgroundTransparency = 1
fz.BorderSizePixel = 0
fz.Parent = gh

local mglp = Instance.new(_d("fxEQVAA"))
mglp.AnchorPoint = Vector2.new(0.5, 0.5)
mglp.Position = UDim2.fromScale(0.5, 0.5)
mglp.Size = UDim2.fromOffset(400, 176)
mglp.BackgroundColor3 = Color3.fromRGB(11, 16, 26)
mglp.BackgroundTransparency = 1
mglp.BorderSizePixel = 0
mglp.Parent = gh

local egl = Instance.new(_d("bCoyVhcdCEs"))
egl.CornerRadius = UDim.new(0, 14)
egl.Parent = mglp

local gt = Instance.new(_d("bCoiTRccBlw"))
gt.Color = Color3.fromRGB(46, 60, 86)
gt.Thickness = 1
gt.Transparency = 1
gt.Parent = mglp

local rs = Instance.new(_d("fxEQVAA"))
rs.Size = UDim2.fromOffset(44, 2)
rs.Position = UDim2.new(0.5, -22, 0, 34)
rs.BackgroundColor3 = upjf
rs.BorderSizePixel = 0
rs.BackgroundTransparency = 1
rs.Parent = mglp

local dg = Instance.new(_d("bQYJTSkSD1wP"))
dg.BackgroundTransparency = 1
dg.Size = UDim2.new(1, -48, 0, 48)
dg.Position = UDim2.fromOffset(24, 42)
dg.Font = Enum.Font.GothamBold
dg.Text = _d("eiFRcTAx")
dg.TextSize = 28
dg.TextYAlignment = Enum.TextYAlignment.Center
dg.TextColor3 = Color3.fromRGB(236, 242, 255)
dg.TextTransparency = 1
dg.Parent = mglp

local tb = Instance.new(_d("bQYJTSkSD1wP"))
tb.BackgroundTransparency = 1
tb.Size = UDim2.new(1, -48, 0, 20)
tb.Position = UDim2.fromOffset(24, 94)
tb.Font = Enum.Font.Gotham
tb.Text = _d("VQwQXQwdCg")
tb.TextSize = 14
tb.TextColor3 = Color3.fromRGB(150, 163, 186)
tb.TextTransparency = 1
tb.Parent = mglp

local knmf = Instance.new(_d("fxEQVAA"))
knmf.Size = UDim2.fromOffset(240, 3)
knmf.Position = UDim2.new(0.5, -120, 0, 130)
knmf.BackgroundColor3 = Color3.fromRGB(34, 44, 64)
knmf.BorderSizePixel = 0
knmf.BackgroundTransparency = 1
knmf.Parent = mglp

local fhg = Instance.new(_d("fxEQVAA"))
fhg.Size = UDim2.fromScale(0, 1)
fhg.BackgroundColor3 = upjf
fhg.BorderSizePixel = 0
fhg.BackgroundTransparency = 1
fhg.Parent = knmf

local ywfq = Instance.new(_d("bCoyVhcdCEs"))
ywfq.CornerRadius = UDim.new(0, 4)
ywfq.Parent = knmf

local dzgl = Instance.new(_d("bCoyVhcdCEs"))
dzgl.CornerRadius = UDim.new(0, 4)
dzgl.Parent = fhg

ed(fz, 0.35, { BackgroundTransparency = 0.15 })
task.spawn(function()
ed(mglp, 0.3, { BackgroundTransparency = 0 })
end)
task.spawn(function()
ed(gt, 0.3, { Transparency = 0 })
end)
ed(dg, 0.3, { TextTransparency = 0 })
ed(rs, 0.3, { BackgroundTransparency = 0 })
ed(tb, 0.3, { TextTransparency = 0 })
ed(knmf, 0.3, { BackgroundTransparency = 0 })
ed(fhg, 0.3, { BackgroundTransparency = 0 })

local ni = { _d("VQwQXQwdCg"), _d("VQwQXQwdChc"), _d("VQwQXQwdChdN"), _d("VQwQXQwdChdNXw") }
task.spawn(function()
tgx:Create(fhg, TweenInfo.new(1.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
Size = UDim2.fromScale(1, 1),
}):Play()
for ciiz = 1, 6 do
tb.Text = ni[(ciiz - 1) % #ni + 1]
task.wait(0.2)
end
end)
task.wait(1.2)

ed(dg, 0.2, { TextTransparency = 1 })
ed(tb, 0.2, { TextTransparency = 1 })
ed(knmf, 0.2, { BackgroundTransparency = 1 })
ed(fhg, 0.2, { BackgroundTransparency = 1 })

dg.Text = _d("bQsQVw4ATV8MAxkQAARXBFFUHFMeWhEYSRE")
dg.TextSize = 22
dg.TextWrapped = true
tb.Text = yxvr
ed(dg, 0.25, { TextTransparency = 0 })
ed(tb, 0.25, { TextTransparency = 0 })
task.wait(1.1)
ed(dg, 0.2, { TextTransparency = 1 })
ed(tb, 0.2, { TextTransparency = 1 })

dg.Text = _d("bgYdWgoeCBk") .. vuyy .. _d("GTceGSYxTXEWEw")
dg.TextSize = 22
tb.Text = _d("ShcQSxEaA14")
ed(dg, 0.3, { TextTransparency = 0 })
ed(tb, 0.3, { TextTransparency = 0 })
task.wait(1.3)

ed(dg, 0.25, { TextTransparency = 1 })
ed(tb, 0.25, { TextTransparency = 1 })
ed(fz, 0.35, { BackgroundTransparency = 1 })

gh:Destroy()
end)

dobi = true
end

task.spawn(cuim)

local mw = phy:WaitForChild(_d("awYcVhEWHg"))

local function wvo(hien, ivio)
local fy = mw:FindFirstChild(hien)

if fy then
return fy
end

local ermd = mw:WaitForChild(hien, ivio or 3)

if not ermd then
warn(_d("eCAzYV9TH1wOHk0AU0o") .. hien .. _d("HkMfVkUfAlcEFEtFFhVQEAVKRRoDGRcZUBZTClgOFBkTFh9KCh5XRV5NTQsQTUUVCFgXBEsAUwRKQx5fAw"))
end

return ermd
end

local ioe = {
StartNPCBattle = wvo(_d("ahcQSxE9PXohEE0RHwg")),
NPCBattleResult = wvo(_d("dzMyewQHGVUGI1wWBgFN")),
SyncNPCCooldowns = wvo(_d("ahofWisjLnoMHlUBHBpXEA")),
SetNPCDifficulty = wvo(_d("agYFdzUwKVAFF1AGBgFNGg")),
StartRaidBattle = wvo(_d("ahcQSxEhDFAHM1gRBwFc")),
SetRaidDifficulty = wvo(_d("agYFawQaCX0KF18MEBhVFwg")),
RaidProgress = wvo(_d("awIYXTUBAl4RFEoW")),
RequestRaidProgress = wvo(_d("awYATAAAGWsCGF01AQJeERRKFg")),
SyncInfiniteRoomProgress = wvo(_d("ahofWiwdC1ANGE0AIQJWDiFLChQfXBAC")),
BuyRaidItem = wvo(_d("exYIawQaCXAXFFQ")),
RaidShopState = wvo(_d("awIYXTYbAkkwBVgRFg")),
RaidNotify = wvo(_d("awIYXSscGVAFCA")),
SyncItems = wvo(_d("ahofWiwHCFQQ")),

UseItem = wvo(_d("bBAUcBEWAA")),
RequestWeatherState = wvo(_d("awYATAAAGW4GEE0NFh9qFxBNAA")),
WeatherChanged = wvo(_d("bgYQTQ0WH3oLEFcCFgk")),
FishingUpdate = wvo(_d("fwoCUQwdCmwTFVgRFg")),
FishingThrow = wvo(_d("fwoCUQwdCm0LA1YS")),
FishingReel = wvo(_d("fwoCUQwdCmsGFFU")),
FishingStop = wvo(_d("fwoCUQwdCmoXHkk")),

FishingIslandTeleport = wvo(_d("fwoCUQwdCnAQHVgLFzlcDxRJCgEZ")),

SyncCollection = wvo(_d("ahofWiYcAVUGEk0MHAM")),
RequestSync = wvo(_d("awYATAAAGWoaH1o")),
ClaimIndexReward = wvo(_d("eg8QUAg6A10GCWsABAxLBw")),
RequestAchievements = wvo(_d("awYATAAAGXgAGVAABQhUBh9NFg")),
SyncAchievements = wvo(_d("ahofWiQQBVAGB1wIFgNNEA")),
ClaimAchievement = wvo(_d("eg8QUAgyDlEKFE8AHghXFw")),
RequestQuests = wvo(_d("awYATAAAGWgWFEoRAA")),
SyncQuests = wvo(_d("ahofWjQGCEoXAg")),
ClaimQuest = wvo(_d("eg8QUAgiGFwQBQ")),
RequestPeriodicQuests = wvo(_d("awYATAAAGWkGA1AKFwRaMgRcFgce")),
SyncPeriodicQuests = wvo(_d("ahofWjUWH1AMFVAGIhhcEAVK")),
ClaimPeriodicQuest = wvo(_d("eg8QUAgjCEsKHl0MEDxMBgJN")),

OpenFuseDialog = wvo(_d("dhMUVyMGHlwnGFgJHAo")),
FuseCards = wvo(_d("fxYCXCYSH10Q")),
OpenDeconstructDialog = wvo(_d("dhMUVyEWDlYNAk0XBg5NJxhYCRwK")),
DeconstructCards = wvo(_d("fQYSVgsAGUsWEk0mEh9dEA")),
OpenPackShop = wvo(_d("dhMUVzUSDlIwGVYV")),
EquipPack = wvo(_d("fBIEUBUjDFoI")),

RequestSkillTree = wvo(_d("awYATAAAGWoIGFUJJx9cBg")),
BuySkillNode = wvo(_d("exYIag4aAVUtHl0A")),
OpenAccessoryShop = wvo(_d("dhMUVyQQDlwQAlYXCj5RDAE")),
OpenAccessoryShop2 = wvo(_d("dhMUVyQQDlwQAlYXCj5RDAEL")),
BuyAccessory = wvo(_d("exYIeAYQCEoQHksc")),
BuyAccessory2 = wvo(_d("exYIeAYQCEoQHkscQQ")),
EquipAccessory = wvo(_d("fBIEUBUyDloGAkoKARQ")),

RedeemCode = wvo(_d("awYVXAAeLlYHFA")),

OpenNPCDialog = wvo(_d("dhMUVysjLn0KEFUKFA")),
TeleportToWorld = wvo(_d("bQYdXBUcH003Hm4KAQFd")),
RaidBattleStarted = wvo(_d("awIYXScSGU0PFGoREh9NBhU")),
BattleEnd = wvo(_d("ewIFTQkWKFcH")),
StartBattle = wvo(_d("ahcQSxExDE0XHVw")),
RequestInfiniteRoomProgress = wvo(_d("awYATAAAGXANF1ALGhlcMR5WCCMfVgQDXBYA")),
EndTowerRemote = wvo(_d("fA0VbQoECEsxFFQKBwg")),
SaveClientData = wvo(_d("agIHXCYfBFwNBX0EBww")),
OpenRaidShop = wvo(_d("dhMUVzcSBF0wGVYV")),
RequestItemSync = wvo(_d("awYATAAAGXAXFFQ2CgNa")),
FishingGetState = wvo(_d("fwoCUQwdCn4GBWoREhlc")),
FishingSetAuto = wvo(_d("fwoCUQwdCmoGBXgQBwI")),
FishingShop = wvo(_d("fwoCUQwdCmoLHkk")),
DigGetState = wvo(_d("fQoWfgAHPk0CBVw")),
DigShop = wvo(_d("fQoWag0cHQ")),
DigAction = wvo(_d("fQoWeAYHBFYN")),
DigUpdate = wvo(_d("fQoWbBUXDE0G")),
}

local sq = require(phy.ModuleScripts.NPCData)
local jo = require(phy.ModuleScripts.WorldDifficultyData)
local eiue = require(phy.ModuleScripts.BossData)
local skzu = require(phy.ModuleScripts.RaidData)
local ptj = require(phy.ModuleScripts.InfiniteRoomData)
local fe = require(phy.ModuleScripts.CraftData)
local ln = require(phy.ModuleScripts.AchievementData)
local qlc = require(phy.ModuleScripts.RaidShopData)
local xn = require(phy.ModuleScripts.ItemData)
local zywj = require(phy.ModuleScripts.CardData)
local dj = require(phy.ModuleScripts.SkillTreeData)

local drcb = {
enabled = false,
role = { _d("TQwGXBc"), _d("VxMS") },

picked = { _d("bQwGXBc"), _d("dzMyGQcSGU0PFEo") },
hasSlot2 = nil,
toggle = nil,

optionsFor = {
{ _d("bQwGXBc"), _d("cQIdVQoECFwNUU0KBAhL"), _d("dzMyGQcSGU0PFEo") },
{ _d("dzMyGQcSGU0PFEo"), _d("cBAdWAsXTVECA10GHB9c") },
},
roleIds = {
Tower = _d("TQwGXBc"),

[_d("cQIDXQYcH1xDBVYSFh8")] = _d("UQIDXQYcH1w"),
[_d("dzMyGQcSGU0PFEo")] = _d("VxMS"),
[_d("cQIdVQoECFwNUU0KBAhL")] = _d("UQIdVQoECFwN"),
[_d("cBAdWAsXTVECA10GHB9c")] = _d("UQIDXQYcH1w"),
},
roleNames = {
tower = _d("bQwGXBc"),
hardcore = _d("cBAdWAsXTVECA10GHB9c"),
npc = _d("dzMyGQcSGU0PFEo"),
halloween = _d("cQIdVQoECFwNUU0KBAhL"),
},
}

drcb.prioGroups = {
{ id = _d("SwIYXRY"), label = _d("awIYXRY"), rank = 1 },
{ id = _d("WwwCSg"), label = _d("fg8eWwQfTVsMAko"), rank = 2 },
{ id = _d("VxMS"), label = _d("dzMyGQcSGU0PFEpFVU1LDB5UFg"), rank = 3 },
{ id = _d("TQwGXBc"), label = _d("bQwGXBcATREQGVgXFgkZEB1WEVo"), rank = 4 },
{ id = _d("UQIDXQYcH1w"), label = _d("cBAdWAsXTXECA10GHB9c"), rank = 5 },
{ id = _d("TgIFXBc"), label = _d("fwoCUQwdChlMUX0MFApQDRY"), rank = 6 },
}

drcb.prioBlocks = function()
return false
end

drcb.digBlocked = function()
return false
end

function drcb.detectSlot2()
local lpa = hk:FindFirstChild(_d("agYFTQwdCkokBFA"))
local lctr = lpa and lpa:FindFirstChild(_d("ag8eTTEWDFRRI1YS"), true)

if lctr then
return lctr.Visible == true
end

return nil
end

function drcb.roleSlot(bnq)
if not drcb.enabled then
return 1
end

for eudn = 1, 2 do
if drcb.role[eudn] == bnq then
return eudn
end
end

return nil
end

function drcb.isTowerRole(ma)
return ma == _d("TQwGXBc") or ma == _d("UQIDXQYcH1w") or ma == _d("UQIdVQoECFwN")
end

function drcb.towerSlot()
return drcb.roleSlot(_d("TQwGXBc"))
end

function drcb.hardcoreSlot()
local dq = drcb.roleSlot(_d("UQIDXQYcH1w"))

if dq == 2 and drcb.hasSlot2 == false then
return 1
end

return dq
end

function drcb.halloweenSlot()

local xh = drcb.roleSlot(_d("UQIdVQoECFwN"))

if xh == 1 then
return 1
end

return nil
end

function drcb.roomSlot()
local kmq = drcb.roleSlot(_d("VxMS"))

if not drcb.enabled then
return 1
end

if kmq == nil then
return nil
end

if kmq == 2 and drcb.hasSlot2 == false then
return 1
end

return kmq
end

function drcb.splitNpc()
return drcb.enabled and drcb.role[1] == _d("VxMS") and drcb.role[2] == _d("VxMS")
end

function drcb.busy(ry)
local mcih = hk:FindFirstChild(ry == 2 and _d("cA0zWBEHAVxR") or _d("cA0zWBEHAVw"))

return mcih ~= nil and mcih:IsA(_d("ewweVTMSAUwG")) and mcih.Value == true
end

function drcb.roleName(ks)
return drcb.roleNames[drcb.role[ks]] or drcb.roleNames.npc
end

function drcb.roleLabel(vv)
return drcb.picked[vv] or drcb.roleName(vv)
end

local azf = nil

if phy:FindFirstChild(_d("dAwVTAkWPloRGEkRAA")) and phy.ModuleScripts:FindFirstChild(_d("cQIdVQoECFwNJVYSFh99AgVY")) then
local lyll, eec = pcall(function()
return require(phy.ModuleScripts.HalloweenTowerData)
end)

if lyll then
azf = eec
end
end

local ihm = nil

if phy:FindFirstChild(_d("dAwVTAkWPloRGEkRAA")) and phy.ModuleScripts:FindFirstChild(_d("fwoCUQwdCn0CBVg")) then
local qq, ujk = pcall(function()
return require(phy.ModuleScripts.FishingData)
end)

if qq then
ihm = ujk
end
end

local function vq(avb)
return tostring(avb):reverse():gsub(_d("EUYVHAFWCRA"), _d("HFJd")):reverse():gsub(_d("Z08"), _d(""))
end

local mnni = {
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

getgenv().ACBXHalloweenUpgrades = mnni.upgrade
getgenv().ACBXHalloweenTower = mnni.run

mnni.shopData = qlc.ShopById.halloween
mnni.shopItems = {}
mnni.shopLabels = {}
mnni.cardNames = {
hw_brook = _d("exEeVg5TRXQWAlAGEgEZMBpcCRYZVg1Y"),
hw_death_the_kid = _d("fQYQTQ1TGVEGUXIMF00RKxBLCBwDUABRfhAdTW4KFFUBFh8Q"),
hw_barragan = _d("ewIDSwQUDFdDWWoOFgFcFx5XRTgEVwRY"),
}
mnni.cardShortNames = {
hw_brook = _d("exEeVg4"),
hw_death_the_kid = _d("fQYQTQ1TGVEGUXIMFw"),
hw_barragan = _d("ewIDSwQUDFc"),
}

for dpyu, yrv in ipairs(mnni.shopData.Items) do
local nl, zuc = next(yrv.price or {})
local ldo = yrv.id
local hqe = yrv.id

if yrv.itemId then
local qvw = xn.ById[yrv.itemId]
ldo = qvw and (qvw.name or yrv.itemId) or yrv.itemId
hqe = ldo
elseif yrv.cardId then
ldo = mnni.cardNames[yrv.cardId] or (zywj.ById[yrv.cardId] and zywj.ById[yrv.cardId].name) or yrv.cardId
hqe = mnni.cardShortNames[yrv.cardId] or ldo
end

local tgz = nl == _d("UQIdVQoECFwNLloEHQlA") and _d("egIfXRw") or (nl == _d("UwISUjocMlUCH00AAQM") and _d("dQIfTQABA0o") or tostring(nl))
local ryaw = ldo .. _d("GYHxrUU") .. vq(zuc) .. _d("GQ") .. tgz

table.insert(mnni.shopItems, {
id = yrv.id,
label = ryaw,
shortName = hqe,
currency = nl,
price = zuc,
stock = yrv.stock,
cardId = yrv.cardId,
})

table.insert(mnni.shopLabels, ryaw)
end

for pe, jojd in ipairs({
_d("awYATAAAGXECHVUKBAhcDSRJAgEMXQYC"),
_d("exYIcQQfAVYUFFwLJh1eERBdAA"),
_d("cQIdVQoECFwNJEkCAQxdBiJNBAcI"),
_d("awYATAAAGXECHVUKBAhcDSVWEhYfaREeXhcWHko"),
_d("ahofWi0SAVUMBlwAHTlWFBRLNQECXhEUShY"),
_d("dhMUVy0SAVUMBlwAHTlWFBRL"),
}) do
mnni.remote[jojd] = wvo(jojd)
end

function mnni.fire(jjv, ...)
local vk = mnni.remote[jjv]

if not vk then
return
end

local nmx = { ... }

pcall(function()
vk:FireServer(table.unpack(nmx))
end)
end

function mnni.on(fjb, lk)
local gk = mnni.remote[fjb]

if gk then
jdcu(gk.OnClientEvent, lk)
end
end

if azf then
for xeqe, kpnr in ipairs(azf.Upgrades) do
table.insert(mnni.upgrades, {
id = kpnr.id,
name = kpnr.name,
maxLevel = kpnr.maxLevel,
})

table.insert(mnni.labels, kpnr.name)
end
end

function mnni.level(sck)
if not azf then
return 0
end

return azf.getUpgradeLevel(mnni.upgrade.levels, sck)
end

function mnni.cost(tgac)
if not azf then
return nil
end

return azf.getUpgradeCost(tgac, mnni.level(tgac))
end

function mnni.bonus(kzo, uaps)
if not azf then
return _d("")
end

return azf.formatUpgradeBonus(kzo, uaps)
end

function mnni.request()
mnni.upgrade.lastRequest = os.time()
mnni.fire(_d("awYATAAAGXECHVUKBAhcDSRJAgEMXQYC"))
end

function mnni.text()
if not azf then
return _d("cQIdVQoECFwNUW0KBAhLQxVYERJNUBBRVwoHTVANUU0NGh4ZAQRQCRdD")
end

local iaai = mnni.upgrade
local xo = {}

if iaai.balance == nil then
table.insert(xo, _d("aRYcSQ4aA0pZURRFWwxKCBhXAlMZUQZRSgABG1wRWA"))
else
table.insert(xo, _d("aRYcSQ4aA0pZUQ") .. vq(iaai.balance))
end

for ep, kj in ipairs(mnni.upgrades) do
local rkyx = mnni.level(kj.id)
local ck = mnni.cost(kj.id)
local rpz = iaai.selected[kj.id] and _d("YhssGQ") or _d("YkMsGQ")
local ilx = rpz .. kj.name .. _d("GUM9T0U") .. rkyx .. _d("Fg") .. kj.maxLevel

if ck then
table.insert(xo, ilx .. _d("GUMfXB0HTQ") .. tostring(ck) .. _d("GUM") .. mnni.bonus(kj.id, rkyx + 1))
else
table.insert(xo, ilx .. _d("GUMcWB0WCQ"))
end
end

if not next(iaai.selected) then
table.insert(xo, _d("aQoSUkUGHV4REF0AAE1QDVFNDRZNXREeSQEcGldDEFcBUyxMFx4ZEAMKSwIVXBZTD0waAhkRGwgZABlcBAMIShdRVgsWTUAMBBkGEgMZAhdfCgEJFw"))
end

return table.concat(xo, _d("Mw"))
end

function mnni.buy()
local azj = mnni.upgrade

if azj.waiting or azj.balance == nil or os.time() - azj.lastBuy < 1 then
return
end

local obg = nil
local nwf = nil

for ra, sk in ipairs(mnni.upgrades) do
if azj.selected[sk.id] and os.time() >= (azj.failedUntil[sk.id] or 0) then
local yu = mnni.cost(sk.id)

if yu and azj.balance >= yu and (not nwf or yu < nwf) then
obg = sk.id
nwf = yu
end
end
end

if not obg then
return
end

azj.waiting = true
azj.lastBuy = os.time()
azj.pendingId = obg
azj.pendingLevel = mnni.level(obg)

azj.balance = azj.balance - nwf

mnni.fire(_d("exYIcQQfAVYUFFwLJh1eERBdAA"), obg)
end

mnni.on(_d("cQIdVQoECFwNJEkCAQxdBiJNBAcI"), function(zzcm)
if type(zzcm) ~= _d("TQITVQA") then
return
end

local vua = mnni.upgrade

vua.balance = tonumber(zzcm.balance) or 0
vua.levels = type(zzcm.levels) == _d("TQITVQA") and zzcm.levels or {}

if vua.pendingId then
if mnni.level(vua.pendingId) <= vua.pendingLevel then
vua.failedUntil[vua.pendingId] = os.time() + 15
end

vua.pendingId = nil
end

if type(zzcm.message) == _d("ShcDUAsU") then
vua.lastMessage = zzcm.message
end

vua.waiting = false
end)

mnni.on(_d("ahofWi0SAVUMBlwAHTlWFBRLNQECXhEUShY"), function(ht, pcok)
mnni.run.highest = tonumber(ht) or 0
mnni.run.savedRun = type(pcok) == _d("TQITVQA") and pcok or nil
end)

mnni.on(_d("dhMUVy0SAVUMBlwAHTlWFBRL"), function(bqy, ej, fh)
mnni.run.highest = tonumber(bqy) or mnni.run.highest
mnni.run.savedRun = type(fh) == _d("TQITVQA") and fh or nil
end)

jdcu(ioe.BattleEnd.OnClientEvent, function(mat)
if type(mat) == _d("TQITVQA") and mat.mode == _d("UA0XUAsaGVw8A1YKHg") and mat.tower == _d("UQIdVQoECFwN") then
mnni.run.inBattle = false
mnni.run.pending = true
mnni.run.pendingUntil = os.time() + 3

task.delay(0.3, function()
mnni.requestProgress()
end)
end
end)

function mnni.requestProgress()
mnni.run.lastRequest = os.time()
mnni.fire(_d("awYATAAAGXECHVUKBAhcDSVWEhYfaREeXhcWHko"))
end

function mnni.bestRoom()
local yq = mnni.run.highest

if not azf or yq == nil then
return nil
end

for ubj, fd in ipairs(azf.Milestones) do
if azf.isMilestoneUnlocked(fd, yq)
and not azf.isMilestoneCleared(fd, yq) then
return fd
end
end

return nil
end

function mnni.startRun()
local off = mnni.bestRoom()

if not off then
return false
end

local ai = mnni.run.savedRun
local bgcn = type(ai) == _d("TQITVQA") and ai.milestone == off
local me = bgcn and (tonumber(ai.currentFloor) or off) or off

local qyv = drcb.halloweenSlot() or 1

local igpw = getgenv().ACBXAuto

igpw = type(igpw) == _d("TQITVQA") and igpw.bossTeams or nil

if mnni.run.teamChosen and igpw and igpw.applyTeam then
igpw.applyTeam(mnni.run.team, qyv)
end

local pg = hk:FindFirstChild(qyv == 2 and _d("awYCXBExDE0XHVwjHwJWEUM") or _d("awYCXBExDE0XHVwjHwJWEQ"))

if pg and pg:IsA(_d("ewofXQQRAVwmB1wLBw")) then
pcall(function()
pg:Fire(me, _d("UA0XUAsaGVw8A1YKHg"))
end)
end

local msa = hk:FindFirstChild(qyv == 2 and _d("ahcQSxE6A18KH1ARFj9WDBx7BAcZVQZD") or _d("ahcQSxE6A18KH1ARFj9WDBx7BAcZVQY"))

if msa and msa:IsA(_d("ewofXQQRAVwmB1wLBw")) then
pcall(function()
msa:Fire(me, _d("UQIdVQoECFwN"), me)
end)
end

mnni.run.milestone = off
mnni.run.savedRun = nil
mnni.run.inBattle = true
mnni.run.inBattleUntil = os.time() + 120
mnni.run.pending = true
mnni.run.pendingUntil = os.time() + 10

if bgcn then
ioe.StartBattle:FireServer(_d("UA0XUAsaGVw8A1YKHg"), {
continue = true,
tower = _d("UQIdVQoECFwN"),
slot = qyv,
})
else
ioe.StartBattle:FireServer(_d("UA0XUAsaGVw8A1YKHg"), {
tower = _d("UQIdVQoECFwN"),
milestone = off,
slot = qyv,
})
end

return true
end

local dond = {}
for dch, aw in ipairs(sq.NPCs) do
dond[aw.name] = aw.id
end

local ga = getgenv().ACBXCooldowns
if type(ga) ~= _d("TQITVQA") then
ga = {}
getgenv().ACBXCooldowns = ga
end

local yzc = getgenv().ACBXAuto
if type(yzc) == _d("TQITVQA") and type(yzc.cooldowns) == _d("TQITVQA") then
for yd, xskg in pairs(yzc.cooldowns) do
if ga[yd] == nil then
ga[yd] = xskg
end
end
end

local cdau = {
enabled = false,
story = false,
storyDifficulty = _d("VwwDVAQf"),
storyDropdown = nil,
selectedByWorld = {},
difficulties = { _d("VwwDVAQf") },
walkToNpc = false,
cooldowns = ga,
activeDifficulty = {},
lastFetch = {},
unlocked = {},
currentBattle = nil,
battlePending = false,
battlePendingUntil = 0,
}

cdau.bossTeams = {
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

path = _d("eCAzYUoHCFgOAhcPAAJX"),
}

function cdau.bossTeams.trackCollection()
if cdau.bossTeams.collectionHooked then
return
end

cdau.bossTeams.collectionHooked = true

local kkck = mw:FindFirstChild(_d("ahofWiYcAVUGEk0MHAM"))

if not kkck then
return
end

jdcu(kkck.OnClientEvent, function(qddy)
if type(qddy) == _d("TQITVQA") and type(qddy.teams) == _d("TQITVQA") then
cdau.bossTeams.teams = qddy.teams
cdau.bossTeams.teamsAt = os.clock()
end
end)

task.spawn(function()

task.wait(3)

for qzdp = 1, 8 do
if cdau.bossTeams.teams then
return
end

local qsd = mw:FindFirstChild(_d("ahQYTQYbOVwCHA"))
local sic = cdau.bossTeams.slotTeam
local nd = nil

if qsd and type(sic) == _d("XxYfWhEaAlc") then
local cu, iqz = pcall(sic, 2)
nd = cu and iqz or nil

if not nd then
cu, iqz = pcall(sic, 1)
nd = cu and iqz or nil
end
end

if nd then
pcall(function()
qsd:FireServer(nd, false, 2)
end)
end

task.wait(6)
end
end)
end

function cdau.bossTeams.teamCards(rpsi)
local pijc = cdau.bossTeams.teams

if type(pijc) ~= _d("TQITVQA") then
return nil
end

local yvs = pijc[rpsi]

if type(yvs) ~= _d("TQITVQA") then
return 0
end

local vkky = 0

for gu, ac in pairs(yvs) do
if type(ac) == _d("TQITVQA") then
vkky = vkky + 1
end
end

return vkky
end

function cdau.bossTeams.raidState()
return getgenv().ACBXAutoRaid
end

function cdau.bossTeams.save()
if type(writefile) ~= _d("XxYfWhEaAlc") then
return false
end

local qeho = {}

for xmm, lgq in pairs(cdau.bossTeams.picked) do
qeho[xmm] = lgq
end

local ds = {}

for gnl, xqno in pairs(cdau.bossTeams.raidPicked) do
ds[gnl] = xqno
end

local lj = {}

for ifp, ian in pairs(cdau.bossTeams.towerPicked) do
lj[ifp] = ian
end

return pcall(function()
if type(makefolder) == _d("XxYfWhEaAlc") and type(isfile) == _d("XxYfWhEaAlc") and not isfile(cdau.bossTeams.path) then
pcall(makefolder, _d("eCAzYQ"))
end

local zb = cdau.bossTeams.raidState()
local zu = zb and zb.worldBoss
local lzec = nil

if zu and zu.teamChosen then
lzec = zu.team
end

writefile(cdau.bossTeams.path, game:GetService(_d("cRcFSTYWH08KElw")):JSONEncode({
areas = qeho,
raids = ds,
towers = lj,
swap = cdau.bossTeams.swap,
globalBoss = lzec,
updatedAt = os.time(),
}))
end)
end

function cdau.bossTeams.load()
if type(readfile) ~= _d("XxYfWhEaAlc") or type(isfile) ~= _d("XxYfWhEaAlc") then
return false
end

local vxag, iv = pcall(function()
if not isfile(cdau.bossTeams.path) then
return nil
end

return readfile(cdau.bossTeams.path)
end)

if not vxag or type(iv) ~= _d("ShcDUAsU") or #iv == 0 then
return false
end

local ahy
local lzsg = pcall(function()
ahy = game:GetService(_d("cRcFSTYWH08KElw")):JSONDecode(iv)
end)

if not lzsg or type(ahy) ~= _d("TQITVQA") then
return false
end

if type(ahy.areas) == _d("TQITVQA") then
for msvi, snj in pairs(ahy.areas) do
local ytwe = tonumber(snj)

if ytwe and ytwe >= 1 and ytwe <= 4 then
cdau.bossTeams.picked[msvi] = ytwe
end
end
end

if type(ahy.raids) == _d("TQITVQA") then
for zzkg, sgpc in pairs(ahy.raids) do
local llh = tonumber(sgpc)

if llh and llh >= 1 and llh <= 4 then
cdau.bossTeams.raidPicked[zzkg] = llh
end
end
end

if type(ahy.towers) == _d("TQITVQA") then
for chg, qwwz in pairs(ahy.towers) do
local jke = tonumber(qwwz)

if jke and jke >= 1 and jke <= 4 then
cdau.bossTeams.towerPicked[chg] = jke
end
end
end

if type(ahy.swap) == _d("TQITVQA") then
local dnb = tonumber(ahy.swap.team)
local lfe = tonumber(ahy.swap.floor)

if dnb and dnb >= 1 and dnb <= 4 then
cdau.bossTeams.swap.team = dnb
end

if lfe and lfe > 0 then
cdau.bossTeams.swap.floor = lfe
end

local cit = tonumber(ahy.swap.team2)
local qqlr = tonumber(ahy.swap.floor2)

if cit and cit >= 1 and cit <= 4 then
cdau.bossTeams.swap.team2 = cit
end

if qqlr and qqlr > 0 then
cdau.bossTeams.swap.floor2 = qqlr
end

cdau.bossTeams.swap.on = ahy.swap.on == true
end

local lss = tonumber(ahy.globalBoss)
local tzqu = cdau.bossTeams.raidState()
local tk = tzqu and tzqu.worldBoss

if lss and lss >= 1 and lss <= 4 and tk then
tk.team = lss

tk.teamChosen = true
end

return true
end

local so = nil
local dv = nil

local function vg(zro, kuef)
return zro .. _d("RQ") .. kuef
end

local function pfvv(wr, nria)
return cdau.cooldowns[vg(wr, nria)] or 0
end

local function vcx(wbma, djzy, fc)
cdau.cooldowns[vg(wbma, djzy)] = fc
end

getgenv().ACBXAuto = cdau

local kc = {
enabled = false,
picks = { [1] = {}, [2] = {} },
cursor = { [1] = 1, [2] = 1 },
losses = { [1] = {}, [2] = {} },
inFlight = {},

lossLimit = 3,
difficulties = { _d("VwwDVAQf") },
walkToBoss = false,
walkSpeed = 18,
pending = {},
pendingUntil = {},
cleared = {},
progress = {},
}

getgenv().ACBXAutoRaid = kc

kc.worldBoss = {
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

fishingMode = _d("TgIYTQ"),
digHold = true,

walkToBoss = false,
walkToggle = nil,

building = false,
}

cdau.bossTeams.trackCollection()
cdau.bossTeams.load()

function kc.worldBoss.data()
local dh = kc.worldBoss

if dh.module == nil then
local thx, nq = pcall(function()
return require(phy.ModuleScripts.WorldBossData)
end)

dh.module = thx and nq or false
end

return dh.module or nil
end

function kc.worldBoss.clock(daw)
daw = math.max(0, math.floor(tonumber(daw) or 0))

local nhe = math.floor(daw / 3600)
local nbyo = math.floor((daw % 3600) / 60)
local cdm = daw % 60

if nhe > 0 then
return string.format(_d("HAcZGUBDX10O"), nhe, nbyo)
end

if nbyo > 0 then
return string.format(_d("HAccGUBDX10Q"), nbyo, cdm)
end

return string.format(_d("HAcC"), cdm)
end

function kc.worldBoss.status()
local qpj = nil

pcall(function()
qpj = phy:FindFirstChild(_d("bgwDVQExAkoQIk0EBxhK"))
end)

return qpj
end

function kc.worldBoss.isOpen()
local eiy = kc.worldBoss.status()

if not eiy then
return nil
end

return eiy:GetAttribute(_d("eAAFUBMW")) == true
end

function kc.worldBoss.window()
local mg = kc.worldBoss.status()

if not mg then
return nil, nil
end

return tonumber(mg:GetAttribute(_d("fA0VSiQH"))), tonumber(mg:GetAttribute(_d("dwYJTSQH")))
end

function kc.worldBoss.cycle()
local qc = kc.worldBoss
local pds = qc.data()

if not pds or not pds.getCycleState then
return nil
end

local hdrx, xbo = pcall(function()
return pds.getCycleState()
end)

return hdrx and xbo or nil
end

function kc.worldBoss.shopList()
local pf = kc.worldBoss

if pf.items then
return pf.items
end

local rr = {}
local klwx = pf.data()

if not klwx or type(klwx.ShopItems) ~= _d("TQITVQA") then
pf.items = rr
return rr
end

for xvbs, cbd in ipairs(klwx.ShopItems) do
local extx = nil

pcall(function()
if cbd.itemId then
local flo = require(phy.ModuleScripts.ItemData)
local pw = flo[cbd.itemId] or (flo.ById and flo.ById[cbd.itemId])
extx = pw and pw.name or nil
elseif cbd.cardId then
local ob = require(phy.ModuleScripts.CardData)
local hepm = ob[cbd.cardId] or (ob.ById and ob.ById[cbd.cardId])
extx = hepm and hepm.name or nil
end
end)

local oeyc = kc.worldBoss.state

if type(oeyc) == _d("TQITVQA") and type(oeyc.shop) == _d("TQITVQA") then
for re, fmr in ipairs(oeyc.shop) do
if fmr.id == cbd.id and fmr.name then
extx = fmr.name
break
end
end
end

if not extx then

extx = tostring(cbd.accessoryId or cbd.id or _d("Bg")):gsub(_d("Zg"), _d("GQ")):gsub(_d("EUYQEE0oSE5ELBNM"), function(uhs, zqz)
return uhs:upper() .. zqz
end)
end

table.insert(rr, {
id = cbd.id,
name = extx,
price = tonumber(cbd.price) or 0,
kind = cbd.itemId and _d("UBcUVA") or (cbd.cardId and _d("WgIDXQ") or _d("WAASXBYAAksa")),
})
end

pf.items = rr

return rr
end

function kc.worldBoss.bodyText()
local hhrd = kc.worldBoss
local pou = hhrd.state

if type(pou) ~= _d("TQITVQA") then
return _d("awYQXQwdChkXGVxFEQJKEF8XSw")
end

local nsu = {}
local jfvz = hhrd.cycle()
local hlce = hhrd.isOpen()
local vfa, vtt = hhrd.window()

if hlce == nil then
hlce = pou.open == true
end

if hlce then
local jbfb = _d("dhMUVw")

if not vfa and jfvz then
vfa = jfvz.endsAt
end

if vfa and vfa > os.time() then
jbfb = jbfb .. _d("GaHGGQ") .. hhrd.clock(vfa - os.time()) .. _d("GQ8UXxE")
end

table.insert(nsu, jbfb)
else
local rofo = _d("fQwGV0UVAktDH1YS")

if not vtt and jfvz then
vtt = jfvz.nextAt
end

if vtt and vtt > os.time() then
rofo = rofo .. _d("MyEQWg5TBFdD") .. hhrd.clock(vtt - os.time())
end

table.insert(nsu, rofo)
end

table.insert(nsu, _d("dAYVWAkAVxk") .. tostring(pou.medals or 0) .. _d("MygYVQkAVxk") .. tostring(pou.kills or 0))

if pou.inFight then
table.insert(nsu, _d("fwoWUREaA14"))
elseif hlce then

table.insert(nsu, pou.killedThisSpawn and _d("awYQXRx5JlAPHVwBUxlRCgIZFgMMTg1RWAkBCFgHCA") or _d("awYQXRw"))
end

if hhrd.stopAtFull then
local xv, hhn = hhrd.meter()

if xv and hhn then
local function rmi(wx)
if wx >= 1000000000 then
return string.format(_d("HE1AXyc"), wx / 1000000000)
elseif wx >= 1000000 then
return string.format(_d("HAQ8"), math.floor(wx / 100000) / 10)
elseif wx >= 1000 then
return string.format(_d("HAQ6"), math.floor(wx / 100) / 10)
end

return tostring(math.floor(wx))
end

table.insert(nsu, _d("agYDTwABTVQGBVwXSU0") .. rmi(xv) .. _d("GUxR") .. rmi(hhn)
.. (hhrd.meterFull() and _d("MyUEVQlTQBkNHk1FFQReCwVQCxRNTQsYSkUAHVgUHw") or _d("")))
end
end

return table.concat(nsu, _d("M2k"))
end

function kc.worldBoss.shopText()
local jxc = kc.worldBoss
local tij = jxc.state

if type(tij) ~= _d("TQITVQA") or type(tij.shop) ~= _d("TQITVQA") then
return _d("awYQXQwdChkXGVxFAAVWE18XSw")
end

local iz = { _d("dAYVWAkAVxk") .. tostring(tij.medals or 0) }

for cvwl, tz in ipairs(tij.shop) do
local lgr = tostring(tz.name or tz.id)
local wtd = tostring(tz.price or _d("Bg"))
local vrlw

if tz.kind == _d("UBcUVA") then
vrlw = lgr .. _d("Mw") .. wtd .. _d("GaHGGQ") .. tostring(tz.left or 0) .. _d("Fg") .. tostring(tz.stock or _d("Bg")) .. _d("GQ8UXxE")
elseif tz.owned then
vrlw = lgr .. _d("MywGVwAX")
else
vrlw = lgr .. _d("Mw") .. wtd .. _d("GaHGGQodCBkMF18")
end

table.insert(iz, vrlw)
end

return table.concat(iz, _d("M2k"))
end

function kc.worldBoss.shopOptions()
local fbh = kc.worldBoss

if fbh.options then
return fbh.options
end

local dn = {}

fbh.labelToId = {}

for ipb, pei in ipairs(fbh.shopList()) do
local ynq = pei.name .. _d("GaHGGQ") .. tostring(pei.price)

table.insert(dn, ynq)
fbh.labelToId[ynq] = pei.id
end

fbh.options = dn

return dn
end

local function yo(ex)
local ohp = kc.progress[ex]
local yg = phy:FindFirstChild(_d("awIYXTYHDE0WAg"))
local mp = yg and yg:GetAttribute(_d("ehoSVQA6CQ"))

if type(ohp) == _d("TQITVQA") then
if ohp.cycleId then
mp = ohp.cycleId
end

if ohp.completed and ohp.completedRaidId then
return tostring(mp) .. _d("AwceVwA")
end

local okod = ohp.phaseIndex or ohp.phase

if okod then
return tostring(mp) .. _d("Aw") .. tostring(okod)
end
end

return tostring(mp)
end

function kc.finished(eykx)
local ev = kc.progress[eykx]

return type(ev) == _d("TQITVQA") and ev.completed == true and ev.completedRaidId == eykx
end

function kc.bossFor(oqxl, ftsu)
local pcv = kc.picks[ftsu or oqxl]

if not pcv or #pcv == 0 then
return nil
end

local jj = phy:FindFirstChild(_d("awIYXTYHDE0WAg"))
local sel = kc.losses[oqxl] or {}
local oos = kc.cursor[oqxl] or 1

for pnqq = 0, #pcv - 1 do
local wic = (oos - 1 + pnqq) % #pcv + 1
local cm = pcv[wic]
local hc = not jj or jj:GetAttribute(_d("awYQXRws") .. cm) == true

if hc and not kc.finished(cm) and (sel[cm] or 0) < kc.lossLimit then
kc.cursor[oqxl] = wic

return cm
end
end

return nil
end

jdcu(ioe.RaidBattleStarted.OnClientEvent, function(ktwu)

local hq = type(ktwu) == _d("TQITVQA") and ktwu.raidId or nil

if type(hq) == _d("ShcDUAsU") then
kc.pending[hq] = false
else
for yw in pairs(kc.pending) do
kc.pending[yw] = false
end
end
end)

jdcu(ioe.BattleEnd.OnClientEvent, function(qui)
for us in pairs(kc.pending) do
kc.pending[us] = false
end

if type(qui) ~= _d("TQITVQA") or not kc.enabled then
return
end

local nves = type(qui.raidId) == _d("ShcDUAsU") and qui.raidId or nil
local vwya = nves and kc.inFlight[nves] or nil

if not nves then
for hew, qe in pairs(kc.inFlight) do
nves = hew
vwya = qe
break
end
end

if not nves then
return
end

kc.inFlight[nves] = nil

if qui.result == _d("VQwCXA") then

local co = kc.losses[vwya or 1]

kc.cleared[nves] = nil
co[nves] = (co[nves] or 0) + 1

for bdux in pairs(kc.pendingUntil) do
kc.pendingUntil[bdux] = os.time() + 3
end
else

kc.losses[vwya or 1][nves] = 0
end
end)

jdcu(ioe.RaidProgress.OnClientEvent, function(nwat)
if type(nwat) == _d("TQITVQA") and type(nwat.raidId) == _d("ShcDUAsU") then
kc.progress[nwat.raidId] = nwat
end
end)

ioe.RequestRaidProgress:FireServer()

local oyaa = {
enabled = false,
progress = nil,
currentRoom = nil,
inBattle = false,
inBattleUntil = 0,
pending = false,
pendingUntil = 0,
}

getgenv().ACBXAutoRooms = oyaa

jdcu(ioe.SyncInfiniteRoomProgress.OnClientEvent, function(pnbs)
if type(pnbs) == _d("VxYcWwAB") then
oyaa.progress = pnbs
oyaa.pending = false
end
end)

jdcu(ioe.BattleEnd.OnClientEvent, function(xam)
if type(xam) == _d("TQITVQA") and xam.mode == _d("UA0XUAsaGVw8A1YKHg") then
oyaa.inBattle = false
oyaa.pending = true
oyaa.pendingUntil = os.time() + 3

task.delay(0.3, function()
ioe.RequestInfiniteRoomProgress:FireServer()
end)
end
end)

ioe.RequestInfiniteRoomProgress:FireServer()

local hlkv = {
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

getgenv().ACBXAutoTower = hlkv

local mk = {
enabled = false,
floor = 0,
triggered = false,
}

getgenv().ACBXAutoPause = mk

local qjxx = {
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
Typhoon = _d("TRoBUQocAw"),
Blizzard = _d("Ww8YQx8SH10"),
Lightning = _d("VQoWUREdBFcE"),
Windstorm = _d("TgofXRYHAksO"),
Sharingan = _d("SgsQSwwdClgN"),
Singularity = _d("SgofXhAfDEsKBUA"),
[_d("dAwfWBcQBRknHlQEGgM")] = _d("VAwfWBcQBWYHHlQEGgM"),
Void = _d("TwwYXQ"),
[_d("dAIVXEUaAxkrFFgTFgM")] = _d("VAIVXDoaA2YLFFgTFgM"),
Manga = _d("VAIfXgQ"),
},
}

function qjxx.weatherWanted(ku)
local lbnx = qjxx.weatherNow

if type(lbnx) ~= _d("ShcDUAsU") then
return nil
end

for km, fvb in pairs(ku or qjxx.weathers) do
if fvb and qjxx.weatherIds[km] == lbnx then
return km
end
end

return nil
end

getgenv().ACBXAutoGiveUp = qjxx

local xk = {
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

if phy:FindFirstChild(_d("dAwVTAkWPloRGEkRAA")) and phy.ModuleScripts:FindFirstChild(_d("cQIDXQYcH1w3Hk4AASlYFxA")) then
local td, dy = pcall(function()
return require(phy.ModuleScripts.HardcoreTowerData)
end)

if td then
xk.data = dy
end
end

getgenv().ACBXHardcore = xk

task.spawn(function()
local fmv = phy:FindFirstChild(_d("awYcVhEWHg"))

if not fmv then
return
end

local gabx = fmv:WaitForChild(_d("ahofWi0SH10AHksAJwJOBgNpFxwKSwYCSg"), 20)

if gabx and gabx:IsA(_d("awYcVhEWKE8GH00")) then
xk.remotes.sync = gabx

jdcu(gabx.OnClientEvent, function(gr)
if type(gr) ~= _d("TQITVQA") then
return
end

xk.progress = tonumber(gr.progress) or xk.progress
xk.best = tonumber(gr.best) or xk.best

if type(gr.points) == _d("TQITVQA") then
xk.points = gr.points
end
end)
end

local md = fmv:WaitForChild(_d("awYATAAAGXECA10GHB9cNx5OAAE9SwwWSwAAHg"), 20)

if md and md:IsA(_d("awYcVhEWKE8GH00")) then
xk.remotes.request = md

pcall(function()
md:FireServer()
end)
end

local kw = fmv:WaitForChild(_d("fg8eWwQfL0wFF2wVFwxNBhU"), 20)

if kw and kw:IsA(_d("awYcVhEWKE8GH00")) then
jdcu(kw.OnClientEvent, function(il, ti, lko, pi)
xk.globalLuck = tonumber(il) or 0
xk.globalRoll = tonumber(ti) or 0
xk.globalLuckTime = type(lko) == _d("ShcDUAsU") and lko or _d("")
xk.globalRollTime = type(pi) == _d("ShcDUAsU") and pi or _d("")
end)
end
end)

function drcb.otherTowerOn(sgnx)
if drcb.enabled then
return false
end

if sgnx == _d("TQwGXBc") then
return false
end

if sgnx == _d("UQIdVQoECFwN") then
return xk.active()
end

return mnni.run.enabled
end

function xk.active()
return xk.island
end

function xk.unspentPoints()
local lbq = xk.data
local zg = tonumber(xk.progress) or 0
local mhf = 0

if type(lbq) == _d("TQITVQA") and type(lbq.getEarnedPoints) == _d("XxYfWhEaAlc") then
local qdvz, euz = pcall(lbq.getEarnedPoints, zg)
mhf = qdvz and tonumber(euz) or 0
end

return math.max(0, mhf - #(xk.points or {})), mhf
end

function xk.buffText()
local zoc = xk.data

if type(zoc) ~= _d("TQITVQA") then
return _d("cQIDXQYcH1w3Hk4AASlYFxAZDABNVAoCSgwdChkFA1YIUxlRCgIZBwYEVQdf")
end

local xp = tonumber(xk.progress) or 0
local jfc = tonumber(xk.best) or 0
local jvvn, sx = xk.unspentPoints()
local byu = {
_d("fw8eVhdT") .. xp .. _d("GUNRewAAGRk") .. jfc,
_d("aQwYVxEAVxk") .. jvvn .. _d("GRYfShUWA01DHl9F") .. sx .. _d("GQYQSwsWCQ"),
}

local teew = {}

for sl, egm in ipairs(xk.points or {}) do
local bj = zoc.StatById and zoc.StatById[egm]
local mwk = bj and (bj.name or egm) or tostring(egm)
local bxhs = zoc.PointValue and zoc.PointValue[egm]

table.insert(teew, bxhs and (mwk .. _d("GUg") .. tostring(bxhs)) or mwk)
end

if #teew == 0 then
table.insert(byu, _d("exYXXxZJTVcMH1xFEQJMBBlNRQoITQ"))
else
table.insert(byu, _d("exYXXxZJTQ") .. table.concat(teew, _d("FUM")))
end

local hsk = {}

if (tonumber(xk.globalLuck) or 0) > 0 then
table.insert(hsk, _d("dRYSUkVY") .. tostring(xk.globalLuck) .. _d("HA") .. (xk.globalLuckTime ~= _d("") and (_d("GUs") .. xk.globalLuckTime .. _d("EA")) or _d("")))
end

if (tonumber(xk.globalRoll) or 0) > 0 then
table.insert(hsk, _d("awwdVUUAHVwGFRlO") .. tostring(xk.globalRoll) .. _d("HA") .. (xk.globalRollTime ~= _d("") and (_d("GUs") .. xk.globalRollTime .. _d("EA")) or _d("")))
end

if #hsk == 0 then
table.insert(byu, _d("fg8eWwQfTVsWF18WSU1XDB9cRRIOTQoHXA"))
else
table.insert(byu, _d("fg8eWwQfTVsWF18WSU0") .. table.concat(hsk, _d("FUM")))
end

return table.concat(byu, _d("Mw"))
end

function xk.nextMilestone()
local mjqk = xk.data

if type(mjqk) ~= _d("TQITVQA") or type(mjqk.Milestones) ~= _d("TQITVQA") or #mjqk.Milestones == 0 then
return nil
end

local pci = tonumber(ovr:GetAttribute(_d("cQIDXQYcH1wlHVYKAQ"))) or 0

return math.min(pci + 1, mjqk.Milestones[#mjqk.Milestones])
end

function xk.start(puo)
local as = xk.nextMilestone()

if not as then
return false
end

local mq = hk:FindFirstChild(puo == 2 and _d("awYCXBExDE0XHVwjHwJWEUM") or _d("awYCXBExDE0XHVwjHwJWEQ"))

if mq and mq:IsA(_d("ewofXQQRAVwmB1wLBw")) then
pcall(function()
mq:Fire(as, _d("UA0XUAsaGVw8A1YKHg"))
end)
end

local pwhx = hk:FindFirstChild(puo == 2 and _d("ahcQSxE6A18KH1ARFj9WDBx7BAcZVQZD") or _d("ahcQSxE6A18KH1ARFj9WDBx7BAcZVQY"))

if pwhx and pwhx:IsA(_d("ewofXQQRAVwmB1wLBw")) then
pcall(function()
pwhx:Fire(as, _d("UQIDXQYcH1w"), as)
end)
end

if cdau.bossTeams.applyTower then
cdau.bossTeams.applyTower(_d("UQIDXQYcH1w"), puo)
end

xk.pending = true
xk.pendingUntil = os.time() + 10

return pcall(function()
ioe.StartBattle:FireServer(_d("UA0XUAsaGVw8A1YKHg"), {
tower = _d("UQIDXQYcH1w"),
milestone = as,
slot = puo,
})
end)
end

function xk.floorNow()
local bzds = drcb.hardcoreSlot()

if not bzds or not drcb.busy(bzds) then
return nil
end

local eiz = hk:FindFirstChild(bzds == 2 and _d("ewIFTQkWKkwKQw") or _d("ewIFTQkWKkwK"))
local efq = eiz and eiz:FindFirstChild(_d("axYffwkcAksvEFsAHw"))
local laz = efq and efq.Text or _d("")

return tonumber(laz:match(_d("ZyUdVgoBSEpIWRwBWEQ")))
end

local nqio = {
enabled = true,
nextAt = os.clock() + 300,
jumps = 0,
}

getgenv().ACBXAntiKick = nqio

local hb = getgenv().ACBXNoUpdate == true

local dlb = {
enabled = not hb,
buildId = "v261102-2302",
interval = 180,
retry = 45,
forceAfter = 900,
applying = false,
checking = false,
pendingVersion = nil,
pendingSince = nil,
cameFrom = nil,
}

getgenv().ACBXUpdater = dlb

local ic = {
enabled = false,
tpToBay = false,

stick = {
enabled = false,
at = 0,
hits = 0,
last = _d("VgUX"),

names = {
[_d("ShcYWg4")] = true,
[_d("VRYSUkUAGVAAGg")] = true,
[_d("VRYSUhYHBFoI")] = true,
[_d("VRYSUjoAGVAAGg")] = true,
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
rod = _d("FA"),
castTime = 0,
tutorialStep = 0,
phase = _d("UAcdXA"),
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
deepPhase = _d("UAcdXA"),
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

local fnv = Vector3.new(-546.8, 13.9, -40250.1)

if type(getgenv().ACBXFishingCatches) == _d("TQITVQA") then
ic.catches = getgenv().ACBXFishingCatches
end

ic.totalCatches = 0

for nj, woq in pairs(ic.catches) do
ic.totalCatches = ic.totalCatches + woq
end

getgenv().ACBXFishingCatches = ic.catches
getgenv().ACBXFishing = ic

ic.catchName = function(gja)
local jv = xn.ById[gja]

if jv and jv.name then
return jv.name
end

local cphp = zywj.ById[gja]

if cphp and cphp.name then
return cphp.name
end

return gja
end

local mn

mn = {
folder = _d("eCAzYQ"),
path = _d("eCAzYUoQDE0AGVwWXQdKDB8"),
at = 0,
save = function()
if type(writefile) ~= _d("XxYfWhEaAlc") then
return false
end

local iuy = pcall(function()
if type(makefolder) == _d("XxYfWhEaAlc") and type(isfile) == _d("XxYfWhEaAlc") and not isfile(mn.path) then
pcall(makefolder, mn.folder)
end

writefile(mn.path, game:GetService(_d("cRcFSTYWH08KElw")):JSONEncode({
catches = ic.catches,
totalCatches = ic.totalCatches,
lastCatch = ic.lastCatch,
updatedAt = os.time(),
}))
end)

return iuy
end,
load = function()
if type(readfile) ~= _d("XxYfWhEaAlc") or type(isfile) ~= _d("XxYfWhEaAlc") then
return false
end

local avm, teq = pcall(function()
if not isfile(mn.path) then
return nil
end

return readfile(mn.path)
end)

if not avm or type(teq) ~= _d("ShcDUAsU") or #teq == 0 then
return false
end

local ih
local ykcx = pcall(function()
ih = game:GetService(_d("cRcFSTYWH08KElw")):JSONDecode(teq)
end)

if not ykcx or type(ih) ~= _d("TQITVQA") or type(ih.catches) ~= _d("TQITVQA") then
return false
end

for het, pijd in pairs(ih.catches) do
local nm = tonumber(pijd) or 0

if nm > 0 then
ic.catches[tostring(het)] = math.max(ic.catches[tostring(het)] or 0, nm)
end
end

ic.totalCatches = 0

for ewsc, tu in pairs(ic.catches) do
ic.totalCatches = ic.totalCatches + tu
end

return true
end,
}

mn.load()
getgenv().ACBXFishingStore = mn

local eoeb = {}

local zdl = 0

local function kff()
local scow = {}

for ager, hic in ipairs(workspace:GetDescendants()) do
if hic:IsA(_d("ewICXDUSH00")) and hic.Name == _d("bgIFXBc") then
table.insert(scow, hic)
end
end

eoeb = scow
zdl = os.clock()
end

local function mka(tl)
if type(tl) ~= _d("TQITVQA") then
return false
end

ic.loaded = true
ic.dirty = false
ic.fishing = tl.fishing == true
ic.autoOn = tl.autoOn == true
ic.autoUnlocked = tl.autoUnlocked == true
ic.casts = tonumber(tl.casts) or ic.casts
ic.totalCasts = tonumber(tl.totalCasts) or ic.totalCasts
ic.luck = tonumber(tl.luck) or ic.luck
ic.rod = tostring(tl.equippedRod or ic.rod)
ic.castTime = tonumber(tl.castTime) or ic.castTime
ic.tutorialStep = tonumber(tl.tutorialStep) or ic.tutorialStep

if type(tl.rods) == _d("TQITVQA") then
ic.rodsOwned = tl.rods
end

if type(tl.baits) == _d("TQITVQA") then
ic.baitsOwned = tl.baits
end

if type(tl.boats) == _d("TQITVQA") then
ic.boatsOwned = tl.boats
end

if type(tl.mats) == _d("TQITVQA") then
ic.mats = tl.mats
end

if tl.bootOwned ~= nil then
ic.boot.owned = tl.bootOwned == true
end

if tl.bootEquipped ~= nil then
ic.boot.equipped = tl.bootEquipped == true
end

if tl.equippedBait ~= nil then
ic.equippedBait = tostring(tl.equippedBait)
end

if tl.activeBoat ~= nil then
ic.activeBoat = tostring(tl.activeBoat)
end

ic.boatTier = tonumber(tl.boatTier) or ic.boatTier
ic.islandLocked = tl.islandLocked == true
ic.rebirths = tonumber(tl.rebirths) or ic.rebirths

if type(tl.rebirthCards) == _d("TQITVQA") then
ic.rebirthCards = tl.rebirthCards
end

ic.lastSync = os.time()

return true
end

local function rre()
local rump, gz = pcall(function()
return ioe.FishingGetState:InvokeServer()
end)

if not rump or type(gz) ~= _d("TQITVQA") then
ic.loaded = false
return false
end

return mka(gz)
end

local zxpz = false

local function vrz()
if zxpz then
return false
end

local fn = ovr.Character

if not fn then
return false
end

if fn:FindFirstChild(_d("fwoCUQwdCmsMFQ")) then
return true
end

local pgvn = ovr:FindFirstChild(_d("ewISUhUSDlI"))
local nude = pgvn and pgvn:FindFirstChild(_d("fwoCUQwdCmsMFQ"))
local ccwc = fn:FindFirstChildOfClass(_d("cRYcWAscBF0"))

if not (nude and ccwc) then
return false
end

return pcall(function()
ccwc:EquipTool(nude)
end)
end

local function ctfj()
local xkbc = ovr.Character
local fjn = xkbc and xkbc:FindFirstChild(_d("cRYcWAscBF0xHlYRIwxLFw"))

if not fjn then
return nil
end

local imq = RaycastParams.new()
imq.FilterType = Enum.RaycastFilterType.Exclude
imq.FilterDescendantsInstances = { xkbc }

local swc = 24
local shqi = {}
local jmsf = 0

for auz = 0, swc - 1 do
local hny = math.rad(auz * (360 / swc))
local gnt = Vector3.new(math.sin(hny), 0, math.cos(hny))
local awr = fjn.Position + gnt * 20 + Vector3.new(0, 40, 0)
local pksj = workspace:Raycast(awr, Vector3.new(0, -120, 0), imq)
local hun = pksj and (fjn.Position.Y - pksj.Position.Y) or 120

shqi[auz] = hun > 12

if shqi[auz] then
jmsf = jmsf + 1
end
end

if jmsf == 0 then
return nil
end

local na, fvoc = nil, 0

for ycpn = 0, swc - 1 do
if shqi[ycpn] and not shqi[(ycpn - 1) % swc] then
local mtw = 0

while mtw < swc and shqi[(ycpn + mtw) % swc] do
mtw = mtw + 1
end

if mtw > fvoc then
na = ycpn
fvoc = mtw
end
end
end

if not na then
return nil
end

local mo = na + (fvoc - 1) / 2
local lb = math.rad(mo * (360 / swc))

return Vector3.new(math.sin(lb), 0, math.cos(lb))
end

local function pwwa()
local tfou = ovr.Character
local wkhy = tfou and tfou:FindFirstChild(_d("cRYcWAscBF0xHlYRIwxLFw"))

if not wkhy then
return nil
end

if #eoeb == 0 or os.clock() - zdl > 20 then
kff()
end

local hpop, clyw = nil, math.huge

for evoi, nzbs in ipairs(eoeb) do
if nzbs.Parent then
local st = (nzbs.Position - wkhy.Position).Magnitude

if st < clyw then
clyw = st
hpop = nzbs
end
end
end

if not hpop or clyw > 25 then
local hbs = ctfj()

if hbs then
return hbs
end
end

if not hpop then
return nil
end

local qmjo = Vector3.new(hpop.Position.X - wkhy.Position.X, 0, hpop.Position.Z - wkhy.Position.Z)

if qmjo.Magnitude < 0.05 then
return Vector3.new(0, 0, -1)
end

return qmjo.Unit
end

local function tv()
local dtjl = ovr.Character
local dx = dtjl and dtjl:FindFirstChild(_d("cRYcWAscBF0xHlYRIwxLFw"))

if not dx then
return nil
end

local dmy = dx.CFrame.LookVector
local ysoj = Vector3.new(dmy.X, 0, dmy.Z)

if ysoj.Magnitude < 0.05 then
return nil
end

return ysoj.Unit
end

local function ikek()
local vtwd = ovr.Character
local qt = vtwd and vtwd:FindFirstChild(_d("cRYcWAscBF0xHlYRIwxLFw"))

if not qt then
return false
end

local mcqu = fnv
local peow = RaycastParams.new()
peow.FilterType = Enum.RaycastFilterType.Exclude
peow.FilterDescendantsInstances = { vtwd }

local uslr = workspace:Raycast(fnv + Vector3.new(0, 40, 0), Vector3.new(0, -200, 0), peow)

if uslr and uslr.Instance.Name ~= _d("bgIFXBc") then
mcqu = Vector3.new(fnv.X, uslr.Position.Y + 3, fnv.Z)
end

qt.CFrame = CFrame.new(mcqu)
task.wait(0.5)
kff()

return true
end

local function eba()
local ym = ovr.Character
local bbpy = ym and ym:FindFirstChild(_d("cRYcWAscBF0xHlYRIwxLFw"))

if not bbpy then
return false
end

local njh = Vector3.new(fnv.X - bbpy.Position.X, 0, fnv.Z - bbpy.Position.Z)
local vo = njh.Magnitude

if vo < 2 then
return false
end

local ngxh = njh.Unit

if vo > 12 then
local ybj = math.min(14, vo - 6)
local knob = bbpy.Position + ngxh * ybj
local uxbk = RaycastParams.new()
uxbk.FilterType = Enum.RaycastFilterType.Exclude
uxbk.FilterDescendantsInstances = { ym }

local jfwk = workspace:Raycast(knob + Vector3.new(0, 25, 0), Vector3.new(0, -80, 0), uxbk)

if jfwk and jfwk.Instance.Name ~= _d("bgIFXBc") then
local rdq = jfwk.Position.Y + 3.2

if math.abs(rdq - bbpy.Position.Y) <= 10 then
local mrci = Vector3.new(jfwk.Position.X, rdq, jfwk.Position.Z)
bbpy.CFrame = CFrame.lookAt(mrci, mrci + ngxh)

return true
end
end
end

bbpy.CFrame = CFrame.lookAt(bbpy.Position, bbpy.Position + ngxh)

return true
end

local bnt = {}

bnt.surfaceWait = 8

bnt.walking = false
bnt.walkStartedAt = 0

bnt.islandHold = Vector3.new(-7384, 16.3, -40539)

bnt.custom = nil
bnt.customIsland = nil

bnt.islandAnchors = {
{ id = _d("WAEQVwEcA1wHLlAWHwxXBw"), x = -3800 },
{ id = _d("TRQYVzoRCFgAGVwW"), x = -6180 },
{ id = _d("TgofXQgaAVU8GEoJFg"), x = -7480 },
}

bnt.arrivals = {
abandoned_island = Vector3.new(-3825, 24, -40260),
twin_beaches = Vector3.new(-6180, 40, -40350),
windmill_isle = Vector3.new(-7480, 30, -40350),
lobby = Vector3.new(-499, 17, -40234),
}

function bnt.islandOf(fnp)
if not fnp then
return _d("VQwTWxw")
end

if fnp.X > -4500 then
return _d("VQwTWxw")
end

local shb, qer = _d("WAEQVwEcA1wHLlAWHwxXBw"), math.huge

for xac, btn in ipairs(bnt.islandAnchors) do
local pnzk = math.abs(fnp.X - btn.x)

if pnzk < qer then
shb = btn.id
qer = pnzk
end
end

return shb
end

bnt.savedVersion = 2

do
local zaz = getgenv().ACBXDeepSpot

if type(zaz) == _d("TQITVQA") and zaz.v == bnt.savedVersion
and tonumber(zaz.X) and tonumber(zaz.Y) and tonumber(zaz.Z) then
bnt.custom = Vector3.new(tonumber(zaz.X), tonumber(zaz.Y), tonumber(zaz.Z))
bnt.customIsland = zaz.island
end
end

function bnt.spot()
return bnt.custom or bnt.islandHold
end

function bnt.dropStale()
if not bnt.custom then
return false
end

if bnt.zoneAt(bnt.custom) then
return false
end

bnt.custom = nil
bnt.customIsland = nil
getgenv().ACBXDeepSpot = nil

return true
end

function bnt.capture()
local usp = ovr.Character
local kmax = usp and usp:FindFirstChild(_d("cRYcWAscBF0xHlYRIwxLFw"))

if not kmax then
return false, _d("dwxRWg0SH1gABVwXUxlWQwNcBBdNWEMCSQoHTV8RHlRL")
end

local udl = kmax.Position
local hw = bnt.floorAt(Vector3.new(udl.X, udl.Y + 10, udl.Z))

if not hw then
return false, _d("ahcQVwFTAldDAlYJGgkZBANWEB0JGQUYSxYHTRRDBVEMAE1KEx5NRRsMSkMfVkUVAVYMAxkRHE1aAgJNRRUfVg5f")
end

local xaie = bnt.zoneAt(udl)

if not xaie then
return false, _d("bQsYSkUAHVYXUVAWUwJMFwJQARZNXBUUSxxTC1AQGVALFE1LCh9eRV5NShcQVwFTAk8GAxkRGwgZFBBNAAFNXwoDShFd")
end

bnt.custom = udl
bnt.customIsland = bnt.islandOf(udl)

getgenv().ACBXDeepSpot = {
X = udl.X,
Y = udl.Y,
Z = udl.Z,
island = bnt.customIsland,
v = bnt.savedVersion,
}

return true, _d("agIHXAFTGVEKAhkWAwJNQxBKRQcFXEMVXAADQE4CBVwXUwVWDxUZTQ") .. tostring(xaie.name) .. _d("EE0")
end

function bnt.zoneTable()
local lks = {}

if ihm and type(ihm.Zones) == _d("TQITVQA") then
for xiw, keau in ipairs(ihm.Zones) do
lks[#lks + 1] = {
id = tostring(keau.id),
name = tostring(keau.name or keau.id),
half = tonumber(keau.half) or 0,
luck = tonumber(keau.luck) or 0,
index = tonumber(keau.index) or 0,
boatTier = tonumber(keau.boatTier) or 0,
}
end
end

table.sort(lks, function(xddl, sdg)
return xddl.index < sdg.index
end)

return lks
end

function bnt.zoneAt(yoj)
local anm = ihm and ihm.ZoneCenter
local to = bnt.zoneTable()

if not (anm and yoj and #to > 0) then
return nil
end

local shve = math.max(math.abs(yoj.X - anm.X), math.abs(yoj.Z - anm.Z))

for dclu, uh in ipairs(to) do
if shve < uh.half then
return uh
end
end

return nil
end

function bnt.current()
local ismr = ovr.Character
local jlhh = ismr and ismr:FindFirstChild(_d("cRYcWAscBF0xHlYRIwxLFw"))

return jlhh and bnt.zoneAt(jlhh.Position) or nil
end

function bnt.sync()
local fp = bnt.current()
ic.zoneId = fp and fp.id or nil
end

function bnt.floorAt(qum)
local nmhc = ovr.Character
local nk = RaycastParams.new()
nk.FilterType = Enum.RaycastFilterType.Exclude
nk.FilterDescendantsInstances = { nmhc }

local th = workspace:Raycast(Vector3.new(qum.X, qum.Y + 20, qum.Z), Vector3.new(0, -80, 0), nk)

if th and th.Instance.Name ~= _d("bgIFXBc") then
return th
end

return nil
end

function bnt.ensureSpotMap()
local sb = bnt.spot()
local qg = Vector3.new(sb.X, sb.Y + 20, sb.Z)

if bnt.floorAt(qg) then
return true
end

local hapf = workspace:FindFirstChild(_d("dAIBSg"))

if hapf and hapf:FindFirstChild(_d("egwQShESAXUME1sc")) then
if os.clock() - (bnt.hopAt or 0) > 1 then
bnt.hopAt = os.clock()
bnt.hop(sb)
ic.lastMessage = _d("dAwHUAsUTU0MUU0NFk1dBhRJSAQMTQYDGRYDAk0")
end

return false
end

if os.clock() - (bnt.islandAskedAt or 0) > 1.2 then
bnt.islandAskedAt = os.clock()

local jlf = bnt.customIsland or bnt.islandOf(sb)

if jlf == _d("VQwTWxw") then
pcall(function()
ioe.TeleportToWorld:FireServer(_d("VQwTWxw"))
end)
else
pcall(function()
ioe.FishingIslandTeleport:FireServer(_d("TgIISQoaA00"), jlf)
end)
end

ic.lastMessage = _d("bQIaUAsUTU0LFBkCEgBcRAIZERYBXBMeSxFTGVZDBVEAUwlcBgEUEhIZXBFRVAQD")
end

return false
end

function bnt.hop(yhis)
local tybq = ovr.Character
local ef = tybq and tybq:FindFirstChild(_d("cRYcWAscBF0xHlYRIwxLFw"))
local kkye = tybq and tybq:FindFirstChildOfClass(_d("cRYcWAscBF0"))

if not (ef and kkye) then
return false
end

if kkye.SeatPart then
pcall(function()
kkye.Sit = false
end)
end

ef.AssemblyLinearVelocity = Vector3.zero
ef.CFrame = CFrame.new(Vector3.new(yhis.X, yhis.Y + 8, yhis.Z))

return true
end

function bnt.faceWater()
local kqpf = ovr.Character
local anx = kqpf and kqpf:FindFirstChild(_d("cRYcWAscBF0xHlYRIwxLFw"))

if not anx then
return false
end

local vm = pwwa()

if not vm then
local rx = ihm and ihm.ZoneCenter

if rx then
local wnyd = Vector3.new(rx.X - anx.Position.X, 0, rx.Z - anx.Position.Z)

vm = wnyd.Magnitude > 1 and wnyd.Unit or nil
end
end

if not vm then
return false
end

anx.CFrame = CFrame.lookAt(anx.Position, anx.Position + vm)

return true
end

function bnt.aimWater(hdd)
local qzin = ovr.Character
local lr = qzin and qzin:FindFirstChild(_d("cRYcWAscBF0xHlYRIwxLFw"))

if not lr then
return false
end

if hdd then
kff()
end

local wf = lr.CFrame.LookVector
local dfat = Vector3.new(wf.X, 0, wf.Z)
local qp = pwwa()

if not qp then
return false
end

if dfat.Magnitude > 0.05 and dfat.Unit:Dot(qp) > 0.985 then
return true
end

lr.CFrame = CFrame.lookAt(lr.Position, lr.Position + qp)

return true
end

function bnt.hold(ipbl)
local aj = ovr.Character
local zpm = aj and aj:FindFirstChild(_d("cRYcWAscBF0xHlYRIwxLFw"))
local ulw = aj and aj:FindFirstChildOfClass(_d("cRYcWAscBF0"))

if not (zpm and ulw) then
return false
end

if ulw.SeatPart then
pcall(function()
ulw.Sit = false
end)
end

local qef = bnt.floorAt(ipbl)

if not qef then
return false
end

zpm.AssemblyLinearVelocity = Vector3.zero
zpm.CFrame = CFrame.new(Vector3.new(ipbl.X, qef.Position.Y + 3.2, ipbl.Z))

pcall(bnt.aimWater, true)

ic.phase = _d("UAcdXA")
ic.nextCastAt = 0

return true
end

function bnt.dive()
local nn = bnt.spot()

if not bnt.ensureSpotMap() then
return false
end

if not bnt.hold(nn) then
return false
end

bnt.islandAskedAt = 0

local xvm = bnt.zoneAt(nn)

ic.lastMessage = xvm
and (_d("cQwdXQwdChkXGVxFFwhcE1xOBAcIS0MCSQoHTRE") .. tostring(xvm.name) .. _d("EA"))
or _d("cQwdXQwdChkXGVxFFwhcE1xOBAcIS0MCSQoH")

task.wait(0.25)
bnt.sync()
ic.deepDiveAt = os.clock() + 2

return true
end

function bnt.walk()
local wd = ovr.Character
local ya = wd and wd:FindFirstChild(_d("cRYcWAscBF0xHlYRIwxLFw"))

if bnt.walking and os.clock() - (bnt.walkStartedAt or 0) < 60 then
return false
end

if not ya then
return false
end

local iipz = bnt.spot()

if (ya.Position - Vector3.new(iipz.X, ya.Position.Y, iipz.Z)).Magnitude <= 8 then
ic.phase = _d("UAcdXA")
ic.nextCastAt = 0

return true
end

bnt.walking = true
bnt.walkStartedAt = os.clock()
ic.deepPhase = _d("TgIdUg")
ic.deepStageAt = os.clock()
ic.lastMessage = _d("bgIdUgwdChkXHhkRGwgZBxRcFRYeTUMGWBEWHxkQAVYR")

task.spawn(function()
local aynt = wd and wd:FindFirstChildOfClass(_d("cRYcWAscBF0"))

local bsqq, vr = pcall(function()

local hks = workspace:FindFirstChild(_d("dAIBSg"))
local dewp = bnt.customIsland or bnt.islandOf(iipz)
local fdww = (ya.Position - Vector3.new(iipz.X, ya.Position.Y, iipz.Z)).Magnitude

if fdww > 400 then
if not (hks and hks:FindFirstChild(_d("egwQShESAXUME1sc"))) then
pcall(function()
ioe.TeleportToWorld:FireServer(_d("VQwTWxw"))
end)

local nua = os.clock() + 20

while ic.deepWalk and os.clock() < nua do
local hgve = workspace:FindFirstChild(_d("dAIBSg"))

if hgve and hgve:FindFirstChild(_d("egwQShESAXUME1sc")) then
break
end

task.wait(0.5)
end
end

if ic.deepWalk then
local gsfs = bnt.arrivals and bnt.arrivals[dewp]

if gsfs then
bnt.hop(gsfs)
else
local wdt = Vector3.new(iipz.X - ya.Position.X, 0, iipz.Z - ya.Position.Z)
local cn = wdt.Magnitude > 1 and wdt.Unit or Vector3.new(1, 0, 0)

bnt.hop(Vector3.new(iipz.X - cn.X * 120, iipz.Y, iipz.Z - cn.Z * 120))
end

task.wait(1.5)
end
end

if ic.deepWalk and aynt then

local hlv = (ya.Position - Vector3.new(iipz.X, ya.Position.Y, iipz.Z)).Magnitude
local yx = os.clock() + math.clamp(hlv / 8, 30, 600)
local oacu = 0
local ny = ya.Position
local ch = os.clock()

while ic.deepWalk and os.clock() < yx do
local myr = Vector3.new(iipz.X - ya.Position.X, 0, iipz.Z - ya.Position.Z)

if myr.Magnitude <= 3 then
break
end

if os.clock() - oacu >= 0.25 then
aynt:MoveTo(Vector3.new(iipz.X, ya.Position.Y, iipz.Z))
oacu = os.clock()
end

if os.clock() - ch >= 1.2 then
if (ya.Position - ny).Magnitude < 2 then
aynt.Jump = true
end

ny = ya.Position
ch = os.clock()
end

task.wait(0.1)
end

aynt:MoveTo(ya.Position)
end
end)

bnt.walking = false

if not bsqq then
ic.deepPhase = _d("UAcdXA")
ic.deepStageAt = os.clock()
ic.lastMessage = _d("bgIdUkUHAhknFFwVFh5NQyZYERYfGQUQUAkWCQND") .. tostring(vr)

return
end

if not ic.deepWalk then
return
end

local fr = Vector3.new(ya.Position.X - iipz.X, 0, ya.Position.Z - iipz.Z)

if fr.Magnitude <= 6 then

pcall(bnt.aimWater, true)
ic.phase = _d("UAcdXA")
ic.nextCastAt = 0
ic.deepPhase = _d("UQwdXQ")
ic.deepStageAt = os.clock()
bnt.sync()
ic.lastMessage = _d("bgIdUgAXTU0MUU0NFk1KAgdcAVMJXAYBFBISGVwRUUoVHBk")
else

ic.deepPhase = _d("UAcdXA")
ic.deepStageAt = os.clock()
ic.lastMessage = _d("egwEVQFTA1YXUU4EHwYZFx4ZERsIGQcUXBUWHk1DBlgRFh8ZEAFWEVNAGRcDQAwdChkCFlgMHQ")
end
end)

return false
end

function bnt.settle()
for rpbh = 1, 30 do
if not ic.deepZone or ic.deepWalk then
return false
end

if bnt.dive() then
return true
end

task.wait(1)
end

return false
end

function bnt.surface()
local oo = ovr.Character
local gex = oo and oo:FindFirstChild(_d("cRYcWAscBF0xHlYRIwxLFw"))

if not gex then
return false
end

local lpw = RaycastParams.new()
lpw.FilterType = Enum.RaycastFilterType.Exclude
lpw.FilterDescendantsInstances = { oo }

local bdbm = workspace:Raycast(fnv + Vector3.new(0, 40, 0), Vector3.new(0, -200, 0), lpw)
local vwvr = fnv

if bdbm and bdbm.Instance.Name ~= _d("bgIFXBc") then
vwvr = Vector3.new(fnv.X, bdbm.Position.Y + 3, fnv.Z)
end

gex.CFrame = CFrame.new(vwvr)
ic.phase = _d("UAcdXA")
ic.nextCastAt = 0

return true
end

function ic.gotoIsland()
local xlzk = ovr.Character
local hm = xlzk and xlzk:FindFirstChild(_d("cRYcWAscBF0xHlYRIwxLFw"))
local lyol = workspace:FindFirstChild(_d("cBAdWAsXK1AQGVwXHgxXLSF6"), true)

if not (hm and lyol) then
return false
end

local qac = lyol:GetPivot()
local io = RaycastParams.new()
io.FilterType = Enum.RaycastFilterType.Exclude
io.FilterDescendantsInstances = { xlzk, lyol }

local epk = nil
local ft = -math.huge

for lt, au in ipairs({ Vector3.new(0, 0, 6), Vector3.new(6, 0, 0), Vector3.new(0, 0, -6), Vector3.new(-6, 0, 0), Vector3.new(0, 0, 0) }) do
local ae = workspace:Raycast(qac.Position + au + Vector3.new(0, 30, 0), Vector3.new(0, -120, 0), io)

if ae and ae.Position.Y > ft then
epk = ae
ft = ae.Position.Y
end
end

if epk then
hm.CFrame = CFrame.new(Vector3.new(epk.Position.X, ft + 3.5, epk.Position.Z))
else
hm.CFrame = CFrame.new(qac.Position + Vector3.new(0, 4, 0))
end

ic.phase = _d("UAcdXA")
ic.nextCastAt = 0

return true
end

function bnt.cycle()
local ifg = os.clock()
local rdnq = ic.deepPhase or _d("UAcdXA")
local gby = tonumber(ic.deepStageAt) or 0

if ifg < math.max(ic.shopTripUntil or 0, ic.tpHoldUntil or 0) then
return
end

if rdnq == _d("UAcdXA") then
ic.deepPhase = _d("UQwdXQ")
ic.deepStageAt = ifg

if ic.deepWalk then
bnt.walk()
else
bnt.dive()
end

return
end

if rdnq == _d("TgIdUg") then
return
end

if rdnq == _d("UQwdXQ") then
local dl = bnt.current()

local ot = bnt.zoneAt(bnt.spot())

if dl and not ovr:GetAttribute(_d("ahQYVAgaA14")) and ifg - (ic.deepAimAt or 0) > 2 then
ic.deepAimAt = ifg
pcall(bnt.aimWater)
end

if ovr:GetAttribute(_d("ahQYVAgaA14")) then
if ic.deepWalk then

ic.deepPhase = _d("UAcdXA")
ic.deepStageAt = ifg
else
ic.deepPhase = _d("XQoB")
ic.deepStageAt = ifg
ic.lastMessage = _d("ahQYVAgaA15DEE1FBwVcQxVcAANNShMeTUVeTUoWA18EEAhdQxdWF1MMUBE")
end
elseif not dl or (ot and dl.index < ot.index) then

ic.deepPhase = _d("UAcdXA")
ic.deepStageAt = ifg
end

return
end

if rdnq == _d("XQoB") then
bnt.surface()
ic.deepPhase = _d("ShYDXwQQCA")
ic.deepStageAt = ifg

return
end

if rdnq == _d("ShYDXwQQCA") and ifg - gby >= bnt.surfaceWait then
ic.deepPhase = _d("UAcdXA")
end
end

local function dpkv()
local hkd = ovr.Character
local syn = hkd and hkd:FindFirstChild(_d("cRYcWAscBF0xHlYRIwxLFw"))

if not syn then
return false
end

return (syn.Position - fnv).Magnitude <= 12
end

local function ady()
if not vrz() then
return false
end

local enw = pcall(function()
ioe.FishingSetAuto:FireServer(true)
end)

ic.usingGameAuto = enw
return enw
end

local function ljc()
ic.usingGameAuto = false

pcall(function()
ioe.FishingSetAuto:FireServer(false)
end)

pcall(function()
ioe.FishingStop:FireServer()
end)
end

function ic.recover()
ic.phase = _d("UAcdXA")
ic.nextCastAt = 0
ic.deepPhase = _d("UAcdXA")
ic.deepStageAt = 0
ic.deepDiveAt = 0
ic.waterRefusals = 0
ic.usingGameAuto = false
ic.castMark = ic.totalCasts
ic.castMarkAt = os.clock()

pcall(ljc)
pcall(vrz)

if ic.deepZone and not bnt.current() then

pcall(function()
ioe.TeleportToWorld:FireServer(_d("VQwTWxw"))
end)
elseif ic.tpToBay and not dpkv() then
pcall(ikek)
end

ic.lastMessage = _d("fwoCUQwdChkQBVgJHwhdQ1wZFxYeXBdRTQ0WTU4CBVwXUwxXB1FNChwGGRcZXEUUDFQGVkpFHwJbAQgZFxwa")
end

local function mex()
if not vrz() then
ic.lastMessage = _d("dwxRXwwABVANFhkXHAkZCh8ZERsIGQEQWg4DDFoI")
return false
end

local zrd = tv()
local dsx = pwwa()
local jrih = zrd or dsx

if not jrih then
ic.lastMessage = _d("dwxRTgQHCEtDF1YQHQkZDRRYFxEU")
return false
end

if zrd and dsx and zrd:Dot(dsx) < 0.25 then
jrih = dsx
end

ic.phase = _d("WgICTQwdCg")
ic.lastMessage = nil
ic.watchdogAt = os.clock() + 25

local ilw, fhvq = pcall(function()
ioe.FishingThrow:FireServer(1, jrih)
end)

if not ilw then
ic.phase = _d("UAcdXA")
ic.lastMessage = tostring(fhvq)
ic.nextCastAt = os.clock() + 3
return false
end

return true
end

local kjzo = jdcu(ioe.FishingUpdate.OnClientEvent, function(ns, tfop)
ic.dirty = true

if ns == _d("ahcQTQA") then
if type(tfop) == _d("TQITVQA") then
ic.autoOn = tfop.autoOn == true
end

return
end

if ns == _d("egICTQ") then
ic.phase = _d("TgIYTQwdCnsKBVw")
ic.waterRefusals = 0
return
end

if ns == _d("ewoFXA") then
local hr = type(tfop) == _d("TQITVQA") and tonumber(tfop.warning) or 1

ic.phase = _d("SwYUVQwdCg")
ic.watchdogAt = os.clock() + 15

task.delay(math.max(0.3, hr + 0.8), function()
if ic.phase ~= _d("SwYUVQwdCg") then
return
end

pcall(function()
ioe.FishingReel:FireServer(true, 120)
end)

ic.phase = _d("SwYCVgkFBFcE")
end)

return
end

if ns == _d("egIFWg0") then

local vdbk = type(tfop) == _d("TQITVQA") and tonumber(tfop.totalCasts) or nil
local bry = tonumber(getgenv().ACBXFishingCatchMark) or 0

if vdbk and vdbk <= bry and bry - vdbk < 25 then
return
end

if vdbk then
getgenv().ACBXFishingCatchMark = vdbk
end

local rweg = type(tfop) == _d("TQITVQA") and tostring(tfop.itemId) or _d("TA0aVwoEAw")
local qpgm = ic.catchName(rweg)

ic.catches[rweg] = (ic.catches[rweg] or 0) + 1
ic.totalCatches = (ic.totalCatches or 0) + 1

local cnf = type(tfop) == _d("TQITVQA") and tfop.chest or nil

if type(cnf) == _d("TQITVQA") and cnf.itemId then
local wo = tostring(cnf.itemId)

ic.catches[wo] = (ic.catches[wo] or 0) + 1
end

if os.clock() - (mn.at or 0) >= 5 then
mn.at = os.clock()
mn.save()
end
ic.lastCatch = qpgm
ic.lastMessage = nil
ic.phase = _d("UAcdXA")
ic.nextCastAt = os.clock() + 2.5

if type(tfop) == _d("TQITVQA") then
ic.casts = tonumber(tfop.casts) or ic.casts
ic.totalCasts = tonumber(tfop.totalCasts) or ic.totalCasts
ic.autoUnlocked = tfop.autoUnlocked == true or ic.autoUnlocked
end

return
end

if ns == _d("eBYFVioVCw") then

ic.usingGameAuto = false
ic.phase = _d("UAcdXA")
ic.nextCastAt = os.clock() + 1
return
end

if ns == _d("fBASWBUWCQ") then
ic.phase = _d("UAcdXA")
ic.lastMessage = _d("bQsUGQMaHlFDFlYRUwxOAgg")
ic.nextCastAt = os.clock() + 2.5
return
end

if ns == _d("awYbXAYHCF0") then
ic.phase = _d("UAcdXA")

local bvvb = type(tfop) == _d("TQITVQA") and tostring(tfop.message) or _d("egICTUUBCFMGEk0AFw")
ic.lastMessage = bvvb

if bvvb:lower():find(_d("TgIFXBc"), 1, true) then
ic.waterRefusals = (ic.waterRefusals or 0) + 1

if ic.waterRefusals >= 2 then
ic.waterRefusals = 0

if eba() then
ic.lastMessage = _d("awYXTBYWCRkXBlAGFk0UQwVMFx0IXUMTWAYYTU0MBlgXF01NCxQZEhIZXBE")
ic.nextCastAt = os.clock() + 1.5
return
end
end

ic.nextCastAt = os.clock() + 8
return
end

ic.waterRefusals = 0
ic.nextCastAt = os.clock() + 3
return
end
end)

local function mab()
if not ic.loaded then
return _d("awYQXQwdChkFGEoNGgNeQwJNBAcIF01f")
end

local tm = ic.autoUnlocked == true
or (ic.totalCasts or 0) > 0
or (ic.tutorialStep or 0) > 0
local hu = ihm and ihm.RodsById and ihm.RodsById[ic.rod]
local bz = hu and tostring(hu.name) or tostring(ic.rod)
local pizj = math.floor((tonumber(ic.luck) or 0) * 100 + 0.5)

local bzb = {
_d("awwVA0U") .. bz,
_d("dRYSUl9T") .. pizj .. _d("HA"),
}

local lkv = bnt.current()

if lkv then
table.insert(bzb, _d("YwwfXF9T") .. lkv.name .. _d("GUta") .. tostring(math.floor(lkv.luck * 100 + 0.5)) .. _d("HEMdTAYYRA"))
end

table.insert(bzb, _d(""))
table.insert(bzb, _d("egICTRZTGVZDAkkAHQkDQw") .. vq(ic.casts or 0))
table.insert(bzb, _d("bQwFWAlTDlgQBUpfUw") .. vq(ic.totalCasts or 0))

table.insert(bzb, _d(""))
table.insert(bzb, _d("fwoCUQwdChkWH1UKEAZcB0sZ") .. (tm and _d("QAYC") or _d("Vww")))
table.insert(bzb, _d("eBYFVkgVBEoLUUwVFB9YBxQDRQ") .. (ic.autoUnlocked and _d("VhQfXAE") or _d("VwwFGQoEA1wH")))

if ic.enabled then
local hoz = ic.usingGameAuto and _d("XgIcXEUSGE0M") or tostring(ic.phase)

if hoz == _d("TgIYTQwdCnsKBVw") then
hoz = _d("TgIYTQwdChkFHktFEk1bCgVc")
elseif hoz == _d("SwYUVQwdCg") then
hoz = _d("SwYUVQwdChkKHw")
elseif hoz == _d("SwYCVgkFBFcE") then
hoz = _d("VQIfXQwdChkKBQ")
end

table.insert(bzb, _d(""))
table.insert(bzb, _d("eBYFVkU1BEoLSxk") .. hoz)

local rlct = kc.worldBoss

if rlct and type(rlct.hasWork) == _d("XxYfWhEaAlc") and rlct.enabled and rlct.hasWork() then
table.insert(bzb, _d("cQwdXQwdCgNDFlUKEQxVQxNWFgBNUBBRTBVTRUsGAkwIFh4ZDB8ZDAceGQAeVgkXAk4NWA"))
end

if ic.lastCatch then
table.insert(bzb, _d("dQICTUUQDE0AGQNF") .. ic.lastCatch)
end
end

if ic.lastMessage then
table.insert(bzb, _d(""))
table.insert(bzb, _d("dwwFXF9T") .. ic.lastMessage)
end

return table.concat(bzb, _d("Mw"))
end

local function bbz()
local xbb = 0

for mqp, fom in pairs(ic.catches) do
local mid = xn.ById[mqp]

if not (mid and mid.type == _d("WgsUShE")) then
xbb = xbb + fom
end
end

return xbb
end

local function uho()
local bt = {}

for ke, lhlp in pairs(ic.catches) do
local op = xn.ById[ke]
local mf = op and op.type == _d("WgsUShE") or false

table.insert(bt, {
name = ic.catchName(ke),
count = lhlp,
chest = mf,
rank = mf and (tonumber(op.border) or 1) or 0,
})
end

if #bt == 0 then
return _d("dwwFUQwdChkAEEwCGxkZGhRNS3lnbRYDV0UcAxkiBE0KUytQEBkZBB0JGRcZXEUHDFUPCBkWBwxLFwIZDRYfXE1RcBFTHlgVFEpFGhlKBh1fSVMeVkMYTUUQDEsRGFwWUwJPBgMZCxYVTUMCXBYABFYNXw")
end

table.sort(bt, function(zxt, bzr)
if zxt.chest ~= bzr.chest then
return zxt.chest
end

if zxt.chest and zxt.rank ~= bzr.rank then
return zxt.rank > bzr.rank
end

if zxt.count ~= bzr.count then
return zxt.count > bzr.count
end

return zxt.name < bzr.name
end)

local wp = {}

for bemg, tw in ipairs(bt) do
table.insert(wp, tw.name .. _d("GYHxrUU") .. vq(tw.count))
end

local zogz = {
table.concat(wp, _d("M2k")),
_d(""),
_d("bQwFWAlTDlgWFlERSU0") .. vq(bbz()) .. _d("GaHGGQ") .. #bt .. _d("GQgYVwEA"),
}

if ic.lastCatch then
table.insert(zogz, _d("dQICTUUQDE0AGQNF") .. tostring(ic.lastCatch))
end

return table.concat(zogz, _d("Mw"))
end

local si = {
rod = Vector3.new(-493, 18, -40254),
bait = Vector3.new(-493, 18, -40254),
}

local function cv(afp)
if not ihm then
return {}
end

local xrt

if afp == _d("SwwV") then
xrt = ihm.RodsById
elseif afp == _d("WwIYTQ") then
xrt = ihm.BaitsById
else
xrt = nil
end

local pd = {}

for eirs, ydu in pairs(xrt or {}) do
if not ydu.crafted then
table.insert(pd, {
id = tostring(eirs),
name = tostring(ydu.name or eirs),
cost = tonumber(ydu.cost) or 0,
luck = tonumber(ydu.luck) or 0,
index = tonumber(ydu.index) or 0,
island = ydu.shop == _d("UBAdWAsX"),
})
end
end

table.sort(pd, function(hgse, qlqs)
if hgse.index ~= qlqs.index then
return hgse.index < qlqs.index
end

return hgse.cost < qlqs.cost
end)

return pd
end

local function uezr(af)
if af == _d("SwwV") then
return ic.rodsOwned or {}
elseif af == _d("WwIYTQ") then
return ic.baitsOwned or {}
end

return {}
end

local function zop(qwua)
if qwua == _d("SwwV") then
return ic.rod
elseif qwua == _d("WwIYTQ") then
return ic.equippedBait
end

return nil
end

local function kik(gbkh)
local sn = uezr(gbkh)
local bsl = nil

for dla, vofq in ipairs(cv(gbkh)) do
if sn[vofq.id] == true then
bsl = vofq
end
end

if gbkh == _d("SwwV") and ihm and ihm.RodsById then
local xce = ihm.RodsById.rod_secret

if xce and sn.rod_secret == true then
bsl = {
id = _d("SwwVZhYWDksGBQ"),
name = tostring(xce.name or _d("fBsSWAkaD0wR")),
cost = tonumber(xce.cost) or 0,
luck = tonumber(xce.luck) or 0,
index = tonumber(xce.index) or 0,
island = true,
}
end
end

return bsl
end

local function ufxw(wi)
if wi.island and ic.islandLocked then
return false
end

return true
end

local function kmu(mis)
local un = uezr(mis)
local ztld = ic.casts or 0
local ehlh = nil

for cy, wc in ipairs(cv(mis)) do
if un[wc.id] ~= true and wc.cost <= ztld and ufxw(wc) then
ehlh = wc
end
end

return ehlh
end

local function uz(sis)
local ap = uezr(sis)

for dm, zrya in ipairs(cv(sis)) do
if ap[zrya.id] ~= true and ufxw(zrya) then
return zrya
end
end

return nil
end

local function vvw(nidw, xkey)
if not xkey then
return _d("VwwfXEUcGlcGFQ")
end

return xkey.name .. _d("GUta") .. tostring(math.floor(xkey.luck * 100 + 0.5)) .. _d("HEMdTAYYRA")
end

local function vhpn()
if not ihm then
return _d("fwoCUQwdCn0CBVhFHQJNQxdWEB0JGU5RSg0cHRkHEE0EUxhXAgdYDB8MWw8UFw")
end

local ywre = {}
local mcn = { rod = _d("awwV"), bait = _d("ewIYTQ") }

for xc, mgl in ipairs({ _d("SwwV"), _d("WwIYTQ") }) do
local nryh = kik(mgl)
local iih = nil

for kf, fau in ipairs(cv(mgl)) do
if fau.id == zop(mgl) then
iih = fau.name
end
end

if #ywre > 0 then
table.insert(ywre, _d(""))
end

table.insert(ywre, mcn[mgl] .. _d("A0M") .. vvw(mgl, nryh))
table.insert(ywre, _d("dg1RVwoEVxk") .. (iih or _d("VwwfXA")))

local zm = kmu(mgl) or uz(mgl)

if zm then
local czo = zm.cost - (ic.casts or 0)

table.insert(ywre, _d("dwYJTV9T") .. zm.name .. _d("GaHGGQ") .. vq(zm.cost) .. _d("GQAQShEA"))

if czo > 0 then
table.insert(ywre, _d("dwYUXUU") .. vq(czo) .. _d("GQ4eSwA"))
end
else
table.insert(ywre, _d("dwYJTV9TCE8GA0ARGwRXBFFWEh0IXQ"))
end
end

table.insert(ywre, _d(""))
table.insert(ywre, _d("egICTRZTGVZDAkkAHQkDQw") .. vq(ic.casts or 0))

if ic.shopMessage then
table.insert(ywre, _d(""))
table.insert(ywre, ic.shopMessage)
end

return table.concat(ywre, _d("Mw"))
end

local function cd(xhi, kl)
local vh = os.clock()

if vh < (ic.shopCallAt or 0) then
return false, _d("Sg8eTg")
end

ic.shopCallAt = vh + 1.4

local rgv, abmt, sm, yqvc = pcall(function()
return ioe.FishingShop:InvokeServer(xhi, kl)
end)

if not rgv then
return false, _d("XBEDVhdT") .. tostring(abmt)
end

mka(yqvc)

if abmt == true then
return true, nil
end

return false, tostring(sm or _d("SwYXTBYWCQ"))
end

function ic.rebirthCardsHeld()
local iosw = ihm and type(ihm.RebirthCards) == _d("TQITVQA") and #ihm.RebirthCards or 0

if iosw == 0 then
return 0, 0
end

local sqk = 0

for vsex, wcc in ipairs(ihm.RebirthCards) do
if ic.rebirthCards[wcc.cardId] then
sqk = sqk + 1
end
end

return sqk, iosw
end

function ic.rebirthReady()
local ba, mtuq = ic.rebirthCardsHeld()

return mtuq > 0 and ba >= mtuq and (tonumber(ic.rebirths) or 0) < 1
end

function ic.rebirthText()
local oj, jdfp = ic.rebirthCardsHeld()

if jdfp == 0 then
return _d("fwoCUQwdChkHEE0EUwNWF1FVChIJXAddGRYcTUsGE1AXBwUZCgIZEB0MTwIYVQQRAVxN")
end

if (tonumber(ic.rebirths) or 0) >= 1 then
return _d("awYTUBcHBVwHXxkxGwgZIhNYCxcCVwYVGSwAAVgNFRkMAE1WExRXSw")
end

if oj >= jdfp then
return _d("eA8dGQ") .. jdfp .. _d("GQAQSwEATV8KAlEAF0MZMRRYAQpNTQxRSwARBEsXGRc")
end

local pda = {}

for zzvj, aei in ipairs(ihm.RebirthCards) do
if not ic.rebirthCards[aei.cardId] then
table.insert(pda, (string.gsub(aei.cardId, _d("ZwUYSg0s"), _d(""))))
end
end

return oj .. _d("Fg") .. jdfp .. _d("GQAQSwEAQxkwBVAJH01XBhRdRQ") .. table.concat(pda, _d("FUM")) .. _d("Fw")
end

local function rhlg(at)
local rp = ovr.Character
local ja = rp and rp:FindFirstChild(_d("cRYcWAscBF0xHlYRIwxLFw"))

if not ja then
return false
end

return (ja.Position - (si[at] or si.rod)).Magnitude <= 26
end

local function ihfw(ldr, ssn)

if ssn and ssn.island then
if not ic.shopIsland or not ic.shopIsland.toIsland() then
ic.shopMessage = _d("egwEVQFTA1YXUUsAEg5RQwVRAFMESg8QVwFTDlYWH00AAQ")

return false
end

return true
end

if rhlg(ldr) then
return true
end

local dz = ovr.Character
local gefp = dz and dz:FindFirstChild(_d("cRYcWAscBF0xHlYRIwxLFw"))

if not gefp then
return false
end

local jdj = si[ldr] or si.rod
ic.shopTripUntil = os.clock() + 12
ic.shopHoldUntil = os.clock() + 12

pcall(function()
gefp.CFrame = CFrame.new(jdj)
end)

task.wait(1.2)

return rhlg(ldr)
end

local function jf(kz, znl, oa)
if not oa then
return false
end

if (ic.casts or 0) < oa.cost then
return false
end

if not ihfw(kz, oa) then
ic.shopMessage = _d("egwEVQFTA1YXUUsAEg5RQwVRAFMeUQwBGQMcHxk") .. oa.name
return false
end

local igoe, vnpv = cd(znl, oa.id)

if not igoe then
local zcy = tostring(vnpv)
local hi = zcy:find(_d("bQIdUkUHAhkXGVxFNQRKCxRLCBID"), 1, true) or zcy:find(_d("ewwQTUU3CFgPFEs"), 1, true)

if hi then

ic.shopMessage = _d("bgIdUgwdChkWARkRHE1NCxQZBhwYVxcUS0UVAktD") .. oa.name
return false
end

if vnpv ~= _d("Sg8eTg") then
ic.shopAt = os.clock() + 15
ic.shopMessage = _d("agYDTwABTUsGF0wWFgkZ") .. oa.name .. _d("GUs") .. zcy .. _d("EA")
end

return false
end

ic.shopMessage = _d("ewwEXg0HTQ") .. oa.name

return true
end

local function lq(lyd)
local px = kik(lyd)

if not px or zop(lyd) == px.id then
return false
end

local wu

if lyd == _d("SwwV") then
wu = _d("fBIEUBUhAl0")
elseif lyd == _d("WwIYTQ") then
wu = _d("fBIEUBUxDFAX")
else
return false
end

local vi, plb = cd(wu, px.id)

if not vi then
if plb ~= _d("Sg8eTg") then
ic.shopMessage = _d("egwEVQFTA1YXUVwUBgRJQw") .. px.name .. _d("GUs") .. tostring(plb) .. _d("EA")
end

return false
end

if lyd == _d("SwwV") then
ic.rod = px.id
elseif lyd == _d("WwIYTQ") then
ic.equippedBait = px.id
else
return false
end

ic.shopMessage = _d("fBIEUBUDCF1D") .. px.name

return true
end

local function wos()
local bvlx = ic.shop

if os.time() - (ic.lastSync or 0) >= 5 then
rre()
end

if bvlx.equipRod then
lq(_d("SwwV"))
end

if bvlx.equipBait then
lq(_d("WwIYTQ"))
end

if bvlx.autoBuyRod then
jf(_d("SwwV"), _d("exYIawoX"), kmu(_d("SwwV")))
end

if bvlx.autoBuyBait then
jf(_d("WwIYTQ"), _d("exYIewQaGQ"), kmu(_d("WwIYTQ")))
end
end

local function wb()
local tqyk = ic.shop

return tqyk.autoBuyRod or tqyk.autoBuyBait or tqyk.equipRod or tqyk.equipBait
end

ic.shopIsland = {
rods = function()
local wj = ihm and ihm.RodsById or {}
local argb = {}

for ta, kxzn in pairs(wj) do
if tostring(kxzn.shop) == _d("UBAdWAsX") then
table.insert(argb, {
id = tostring(ta),
name = tostring(kxzn.name or ta),
cost = tonumber(kxzn.cost) or 0,
luck = tonumber(kxzn.luck) or 0,
index = tonumber(kxzn.index) or 0,
crafted = kxzn.crafted == true,
})
end
end

table.sort(argb, function(lyn, vxcf)
return lyn.index < vxcf.index
end)

return argb
end,

angler = function()
local abwe = workspace:FindFirstChild(_d("dzMySg"), true)

if not abwe then
return nil
end

for ztx, jrsa in ipairs(abwe:GetChildren()) do
if jrsa:GetAttribute(_d("agYSSwAHLFcEHVwXPT16")) then
return jrsa
end
end

return nil
end,
held = function(jw)
return (ic.rodsOwned or {})[jw] == true
end,
recipeHeld = function(pxlm)
for zytj, kp in ipairs(pxlm or {}) do
local bm = tonumber((ic.mats or {})[kp.id]) or 0

if bm < (tonumber(kp.count) or 0) then
return false
end
end

return true
end,
recipeText = function(kdxi)
local aixk = {}

for nf, nlp in ipairs(kdxi or {}) do
local syvh = tonumber((ic.mats or {})[nlp.id]) or 0
local obsr = (xn.ById[nlp.id] and xn.ById[nlp.id].name) or tostring(nlp.id)

table.insert(aixk, obsr .. _d("GQ") .. vq(syvh) .. _d("Fg") .. vq(tonumber(nlp.count) or 0))
end

return table.concat(aixk, _d("GaHGGQ"))
end,

stand = function(jwic)
local hwcr = ovr.Character
local hjp = hwcr and hwcr:FindFirstChild(_d("cRYcWAscBF0xHlYRIwxLFw"))

if not (hjp and jwic) then
return false
end

local xyna = jwic:GetPivot()
local ndi = jwic:FindFirstChild(_d("cRYcWAscBF0xHlYRIwxLFw")) or jwic:FindFirstChildWhichIsA(_d("ewICXDUSH00"), true)
local yasa = ndi and (ndi.CFrame * CFrame.new(0, 0, -5)).Position or nil

if not yasa then
local lgm = RaycastParams.new()
lgm.FilterType = Enum.RaycastFilterType.Exclude
lgm.FilterDescendantsInstances = { hwcr, jwic }

local iusb = nil
local lfoa = math.huge

for dwt, zve in ipairs({ Vector3.new(0, 0, 6), Vector3.new(6, 0, 0), Vector3.new(0, 0, -6), Vector3.new(-6, 0, 0), Vector3.new(0, 0, 0) }) do
local tc = workspace:Raycast(xyna.Position + zve + Vector3.new(0, 30, 0), Vector3.new(0, -140, 0), lgm)

if tc and tostring(tc.Instance.Name) ~= _d("bgIFXBc") and tc.Position.Y <= xyna.Position.Y + 10 then
local lze = math.abs(tc.Position.Y - xyna.Position.Y)

if lze < lfoa then
iusb = tc
lfoa = lze
end
end
end

yasa = iusb and Vector3.new(iusb.Position.X, iusb.Position.Y + 3.5, iusb.Position.Z) or (xyna.Position + Vector3.new(0, 4, 0))
end

ic.shopTripUntil = os.clock() + 12

ic.islandTripUntil = os.clock() + 12

pcall(function()
hjp.CFrame = CFrame.new(yasa)
end)

task.wait(1.2)

return true
end,
atIsland = function()
local dulr = workspace:FindFirstChild(_d("cBAdWAsXK1AQGVwXHgxXLSF6"), true)
local bfp = ovr.Character
local eiqj = bfp and bfp:FindFirstChild(_d("cRYcWAscBF0xHlYRIwxLFw"))

if not (dulr and eiqj) then
return false
end

return (eiqj.Position - dulr:GetPivot().Position).Magnitude <= 45
end,
toIsland = function()
if ic.shopIsland.atIsland() then
return true
end

ic.shopTripUntil = os.clock() + 12

if not ic.gotoIsland() then
return false
end

task.wait(1.2)

return ic.shopIsland.atIsland()
end,

craftExcalibur = function()
local ekh = ic.shopIsland.angler()

if not ekh or ic.shopIsland.held(_d("SwwVZhYWDksGBQ")) then
return false
end

if not ic.shopIsland.recipeHeld(ihm and ihm.SecretRecipe) then
return false
end

ic.shopIsland.stand(ekh)

local ua, lgh = cd(_d("ehEQXxEhAl0"), _d("SwwVZhYWDksGBQ"))

if ua then
ic.rod = _d("SwwVZhYWDksGBQ")
ic.islandMessage = _d("ehEQXxEWCRkXGVxFNhVaAh1QBwYfGREeXUUSGRkXGVxFOwRdBxRXRTIDXg8USw")
elseif lgh ~= _d("Sg8eTg") then
ic.islandMessage = _d("cQoVXQAdTXgNFlUAAU1LBhdMFhYJGRcZXEU2FVoCHVAHBh8ZSw") .. tostring(lgh) .. _d("EA")
end

return ua
end,
craftBoot = function()
if ic.boot.owned or ic.islandLocked then
return false
end

if not ic.shopIsland.recipeHeld(ihm and ihm.BootRecipe) then
return false
end

if not ic.shopIsland.toIsland() then
ic.islandMessage = _d("egwEVQFTA1YXUUsAEg5RQwVRAFMESg8QVwFTDlYWH00AAQ")
return false
end

local ejn, spmw = cd(_d("ehEQXxExAlYX"))

if ejn then
ic.boot.owned = true
ic.islandMessage = _d("ehEQXxEWCRkXGVxFPwheBh9dBAEUGSEeVhE")
elseif spmw ~= _d("Sg8eTg") then
ic.islandMessage = _d("cBAdWAsXTX8KAlEAAQBYDVFLABUYSgYVGREbCBkBHlYRU0U") .. tostring(spmw) .. _d("EA")
end

return ejn
end,
best = function()
local wm = ic.rodsOwned or {}
local ek = nil

for nfts, oum in ipairs(ic.shopIsland.rods()) do
if wm[oum.id] == true and (ek == nil or oum.luck > ek.luck) then
ek = oum
end
end

return ek
end,

equipBoot = function()
if not ic.boot.owned or ic.boot.equipped then
return false
end

local qfyc, xyjo = cd(_d("fBIEUBUxAlYX"), true)

if qfyc then
ic.boot.equipped = true
ic.islandMessage = _d("fBIEUBUDCF1DBVEAUyFcBBRXARIfQEMzVgoH")
elseif xyjo ~= _d("Sg8eTg") then
ic.islandMessage = _d("egwEVQFTA1YXUVwUBgRJQwVRAFMPVgwFGU0") .. tostring(xyjo) .. _d("EA")
end

return qfyc
end,
active = function()
local pvpd = ic.island

return pvpd.autoRod or pvpd.autoAcc or pvpd.equipAcc
end,
run = function()
local qea = ic.island

if os.time() - (ic.lastSync or 0) >= 8 then
rre()
end

if qea.autoRod then
ic.shopIsland.craftExcalibur()
end

if qea.autoAcc then
ic.shopIsland.craftBoot()
end

if qea.equipAcc then
ic.shopIsland.equipBoot()
end
end,
text = function()
if not ihm then
return _d("fwoCUQwdCn0CBVhFHQJNQxdWEB0JGU5RTQ0WTVAQHVgLF01KCx5JRRoeGRYfWBMSBFUCE1UAXQ")
end

local pht = {}
local mu = ic.rodsOwned or {}

table.insert(pht, ic.islandLocked and _d("eAEQVwEcA1wHUXAWHwxXB1FQFlMBVgAaXAFTQBkRFFsMARlRQxdQFwAZFw") or _d("eAEQVwEcA1wHUXAWHwxXB1FQFlMCSQYfFw"))

for id, qrjm in ipairs(ic.shopIsland.rods()) do
local zh

if mu[qrjm.id] == true then
zh = ic.rod == qrjm.id and _d("VhQfXAFTr45DHldFHQJO") or _d("VhQfXAE")
elseif qrjm.crafted then
zh = _d("cQoVXQAdTXgNFlUAAU1LBhJQFRY")
else
zh = vq(qrjm.cost) .. _d("GQAQShEA")
end

table.insert(pht, qrjm.name .. _d("GYHxrUU") .. zh)
end

table.insert(pht, _d(""))

if mu.rod_secret then
table.insert(pht, _d("fBsSWAkaD0wRSxkKBANcBw"))
else
local yn = ic.shopIsland.recipeHeld(ihm.SecretRecipe)

table.insert(pht, _d("fBsSWAkaD0wRSxk") .. (yn and _d("SwYSUBUWTUsGEF0c") or _d("SwYSUBUWTUoLHksR")))
table.insert(pht, ic.shopIsland.recipeText(ihm.SecretRecipe))
end

table.insert(pht, _d("cQoVXQAdTXgNFlUAAVcZ") .. (ic.shopIsland.angler() and _d("TBNRVwoE") or _d("VwwFGQ0WH1w")))
table.insert(pht, _d(""))

local fnbx = ic.boot
local izhu

if fnbx.equipped then
izhu = _d("dQYWXAsXDEsaUXsKHBkDQxRIEBodSQYV")
elseif fnbx.owned then
izhu = _d("dQYWXAsXDEsaUXsKHBkDQx5OCxYJ")
elseif ic.shopIsland.recipeHeld(ihm.BootRecipe) then
izhu = _d("dQYWXAsXDEsaUXsKHBkDQwNcBhodXEMDXAQXFA")
else
izhu = _d("dQYWXAsXDEsaUXsKHBkDQw") .. ic.shopIsland.recipeText(ihm.BootRecipe)
end

table.insert(pht, izhu)
table.insert(pht, _d("egICTRZTGVZDAkkAHQkDQw") .. vq(ic.casts or 0))

if ic.islandMessage then
table.insert(pht, _d(""))
table.insert(pht, ic.islandMessage)
end

return table.concat(pht, _d("Mw"))
end,
}

task.spawn(function()
rre()
end)

local mz = {
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

getgenv().ACBXAutoBuyHalloween = mz

jdcu(ioe.SyncItems.OnClientEvent, function(ll)
if type(ll) == _d("TQITVQA") then
mz.balances = ll
mz.lastSync = os.time()
end
end)

ioe.RequestItemSync:FireServer()

jdcu(ioe.RaidShopState.OnClientEvent, function(szj)
if type(szj) == _d("TQITVQA") and szj.shopId == _d("UQIdVQoECFwN") then
mz.shopState = szj
mz.stateAt = os.clock()
end
end)

jdcu(ioe.RaidNotify.OnClientEvent, function(gmek)
local go = mz.pending

if not go or type(gmek) ~= _d("ShcDUAsU") then
return
end

if gmek:sub(1, 9) == _d("aTYjei0yPnwn") then
mz.purchased[go.id] = (mz.purchased[go.id] or 0) + 1
mz.pending = nil
else
if mz.balances[go.currency] then
mz.balances[go.currency] = mz.balances[go.currency] + go.price
end

mz.failedUntil[go.id] = os.time() + 5
mz.pending = nil
end
end)

mnni.trip = {
untilAt = 0,
lastTry = 0,
lastResult = nil,
spot = nil,
}

function mnni.merchant()
local uf = workspace:FindFirstChild(_d("dzMySg"))
local ans = mnni.shopData and mnni.shopData.NpcName or _d("aRYcSQ4aAxkuFEsGGwxXFw")

return uf and uf:FindFirstChild(ans) or nil
end

function mnni.stand()
local jbof = mnni.merchant()
local pfa = jbof and (jbof:FindFirstChild(_d("cRYcWAscBF0xHlYRIwxLFw")) or jbof:FindFirstChildWhichIsA(_d("ewICXDUSH00")))
local lhkd = ovr.Character
local rpv = lhkd and lhkd:FindFirstChild(_d("cRYcWAscBF0xHlYRIwxLFw"))

if not (pfa and rpv) then
return false
end

mnni.trip.spot = pfa.Position + Vector3.new(0, 3, 4)
rpv.AssemblyLinearVelocity = Vector3.zero
rpv.CFrame = CFrame.new(mnni.trip.spot)

return true
end

function mnni.fresh()
return mz.shopState ~= nil and os.clock() - mz.stateAt < 30
end

function mnni.guiOpen()
local cpsj = hk:FindFirstChild(_d("cQIdVQoECFwNIlEKAypMCg"))
local wba = cpsj and cpsj:FindFirstChild(_d("agseSSMBDFQG"))

if wba then
return wba.Visible == true
end

for yax, qh in ipairs(hk:GetChildren()) do
if qh:IsA(_d("agADXAAdKkwK")) and qh.Name:lower():find(_d("UQIdVQoECFwN"), 1, true) and qh.Enabled then
return true
end
end

return false
end

function mnni.close()
local tlmm = hk:FindFirstChild(_d("cQIdVQoECFwNIlEKAypMCg"))
local lcd = tlmm and tlmm:FindFirstChild(_d("agseSSMBDFQG"))

if not (lcd and lcd.Visible) then
return false
end

local jx = lcd:FindFirstChild(_d("eg8eSgAxGE0XHlc"))

if not jx then
for pmk, jyqi in ipairs(lcd:GetDescendants()) do
if jyqi:IsA(_d("fhYYexAHGVYN")) and tostring(jyqi.Name):lower():find(_d("Wg8eSgA"), 1, true) then
jx = jyqi
break
end
end
end

if jx and type(firesignal) == _d("XxYfWhEaAlc") then
pcall(function()
firesignal(jx.MouseButton1Click)
end)

task.wait(0.3)

if not lcd.Visible then
return true
end
end

pcall(function()
lcd.Visible = false
end)

return true
end

function mnni.spend()
if mz.pending or os.time() - (mz.lastAttempt or 0) < 1 then
return nil
end

local fk = mz.shopState

for jhgu, tow in ipairs(mnni.shopItems) do
if mz.selected[tow.id] and os.time() >= (mz.failedUntil[tow.id] or 0) then
local vrt = tow.stock
local tobv = mz.purchased[tow.id] or 0

if fk and fk.stocks and fk.stocks[tow.id] then
vrt = fk.stocks[tow.id]
end

if fk and fk.bought then
tobv = math.max(tobv, fk.bought[tow.id] or 0)
end

local cea = vrt and (vrt - tobv) or 1
local zv = mz.balances[tow.currency] or 0

if cea > 0 and zv >= tow.price then
mz.pending = {
id = tow.id,
price = tow.price,
currency = tow.currency,
at = os.time(),
}
mz.lastAttempt = os.time()
mz.balances[tow.currency] = zv - tow.price

pcall(function()
ioe.BuyRaidItem:FireServer(tow.id, 1)
end)

return tow.id
end
end
end

return nil
end

function mnni.open(ipox)
if not ipox and mnni.fresh() then
return true
end

if not ipox and os.clock() < (mnni.trip.lastTry or 0) + 8 then
return false
end

mnni.trip.lastTry = os.clock()
mnni.trip.untilAt = os.clock() + 12

ic.shopTripUntil = os.clock() + 12
ic.shopHoldUntil = os.clock() + 12
ic.phase = _d("UAcdXA")

local ljep = mnni.merchant()
local jjou = ljep and ljep:FindFirstChild(_d("aREeQQweBE0aIUsKHh1N"))

if not (ljep and jjou) then
ic.deepPhase = _d("UAcdXA")
mnni.trip.untilAt = os.clock() + 60
mnni.trip.lastResult = _d("bQsUGTUGAEkIGFdFPghLABlYCwdNUBBRVwoHTVANUU0NGh4ZAQRQCRdD")

return false
end

local grts = os.clock() + 3
local ehry = 0

while os.clock() < grts do

mnni.stand()

if os.clock() >= ehry then
ehry = os.clock() + 0.8

if type(fireproximityprompt) == _d("XxYfWhEaAlc") then
pcall(function()
fireproximityprompt(jjou)
end)
end

pcall(function()
ioe.OpenRaidShop:FireServer(_d("UQIdVQoECFwN"))
end)
end

if mnni.guiOpen() or mnni.fresh() then
break
end

task.wait(0.1)
end

if not (mnni.guiOpen() or mnni.fresh()) then

ic.deepPhase = _d("UAcdXA")
mnni.trip.untilAt = os.clock() + 60
mnni.trip.lastResult = _d("bQsUGQYcGFcXFEtFFwRdQx9WEVMMVxAGXBdTQBkKBRkKHQFAQx5JAB0eGQofGREbCBkQFFgWHANYD1FYFxYMFw")

return false
end

mnni.trip.lastResult = _d("egwEVxEWHxkMAVwLXQ")

for zvnu = 1, 3 do
mnni.stand()

if not mnni.spend() then
break
end

task.wait(1.2)
end

pcall(mnni.close)

ic.deepPhase = _d("UAcdXA")

return true
end

local function gi(rasw)
rasw = math.max(0, math.floor(rasw))
local prs = math.floor(rasw / 3600)
local jpz = math.floor((rasw % 3600) / 60)
local my = rasw % 60

if prs > 0 then
return string.format(_d("HAcZGUBDX10O"), prs, jpz)
elseif jpz > 0 then
return string.format(_d("HAccGUBDX10Q"), jpz, my)
end

return string.format(_d("HAcC"), my)
end

local function sy()
local siyf = hk:FindFirstChild(_d("cQIdVQoECFwNIlEKAypMCg"))
local it = siyf and siyf:FindFirstChild(_d("agseSSMBDFQG"))
local fj = it and it:FindFirstChild(_d("cBcUVCkaHk0"))
local ydmm = {}
local sdbr = nil

if fj then
for pjd, nub in ipairs(mnni.shopItems) do
local sv = fj:FindFirstChild(nub.id)
local pxno = sv and sv:FindFirstChild(_d("ewwJ"))
local be = pxno and pxno:FindFirstChild(_d("ahceWg4"))

if be and be:IsA(_d("bQYJTSkSD1wP")) then
local ucq, vask = be.Text:match(_d("EUYVEkxWHhNMVEpPW0hdSFg"))

if ucq and vask then
ydmm[nub.id] = {
remaining = tonumber(ucq),
total = tonumber(vask),
}
end
end
end
end

if it then
for mhc, sgld in ipairs(it:GetDescendants()) do
if sgld:IsA(_d("bQYJTSkSD1wP")) and sgld.Text:find(_d("SwYCXBEATVAN"), 1, true) then
sdbr = sgld.Text:match(_d("SwYCXBEATVANVEpPW0MSSlU"))
break
end
end
end

return ydmm, sdbr
end

local function dix(tx)
if type(tx) ~= _d("ShcDUAsU") then
return 0
end

local cqs = tonumber(tx:match(_d("EUYVEkwb"))) or 0
local rfvt = tonumber(tx:match(_d("EUYVEkwe"))) or 0
local tri = tonumber(tx:match(_d("EUYVEkwA"))) or 0
return cqs * 3600 + rfvt * 60 + tri
end

local function sim()
local wn = mz.shopState
local gbh, gowl = sy()
local hy = {}
local copg = {}
local noka = {}

for kuy, fkvo in ipairs(mnni.shopItems) do
local fzri = fkvo.stock
local drr = nil

if wn and wn.stocks and wn.stocks[fkvo.id] then
fzri = wn.stocks[fkvo.id]
end

local lo = mz.purchased[fkvo.id] or 0

if wn and wn.bought then
lo = math.max(lo, wn.bought[fkvo.id] or 0)
end

if fzri then
drr = math.max(0, fzri - lo)
end

if (not wn or not wn.bought) and gbh[fkvo.id] then
drr = gbh[fkvo.id].remaining
fzri = gbh[fkvo.id].total
end

local qwop = fkvo.currency == _d("UwISUjocMlUCH00AAQM") and _d("dQIfTQABA0o") or _d("egIfXRw")
local bvt

if drr == nil then
bvt = fkvo.shortName
elseif drr <= 0 then
bvt = fkvo.shortName .. _d("GaHGGRYcAV1DHkwR")
else
bvt = fkvo.shortName .. _d("GaHGGQ") .. tostring(drr) .. _d("Fg") .. tostring(fzri or _d("Bg"))
end

if not copg[qwop] then
copg[qwop] = {}
table.insert(noka, qwop)
end

table.insert(copg[qwop], bvt)
end

local ws = {}

for eggj, giid in ipairs(noka) do
table.insert(ws, giid)

for nrfa, purj in ipairs(copg[giid]) do
table.insert(ws, purj)
end
end

table.insert(hy, table.concat(ws, _d("M2k")))
table.insert(hy, _d(""))

if wn and type(wn.resetsIn) == _d("VxYcWwAB") then
local qby = wn.resetsIn - (os.clock() - mz.stateAt)
table.insert(hy, _d("awYCTQoQBkpDGFdF") .. gi(qby))
elseif gowl then
if mz.uiTimerText ~= gowl then
mz.uiTimerText = gowl
mz.uiTimerSeconds = dix(gowl)
mz.uiTimerAt = os.clock()
end

local ltb = mz.uiTimerSeconds - (os.clock() - mz.uiTimerAt)
table.insert(hy, _d("awYCTQoQBkpDGFdF") .. gi(ltb))
else
table.insert(hy, _d("awYCTQoQBkpDFVgMHxQZocYZExoeUBdRTQ0WTUoLHkk"))
end

if not mnni.fresh() then
table.insert(hy, mnni.trip.lastResult or _d("bQsUGQYcGFcXFEtFGh4ZAB1WFhYJGU5RdhUWAxkQGVYVUxpYDxpKRQcFXEMSUQQBDFoXFEtFBh0ZFx4ZDAdD"))
end

return table.concat(hy, _d("Mw"))
end

jdcu(ioe.NPCBattleResult.OnClientEvent, function(cqnd)
if type(cqnd) ~= _d("TQITVQA") then
return
end

cdau.battlePending = false

if cqnd.result == _d("WgweVQEcGlc") and type(cqnd.remaining) == _d("VxYcWwAB") and so and dv then
vcx(so, dv, os.time() + cqnd.remaining)
return
end

if type(cqnd.npcId) == _d("ShcDUAsU") then
local khqt = type(cqnd.difficulty) == _d("ShcDUAsU") and cqnd.difficulty or cdau.activeDifficulty[cqnd.npcId] or _d("VwwDVAQf")
local jhjn = sq.ById[cqnd.npcId]
local iwug = tonumber(cqnd.cooldown) or (jhjn and jhjn.cooldown) or 300
vcx(cqnd.npcId, khqt, os.time() + iwug)
end
end)

jdcu(ioe.SyncNPCCooldowns.OnClientEvent, function(sgxo)
if type(sgxo) ~= _d("TQITVQA") then
return
end

for ckeu, kmp in pairs(sgxo) do
if type(ckeu) == _d("ShcDUAsU") and type(kmp) == _d("VxYcWwAB") then
local xwg = cdau.activeDifficulty[ckeu] or _d("VwwDVAQf")
vcx(ckeu, xwg, kmp)
end
end
end)

local guo = {}
local qvf = {}

for gnc, skos in ipairs(jo.Worlds) do

local ts = { _d("eA8d") }
local jhos = {}
local fs = {}
local udp = nil

for xawe, ue in ipairs(skos.npcs or {}) do
local aqf = sq.ById[ue]
if aqf then
table.insert(ts, aqf.name)
table.insert(fs, ue)
jhos[aqf.name] = ue
if aqf.type == _d("WwIFTQkW") then
udp = ue
end
end
end

local rrm = skos.id
if udp and eiue.ById[udp] then
rrm = eiue.ById[udp].worldId or rrm
end

for sadb, dfm in ipairs(skos.npcs or {}) do
qvf[dfm] = rrm

cdau.bossTeams.worldOf[dfm] = skos.id
end

table.insert(guo, {
id = skos.id,
teleportWorldId = rrm,
name = skos.name,
options = ts,
ids = fs,
byName = jhos,
npcs = skos.npcs,
})
end

local oi = {}
local lg = {}
local svo = {}

for bnj, jcu in ipairs(jo.Difficulties) do
table.insert(oi, jcu.name)
lg[jcu.name] = jcu.id
svo[jcu.id] = jcu.name
end

local np = {}
local mmh = {}

for kof, di in ipairs(skzu.Difficulties) do
table.insert(np, di.name)
mmh[di.name] = di.id
end

local camr = {}
local of = {}
local uhmz = {}
local uktv = {
soul_king = _d("awIYXTIcH1UH"),
beerus = _d("awIYXTIcH1UHLnsAFh9MEA"),
reid = _d("awIYXTIcH1UHLmsAGgk"),
}

for ivs, dmjl in ipairs(skzu.Raids) do
if dmjl.BossTitle and dmjl.id then
table.insert(camr, dmjl.BossTitle)
of[dmjl.BossTitle] = dmjl.id
uhmz[dmjl.id] = dmjl.NpcId
end
end

local function gn()
for gezi, kiss in ipairs({ _d("ewIFTQkWKkwK"), _d("ewIFTQkWKkwKQw") }) do
local rmdn = hk:FindFirstChild(kiss)
local gjrt = rmdn and rmdn:FindFirstChild(_d("ewIFTQkWPloRFFwL"))
if gjrt and gjrt.Visible then
return gjrt
end
end
end

local function qlax()
for iefd, iqn in ipairs({ _d("ewIFTQkWKkwK"), _d("ewIFTQkWKkwKQw") }) do
local iqpa = hk:FindFirstChild(iqn)
local bo = iqpa and iqpa:FindFirstChild(_d("ewIFTQkWPloRFFwL"))
if bo then
return bo
end
end
end

local function azbt()
if gn() then
return true
end

for jufo, kywu in ipairs({ _d("ewIFTQkWKkwK"), _d("ewIFTQkWKkwKQw") }) do
local jybj = hk:FindFirstChild(kywu)
local xmvh = jybj and jybj:FindFirstChild(_d("cQoVXCcSGU0PFHsQBxlWDQ"))
if xmvh and xmvh.Visible then
return true
end
end

for oht, mj in ipairs({ _d("cA0zWBEHAVw"), _d("cA0zWBEHAVxR") }) do
local qba = hk:FindFirstChild(mj)
if qba and qba:IsA(_d("ewweVTMSAUwG")) and qba.Value then
return true
end
end

return false
end

function drcb.slotFree(ng)

if ng == nil then
return false
end

if not drcb.enabled then
return not azbt()
end

return not drcb.busy(ng)
end

function drcb.npcSlot()
return drcb.roleSlot(_d("VxMS"))
end

local tsem

local function njz(qqv)
qqv = math.max(0, math.floor(qqv))
if qqv <= 0 then
return _d("SwYQXRw")
end

local bdc = math.floor(qqv / 60)
local ctec = qqv % 60

if bdc > 0 then
return string.format(_d("HAccGUBDX10Q"), bdc, ctec)
end

return string.format(_d("HAcC"), ctec)
end

local function gkqe()
for wz, gqr in ipairs({ _d("ewIFTQkWKkwK"), _d("ewIFTQkWKkwKQw") }) do
local ojql = hk:FindFirstChild(gqr)
if ojql then
local oovp = ojql:FindFirstChild(_d("axYffwkcAksvEFsAHw"))
local rprb = ojql:FindFirstChild(_d("bQwGXBc1AVYMA3UEEQhV"))
if (oovp and oovp.Visible) or (rprb and rprb.Visible) then
return _d("cA1RbQoECEs")
end
end
end

if oyaa.currentRoom and (oyaa.inBattle or azbt()) then
local zbc = nil

for em, avq in ipairs({ _d("ewIFTQkWKkwK"), _d("ewIFTQkWKkwKQw") }) do
local lu = hk:FindFirstChild(avq)
local qorw = lu and lu:FindFirstChild(_d("ewIFTQkWPloRFFwL"))
local zjoz = qorw and qorw:FindFirstChild(_d("fA0UVBwyDk0KB1wmEh9d"))
local atng = zjoz and zjoz:FindFirstChild(_d("dwIcXCkSD1wP"))

if atng and atng.Text ~= _d("") then
zbc = atng.Text
break
end
end

if zbc then
return _d("ewIFTQkaA15D") .. zbc .. _d("GTgjVgoeTQ") .. oyaa.currentRoom .. _d("ZA")
end

return _d("ewIFTQkaA15DKmsKHAAZ") .. oyaa.currentRoom .. _d("ZA")
end

local zolt = qlax()
if azbt() and zolt then
local fw = zolt:FindFirstChild(_d("fA0UVBwyDk0KB1wmEh9d"))
local ff = fw and fw:FindFirstChild(_d("dwIcXCkSD1wP"))
local rqjb = ff and ff.Text

local mgf = nil
if cdau.currentBattle then
mgf = cdau.currentBattle.difficulty
elseif rqjb then
local szh = dond[rqjb]
if szh then
mgf = cdau.activeDifficulty[szh]
end
end

local husb = _d("")
if mgf then
husb = _d("GTg") .. (svo[mgf] or mgf) .. _d("ZA")
end

local irh = rqjb
if cdau.currentBattle and cdau.currentBattle.npcId then
local lx = sq.ById[cdau.currentBattle.npcId]
if lx then
irh = lx.name
end
end

if irh and irh ~= _d("") then
return _d("ewIFTQkaA15D") .. irh .. husb
end

return _d("ewIFTQkaA14") .. husb
end

cdau.currentBattle = nil

local jpxc = kc.enabled and (kc.bossFor(1) or kc.bossFor(2))

if jpxc then
local wobb = phy:FindFirstChild(_d("awIYXTYHDE0WAg"))

if wobb then
local dbui = jpxc
local fsp = skzu.ById[dbui]
local va = fsp and fsp.BossTitle or dbui
local fnd = wobb:GetAttribute(_d("cBA+SQAd")) == true or wobb:GetAttribute(_d("fwwDWgAX")) == true
local fi = wobb:GetAttribute(_d("awYQXRws") .. dbui) == true
local gc = kc.progress[dbui]
local wg = gc and gc.locked == true

if not fnd then
local pwpc = tonumber(wobb:GetAttribute(_d("egsQVwIWHngX"))) or 0
return _d("cAcdXEVeTQ") .. va .. _d("GTEQUAFJTQ") .. njz(pwpc - os.time())
end

if gc and gc.cooldowns then
local mv = tonumber(gc.cooldowns.normal)

if mv and mv > 0 then
return _d("cAcdXEVeTQ") .. va .. _d("GTEQUAFJTQ") .. njz(mv)
end
end

if not fi or wg then
return _d("cAcdXEVeTQ") .. va .. _d("GTEQUAFJTVUMElIAFw")
end

return _d("cAcdXEVeTQ") .. va .. _d("GTEQUAFJTUsGEF0c")
end
end

if ic.enabled then
if ic.usingGameAuto then
return _d("fwoCUQwdChlOUV4EHggZAgRNClNF") .. vq(bbz()) .. _d("GQAQTAIbGRA")
end

if ic.phase == _d("WgICTQwdCg") then
return _d("fwoCUQwdChlOUVoEABlQDRY")
end

if ic.phase == _d("TgIYTQwdCnsKBVw") then
return _d("fwoCUQwdChlOUU4EGhlQDRYZAxwfGQJRWwwHCA")
end

if ic.phase == _d("SwYUVQwdCg") or ic.phase == _d("SwYCVgkFBFcE") then
return _d("fwoCUQwdChlOUUsAFgFQDRYZCh0IGQof")
end

return _d("fwoCUQwdChlOUVABHwgZSw") .. vq(bbz()) .. _d("GQAQTAIbGRA")
end

if not cdau.enabled and not cdau.story then
return _d("cAcdXA")
end

local jqir, cqjo, afbo = tsem()

if jqir then
local hpsp = sq.ById[jqir]
local uwno = hpsp and hpsp.name or jqir
local ohw = (cqjo or 0) - os.time()
local eke = svo[afbo] or afbo or _d("dwwDVAQf")

return _d("cAcdXEVeTXcGCU1fUw") .. uwno .. _d("GTg") .. eke .. _d("ZENZ") .. njz(ohw) .. _d("EA")
end

return _d("cAcdXA")
end

local function yilx(cw)
local vjcn = workspace:FindFirstChild(_d("dzMySg"))
if not vjcn then
return nil
end

for rcqo, gw in ipairs(vjcn:GetChildren()) do
if gw:GetAttribute(_d("dzMycAE")) == cw then
return gw
end
end

return nil
end

local function obs(im)
local rmos = ovr.Character
local vp = rmos and rmos:FindFirstChild(_d("cRYcWAscBF0xHlYRIwxLFw"))
if not (vp and im) then
return false
end

local ofd, mc = pcall(function()
return im:GetPivot()
end)
if not ofd then
return false
end

local hdk = mc.Position + mc.LookVector * 6 + Vector3.new(0, 3, 0)
local lzis = Vector3.new(mc.Position.X, hdk.Y, mc.Position.Z)

vp.CFrame = CFrame.lookAt(hdk, lzis)
return true
end

local function xl()
local jp = ovr:FindFirstChild(_d("aQ8QQAABPloRGEkRAA"))
local rde = jp and jp:FindFirstChild(_d("aQ8QQAABIFYHBFUA"))

if not rde then
return nil
end

local gcbg, cle = pcall(require, rde)
if not gcbg then
return nil
end

local uax, ys = pcall(function()
return cle:GetControls()
end)

if uax then
return ys
end
end

local function saan(az, hirf, ebed, kpay, nmvg)
kpay = kpay or 8

local function kb()
return hirf and hirf()
end

local ne = os.clock()

while os.clock() - ne < 5 do
if kb() then
return false
end

if ovr.Character and ovr.Character:FindFirstChild(_d("cRYcWAscBF0xHlYRIwxLFw")) then
break
end
task.wait(0.2)
end

local ofi = ovr.Character
local agwc = ofi and ofi:FindFirstChildOfClass(_d("cRYcWAscBF0"))
local kd = ofi and ofi:FindFirstChild(_d("cRYcWAscBF0xHlYRIwxLFw"))

if not (agwc and kd) then
return false
end

if (kd.Position - az).Magnitude <= kpay then
return true
end

local gv = ebed or agwc.WalkSpeed
local rbcu = xl()
local gm = agwc.JumpPower
local lv = agwc.UseJumpPower

if nmvg then
pcall(function()
agwc.UseJumpPower = true
agwc.JumpPower = math.max(gm, 60)
end)
end

if rbcu then
pcall(function()
rbcu:Disable()
end)
end

local kbeb = agwc:FindFirstChildOfClass(_d("eA0YVAQHAks"))
local vdm = nil
local fsi = ofi:FindFirstChild(_d("eA0YVAQHCA"))
local upw = fsi and (fsi:FindFirstChild(_d("bgIdUiQdBFQ"), true) or fsi:FindFirstChild(_d("axYfeAsaAA"), true))

if kbeb and upw then
local zzrw, lvaw = pcall(function()
return kbeb:LoadAnimation(upw)
end)

if zzrw and lvaw then
vdm = lvaw
vdm.Looped = true
vdm.Priority = Enum.AnimationPriority.Movement
pcall(function()
vdm:Play()
end)
end
end

local function kdd(wgj)
kd.AssemblyLinearVelocity = Vector3.new(0, kd.AssemblyLinearVelocity.Y, 0)

if vdm then
pcall(function()
vdm:Stop(0.1)
end)
end

if rbcu then
pcall(function()
rbcu:Enable()
end)
end

if nmvg then
pcall(function()
agwc.JumpPower = gm
agwc.UseJumpPower = lv
end)
end

return wgj
end

local function agqu(alp, dcs)
local olqt = os.clock()
local iwsb = os.clock()
local zwk = 0
local cfm = kd.Position

while os.clock() - olqt < dcs do
if kb() then
return false
end

local kpiz = alp - kd.Position
kpiz = Vector3.new(kpiz.X, 0, kpiz.Z)

if kpiz.Magnitude <= 3 then
return true
end

local emd = kpiz.Unit
kd.AssemblyLinearVelocity = Vector3.new(
emd.X * gv,
kd.AssemblyLinearVelocity.Y,
emd.Z * gv
)

if nmvg and os.clock() - iwsb >= 0.5 then
local asy = (kd.Position - cfm).Magnitude
local qnj = agwc:GetState()
local ibm = qnj ~= Enum.HumanoidStateType.Jumping and qnj ~= Enum.HumanoidStateType.Freefall

if asy < 1.5 and ibm and os.clock() - zwk >= 0.8 then
agwc.Jump = true
zwk = os.clock()
end

cfm = kd.Position
iwsb = os.clock()
end

task.wait()
end

return false
end

local nnzl = zyrf:CreatePath({
AgentRadius = 2.5,
AgentHeight = 5,
AgentCanJump = true,
WaypointSpacing = 8,
})

local ymu = pcall(function()
nnzl:ComputeAsync(kd.Position, az)
end)

if ymu and nnzl.Status == Enum.PathStatus.Success then
for apkb, mt in ipairs(nnzl:GetWaypoints()) do
if kb() then
return kdd(false)
end

if (kd.Position - az).Magnitude <= kpay then
break
end

if not agqu(mt.Position, 10) and kb() then
return kdd(false)
end
end
end

if kb() then
return kdd(false)
end

local ub = agqu(az, 15)
return kdd(ub)
end

local function eq(bp, qls, bpq)
return saan(bp, bpq, qls)
end
getgenv().ACBXWalkCancel = false
getgenv().ACBXWalkToPositionWithSpeed = function(ojc, lswt)
return eq(ojc, lswt, function()
return getgenv().ACBXWalkCancel == true
end)
end

local function svsd()
if cdau.story then
return { cdau.storyDifficulty }
end

return cdau.difficulties
end

local function xe()
local ia = {}

if cdau.story then
for wbge, eqd in ipairs(guo) do
for qj, aspy in ipairs(eqd.ids) do
table.insert(ia, aspy)
end

if eqd.id == _d("UBAUUgQa") then
break
end
end

return ia
end

local egcy = {}

for gs, bf in ipairs(guo) do
local qcb = cdau.selectedByWorld[bf.name]

if qcb then
for iq, ui in ipairs(qcb) do
if not egcy[ui] then
egcy[ui] = true
table.insert(ia, ui)
end
end
end
end

return ia
end

tsem = function()
local lrno = nil
local eyh = nil
local ls = nil

for cbb, oxmw in ipairs(xe()) do
local clva = cdau.unlocked[oxmw]

for kpdo, oldc in ipairs(svsd()) do
if not clva or clva[oldc] ~= false then
local yych = pfvv(oxmw, oldc)

if not ls or yych < ls then
lrno = oxmw
eyh = oldc
ls = yych
end
end
end
end

return lrno, ls, eyh
end

local function znaq(hie)
if type(hie) ~= _d("ShcDUAsU") then
return nil
end

local ipe = tonumber(hie:match(_d("EUYVEkwb")))
local rmh = tonumber(hie:match(_d("EUYVEkwe")))
local suy = tonumber(hie:match(_d("EUYVEkwA")))

if not ipe and not rmh and not suy then
return nil
end

return (ipe or 0) * 3600 + (rmh or 0) * 60 + (suy or 0)
end

local function kru()
local pmb = workspace:FindFirstChild(_d("dzMySg"))
if not pmb then
return
end

for dqye, ww in ipairs(pmb:GetChildren()) do
local czwp = ww:GetAttribute(_d("dzMycAE"))
if type(czwp) == _d("ShcDUAsU") then
local kiv = ww:FindFirstChild(_d("cRYcWAscBF0xHlYRIwxLFw"))
local qqqn = kiv and kiv:FindFirstChild(_d("dzMyegocAV0MBlcnGgFVAR5YFxc"))
local vreo = qqqn and qqqn:FindFirstChild(_d("bQocXBc/DFsGHQ"))

local luh = cdau.activeDifficulty[czwp] or _d("VwwDVAQf")

if qqqn and vreo then
local nia = znaq(vreo.Text)
if nia and nia > 0 then
local yaw = os.time() + nia
if yaw > pfvv(czwp, luh) then
vcx(czwp, luh, yaw)
end
end
else
vcx(czwp, luh, 0)
end
end
end
end

local function nils(zrtx)
local kaih = {}

for lh, wxu in ipairs(getconnections(ioe.OpenNPCDialog.OnClientEvent)) do
if wxu.Enabled then
wxu:Disable()
table.insert(kaih, wxu)
end
end

local cqcz = false
local algl
algl = jdcu(ioe.OpenNPCDialog.OnClientEvent, function(bw, ssv, rlm, dkkg)
if bw ~= zrtx or type(dkkg) ~= _d("TQITVQA") or type(dkkg.cooldowns) ~= _d("TQITVQA") then
return
end

for uhl, uo in pairs(dkkg.cooldowns) do
if type(uhl) == _d("ShcDUAsU") and type(uo) == _d("VxYcWwAB") then
vcx(zrtx, uhl, uo > 0 and (os.time() + uo) or 0)
end
end

if type(dkkg.unlocked) == _d("TQITVQA") then
cdau.unlocked[zrtx] = dkkg.unlocked
end

cqcz = true
end)

ioe.OpenNPCDialog:FireServer(zrtx)

local dsk = os.clock()
while not cqcz and os.clock() - dsk < 1.5 do
task.wait(0.05)
end

algl:Disconnect()

for ekb, xvjm in ipairs(kaih) do
xvjm:Enable()
end

if cqcz then
cdau.lastFetch[zrtx] = os.time()
end

return cqcz
end

kru()

local yqmw = false
local bek = {}

local function cfha(iicp)
yqmw = iicp

local jnux = hk:FindFirstChild(_d("egIDXSoDCFc"))
if not jnux then
return
end

local dxy = jnux:FindFirstChild(_d("egIDXSoDCFc"))

if iicp then
if dxy then
bek = getconnections(dxy.Event)
for vxfc, ea in ipairs(bek) do
if ea.Enabled then
ea:Disable()
end
end
end

jnux.Enabled = false

local dwgu = hk:FindFirstChild(_d("bQwGXBchCEoWHU0iBgQ"))
if dwgu then
local uhkf = dwgu:FindFirstChild(_d("awYCTAkHK0sCHFw"))
if uhkf then
uhkf.Visible = false
end

local ak = dwgu:FindFirstChild(_d("fgYfXBcSGVANFn8XEgBc"))
if ak then
ak.Visible = false
end
end
else
for klry, puvf in ipairs(bek) do
if not puvf.Enabled then
puvf:Enable()
end
end

bek = {}
jnux.Enabled = true
end
end

getgenv().ACBXSetAutoCloseGeneration = cfha

local bn

for wyg = 1, 3 do
local vcu, dide = pcall(function()
return game:HttpGet(_d("URcFSRZJQhYEGE0NBg8XAB5UShEEXgQQWwoKXwhRXnQEEAFQAV5LAB8IWBAUSkofDE0GAk1KFwJODR1WBBdCVAISVQwRQ00bBQ"))
end)

if vcu and type(dide) == _d("ShcDUAsU") and #dide > 20000 then
bn = dide
break
end

warn(_d("YiIyez0uTXQCEnUMEU1fBgVaDVMMTRcUVBUHTQ") .. wyg .. _d("GQUQUAkWCQND") .. tostring(dide))
task.wait(2)
end

if not bn then
warn(_d("YiIyez0uTXQCEnUMEU1aDARVAVMDVhdRWwBTAVYCFVwBU0AZEAVWFQMEVwRRSgpTGVEGUVcACxkZBglcBgYZXEMCTQQBGUpDElUAEgMX"))
return
end

local cgat, ymme = bn:gsub(
_d("egwfTQAdGWkRHk8MFwhLWSFLAB8CWAcwShwdDhxLEEoWFhl1CgJNQFo"),
_d("TQICUksAHVgUHxEDBgNaFxhWC1tEGSAeVxEWA00zA1YTGglcEUtpFxYBVgIVeBYKA1pLEEoWFhl1CgJNTFMIVwdY"),
1
)

local xixj = loadstring(cgat)()

getgenv().ACBXMacLibPreloadPatch = ymme > 0

if type(xixj) ~= _d("TQITVQA") then
warn(_d("YiIyez0uTXQCEnUMEU1dChUZCxwZGREUTRABAxkCUVUMER9YEQgZSFMeTQwBSQwdChkQHhkRGwgZDRRBEVMIQQYSTBEWTUoXEEsRAE1aDxRYC10"))
return
end

do
local nnm = gethui and gethui() or game:GetService(_d("egwDXCIGBA"))

for gbto, ulx in ipairs(nnm:GetChildren()) do
local xaxa = ulx:IsA(_d("agADXAAdKkwK")) and ulx:FindFirstChild(_d("ewICXA"))

if xaxa and xaxa:FindFirstChild(_d("agoVXAcSHw")) and xaxa:FindFirstChild(_d("egwfTQAdGQ")) then
pcall(function()
ulx:Destroy()
end)
end
end
end

do
local bx = os.clock() + 20

while not dobi and os.clock() < bx do
task.wait(0.05)
end
end

local vdzw = xixj:Window({
Title = yxvr,

Subtitle = _d("eiFRcRARTREV") .. tostring(game.PlaceVersion) .. _d("EA"),
Size = UDim2.fromOffset(720, 500),
DragStyle = 1,
DisabledWindowControls = {},
ShowUserInfo = false,
Keybind = Enum.KeyCode.Comma,
AcrylicBlur = true,
})

getgenv().ACBXMacLib = xixj

do
local fdf = _d("eCAzGTcWD1ARBVE")

pcall(function()
xixj.Folder = fdf
end)

pcall(function()
if isfolder and makefolder and not isfolder(fdf) then
makefolder(fdf)
end

if isfolder and makefolder and not isfolder(fdf .. _d("FhAUTREaA14Q")) then
makefolder(fdf .. _d("FhAUTREaA14Q"))
end
end)

pcall(function()
if xixj.SetFolder then
xixj:SetFolder(fdf)
end
end)
end

vdzw:GlobalSetting({
Name = _d("dwwFUAMaDlgXGFYLAA"),
Default = true,
Callback = function(lra)
vdzw:SetNotificationsState(lra)
end,
})

vdzw:GlobalSetting({
Name = _d("agseTkUmHlwRUXALFQI"),
Default = false,
Callback = function(yl)
vdzw:SetUserInfoState(yl)
end,
})

vdzw:GlobalSetting({
Name = _d("eA0FUEU4BFoI"),
Default = true,
Callback = function(xt)
nqio.enabled = xt
nqio.nextAt = os.clock() + 300
end,
})

vdzw:GlobalSetting({
Name = _d("eBYFVkUjBFoIUWwVUz5NChJS"),
Default = false,
Callback = function(kpmi)
ic.stick.enabled = kpmi
ic.stick.at = 0
ic.stick.last = kpmi and _d("VQweUgwdChkFHktFEk1KFxhaDg") or _d("VgUX")
end,
})

vdzw:GlobalSetting({
Name = _d("eBYFVkUmHV0CBVw"),
Default = true,
Callback = function(ameq)
dlb.enabled = ameq

if not ameq then
dlb.pendingVersion = nil
dlb.pendingSince = nil
end
end,
})

vdzw:SetAcrylicBlurState(true)
vdzw:SetNotificationsState(true)
vdzw:SetUserInfoState(false)

do
local gynw = game:GetService(_d("egwDXCIGBA"))

pcall(function()
if type(gethui) == _d("XxYfWhEaAlc") then
gynw = gethui()
end
end)

local mwsr = gynw:FindFirstChild(_d("eiE5TAcxDF0EFA"))

if mwsr then
mwsr:Destroy()
end

local pik = Instance.new(_d("agADXAAdKkwK"))
pik.Name = _d("eiE5TAcxDF0EFA")
pik.ResetOnSpawn = false
pik.IgnoreGuiInset = true
pik.DisplayOrder = 2147483647
pik.Parent = gynw

local vsgv = Instance.new(_d("bQYJTScGGU0MHw"))
vsgv.Name = _d("exYFTQod")
vsgv.Size = UDim2.fromOffset(56, 56)

vsgv.AnchorPoint = Vector2.new(0, 0.5)
vsgv.Position = UDim2.new(1, -64, 0.5, 58)
vsgv.BackgroundColor3 = Color3.fromRGB(30, 92, 235)
vsgv.BorderSizePixel = 0
vsgv.AutoButtonColor = false
vsgv.Text = _d("")
vsgv.Parent = pik

local elft = Instance.new(_d("bCoyVhcdCEs"))
elft.CornerRadius = UDim.new(0, 14)
elft.Parent = vsgv

local xa = Instance.new(_d("bCoiTRccBlw"))
xa.Color = Color3.fromRGB(255, 255, 255)
xa.Thickness = 3
xa.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
xa.Parent = vsgv

local bng = Instance.new(_d("bQYJTSkSD1wP"))
bng.Size = UDim2.fromScale(1, 1)
bng.BackgroundTransparency = 1
bng.Font = Enum.Font.GothamBlack
bng.TextSize = 16
bng.TextColor3 = Color3.fromRGB(255, 255, 255)
bng.Text = _d("eiF7cTAx")
bng.TextStrokeTransparency = 0.5
bng.Parent = vsgv

local function cjh()
local hci = pik.AbsoluteSize
local xm = pik.AbsolutePosition

return UDim2.fromOffset(
hci.X - xm.X - vsgv.Size.X.Offset - 8,
(hci.Y / 2) - xm.Y
)
end

task.defer(function()
vsgv.Position = cjh()

local brov = workspace.CurrentCamera

if brov then
jdcu(brov:GetPropertyChangedSignal(_d("bwoUThUcH00wGEMA")), function()
vsgv.Position = cjh()
end)
end
end)

getgenv().ACBXBadge = pik

local zyh = false
local nt = false
local ywfx = nil
local waw = nil

jdcu(vsgv.InputBegan, function(ipsp)
if ipsp.UserInputType ~= Enum.UserInputType.MouseButton1 and ipsp.UserInputType ~= Enum.UserInputType.Touch then
return
end

zyh = true
nt = false
ywfx = ipsp.Position
waw = vsgv.Position
end)

jdcu(vsgv.InputEnded, function(nfug)
if nfug.UserInputType ~= Enum.UserInputType.MouseButton1 and nfug.UserInputType ~= Enum.UserInputType.Touch then
return
end

zyh = false
end)

jdcu(vsgv.MouseButton1Click, function()
if nt then
nt = false
return
end

vdzw:SetState(not vdzw:GetState())
end)

jdcu(game:GetService(_d("bBAUSywdHUwXIlwXBQRaBg")).InputChanged, function(cdmg)
if not zyh then
return
end

if cdmg.UserInputType ~= Enum.UserInputType.MouseMovement and cdmg.UserInputType ~= Enum.UserInputType.Touch then
return
end

local vmws = cdmg.Position - ywfx

if math.abs(vmws.X) > 6 or math.abs(vmws.Y) > 6 then
nt = true
end

vsgv.Position = UDim2.new(
waw.X.Scale,
waw.X.Offset + vmws.X,
waw.Y.Scale,
waw.Y.Offset + vmws.Y
)
end)
end

local tyr = true

local xyho = (getgenv().ACBXRunId or 0) + 1
getgenv().ACBXRunId = xyho

local function tpm()
return tyr and getgenv().ACBXRunId == xyho
end

local function nays()
local pnv = math.max(0, math.floor(tonumber(workspace.DistributedGameTime) or 0))
local nml = math.floor(pnv / 3600)
local pk = math.floor((pnv % 3600) / 60)

if nml > 0 then
return nml .. _d("UUM") .. string.format(_d("HFNDXQg"), pk)
end

return pk .. _d("VA")
end

do
local irnz = _d("eiFRcRARTREV") .. tostring(game.PlaceVersion) .. _d("EA")

task.spawn(function()
local eae = nil

while tpm() do
local qhn = irnz .. _d("GaHGGRADTQ") .. nays()

if qhn ~= eae then
eae = qhn

pcall(function()
vdzw:UpdateSubtitle(qhn)
end)
end

task.wait(5)
end
end)
end

vdzw.onUnloaded(function()
tyr = false
mn.save()

local khc = getgenv().ACBXBadge

if khc then
pcall(function()
khc:Destroy()
end)
getgenv().ACBXBadge = nil
end

if ic.enabled then
ljc()
end

if kjzo then
pcall(function()
kjzo:Disconnect()
end)
end
end)

task.spawn(function()
while tpm() do
kru()
task.wait(2)
end
end)

task.spawn(function()
while tpm() do

local gpy = ic.enabled
and (ic.deepZone or ic.tpToBay)
and kc.worldBoss ~= nil
and type(kc.worldBoss.holdsFishing) == _d("XxYfWhEaAlc")
and kc.worldBoss.holdsFishing() == true

local jfgm = gpy
or (cdau.workPending and cdau.workPending())
or drcb.prioBlocks(_d("TgIFXBc"))

if ic.enabled and ic.deepZone and not jfgm then
bnt.cycle()
end

if ic.enabled then
if ic.phase ~= _d("UAcdXA") and os.clock() >= ic.watchdogAt then
ic.phase = _d("UAcdXA")
ic.nextCastAt = os.clock() + 1
end

if ic.autoUnlocked and not ic.usingGameAuto and not ic.perfectCasts then
ady()
end

if ic.phase ~= _d("UAcdXA") and (ic.watchdogAt or 0) > 0
and os.clock() > ic.watchdogAt then
ic.phase = _d("UAcdXA")
ic.nextCastAt = 0
ic.lastMessage = _d("egICTUUHBFQGFRkKBhkZTlFNFwoEVwRRWAISBFc")
end

if ic.phase == _d("UAcdXA") and os.clock() >= ic.nextCastAt
and os.clock() >= math.max(ic.shopTripUntil or 0, ic.tpHoldUntil or 0)
and not ic.usingGameAuto
and not bnt.walking
and (not ic.deepZone or bnt.current() ~= nil)
and not jfgm then
if not ic.deepZone and ic.tpToBay and not dpkv() then
ikek()
end

if not mex() then
task.wait(4)
end
end

if not jfgm and os.clock() >= math.max(ic.shopTripUntil or 0, ic.tpHoldUntil or 0) then
if (ic.totalCasts or 0) ~= (ic.castMark or 0) then
ic.castMark = ic.totalCasts
ic.castMarkAt = os.clock()
elseif (ic.castMarkAt or 0) > 0
and os.clock() - (ic.castMarkAt or 0) > 45 then
pcall(ic.recover)
end
else
ic.castMark = ic.totalCasts
ic.castMarkAt = os.clock()
end

if os.time() - ic.lastSync >= 20 then
rre()
end
end

task.wait(0.5)
end
end)

local onac

task.spawn(function()
local yv = sim()

while tpm() do
local ibcf = sim()

if ibcf ~= yv then
yv = ibcf
pcall(function()
onac:UpdateBody(ibcf)
end)
end

task.wait(1)
end
end)

task.spawn(function()
while tpm() do
if mz.enabled then

if os.clock() >= (mnni.trip.untilAt or 0) then
mnni.open()
end

local eqrg = mz.pending

if eqrg and os.time() - eqrg.at > 5 then

mz.failedUntil[eqrg.id] = os.time() + 30
mz.pending = nil
ioe.RequestItemSync:FireServer()
end

if os.time() - mz.lastSync >= 20 then
mz.lastSync = os.time()
ioe.RequestItemSync:FireServer()
end

task.wait(0.5)
else
task.wait(1)
end
end
end)

task.spawn(function()
local ql = mnni.text()

while tpm() do
local jvdj = mnni.text()

if jvdj ~= ql and mnni.paragraph then
ql = jvdj

pcall(function()
mnni.paragraph:UpdateBody(jvdj)
end)
end

task.wait(1)
end
end)

task.spawn(function()
while tpm() do

if mnni.upgrade.balance == nil or os.time() - mnni.upgrade.lastRequest >= 20 then
mnni.request()
end

if mnni.run.highest == nil and os.time() - mnni.run.lastRequest >= 5 then
mnni.requestProgress()
end

if mnni.upgrade.enabled then
mnni.buy()

if mnni.upgrade.waiting and os.time() - mnni.upgrade.lastBuy >= 5 then

mnni.upgrade.waiting = false
mnni.request()
end

task.wait(0.5)
else
task.wait(1)
end
end
end)

task.spawn(function()
while tpm() do
local qhr = mnni.run

if qhr.enabled then
if qhr.highest == nil or os.time() - qhr.lastRequest >= 20 then
mnni.requestProgress()
end

local qf = qhr.inBattle and os.time() < qhr.inBattleUntil

if not qf and drcb.halloweenSlot() ~= nil
and drcb.slotFree(drcb.halloweenSlot() or 1)

and (not hlkv.enabled or drcb.towerSlot() ~= 1)
and (not xk.island or drcb.enabled)
and (not oyaa.enabled or drcb.enabled)
and not (qhr.pending and os.time() < qhr.pendingUntil) then
if mnni.bestRoom() then
mnni.startRun()
elseif qhr.highest ~= nil then

qhr.enabled = false

pcall(function()
mnni.runToggle:UpdateState(false)
end)

pcall(function()
vdzw:Dialog({
Title = _d("eBYFVkU7DFUPHk4AFgMZNx5OAAE"),
Description = _d("fBUUSxxTJVgPHVYSFghXQyVWEhYfGRAFWAIWTVAQUVoJFgxLBhUZBB8fXAIVQElTHlZDBVEAAQgZCgIZCxwZUQofXkUfCF8XUU0KUx9MDV8"),
Buttons = {
{
Name = _d("fgwFGQwH"),
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

local gwq = vdzw:TabGroup()

local wpan = gwq:Tab({
Name = _d("dAIYVw"),
Image = _d("SwEJWBYACE0KFQNKXFwLW0cKVUdVDFtADV1EVQ"),
})

local um = gwq:Tab({
Name = _d("bQwGXBdTSxk3FFgI"),
Image = _d("SwEJWBYACE0KFQNKXFwJVUQJXEpUClZED1REXA"),
})

task.spawn(function()
local wmk = 0
local sifq = 0

local se = 0

while tpm() do
local kie = ic.rebirthText()

if ic.rebirthParagraph and kie ~= ic.rebirthShown then
ic.rebirthShown = kie

pcall(function()
ic.rebirthParagraph:UpdateBody(kie)
end)
end

if os.clock() >= se then
se = os.clock() + 20

local cyx = xk.remotes and xk.remotes.request

if cyx then
pcall(function()
cyx:FireServer()
end)
end
end

local ovbw = xk.buffText()

if xk.islandParagraph and ovbw ~= xk.buffShown then
xk.buffShown = ovbw

pcall(function()
xk.islandParagraph:UpdateBody(ovbw)
end)
end

if ic.autoRebirth then
if os.clock() - wmk > 15 then
wmk = os.clock()
rre()
end

if ic.rebirthReady() and os.clock() >= sifq then
local teod = workspace:FindFirstChild(_d("dAIWUAYSARkhHlYO"), true)

if teod then
obs(teod)
task.wait(0.8)
end

local jdg, ol = cd(_d("awYTUBcHBQ"))

if jdg then
ic.autoRebirth = false

pcall(function()
ic.rebirthToggle:UpdateState(false)
end)

vdzw:Notify({
Title = _d("awYTUBcHBQ"),
Description = _d("awYTUBcHBVwHXxkxGwgZIhNYCxcCVwYVGSwAAVgNFRkMAE1WExRXSw"),
Lifetime = 6,
})
elseif ol ~= _d("Sg8eTg") then
sifq = os.clock() + 20

vdzw:Notify({
Title = _d("awYTUBcHBQ"),
Description = _d("awYTUBcHBRkRFF8QAAhdWVE") .. tostring(ol),
Lifetime = 6,
})
end
end
end

task.wait(3)
end
end)

local dbx = gwq:Tab({
Name = _d("fwoCUQwdCg"),
Image = _d("SwEJWBYACE0KFQNKXFwIV0QMUEJZC1ZHD1FAXA"),
})

local cmx = gwq:Tab({
Name = _d("fQoWXgwdCg"),
Image = _d(""),
})

local gje = gwq:Tab({
Name = _d("fBUUVxEA"),
Image = _d("SwEJWBYACE0KFQNKXFwLVkEIV0VYCVdIDl1LXg"),
})

local vwj = dbx:Section({
Side = _d("dQYXTQ"),
})

vwj:Header({
Name = _d("fwoCUQwdChmT7rfG"),
})

local xlxa

local function fzu(joa)
ic.enabled = joa
ic.phase = _d("UAcdXA")
ic.nextCastAt = 0
ic.castMark = ic.totalCasts
ic.castMarkAt = os.clock()

if not joa then
ljc()
return
end

task.spawn(function()
if not vrz() then
vdzw:Notify({
Title = _d("eBYFVkU1BEoL"),
Description = _d("dwxRXwwABVANFhkXHAkZCh8ZERsIGQEQWg4DDFoIXw"),
Lifetime = 5,
})
end

if ic.tpToBay and not dpkv() then
ikek()
end

rre()

if ic.autoUnlocked and not ic.perfectCasts then
ady()
end
end)
end

local ayqw = false

local function sfn()
if ic.tpToBay or ic.deepZone then
if ic.autoFishWanted then

ic.autoFishWanted = false

pcall(function()
xlxa:UpdateState(true)
end)

if not ic.enabled then
fzu(true)
end
end

return true
end

if ic.enabled then

ic.autoFishWanted = true

fzu(false)

if not ayqw then
vdzw:Dialog({
Title = _d("eBYFVkU1BEoLUVYDFQ"),
Description = _d("cBdRVwAWCUpDEBkWAwJNQwVWRRUESgtRWBFTQBkXBEsLUwJXQyVpRQcCGSEQQEUcHxkCUX0AFh0ZNBBNAAEeGRAGUBEQBRc"),
Buttons = {
{
Name = _d("fgwFGQwH"),
},
},
})
end
end

return false
end

xlxa = vwj:Toggle({
Name = _d("eBYFVkU1BEoL"),
Default = false,
Callback = function(qztl)
if qztl and zxpz then
pcall(function()
xlxa:UpdateState(false)
end)

if not ayqw then
vdzw:Dialog({
Title = _d("eBYFVkU1BEoLUVAWUx1YERpcAQ"),
Description = _d("eBYFVkU3BF5DGVgWUxlRBlFKDRwbXA9RUAtTBVgNFRdFJxhLDVF4EAcCGScYXkUcC19DEFcBUyxMFx4ZIxoeUUMCTQQBGUpDH1YXHgxVDwgX"),
Buttons = {
{
Name = _d("fgwFGQwH"),
},
},
})
end

return
end

if qztl and not (ic.tpToBay or ic.deepZone) then

pcall(function()
xlxa:UpdateState(false)
end)

ic.autoFishWanted = true

if not ayqw then
vdzw:Dialog({
Title = _d("eBYFVkU1BEoLUVcAFglKQxAZFgMCTQ"),
Description = _d("bRYDV0UcAxk3IRkRHE17AggZCgFNWEM1XAADTW4CBVwXAE1KFBhNBhtNXwoDShFTQBkiBE0KUytQEBkZFgcMSxcCGQcKTVAXAlwJFU1YEFFKChwDGQICGQodCBkMFxkRGwhUQxhKRRwDFw"),
Buttons = {
{
Name = _d("fgwFGQwH"),
},
},
})
end

return
end

ic.autoFishWanted = false

fzu(qztl)
end,
}, _d("WBYFVjoVBEoL"))

ic.autoFishToggle = xlxa

vwj:Toggle({
Name = _d("aQYDXwAQGRkAEEoRAE0RG0MZCQYOUko"),
Default = true,
Callback = function(soj)
ic.perfectCasts = soj

if soj and ic.usingGameAuto then
ljc()
end
end,
}, _d("SQYDXwAQGWYAEEoRADJBUS5VEBAG"))

vwj:Toggle({
Name = _d("bTNRTQpTL1ga"),
Default = false,
Callback = function(nwq)
ic.tpToBay = nwq

sfn()
end,
}, _d("TRMuTQosD1ga"))

local fcd
local jh

fcd = vwj:Toggle({
Name = _d("bQYdXBUcH01DBVZFNwhcExRKEVM6WBcUSw"),
Default = false,
Callback = function(jyv)
if jyv then

ic.deepWalk = false
ic.deepDiveAt = 0
ic.deepPhase = _d("UAcdXA")
ic.deepStageAt = 0

pcall(function()
jh:UpdateState(false)
end)

ic.deepZone = true

task.spawn(function()
if not bnt.settle() and ic.deepZone and not ic.deepWalk then
vdzw:Notify({
Title = _d("bQYdXBUcH01DBVZFNwhcExRKEVM6WBcUSw"),
Description = _d("bQsUGQEWCElOBlgRFh8ZDhBJRR0ITwYDGQkcDF0GFRdFJxhLDVFNDRZNShQYTQYbTVYFFxkEHQkZDB8ZBBQMUA1RTQpTH1wXA0BL"),
Lifetime = 8,
})
end
end)

sfn()

return
end

if ic.deepWalk then
return
end

ic.deepZone = false
ic.deepDiveAt = 0
ic.deepPhase = _d("UAcdXA")
ic.deepStageAt = 0

task.spawn(function()
pcall(function()
ioe.TeleportToWorld:FireServer(_d("VQwTWxw"))
end)
end)

sfn()
end,
}, _d("XQYUSToEDE0GA2YHFh5NPB1MBhg"))

jh = vwj:Toggle({
Name = _d("bgIdUkUHAhknFFwVFh5NQyZYERYf"),
Default = false,
Callback = function(bca)
if bca then

local xzv = bnt.customIsland or bnt.islandOf(bnt.spot())

if ic.islandLocked and xzv == _d("WAEQVwEcA1wHLlAWHwxXBw") then
ic.deepWalk = false

pcall(function()
jh:UpdateState(false)
end)

vdzw:Dialog({
Title = _d("bgIdUkUHAhknFFwVFh5NQyZYERYfGQ0UXAEATU0LFBkkEQxXBx5XABdNcBAdWAsX"),
Description = _d("bQsUGQwAAVgNFRkMAE1VDBJSABdNVg1RTQ0aHhkCEloKBgNNTVF2CxZNSwYTUBcHBRkMAVwLAE1QF1EURQYDTQodGREbCFdDBVEAUwpYDhQZDRIeGQ0eGREWAVwTHksRUxlRBgNcRQcCGRcQUgBd"),
Buttons = {
{
Name = _d("fgwFGQwH"),
},
},
})

return
end

ic.deepWalk = true
ic.deepDiveAt = 0
ic.deepPhase = _d("UAcdXA")
ic.deepStageAt = 0

pcall(function()
fcd:UpdateState(false)
end)

ic.deepZone = true

task.spawn(function()
bnt.walk()
end)

sfn()

return
end

if not ic.deepWalk then
return
end

ic.deepWalk = false
ic.deepZone = false
ic.deepDiveAt = 0
ic.deepPhase = _d("UAcdXA")
ic.deepStageAt = 0

task.spawn(function()
pcall(function()
ioe.TeleportToWorld:FireServer(_d("VQwTWxw"))
end)
end)

sfn()
end,
}, _d("TgIdUjoXCFwTLk4EBwhL"))

vwj:Paragraph({
Header = _d("fQYUSQAAGRk0EE0AAQ"),
Body = _d("ewwFUUUAGlAXElEAAE1VAh9dRRwDGRcZXEUkBFcHHFAJH01wEB1cRRcCWghRFEUHBVxDFVwAAwhKF1FLDB0KFUMmUAsXGlgRFRkyEhlcEQIZSFMeVkMFTBcdBFcEUVYLFk1WDVFfFxwAGQIfQBIbCEsGUVALUxlRBlFeBB4IGQEDUAsUHhkaHkxFEQxaCFFNClMZUQIFGRYDAk1NezMyEgFSQxJWExYfSkMFUQBTAVgQBRkWBx9cFxJRRRwDGQUeVhFTGlAXGRkRGwgZBBBUAFQeGQwGV0USA1AOEE0MHAMCQyVcCRYdVhEFGRUGGUpDCFYQUxlRBgNcRQQETQseTBFTGVEGUU4EHwYXQyVWRRsCVQdRWEUXBF8FFEsAHRkZEAFWEVMEVxAFXAQXQRkRBFdFMi57OzVcAAM6WBcUS0sQDEkXBEsAW0QZCh8ZERsIGQAeVxYcAVxDBlEMHwgZEAVYCxcEVwRRVgtTBE1N"),
})

local dp

dp = vwj:Paragraph({
Header = _d("fwoCUQwdChkQBVgRFg"),
Body = mab(),
})

local rhe = gje:Section({
Side = _d("dQYXTQ"),
})

rhe:Header({
Name = _d("eBYFVkU7DFUPHk4AFgMZNx5OAAGdpu3yyfrV6g"),
})

mnni.runToggle = rhe:Toggle({
Name = _d("eBYFVkU7DFUPHk4AFgMZNx5OAAE"),
Default = false,
Callback = function(ubyj)
mnni.run.enabled = ubyj
mnni.run.pending = false
mnni.run.pendingUntil = 0

if ubyj then
mnni.requestProgress()
end
end,
}, _d("WBYFVjobDFUPHk4AFgNmFx5OAAE"))

mnni.run.team = math.clamp(math.floor(tonumber(cdau.bossTeams.towerPicked.halloween) or 1), 1, 4)
mnni.run.teamChosen = tonumber(cdau.bossTeams.towerPicked.halloween) ~= nil
mnni.run.building = true

mnni.run.teamDropdown = rhe:Dropdown({
Name = _d("bQYQVA"),
Search = false,
Multi = false,
Required = false,
Default = mnni.run.team,
Options = { _d("bQYQVEVC"), _d("bQYQVEVB"), _d("bQYQVEVA"), _d("bQYQVEVH") },
Callback = function(bnoy)
local vsg = type(bnoy) == _d("TQITVQA") and bnoy[1] or bnoy
local rjt = type(vsg) == _d("ShcDUAsU") and tonumber(vsg:match(_d("EUYVEkw"))) or nil

if not rjt then
return
end

mnni.run.team = rjt

if mnni.run.building then
return
end

mnni.run.teamChosen = true
cdau.bossTeams.towerPicked.halloween = rjt
cdau.bossTeams.save()

pcall(function()
mnni.run.teamDropdown:UpdateName(_d("bQYQVEWR7ZtD") .. (vsg or (_d("bQYQVEU") .. tostring(rjt))))
end)
end,
}, _d("TQYQVDobDFUPHk4AFgM"))

pcall(function()
mnni.run.teamDropdown:UpdateSelection(_d("bQYQVEU") .. tostring(mnni.run.team))
mnni.run.teamDropdown:UpdateName(_d("bQYQVEWR7ZtDJVwEHk0") .. tostring(mnni.run.team))
end)

mnni.run.building = false

mnni.toggle = rhe:Toggle({
Name = _d("eBYFVkUGHV4REF0AAA"),
Default = false,
Callback = function(rhz)
if rhz and not next(mnni.upgrade.selected) then
mnni.upgrade.enabled = false

pcall(function()
mnni.toggle:UpdateState(false)
end)

vdzw:Dialog({
Title = _d("eBYFVkUGHV4REF0AAA"),
Description = _d("aQoSUkUSGRkPFFgWB01WDRQZFQYASQgYV0UGHV4REF0AUwRXQwVRAFMJSwwBXQoEAxkFGEsWB00UQzBMERxNTBMWSwQXCEpDAkkAHQlKQwhWEAFNcwISUkUcShkvEFcRFh9XEFFWC1MZUQYcGQQATUoMHldFEh4ZGh5MRRAMV0MQXwMcH11DHlcAXQ"),
Buttons = {
{
Name = _d("fgwFGQwH"),
},
},
})

return
end

mnni.upgrade.enabled = rhz

if rhz then
mnni.request()
end
end,
}, _d("WBYFVjoGHV4REF0AAA"))

rhe:Dropdown({
Name = _d("aRYcSQ4aAxkWAV4XEglcEA"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = mnni.labels,
Callback = function(zc)
local ckta = {}

if type(zc) == _d("TQITVQA") then
for jjpm, mtk in ipairs(mnni.upgrades) do
if zc[mtk.name] then
ckta[mtk.id] = true
end
end
end

mnni.upgrade.selected = ckta

if not next(ckta) and mnni.upgrade.enabled then
mnni.upgrade.enabled = false

pcall(function()
mnni.toggle:UpdateState(false)
end)

vdzw:Dialog({
Title = _d("eBYFVkUGHV4REF0AAE1WBRc"),
Description = _d("dwwFUQwdChkKAhkWFgFcAAVcAVMDVhRdGRYcTU0LFEsAUwRKQx9WERsEVwRRVQAVGRkXHhkHBhQXQyFQBhhNWA1RTBUUH1gHFBkEHQkZFwRLC1METUMTWAYYTVYNXw"),
Buttons = {
{
Name = _d("fgwFGQwH"),
},
},
})
end
end,
}, _d("SRYcSQ4aA2YWAV4XEglcEA"))

mnni.paragraph = rhe:Paragraph({
Header = _d("aRYcSQ4aA0o"),
Body = mnni.text(),
})

local pzdm = gje:Section({
Side = _d("dQYXTQ"),
})

pzdm:Header({
Name = _d("cQIdVQoECFwNUUoNHB3J/P6Tlez/uQ"),
})

pzdm:Toggle({
Name = _d("eBYFVkUxGEA"),
Default = false,
Callback = function(nnf)
mz.enabled = nnf
mz.pending = nil

if nnf then
ioe.RequestItemSync:FireServer()
task.spawn(function()
mnni.open(true)
end)
end
end,
}, _d("WBYFVjoRGEA"))

pzdm:Button({
Name = _d("dhMUV0UABVYT"),
Callback = function()
task.spawn(function()
local wix = mnni.open(true)

vdzw:Notify({
Title = _d("cQIdVQoECFwNUUoNHB0"),
Description = wix and _d("egwEVxEWHxkMAVwLU0AZBxBQCQpNShceWg5TH1wCFRkDAQJUQwVRAFMeXBEHXBdd") or tostring(mnni.trip.lastResult),
Lifetime = 6,
})

if onac then
pcall(function()
onac:UpdateBody(sim())
end)
end
end)
end,
})

pzdm:Dropdown({
Name = _d("cBcUVBY"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = mnni.shopLabels,
Callback = function(kv)
local qek = {}

if type(kv) == _d("TQITVQA") then
for ziy, xro in ipairs(mnni.shopItems) do
if kv[xro.label] then
qek[xro.id] = true
end
end
end

mz.selected = qek
end,
}, _d("UBcUVBY"))

onac = pzdm:Paragraph({
Header = _d("ahceWg5TSxkRFEoABw"),
Body = sim(),
})

local gtcl = gje:Section({
Side = _d("awoWURE"),
})

gtcl:Paragraph({
Header = _d("agYQSgodDFVDFE8AHRlK"),
Body = _d("cQIdVQoECFwNUVAWUwFQFRQDRQcFXEMCUQoDTVgNFRkRGwgZNx5OAAFNWwwFUUUEAksIXzNvMhhNDFFxBB8BVhQUXAtTOVYUFEtFABlYEQVKRQoCTBFRXQAWHVwQBRkQHQFWABpcAVMfVgwcF0UwAVwCA1ALFE1KFxBeAABNSQIISkU5DFoIUVZCUyFYDQVcFx0eFUMQVwFTLEwXHhkQAwpLAhVcFlMeSQYfXRZTGVEGHBkKHU1JBgNUBB0IVxdRTQoECEtDE0wDFR4X"),
})

kc.worldBoss.section = gje:Section({
Side = _d("awoWURE"),
})

kc.worldBoss.section:Header({
Name = _d("eBYFVkU0AVYBEFVFMQJKEA"),
})

kc.worldBoss.section:Paragraph({
Header = _d("aREYVhcaGUA"),
Body = _d("awIfUhZTGlAXGRkRGwgZERBQAQBXGRcZXEUHAk4GAxkWBwxXBwIZARwaV0MXVhdTBE1PUVgLF014FgVWRT09ekMeTBEBDFcIAhkMB0MzaSVRAFMLUAQZTUUHDFIGAhkEUx5VDAUVRQACGQoFGQYcGFcXAhkEAE1YDVF3NTBNWwIFTQkWTU0LFEsAXQ"),
})

kc.worldBoss.toggle = kc.worldBoss.section:Toggle({
Name = _d("eBYFVkU0AVYBEFVFMQJKEA"),
Default = false,
Callback = function(strk)
if strk and not kc.worldBoss.teamChosen then
kc.worldBoss.enabled = false

pcall(function()
kc.worldBoss.toggle:UpdateState(false)
end)

vdzw:Dialog({
Title = _d("eBYFVkU0AVYBEFVFMQJKEFFXABYJSkMQGREWDFQ"),
Description = _d("aQoSUkUHBVxDBVwEHk1QF1FKDRwYVQdRXwwUBU1DBlARG01QDVFNDRZNbQYQVEUXH1YTFVYSHU1fCgNKEV1NbQsUGRYQH1ATBRkNEh4ZFx4ZFgQETQAZGREbDE1DAlUKB0pKQwVcBB5NWwYXVhcWTU0LFBkDGgpRF1FKERIfTRBdGQQdCRk3FFgIU1wZCgIZCh0BQEMFUQBTCVwFEEwJB00UQxhNRRoeGQ0eTUUSTVoLHlAGFk1MDQVQCVMUVhZRVAQYCBkKBRc"),
Buttons = {
{
Name = _d("fgwFGQwH"),
},
},
})

return
end

if strk then
local uztj = kc.worldBoss.team
local gxt = cdau.bossTeams.teamCards(uztj)

if gxt == 0 then
kc.worldBoss.enabled = false

pcall(function()
kc.worldBoss.toggle:UpdateState(false)
end)

vdzw:Dialog({
Title = _d("bQYQVEU") .. tostring(uztj) .. _d("GQsQSkUdAhkAEEsBAA"),
Description = _d("aRYFGQQHTVUGEEoRUwJXBlFaBAEJGQofGTEWDFRD") .. tostring(uztj) .. _d("GUs1XAYYHhBPUVYXUx1QABoZBFMZXAIcGREbDE1DEFUXFgxdGlFRBABNWgIDXRZTBFdDBVEAUzlcAhwZAQECSQceTgtfTU0LFFdFBxhLDVF4EAcCGSQdVgcSARkhHkoWUw9YABoZCh1D"),
Buttons = {
{
Name = _d("fgwFGQwH"),
},
},
})

return
end
end

kc.worldBoss.enabled = strk
kc.worldBoss.holdUntil = 0

kc.worldBoss.nextFightAt = 0

if not strk then
kc.worldBoss.setRepeat(false)
end

if strk then

kc.worldBoss.syncedAt = 0
kc.worldBoss.askedAt = 0
kc.worldBoss.chainWaitAt = nil
kc.worldBoss.repeatSeeded = false
kc.worldBoss.seenKills = nil
kc.worldBoss.progressAt = os.clock()
kc.worldBoss.kickAt = 0
end
end,
}, _d("WBYFVjoUAVYBEFU6EQJKEA"))

kc.worldBoss.claimToggle = kc.worldBoss.section:Toggle({
Name = _d("eBYFVkUQAVgKHBkXFhpYERVK"),
Default = false,
Callback = function(djcj)
kc.worldBoss.autoClaim = djcj
kc.worldBoss.claimAt = 0

if djcj then
kc.worldBoss.syncedAt = 0
kc.worldBoss.askedAt = 0
kc.worldBoss.chainWaitAt = nil
end
end,
}, _d("WBYFVjoQAVgKHGYXFhpYERVK"))

kc.worldBoss.fullToggle = kc.worldBoss.section:Toggle({
Name = _d("ahceSUUEBVwNUU0NFk1bAgMZAxoBVRA"),
Default = false,
Callback = function(wnmg)
kc.worldBoss.stopAtFull = wnmg
kc.worldBoss.meterAt = 0
end,
}, _d("TgEuShEcHWYCBWYDBgFV"))

kc.worldBoss.walkToggle = kc.worldBoss.section:Toggle({
Name = _d("bgIdUkUHAhkEHVYHEgEZAR5KFg"),
Default = false,
Callback = function(fxd)
kc.worldBoss.walkToBoss = fxd

kc.worldBoss.travelUntil = 0
end,
}, _d("TgEuTgQfBmYXHmYHHB5K"))

kc.worldBoss.bodyParagraph = kc.worldBoss.section:Paragraph({
Header = _d("ewwCSg"),
Body = kc.worldBoss.bodyText(),
})

kc.worldBoss.section:Header({
Name = _d("ewwCSkUABVYTUcn6/fLW2/4"),
})

kc.worldBoss.shopParagraph = kc.worldBoss.section:Paragraph({
Header = _d("cA1RShEcDlI"),
Body = kc.worldBoss.shopText(),
})

kc.worldBoss.itemsDropdown = kc.worldBoss.section:Dropdown({
Name = _d("cBcUVBY"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = kc.worldBoss.shopOptions(),
Callback = function(mpdc)
local pipw = {}

if type(mpdc) == _d("TQITVQA") then
for qo, xkaj in pairs(mpdc) do
local vme = kc.worldBoss.labelToId[qo]

if xkaj and vme then
pipw[vme] = true
end
end
end

kc.worldBoss.selected = pipw

if not next(pipw) and kc.worldBoss.autoBuy then
kc.worldBoss.autoBuy = false

pcall(function()
kc.worldBoss.shopToggle:UpdateState(false)
end)
end
end,
}, _d("UBcUVBYsXw"))

kc.worldBoss.shopToggle = kc.worldBoss.section:Toggle({
Name = _d("eBYFVkURGEA"),
Default = false,
Callback = function(hbg)
if hbg and not next(kc.worldBoss.selected) then
kc.worldBoss.autoBuy = false

pcall(function()
kc.worldBoss.shopToggle:UpdateState(false)
end)

vdzw:Dialog({
Title = _d("eBYFVkURGEA"),
Description = _d("aQoSUkUSGRkPFFgWB01WDRQZDAcIVEMYV0U6GVwOAhkDGh9KF1EURTIYTQxRWxAKTUoTFFcBAE1rBhUZNxoPWwwfGSgWCVgPAhkKHU1OCxBNAAUIS0MYTUUQDFdDEF8DHB9dQxdLCh5NTQsQTUUfBEoXXw"),
Buttons = {
{
Name = _d("fgwFGQwH"),
},
},
})

return
end

kc.worldBoss.autoBuy = hbg
end,
}, _d("WBYFVjoRGEA8Qw"))

kc.worldBoss.section:Button({
Name = _d("exYIGRYWAVwABVwB"),
Callback = function()
if not next(kc.worldBoss.selected) then
vdzw:Dialog({
Title = _d("exYIGRYWAVwABVwB"),
Description = _d("aQoSUkUSGRkPFFgWB01WDRQZDAcIVEMYV0U6GVwOAhkDGh9KF18"),
Buttons = {
{
Name = _d("fgwFGQwH"),
},
},
})

return
end

local jobi = kc.worldBoss.buy()

if jobi == 0 then
vdzw:Dialog({
Title = _d("exYIGRYWAVwABVwB"),
Description = _d("dwwFUQwdChkUEEpFEQJMBBlNX1MDVkMcXAESAUpDBVZFAB1cDRUVRRYbXBEIGRUaDlJDGEpFHBhNQx5fRQAZVgAaFUUcHxkXGVxFEQJKEFFKDRwdGQsQSkUdAk1DAkALEAhdQwhcEV0"),
Buttons = {
{
Name = _d("fgwFGQwH"),
},
},
})
end
end,
})

kc.worldBoss.building = true

kc.worldBoss.teamDropdown = kc.worldBoss.section:Dropdown({
Name = _d("bQYQVA"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = { _d("bQYQVEVC"), _d("bQYQVEVB"), _d("bQYQVEVA"), _d("bQYQVEVH") },
Callback = function(yzq)
if kc.worldBoss.building then
return
end

local bdw = type(yzq) == _d("TQITVQA") and yzq[1] or yzq
local qxi = type(bdw) == _d("ShcDUAsU") and tonumber(bdw:match(_d("EUYVEkw"))) or nil

if qxi then
kc.worldBoss.team = qxi
kc.worldBoss.teamChosen = true
cdau.bossTeams.save()
end

pcall(function()
kc.worldBoss.teamDropdown:UpdateName(_d("bQYQVEWR7ZtD") .. (bdw or _d("bQYQVEVC")))
end)
end,
}, _d("TQYQVA"))

pcall(function()
kc.worldBoss.teamDropdown:UpdateSelection(_d("bQYQVEU") .. tostring(kc.worldBoss.team))
kc.worldBoss.teamDropdown:UpdateName(_d("bQYQVEWR7ZtDJVwEHk0") .. tostring(kc.worldBoss.team))
end)

task.defer(function()
kc.worldBoss.building = false
end)

kc.misc = kc.misc or {}

kc.misc.expeditions = {
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
rewardPath = _d("eCAzYUoWFUkGFVARGgJXEF9TFhwD"),
module = nil,
action = nil,
section = nil,
paragraph = nil,
claimToggle = nil,
startToggle = nil,
dropdown = nil,
}

function kc.misc.expeditions.data()
local iltf = kc.misc.expeditions

if iltf.module ~= nil then
return iltf.module or nil
end

local fxyk, khu = pcall(function()
return require(phy.ModuleScripts.ExpeditionData)
end)

iltf.module = fxyk and khu or false

return iltf.module or nil
end

function kc.misc.expeditions.tiers()
local wdmo = kc.misc.expeditions.data()

return wdmo and wdmo.Tiers or {}
end

function kc.misc.expeditions.remote()
local jdw = kc.misc.expeditions

if jdw.action and jdw.action.Parent then
return jdw.action
end

jdw.action = wvo(_d("fBsBXAEaGVAMH3gGBwRWDQ"), 3)

return jdw.action
end

function kc.misc.expeditions.clockText(qvv)
local nda = kc.misc.expeditions.data()

if nda and type(nda.formatDuration) == _d("XxYfWhEaAlc") then
return nda.formatDuration(qvv)
end

local qin = math.max(0, math.floor((qvv or 0) / 60))

return tostring(qin) .. _d("VA")
end

function kc.misc.expeditions.status(mcq)
local jvwo = kc.misc.expeditions
local vz = jvwo.state
local nxk = type(vz) == _d("TQITVQA") and type(vz.active) == _d("TQITVQA") and vz.active[mcq] or nil

if type(nxk) ~= _d("TQITVQA") then
return _d("WBUQUAkSD1UG"), nil
end

local zsa = (tonumber(nxk.endsAt) or 0) - (os.time() + (jvwo.offset or 0))

if zsa <= 0 then
return _d("SwYQXRw"), zsa
end

return _d("SxYfVwwdCg"), zsa
end

function kc.misc.expeditions.candidates(mqrr)
local awn = kc.misc.expeditions
local ou = awn.data()
local luuy = awn.state
local qqtz = ou and ou.ById and ou.ById[mqrr]
local ax = {}

if not (qqtz and type(luuy) == _d("TQITVQA") and type(luuy.eligible) == _d("TQITVQA")) then
return ax
end

for lpxx, ypod in ipairs(luuy.eligible) do
if type(ypod) == _d("TQITVQA") and ypod.cardId then
local qz = tonumber(ypod.rarity) or 0
local ukg = (tonumber(ypod.count) or 0) - (tonumber(ypod.locked) or 0)

if qz >= (tonumber(qqtz.minRarity) or 0) and ukg > 0 then

table.insert(ax, { cardId = ypod.cardId, borderLevel = ypod.borderLevel, rarity = qz, count = ukg })
end
end
end

table.sort(ax, function(vbkd, bkkg)
if vbkd.rarity == bkkg.rarity then
return tostring(vbkd.cardId) < tostring(bkkg.cardId)
end

return vbkd.rarity < bkkg.rarity
end)

return ax
end

function kc.misc.expeditions.cards(ncn, enj)
local htgt = kc.misc.expeditions
local vt = htgt.data()
local jt = vt and tonumber(vt.CardsPerExpedition) or 4
local npdd = {}
local bhh = htgt.candidates(ncn)

enj = enj or {}

local function urgf(twj, db)
local rc = tostring(twj.cardId) .. _d("Gg") .. tostring(twj.borderLevel)

while #npdd < jt and (enj[rc] or 0) < db do
enj[rc] = (enj[rc] or 0) + 1

table.insert(npdd, { cardId = twj.cardId, borderLevel = twj.borderLevel })
end
end

for eya, lwv in ipairs(bhh) do
if #npdd >= jt then
break
end

if lwv.count > 1 then
urgf(lwv, lwv.count - 1)
end
end

if #npdd < jt then
for obvv, rke in ipairs(bhh) do
if #npdd >= jt then
break
end

urgf(rke, rke.count)
end
end

return npdd
end

function kc.misc.expeditions.available(whs)
local jiv = kc.misc.expeditions
local shqn = jiv.data()
local gfo = shqn and tonumber(shqn.CardsPerExpedition) or 4
local ehl = 0

for qk, nhr in ipairs(jiv.candidates(whs)) do
ehl = ehl + nhr.count

if ehl >= gfo then
return gfo
end
end

return ehl
end

function kc.misc.expeditions.text()
local nmd = kc.misc.expeditions

if type(nmd.state) ~= _d("TQITVQA") then
return _d("awYQXQwdChkGCUkAFwRNCh5XFl1DFw")
end

local bzyt = nmd.data()
local xqix = bzyt and tonumber(bzyt.CardsPerExpedition) or 4
local hgl = {}

for he, vjh in ipairs(nmd.tiers()) do
local vdlz, eipl = nmd.status(vjh.id)
local pran = tostring(vjh.name)

if nmd.tiersWanted[vjh.id] then
pran = _d("2+PTGQ") .. pran
end

if vdlz == _d("SxYfVwwdCg") then
pran = pran .. _d("MzEUTRABA0pDGFdF") .. nmd.clockText(eipl)
elseif vdlz == _d("SwYQXRw") then
pran = pran .. _d("MzEUWAEKTU0MUVoJEgRU")
else
local ppn = nmd.available(vjh.id)
pran = pran .. _d("Mw") .. tostring(ppn) .. _d("GQwXGQ") .. tostring(xqix) .. _d("GQAQSwEA")

if ppn >= xqix then
pran = pran .. _d("MyAQV0UAGVgRBQ")
end
end

table.insert(hgl, pran)
end

table.insert(hgl, _d("fBUUSxxTCUwTHVAGEhlcQxhKRQAIVxdRWwAVAksGUVhFEAxLB1FACgZNUQwdXUUcA1xDHl9JUwxXB1FWCxZNWgwBQEUcCxkCUVoEAQkZCgIZDhYdTUMTWAYYTU4LFEsAUxlRBlFNDBYfGQAQV0UAHVgRFBkMB00UQxAZCRwDXEMSVhUKTVYNHUBFFAJcEFFWEAdNTgsUV0UHBVxDBVAAAU1aAh9XCgdNWwZRXwwfAVwHUU4MBwVWFgUZDAdD"))

return table.concat(hgl, _d("M2k"))
end

function kc.misc.expeditions.request()
local rdb = kc.misc.expeditions
local vdi = rdb.remote()

if vdi then
pcall(function()
vdi:FireServer(_d("SwYATAAAGQ"))
end)
end

rdb.askedAt = os.clock()
end

function kc.misc.expeditions.claim()
local rdqi = kc.misc.expeditions

if os.clock() < rdqi.claimAt then
return false
end

local cr = false

for cwo, ciiu in ipairs(rdqi.tiers()) do
if rdqi.status(ciiu.id) == _d("SwYQXRw") then
cr = true
break
end
end

if not cr then
return false
end

local ejcf = rdqi.remote()

if not ejcf then
return false
end

pcall(function()
ejcf:FireServer(_d("Wg8QUAgyAVU"))
end)

rdqi.claimAt = os.clock() + 3
rdqi.askedAt = 0

return true
end

function kc.misc.expeditions.popup()
local spp = hk:FindFirstChild(_d("fBsBXAEaGVAMH34QGg"))

return spp and spp:FindFirstChild(_d("eg8QUAgjAkkWAQ")) or nil
end

function kc.misc.expeditions.closeRewards()
local efkx = kc.misc.expeditions
local ywq = efkx.popup()

if not (ywq and ywq.Visible) then
return false
end

local iccr = ywq:FindFirstChild(_d("dggzTBEHAlc"))

if iccr and type(firesignal) == _d("XxYfWhEaAlc") then
pcall(firesignal, iccr.Activated)
end

pcall(function()
ywq.Visible = false
end)

return true
end

function kc.misc.expeditions.rewardsText()
local dzxe = kc.misc.expeditions

if #dzxe.rewardLog == 0 then
return _d("dwwFUQwdChkAHVgMHghdQwhcEV1NfBUUSxxTHVgaHkwRUxlRBlFKAAEbXBFRSgAdCUpDHVgLFx4ZCxRLAFMaUBcZGQwHHhkXGFwXUwxXB1FQEQBNWgwfTQAdGUpN")
end

local qqcm = {}

for vecu, afa in ipairs(dzxe.rewardLog) do
local qi = {}
local zk = afa.items or {}

for mrk, pfyu in ipairs(zk) do
if mrk > 4 then
table.insert(qi, _d("Eg") .. tostring(#zk - 4) .. _d("GQ4eSwA"))
break
end

local skt = pfyu.id or pfyu.itemId
local zivs = skt and xn.ById[skt] or nil
local uxe = (zivs and zivs.name) or (pfyu.potions and _d("aQwFUAodHg")) or tostring(skt or _d("SwYGWBcX"))

table.insert(qi, uxe .. _d("GRs") .. tostring(pfyu.count or pfyu.max or pfyu.min or 1))
end

local bcl = math.max(0, os.time() - (tonumber(afa.at) or os.time()))
local muue

if bcl < 60 then
muue = tostring(bcl) .. _d("SkMQXgo")
elseif bcl < 3600 then
muue = tostring(math.floor(bcl / 60)) .. _d("VEMQXgo")
else
muue = tostring(math.floor(bcl / 3600)) .. _d("UUMQXgo")
end

table.insert(qqcm, tostring(afa.title) .. _d("GaHGGQ") .. muue)
table.insert(qqcm, table.concat(qi, _d("FUM")))
end

return table.concat(qqcm, _d("Mw"))
end

function kc.misc.expeditions.saveRewards()
local ianx = kc.misc.expeditions

if type(writefile) ~= _d("XxYfWhEaAlc") then
return false
end

return pcall(function()
if type(makefolder) == _d("XxYfWhEaAlc") and type(isfolder) == _d("XxYfWhEaAlc") and not isfolder(_d("eCAzYQ")) then
makefolder(_d("eCAzYQ"))
end

writefile(ianx.rewardPath, game:GetService(_d("cRcFSTYWH08KElw")):JSONEncode({
rewards = ianx.rewardLog,
updatedAt = os.time(),
}))
end)
end

function kc.misc.expeditions.loadRewards()
local ms = kc.misc.expeditions

if type(readfile) ~= _d("XxYfWhEaAlc") or type(isfile) ~= _d("XxYfWhEaAlc") then
return false
end

local vwq, sdhw = pcall(function()
if not isfile(ms.rewardPath) then
return nil
end

return readfile(ms.rewardPath)
end)

if not vwq or type(sdhw) ~= _d("ShcDUAsU") or #sdhw == 0 then
return false
end

local sder

if not pcall(function()
sder = game:GetService(_d("cRcFSTYWH08KElw")):JSONDecode(sdhw)
end) then
return false
end

if type(sder) ~= _d("TQITVQA") or type(sder.rewards) ~= _d("TQITVQA") then
return false
end

ms.rewardLog = {}

for yhtl, bymc in ipairs(sder.rewards) do
if type(bymc) == _d("TQITVQA") and type(bymc.items) == _d("TQITVQA") then
table.insert(ms.rewardLog, {
at = tonumber(bymc.at) or os.time(),
title = tostring(bymc.title or _d("fBsBXAEaGVAMHw")),
items = bymc.items,
})
end
end

return #ms.rewardLog > 0
end

function kc.misc.expeditions.start(wxh, jwsv)
local opyu = kc.misc.expeditions

if opyu.status(wxh) ~= _d("WBUQUAkSD1UG") then
return false
end

if os.clock() < (opyu.startedAt[wxh] or 0) then
return false
end

local saj = opyu.remote()

if not saj then
return false
end

local crbj = opyu.cards(wxh, jwsv)
local hx = opyu.data()
local rz = hx and tonumber(hx.CardsPerExpedition) or 4

if #crbj < rz then
return false
end

local vrx = {}

for tlyn, tve in ipairs(crbj) do
vrx[tlyn] = { cardId = tve.cardId, borderLevel = tve.borderLevel }
end

pcall(function()
saj:FireServer(_d("ShcQSxE"), wxh, vrx)
end)

opyu.startedAt[wxh] = os.clock() + 6
opyu.askedAt = 0

return true
end

kc.misc.icon = function()
local js = gethui()

for dayn, lymf in ipairs(js:QueryDescendants(_d("cA4QXgA/DFsGHQ"))) do
if lymf.Name == _d("bQITcAgSClw") then
local lczl = lymf.Parent
local jm = lczl and lczl:FindFirstChild(_d("bQITahIaGVoLFEsrEgBc"))

if jm and jm.Text == _d("dAoCWgAfAVgNFFYQAA") then
if lymf:GetAttribute(_d("eCAzYSgaHloqElYL")) then
return true
end

lymf:SetAttribute(_d("eCAzYSgaHloqElYL"), true)
lymf.Image = _d("")
lymf.BackgroundTransparency = 1

local function vcgy(xold, pzb, evgm, dsg, lgx, orkm, wor)
local wh = Instance.new(xold)

wh.Size = UDim2.fromOffset(lgx, orkm)
wh.Position = UDim2.fromOffset(evgm, dsg)
wh.BackgroundColor3 = pzb
wh.BorderSizePixel = 0
wh.Parent = lymf

if wor then
local tbz = Instance.new(_d("bCoyVhcdCEs"))
tbz.CornerRadius = UDim.new(0, wor)
tbz.Parent = wh
end

return wh
end

local hidj = Color3.fromRGB(168, 170, 176)

local function bflj(jhmr, lgfk, nwa, zy, sok)
local mtrb = vcgy(_d("fxEQVAA"), hidj, jhmr, lgfk, nwa, zy, sok)

mtrb.BackgroundTransparency = 1

local gmu = Instance.new(_d("bCoiTRccBlw"))

gmu.Color = hidj
gmu.Thickness = 1.4
gmu.LineJoinMode = Enum.LineJoinMode.Round
gmu.Parent = mtrb

return mtrb
end

bflj(3, 1, 6, 4, 1)
bflj(1, 4, 16, 12, 2)

local gxu = vcgy(_d("fxEQVAA"), hidj, 3, 8, 5, 5)

gxu.BackgroundTransparency = 1
gxu.ClipsDescendants = true

local aa = vcgy(_d("fxEQVAA"), hidj, 0, 1, 5, 5)

aa.Rotation = 45
aa.Parent = gxu

vcgy(_d("fxEQVAA"), hidj, 9, 9, 4, 4, 4)
vcgy(_d("fxEQVAA"), hidj, 13, 10, 3, 3, 1)

return true
end
end
end

return false
end

kc.misc.tab = gwq:Tab({
Name = _d("dAoCWgAfAVgNFFYQAA"),

Image = _d(""),
})

task.defer(function()
for ecnn = 1, 20 do
if kc.misc.icon() then
break
end

task.wait(0.25)
end
end)

local xtig = {
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
lastText = _d("dwwFUQwdChkTHkkVFgkZGhRNSw"),
tab = nil,
weatherSection = nil,
giveUpSection = nil,
weatherParagraph = nil,
giveUpParagraph = nil,
weatherToggle = nil,
giveUpToggle = nil,
}

getgenv().ACBXPop = xtig

function xtig.options()
local zo = {}

for iy, rzh in pairs(xn.ById) do
if rzh.type == _d("SQwFUAod") and type(rzh.name) == _d("ShcDUAsU") then
zo[#zo + 1] = rzh.name
end
end

table.sort(zo)

return zo
end

function xtig.idOf(roo)
for rmv, pyb in pairs(xn.ById) do
if pyb.type == _d("SQwFUAod") and pyb.name == roo then
return rmv
end
end

return nil
end

function xtig.count(amy)
local ira = mz.balances

return tonumber(ira and ira[amy]) or 0
end

function xtig.pop(nh, cxhy, kshr)
local fre = {}

for dw, eglv in pairs(nh) do
if eglv then
local uc = xtig.idOf(dw)

if uc then
local cz = xtig.count(uc)

if cz <= 0 then
fre[#fre + 1] = dw .. _d("GU5RVwodCBkPFF8R")
else
local oed = math.clamp(math.floor(tonumber(cxhy) or 1), 1, cz)

pcall(function()
ioe.UseItem:FireServer(uc, oed)
end)

fre[#fre + 1] = dw .. _d("GRs") .. oed
task.wait(0.3)
end
end
end
end

if #fre == 0 then
return false
end

xtig.lastText = kshr .. _d("GU5R") .. table.concat(fre, _d("FUM"))

pcall(function()
vdzw:Notify({
Title = _d("aQwB"),
Description = xtig.lastText,
Lifetime = 5,
})
end)

return true
end

function xtig.status()
local rin = qjxx.weatherWanted(xtig.weathers)
local memb = qjxx.weatherNow or _d("TA0aVwoEAw")
local hcyz = {
_d("bgYQTQ0WHwND") .. memb .. (rin and (_d("GUsBVhUDBFcESxk") .. rin .. _d("EA")) or _d("")),
_d("dQICTV9T") .. xtig.lastText,
}

return table.concat(hcyz, _d("Mw"))
end

function xtig.giveUpStatus()
if xtig.armedAt > 0 then
return _d("eBEcXAFTQBkUEFARGgNeQxdWF1MZUQZRSxAdTU0MUVwLF0MzLxBKEUlN") .. xtig.lastText
end

return _d("cAcdXEt5IVgQBQNF") .. xtig.lastText
end

xtig.tab = gwq:Tab({
Name = _d("aQwB"),

Image = _d(""),
})

xtig.icon = function()
local wla = gethui()

for yqii, var in ipairs(wla:QueryDescendants(_d("cA4QXgA/DFsGHQ"))) do
if var.Name == _d("bQITcAgSClw") then
local mdh = var.Parent
local svsm = mdh and mdh:FindFirstChild(_d("bQITahIaGVoLFEsrEgBc"))

if svsm and svsm.Text == _d("aQwB") then
if var:GetAttribute(_d("eCAzYTUcHXAAHlc")) then
return true
end

var:SetAttribute(_d("eCAzYTUcHXAAHlc"), true)
var.Image = _d("")
var.BackgroundTransparency = 1

local ues = Color3.fromRGB(168, 170, 176)

local function hdxk(lmam, vn, xkda, kwqm, csy, fpd)
local pkj = Instance.new(lmam)

pkj.Size = UDim2.fromOffset(kwqm, csy)
pkj.Position = UDim2.fromOffset(vn, xkda)
pkj.BackgroundColor3 = ues
pkj.BorderSizePixel = 0
pkj.Parent = var

if fpd then
local unl = Instance.new(_d("bCoyVhcdCEs"))
unl.CornerRadius = UDim.new(0, fpd)
unl.Parent = pkj
end

return pkj
end

local function oz(nby, fcy, klnn, tuw, qggf)
local gko = hdxk(_d("fxEQVAA"), nby, fcy, klnn, tuw, qggf)

gko.BackgroundTransparency = 1

local bels = Instance.new(_d("bCoiTRccBlw"))

bels.Color = ues
bels.Thickness = 1.3
bels.LineJoinMode = Enum.LineJoinMode.Round
bels.Parent = gko

return gko
end

oz(1, 6, 16, 12, 6)
oz(6, 3, 6, 4, 1)
hdxk(_d("fxEQVAA"), 5, 1, 8, 2, 1)
hdxk(_d("fxEQVAA"), 7, 0, 4, 1, 0)

hdxk(_d("fxEQVAA"), 4, 11, 10, 1, 0)
hdxk(_d("fxEQVAA"), 13, 3, 2, 2, 2)
hdxk(_d("fxEQVAA"), 15, 6, 2, 2, 2)

return true
end
end
end

return false
end

task.defer(function()
for ncf = 1, 20 do
if xtig.icon() then
break
end

task.wait(0.25)
end
end)

xtig.weatherSection = xtig.tab:Section({
Side = _d("dQYXTQ"),
})

xtig.weatherSection:Header({
Name = _d("aQwFUAodHhkMHxkSFgxNCxRLRYPynsk"),
})

xtig.weatherToggle = xtig.weatherSection:Toggle({
Name = _d("aQwBGQodTU0LFEoAUxpcAgVRAAEe"),
Default = false,
Callback = function(ucb)
if ucb and (next(xtig.weatherPotions) == nil or next(xtig.weathers) == nil) then
xtig.onWeather = false

pcall(function()
xtig.weatherToggle:UpdateState(false)
end)

vdzw:Dialog({
Title = _d("aQwB"),
Description = _d("bQoSUkUSGRkPFFgWB01WDRQZEhYMTQsUS0USA11DHlcAUx1WFxhWC1MLUBECTUVeTWkMARkLFghdEFFbCgcFGRceGQ4dAk5DBlEEB01NDFFdFxoDUkMQVwFTGlEGHxc"),
Buttons = {
{
Name = _d("fgwFGQwH"),
},
},
})

return
end

xtig.onWeather = ucb

if ucb then
xtig.weatherSpent = nil
end
end,
}, _d("SQwBZgodMk0LFEoALBpcAgVRAAEe"))

xtig.weatherSection:Dropdown({
Name = _d("bgYQTQ0WH0o"),
Multi = true,
Required = false,
Options = { _d("bRoBUQocAw"), _d("ew8YQx8SH10"), _d("dQoWUREdBFcE"), _d("bgofXRYHAksO"), _d("agsQSwwdClgN"), _d("agofXhAfDEsKBUA"), _d("dAwfWBcQBRknHlQEGgM"), _d("bwwYXQ"), _d("dAIVXEUaAxkrFFgTFgM"), _d("dAIfXgQ") },
Callback = function(lltb)
xtig.weathers = {}

if type(lltb) == _d("TQITVQA") then
for siya, ve in pairs(lltb) do
if ve then
xtig.weathers[siya] = true
end
end
end
end,
}, _d("TgYQTQ0WH0o"))

xtig.weatherSection:Dropdown({
Name = _d("aQwFUAodHg"),
Multi = true,
Required = false,
Options = xtig.options(),
Callback = function(fxub)
xtig.weatherPotions = {}

if type(fxub) == _d("TQITVQA") then
for gkk, hib in pairs(fxub) do
if hib then
xtig.weatherPotions[gkk] = true
end
end
end
end,
}, _d("SQwFUAodHg"))

xtig.weatherSection:Input({
Name = _d("eA4eTAsH"),
Placeholder = _d("CA"),
AcceptedCharacters = _d("dxYcXBcaDg"),
Callback = function(sdkr)
local vpm = math.floor(tonumber(sdkr) or 1)

xtig.weatherAmount = math.clamp(vpm, 1, 50)
end,
}, _d("WA4eTAsH"))

xtig.weatherParagraph = xtig.weatherSection:Paragraph({
Header = _d("ahcQTRAA"),
Body = xtig.status(),
})

xtig.giveUpSection = xtig.tab:Section({
Side = _d("awoWURE"),
})

xtig.giveUpSection:Header({
Name = _d("eAUFXBdTClAVFBkQAw"),
})

xtig.giveUpToggle = xtig.giveUpSection:Toggle({
Name = _d("aQwBGQQVGVwRUVhFBwJOBgMZAhobXEMESQ"),
Default = false,
Callback = function(xpb)
if xpb and next(xtig.giveUpPotions) == nil then
xtig.afterGiveUp = false

pcall(function()
xtig.giveUpToggle:UpdateState(false)
end)

vdzw:Dialog({
Title = _d("aQwB"),
Description = _d("bQoSUkUSGRkPFFgWB01WDRQZFRwZUAwfGQMaH0oXURRFBwVcERQZDABNVwwFUQwdChkXHhkBAQRXCFFYAwcIS0MFUQBTH0wNUVYRGwhLFBhKAF0"),
Buttons = {
{
Name = _d("fgwFGQwH"),
},
},
})

return
end

xtig.afterGiveUp = xpb
end,
}, _d("SQwBZgQVGVwRLlg6BwJOBgNmAhobXDwESQ"))

xtig.giveUpSection:Dropdown({
Name = _d("aQwFUAodHg"),
Multi = true,
Required = false,
Options = xtig.options(),
Callback = function(zvbk)
xtig.giveUpPotions = {}

if type(zvbk) == _d("TQITVQA") then
for ypb, qu in pairs(zvbk) do
if qu then
xtig.giveUpPotions[ypb] = true
end
end
end
end,
}, _d("SQwFUAodHmZR"))

xtig.giveUpSection:Input({
Name = _d("eA4eTAsH"),
Placeholder = _d("CA"),
AcceptedCharacters = _d("dxYcXBcaDg"),
Callback = function(anta)
local hmmm = math.floor(tonumber(anta) or 1)

xtig.giveUpAmount = math.clamp(hmmm, 1, 50)
end,
}, _d("WA4eTAsHMgs"))

xtig.giveUpParagraph = xtig.giveUpSection:Paragraph({
Header = _d("ahcQTRAA"),
Body = xtig.giveUpStatus(),
})

local dwrz = {
autoSave = false,
autoRoll = true,
autoQuickRoll = true,

loading = false,
selected = nil,
lastText = _d("dwwFUQwdChkUA1ARBwhXQwhcEVNAGRMYWg5TDBkQEE8AUwtQDxQZBxYBVhRf"),
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
theme = _d("bwwYXQ"),
accent = nil,
savesAt = 0,
autoSaveAt = 0,
themeAt = 0,
capAt = 0,
scaleAnchor = nil,
statusAt = 0,
knownSaves = _d(""),
}

getgenv().ACBXSettings = dwrz

dwrz.presets = {
Void = { panel = Color3.fromRGB(15, 15, 15), element = Color3.fromRGB(0, 0, 0), accent = Color3.fromRGB(168, 170, 176) },
Ocean = { panel = Color3.fromRGB(6, 16, 26), element = Color3.fromRGB(8, 26, 40), accent = Color3.fromRGB(77, 166, 255) },
Ember = { panel = Color3.fromRGB(26, 10, 8), element = Color3.fromRGB(36, 16, 10), accent = Color3.fromRGB(255, 122, 69) },
Sakura = { panel = Color3.fromRGB(26, 9, 18), element = Color3.fromRGB(38, 14, 26), accent = Color3.fromRGB(255, 125, 177) },
Mint = { panel = Color3.fromRGB(7, 20, 14), element = Color3.fromRGB(9, 30, 22), accent = Color3.fromRGB(77, 227, 160) },
Graphite = { panel = Color3.fromRGB(20, 20, 22), element = Color3.fromRGB(30, 30, 33), accent = Color3.fromRGB(200, 200, 206) },
}

dwrz.themeOrder = { _d("bwwYXQ"), _d("dgAUWAs"), _d("fA4TXBc"), _d("agIaTBcS"), _d("dAofTQ"), _d("fhEQSQ0aGVw") }

local njot = _d("eCAzGTcWD1ARBVFKAAhNFxhXAgA")

function dwrz.saves()
local jzk, psq = pcall(function()
return xixj:RefreshConfigList()
end)

if jzk and type(psq) == _d("TQITVQA") then
table.sort(psq)
return psq
end

return {}
end

function dwrz.autoLoadName()
local rw, pau = pcall(function()
if isfile and isfile(njot .. _d("FgIETQofAlgHX00dBw")) then
return readfile(njot .. _d("FgIETQofAlgHX00dBw"))
end
end)

if rw and type(pau) == _d("ShcDUAsU") then
pau = pau:gsub(_d("Z0YCEg"), _d("")):gsub(_d("HBBaHQ"), _d(""))

if pau ~= _d("") then
return pau
end
end

return nil
end

function dwrz.setAutoLoad(amca)

return (pcall(function()
writefile(njot .. _d("FgIETQofAlgHX00dBw"), amca or _d(""))
end))
end

function dwrz.delete(qeot)
if type(qeot) ~= _d("ShcDUAsU") or qeot == _d("") then
return false, _d("aQoSUkUSTUoCB1xFFQRVBlFfDAEeTU0")
end

local gcur = njot .. _d("Fg") .. qeot .. _d("FwkCVgs")
local bfzp = false

pcall(function()
bfzp = isfile ~= nil and isfile(gcur) == true
end)

if not bfzp then
return false, _d("bQsUSwBTBEpDH1ZFFQRVBlFaBB8BXAdR") .. qeot .. _d("Fw")
end

local bee, ro = pcall(function()
delfile(gcur)
end)

if not bee then
return false, tostring(ro)
end

if dwrz.autoLoadName() == qeot then
dwrz.setAutoLoad(_d(""))
end

if dwrz.selected == qeot then
dwrz.selected = nil
dwrz.selectionShown = nil
end

dwrz.knownSaves = nil
dwrz.savesAt = 0

return true
end

function dwrz.save(sxkp)
if type(sxkp) ~= _d("ShcDUAsU") or sxkp:gsub(_d("HBA"), _d("")) == _d("") then
return false, _d("fgoHXEUHBVxDAlgTFk1YQx9YCBZNXwoDShFd")
end

local ca, vb, tbos = pcall(function()
return xixj:SaveConfig(sxkp)
end)

if not ca then
return false, tostring(vb)
end

if vb ~= true then
return false, tostring(tbos or _d("TQsUGQMaAVxDElYQHwkZDR5NRREIGRQDUBEHCFc"))
end

return true
end

function dwrz.replayOff(buo)
local okr, bgpz = pcall(function()
return readfile(njot .. _d("Fg") .. buo .. _d("FwkCVgs"))
end)

if not okr or type(bgpz) ~= _d("ShcDUAsU") then
return
end

local ktty
okr, ktty = pcall(function()
return game:GetService(_d("cRcFSTYWH08KElw")):JSONDecode(bgpz)
end)

if not okr or type(ktty) ~= _d("TQITVQA") or type(ktty.objects) ~= _d("TQITVQA") then
return
end

for sjwx, bnaq in ipairs(ktty.objects) do
if bnaq.type == _d("bQwWXgkW") and bnaq.state == false and bnaq.flag then
local fcnv = xixj.Options[bnaq.flag]

if fcnv then
pcall(function()
fcnv:UpdateState(false)
end)
end
end
end
end

function dwrz.load(rig)
if type(rig) ~= _d("ShcDUAsU") or rig == _d("") then
return false, _d("aQoSUkUSTUoCB1xFFQRVBlFfDAEeTU0")
end

dwrz.loading = true
ayqw = true

local tbfj, dufv, jglj = pcall(function()
return xixj:LoadConfig(rig)
end)

if not tbfj then
dwrz.loading = false
ayqw = false

return false, tostring(dufv)
end

if dufv ~= true then
dwrz.loading = false
ayqw = false

return false, tostring(jglj or _d("TQsUGQMaAVxDElYQHwkZDR5NRREIGREUWAE"))
end

task.wait(0.25)
dwrz.replayOff(rig)
dwrz.loading = false
ayqw = false

return true
end

dwrz.uiPath = _d("eCAzYUoGBBcJAlYL")

function dwrz.saveUi()
if type(writefile) ~= _d("XxYfWhEaAlc") then
return false
end

if dwrz.restoring then
return false
end

local ouo = dwrz.accent

local vkiu = {
theme = dwrz.theme,
scale = tonumber(string.format(_d("HE1DXw"), dwrz.scaleTarget or 1)),
accent = ouo and string.format(_d("HAddHAFfSF0"),
math.floor(ouo.R * 255 + 0.5),
math.floor(ouo.G * 255 + 0.5),
math.floor(ouo.B * 255 + 0.5)) or nil,
}

return pcall(function()
if type(makefolder) == _d("XxYfWhEaAlc") and type(isfolder) == _d("XxYfWhEaAlc") and not isfolder(_d("eCAzYQ")) then
makefolder(_d("eCAzYQ"))
end

writefile(dwrz.uiPath, game:GetService(_d("cRcFSTYWH08KElw")):JSONEncode(vkiu))
end)
end

function dwrz.loadUi()
if type(readfile) ~= _d("XxYfWhEaAlc") or type(isfile) ~= _d("XxYfWhEaAlc") then
return nil
end

local lvv, nso = pcall(function()
if not isfile(dwrz.uiPath) then
return nil
end

return readfile(dwrz.uiPath)
end)

if not lvv or type(nso) ~= _d("ShcDUAsU") or nso == _d("") then
return nil
end

local ss
lvv, ss = pcall(function()
return game:GetService(_d("cRcFSTYWH08KElw")):JSONDecode(nso)
end)

if not lvv or type(ss) ~= _d("TQITVQA") then
return nil
end

dwrz.restoring = true

if type(ss.theme) == _d("ShcDUAsU") and dwrz.presets[ss.theme] then
dwrz.theme = ss.theme

pcall(function()
dwrz.themeDropdown:UpdateSelection(ss.theme)
dwrz.themeDropdown:UpdateName(_d("bQsUVABJTQ") .. ss.theme)
end)
end

local snva, qxo, ymul = tostring(ss.accent or _d("")):match(_d("Z0tUXU5aQRFGFRJMX0UcB1oQQQ"))

if snva then
local ay = Color3.fromRGB(tonumber(snva), tonumber(qxo), tonumber(ymul))

dwrz.accent = ay

pcall(function()
dwrz.accentPicker:SetColor(ay)
end)
else
dwrz.accent = nil

local bwvd = dwrz.presets[dwrz.theme] or dwrz.presets.Void

pcall(function()
dwrz.accentPicker:SetColor(bwvd.accent)
end)
end

local hnk = tonumber(ss.scale)

if hnk then
hnk = math.clamp(hnk, 0.5, dwrz.scaleCeiling())

dwrz.scaleTarget = hnk
dwrz.scaleAnchor = nil

pcall(function()
dwrz.scaleSlider:UpdateValue(hnk)
end)
end

dwrz.applyTheme()

dwrz.restoring = false
dwrz.saveUi()

return ss
end

dwrz.prioPath = _d("eCAzYUoDH1AMA1ARCkNTEB5X")

function dwrz.groupAt(mb)
for rg, jr in ipairs(drcb.prioGroups) do
if jr.rank == mb then
return jr
end
end
end

function dwrz.paintPriority()
if dwrz.prioBusy then
return
end

dwrz.prioBusy = true

for emg = 1, #drcb.prioGroups do
local paxt = dwrz.prioRows and dwrz.prioRows[emg]
local tzi = dwrz.groupAt(emg)

if paxt and tzi then
pcall(function()
paxt:UpdateSelection(tzi.label)
end)
end
end

dwrz.prioBusy = false
end

function dwrz.setPriority(iqb, uoap)
if dwrz.prioBusy or dwrz.prioBuilding then
return
end

local cp

for baqw, yha in ipairs(drcb.prioGroups) do
if yha.id == iqb then
cp = yha.rank
yha.rank = uoap
end
end

if cp and cp ~= uoap then
for wzny, iur in ipairs(drcb.prioGroups) do
if iur.id ~= iqb and iur.rank == uoap then
iur.rank = cp
end
end
end

dwrz.paintPriority()
dwrz.savePriority()
end

function dwrz.savePriority()
if type(writefile) ~= _d("XxYfWhEaAlc") then
return false
end

local awl = {}

for pm, aryt in ipairs(drcb.prioGroups) do
awl[aryt.id] = aryt.rank
end

return pcall(function()
if type(makefolder) == _d("XxYfWhEaAlc") and type(isfolder) == _d("XxYfWhEaAlc") and not isfolder(_d("eCAzYQ")) then
makefolder(_d("eCAzYQ"))
end

writefile(dwrz.prioPath, game:GetService(_d("cRcFSTYWH08KElw")):JSONEncode({ ranks = awl }))
end)
end

function dwrz.loadPriority()
if type(readfile) ~= _d("XxYfWhEaAlc") or type(isfile) ~= _d("XxYfWhEaAlc") then
return nil
end

local epa, raam = pcall(function()
if not isfile(dwrz.prioPath) then
return nil
end

return readfile(dwrz.prioPath)
end)

if not epa or type(raam) ~= _d("ShcDUAsU") or raam == _d("") then
return nil
end

local vlz

epa, vlz = pcall(function()
return game:GetService(_d("cRcFSTYWH08KElw")):JSONDecode(raam)
end)

if not epa or type(vlz) ~= _d("TQITVQA") or type(vlz.ranks) ~= _d("TQITVQA") then
return nil
end

return vlz.ranks
end

function dwrz.restorePriority()
local nsm = dwrz.loadPriority()

if not nsm then
return
end

for kqn, zzr in ipairs(drcb.prioGroups) do
local cscz = tonumber(nsm[zzr.id])

if cscz and cscz >= 1 and cscz <= #drcb.prioGroups then
zzr.rank = cscz
end
end

dwrz.paintPriority()
end

function dwrz.colourKey(kjuz)
return math.floor(kjuz.R * 255) .. _d("FQ") .. math.floor(kjuz.G * 255) .. _d("FQ") .. math.floor(kjuz.B * 255)
end

function dwrz.guiRoot()

if not tpm() then
return nil
end

if dwrz.root and dwrz.root.Parent then
return dwrz.root
end

local euf = gethui and gethui() or game:GetService(_d("egwDXCIGBA"))

for xkh, we in ipairs(euf:GetChildren()) do
if we:IsA(_d("agADXAAdKkwK")) and we:FindFirstChild(_d("ewICXA")) then
dwrz.root = we.Base

return dwrz.root
end
end

return nil
end

function dwrz.applyTheme()
local bqt = dwrz.guiRoot()
local edu = dwrz.presets[dwrz.theme] or dwrz.presets.Void

if not bqt then
return false
end

local yz = {
panel = edu.panel,
element = edu.element,
accent = dwrz.accent or edu.accent,
}

local hmy = {}

for bd, oda in pairs(dwrz.presets) do
hmy[dwrz.colourKey(oda.panel)] = _d("SQIfXAk")
hmy[dwrz.colourKey(oda.element)] = _d("XA8UVAAdGQ")
hmy[dwrz.colourKey(oda.accent)] = _d("WAASXAsH")
end

hmy[dwrz.colourKey(yz.accent)] = _d("WAASXAsH")

if hmy[dwrz.colourKey(bqt.BackgroundColor3)] == _d("SQIfXAk") then
bqt.BackgroundColor3 = yz.panel
end

for trh, vjv in ipairs(bqt:GetDescendants()) do
if vjv:IsA(_d("fhYYdgcZCFoX")) then
local iu = hmy[dwrz.colourKey(vjv.BackgroundColor3)]

if iu then
vjv.BackgroundColor3 = yz[iu]
end
elseif vjv:IsA(_d("bCoiTRccBlw")) then
if hmy[dwrz.colourKey(vjv.Color)] == _d("WAASXAsH") then
vjv.Color = yz.accent
end
end

if vjv:IsA(_d("cA4QXgA/DFsGHQ")) and vjv.Name == _d("bQITcAgSClw") and vjv.Image ~= _d("") then
vjv.ImageColor3 = yz.accent
vjv.ImageTransparency = 0
vjv:SetAttribute(_d("eCAzYTESD3gAElwLBw"), yz.accent)

if not vjv:GetAttribute(_d("eCAzYTESD20KH00")) then
vjv:SetAttribute(_d("eCAzYTESD20KH00"), true)

local function avr()
local bk = vjv:GetAttribute(_d("eCAzYTESD3gAElwLBw"))

if bk and vjv.ImageColor3 ~= bk then
vjv.ImageColor3 = bk
end

if vjv.ImageTransparency ~= 0 then
vjv.ImageTransparency = 0
end
end

jdcu(vjv:GetPropertyChangedSignal(_d("cA4QXgAnH1gNAkkEAQhXAAg")), avr)
jdcu(vjv:GetPropertyChangedSignal(_d("cA4QXgAwAlUMAwo")), avr)
end
end
end

return true
end

local tgzc = gwq:Tab({
Name = _d("dAIB"),
Image = _d("SwEJWBYACE0KFQNKXFsJUEAJUkZUClI"),
})

local bch = {
holdFor = 25,
fly = {
on = false,
speed = 55,
connection = nil,
},
islands = {
{ name = _d("dQwTWxw"), kind = _d("TgwDVQE"), arg = _d("VQwTWxw") },
{ name = _d("eAEQVwEcA1wHUXAWHwxXBw"), kind = _d("UBAdWAsX"), arg = _d("WAEQVwEcA1wHLlAWHwxXBw") },
{ name = _d("bRQYV0UxCFgAGVwW"), kind = _d("UBAdWAsX"), arg = _d("TRQYVzoRCFgAGVwW"), note = _d("GTcZXEUACEsVFEtFFx9WEwIZDAdNTA0FUAlTFFYWUVEEBQgZEBBQCRYJGRcZXBcWQw") },
{ name = _d("bgofXQgaAVVDOEoJFg"), kind = _d("UBAdWAsX"), arg = _d("TgofXQgaAVU8GEoJFg"), note = _d("GTcZXEUACEsVFEtFFx9WEwIZDAdNTA0FUAlTFFYWUVEEBQgZEBBQCRYJGRcZXBcWQw") },
},
npcs = {
{ name = _d("egIDXUU+CEsEFA"), npc = _d("XxYCXDodHVo"), attr = _d("dzMycAE"), at = Vector3.new(-272, 33, -40347) },
{ name = _d("fBsBXAEaGVAMH0o"), npc = _d("fBsBXAEaGVAMH3c1MA"), attr = _d("fBsBXAEaGVAMH3c1MA"), at = Vector3.new(-347, 35, -40361) },
{ name = _d("fQYSVgsAGUsWEk0"), npc = _d("XQYSVgsAGUsWEk06HR1a"), attr = _d("dzMycAE"), at = Vector3.new(-264, 33, -40331) },
{ name = _d("ehEQXxE"), npc = _d("WhEQXxEsA0kA"), attr = _d("dzMycAE"), at = Vector3.new(-330, 33, -40277) },
{ name = _d("aggYVQlTOUsGFA"), npc = _d("aggYVQknH1wGP2km"), attr = _d("aggYVQknH1wGP2km"), at = Vector3.new(-290, 32, -40283) },
{ name = _d("egIDXUU6A10GCQ"), npc = _d("WgIDXToaA10GCWYLAw4"), attr = _d("dzMycAE"), at = Vector3.new(-313, 33, -40282) },
{ name = _d("aQISUkU+CEsAGVgLBw"), npc = _d("SQISUjoeCEsAGVgLBw"), attr = _d("dzMycAE"), at = Vector3.new(-301, 33, -40270) },
{ name = _d("fRYfXgAcAw"), npc = _d("XRYfXgAcA2YNAVo"), attr = _d("dzMycAE"), at = Vector3.new(-339, 41, -40399) },
{ name = _d("fwoCUQABAFgN"), npc = _d("fwoCUQABAFgNP2km"), attr = _d("fwoCUQABAFgNP2km"), at = Vector3.new(-493, 14, -40262) },
{ name = _d("agYSSwAHTXgNFlUAAQ"), npc = _d("agYSSwAHLFcEHVwXPT16"), attr = _d("agYSSwAHLFcEHVwXPT16"), at = Vector3.new(-209, 34, -40382) },
{ name = _d("cQIdVQoECFwNUWoNHB0"), npc = _d("aRYcSQ4aAxkuFEsGGwxXFw"), at = Vector3.new(-29989, 78, -30259) },
{ name = _d("agISSwwVBFoGUXgJBwxL"), landmark = _d("agISSwwVBFoGMFUREh8"), island = _d("WAEQVwEcA1wHLlAWHwxXBw"), at = Vector3.new(-3548, 11, -40462) },
{ name = _d("cQIDXQYcH1xDJVYSFh8"), npc = _d("cQIDXQYcH1w3Hk4AAQ"), island = _d("WAEQVwEcA1wHLlAWHwxXBw"), at = Vector3.new(-3795, 25, -40250) },
{ name = _d("cBAdWAsXTX8KAlEAAQBYDQ"), npc = _d("cBAdWAsXK1AQGVwXHgxXLSF6"), attr = _d("cBAdWAsXK1AQGVwXHgxXLSF6"), island = _d("WAEQVwEcA1wHLlAWHwxXBw"), at = Vector3.new(-3825, 23, -40260) },
{ name = _d("fQoWXgAB"), npc = _d("fQoWXgABI2kg"), attr = _d("fQoWXgABI2kg"), island = _d("TRQYVzoRCFgAGVwW"), at = Vector3.new(-5998, 26, -40565) },
{ name = _d("agYSSwAHTX0KFl4AAQ"), npc = _d("agYSSwAHKVAEFlwXPT16"), attr = _d("agYSSwAHKVAEFlwXPT16"), island = _d("TgofXQgaAVU8GEoJFg"), at = Vector3.new(-7740, 17, -40343) },
},
}

function bch.hold()
ic.tpHoldUntil = os.clock() + bch.holdFor

ic.deepPhase = _d("UAcdXA")
ic.deepStageAt = 0
ic.phase = _d("UAcdXA")
ic.nextCastAt = 0
ic.watchdogAt = 0

return bch.holdFor
end

function bch.point(glo)
local wki

if glo.landmark then
wki = workspace:FindFirstChild(glo.landmark)
else
local mua = workspace:FindFirstChild(_d("dzMySg"))

if mua then
for kys, wut in ipairs(mua:GetChildren()) do
local ldyf

if glo.attr then
ldyf = wut:GetAttribute(glo.attr) == glo.npc
else
ldyf = wut.Name == glo.npc
end

if ldyf then
wki = wut
break
end
end
end
end

if wki then
local ypj = wki.PrimaryPart
or wki:FindFirstChild(_d("cRYcWAscBF0xHlYRIwxLFw"), true)
or wki:FindFirstChildWhichIsA(_d("ewICXDUSH00"), true)

if ypj then
return ypj.Position
end
end

return glo.at
end

function bch.resume()
if not ic.enabled then
return
end

local ikwe = ovr.Character
local lrv = ikwe and ikwe:FindFirstChild(_d("cRYcWAscBF0xHlYRIwxLFw"))

if not lrv or (lrv.Position - fnv).Magnitude < 40 then
return
end

pcall(function()
ic.recover()
end)
end

function bch.standAt(mrgw)
local esj = ovr.Character
local vst = esj and esj:FindFirstChild(_d("cRYcWAscBF0xHlYRIwxLFw"))

if not vst or not mrgw then
return false
end

local nwg = RaycastParams.new()
nwg.FilterType = Enum.RaycastFilterType.Exclude
nwg.FilterDescendantsInstances = { esj }

local keff = workspace:Raycast(mrgw + Vector3.new(0, 10, 0), Vector3.new(0, -80, 0), nwg)
local lio = mrgw.Y

if keff and keff.Instance.Name ~= _d("bgIFXBc") then
local tj = keff.Position.Y + 3.2

if math.abs(tj - mrgw.Y) <= 8 then
lio = tj
end
end

local ok = Vector3.new(vst.Position.X - mrgw.X, 0, vst.Position.Z - mrgw.Z)

if ok.Magnitude < 1 then
ok = Vector3.new(4, 0, 0)
else
ok = ok.Unit * 4
end

local khzb = Vector3.new(mrgw.X + ok.X, lio, mrgw.Z + ok.Z)

vst.CFrame = CFrame.new(khzb)

return true
end

function bch.unlock()
local jxhg = {
{ id = _d("WAEQVwEcA1wHLlAWHwxXBw"), at = Vector3.new(-3825, 24, -40260) },
{ id = _d("TRQYVzoRCFgAGVwW"), at = Vector3.new(-6180, 40, -40350) },
{ id = _d("TgofXQgaAVU8GEoJFg"), at = Vector3.new(-7480, 30, -40350) },
}
local imi = {}

for klh, ocvl in ipairs(jxhg) do
local jfzl = ioe.FishingGetState:InvokeServer()

if jfzl and jfzl.areas and jfzl.areas[ocvl.id] == true then
table.insert(imi, ocvl.id .. _d("A0MQVRcWDF0aUVYVFgM"))
else
bch.hold()
bch.standAt(ocvl.at)
task.wait(2.4)

local pt = ioe.FishingGetState:InvokeServer()

table.insert(imi, ocvl.id .. (pt and pt.areas and pt.areas[ocvl.id] and _d("A0MEVwkcDlIGFQ") or _d("A0MXWAwfCF0")))
end
end

bch.hold()
pcall(function()
ioe.TeleportToWorld:FireServer(_d("VQwTWxw"))
end)
task.wait(2.5)

return table.concat(imi, _d("GaHGGQ"))
end

function bch.flyToggle(ixq)
bch.fly.on = ixq

if not ixq then
return _d("fw8IGQoVCxc")
end

local jl = ovr.Character
local mfa = jl and jl:FindFirstChild(_d("cRYcWAscBF0xHlYRIwxLFw"))

if not mfa then
return _d("dwxRWg0SH1gABVwXUxlWQx1QAwdD")
end

bch.fly.height = mfa.Position.Y

if bch.fly.connection then
return _d("fw8IGQodQw")
end

local utc = game:GetService(_d("bBAUSywdHUwXIlwXBQRaBg"))

bch.fly.connection = jdcu(game:GetService(_d("axYfagABG1AAFA")).Heartbeat, function(sz)
if not bch.fly.on then
return
end

local ewc = ovr.Character
local drbg = ewc and ewc:FindFirstChild(_d("cRYcWAscBF0xHlYRIwxLFw"))

if not drbg then
return
end

local ackd = workspace.CurrentCamera
local pea = Vector3.zero

if ackd then
local tek = ackd.CFrame.LookVector
local qdg = Vector3.new(tek.X, 0, tek.Z)

if qdg.Magnitude > 0.01 then
qdg = qdg.Unit
end

local sfvi = Vector3.new(qdg.Z, 0, -qdg.X)

if utc:IsKeyDown(Enum.KeyCode.W) then
pea = pea + qdg
end

if utc:IsKeyDown(Enum.KeyCode.S) then
pea = pea - qdg
end

if utc:IsKeyDown(Enum.KeyCode.D) then
pea = pea + sfvi
end

if utc:IsKeyDown(Enum.KeyCode.A) then
pea = pea - sfvi
end
end

local podx = 0

if utc:IsKeyDown(Enum.KeyCode.Space) then
podx = 1
elseif utc:IsKeyDown(Enum.KeyCode.LeftControl) then
podx = -1
end

local rndf = bch.fly.speed or 55
local rog = pea * rndf * sz + Vector3.new(0, podx * rndf * 0.6 * sz, 0)

if rog.Magnitude < 0.001 then
return
end

drbg.CFrame = drbg.CFrame + rog
drbg.AssemblyLinearVelocity = Vector3.zero
end)

return _d("fw8IGQodQw")
end

function bch.go(nfc)
bch.hold()

if nfc.kind == _d("TgwDVQE") then
pcall(function()
ioe.TeleportToWorld:FireServer(nfc.arg)
end)

return _d("agYfTUUHBVxD") .. nfc.name .. _d("GRcUVQADAksXXw")
end

if nfc.kind == _d("UBAdWAsX") then
pcall(function()
ioe.FishingIslandTeleport:FireServer(nfc.arg)
end)

return _d("agYfTUUHBVxD") .. nfc.name .. _d("GRcUVQADAksXXw") .. tostring(nfc.note or _d(""))
end

local ugbe = bch.point(nfc)
local hlxr = ovr.Character
local rf = hlxr and hlxr:FindFirstChild(_d("cRYcWAscBF0xHlYRIwxLFw"))

if ugbe and rf and (rf.Position - ugbe).Magnitude > 1500 then
pcall(function()
if nfc.island then
ioe.FishingIslandTeleport:FireServer(nfc.island)
else
ioe.TeleportToWorld:FireServer(_d("VQwTWxw"))
end
end)

task.wait(nfc.island and 3.5 or 4.5)

ugbe = bch.point(nfc)

rf = ovr.Character and ovr.Character:FindFirstChild(_d("cRYcWAscBF0xHlYRIwxLFw"))

if ugbe and rf and (rf.Position - ugbe).Magnitude > 1500 then
return nfc.name .. _d("GQoCGQodTQ") .. tostring(nfc.island or _d("TQsUGQkcD1sa"))
.. _d("GU5RTQ0WTV4CHFxFAQhfFgJcFlMZUQIFGREBBElDBFcRGgEZCgUZDRIeGQEUXAtTH1wCElEAF01WDRJcSw")
end
end

if not ugbe then
return nfc.name .. _d("GQoCGQscGRkKHxkRGwRKQwZWFx8JFw")
end

if not bch.standAt(ugbe) then
return _d("dwxRWg0SH1gABVwXUxlWQxxWExZD")
end

task.delay(bch.holdFor + 2, function()
pcall(bch.resume)
end)

return _d("ahceVgFTD1wQGF0AUw") .. nfc.name .. _d("Fw")
end

bch.islandSection = tgzc:Section({ Side = _d("dQYXTQ") })
bch.islandSection:Header({ Name = _d("cBAdWAsXHhmT7rb4nNW2") })

bch.npcSection = tgzc:Section({ Side = _d("awoWURE") })
bch.npcSection:Header({ Name = _d("dzMySkWD8qru") })

for cgod, dnf in ipairs(bch.islands) do
bch.islandSection:Button({
Name = dnf.name,
Callback = function()
task.spawn(function()
local wjb = bch.go(dnf)

vdzw:Notify({
Title = _d("bQYdXBUcH00"),
Description = wjb,
Lifetime = 6,
})
end)
end,
})
end

bch.state = ic
bch.tab = tgzc
bch.islandSection:Button({
Name = _d("bA0dVgYYTVgPHRkMAAFYDRVK"),
Callback = function()
task.spawn(function()
local gb = bch.unlock()

vdzw:Notify({
Title = _d("cBAdWAsXHg"),
Description = gb,
Lifetime = 10,
})
end)
end,
})

bch.flySection = tgzc:Section({ Side = _d("dQYXTQ") })
bch.flySection:Header({ Name = _d("fw8IGYfv5dbb/g") })

bch.flySection:Toggle({
Name = _d("fw8IGU0kLGonXRk2AwxaBlFMFV9NehcDVUUXAk4NWA"),
Default = false,
Callback = function(hv)
local ntut = bch.flyToggle(hv)

vdzw:Notify({
Title = _d("fw8I"),
Description = ntut,
Lifetime = 4,
})
end,
}, _d("WAATQToVAUA"))

getgenv().ACBXTeleport = bch

getgenv().ACBXDeepWater = bnt

pcall(bnt.dropStale)

for kpsk, nfw in ipairs(bch.npcs) do
bch.npcSection:Button({
Name = nfw.name,
Callback = function()
task.spawn(function()
local ha = bch.go(nfw)

vdzw:Notify({
Title = _d("bQYdXBUcH00"),
Description = ha,
Lifetime = 6,
})
end)
end,
})
end

local kvqn = cmx:Section({ Side = _d("dQYXTQ") })

kvqn:Header({ Name = _d("fQoWXgwdChmB6raKy+I") })

local eg = {
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

local wcn = (tonumber(getgenv().ACBXDigGeneration) or 0) + 1
getgenv().ACBXDigGeneration = wcn

function eg.read()
local qlu, uhc = pcall(function()
return ioe.DigGetState:InvokeServer()
end)

return qlu and type(uhc) == _d("TQITVQA") and uhc or nil
end

function eg.call(es, el)
local aow, ldns = pcall(function()
return ioe.DigShop:InvokeServer(es, el)
end)

task.wait(2.5)

return aow and ldns == true
end

function eg.wear()
local txkp = ovr.Character

if not txkp then
return false
end

local ggl = txkp:FindFirstChildOfClass(_d("cRYcWAscBF0"))
local bjmz = ovr:FindFirstChild(_d("ewISUhUSDlI"))

if not (ggl and bjmz) then
return false
end

ggl:UnequipTools()
task.wait(0.4)

for edk = 1, 8 do
for mea, gwg in ipairs(bjmz:GetChildren()) do
if gwg:IsA(_d("bQweVQ")) and gwg.Name:find(_d("ZycYXjYbAk8GHQ")) then
ggl:EquipTool(gwg)

return true
end
end

task.wait(0.5)
end

return false
end

function eg.run()
local ps = eg.read()

if not ps then
return _d("bQsUGQEaChkQGVYVUwRKQx9WEVMMVxAGXBcaA15N")
end

local izbk = {}

pcall(function()
local dluc = ioe.FishingGetState:InvokeServer()

izbk = dluc and dluc.areas or {}
end)

if not (izbk.abandoned_island and izbk.twin_beaches and izbk.windmill_isle) then
bch.unlock()
task.wait(1)
end

local bbja

for jpu, fgq in ipairs(bch.npcs) do
if fgq.name == _d("fQoWXgAB") then
bbja = fgq
break
end
end

if not bbja then
return _d("bQsUGTEBCFgQBEsAUyVMDQVcF1MESkMfVhFTBFdDBVEMAE1ODANVAV0")
end

bch.go(bbja)
task.wait(2)

local qjqe = ovr.Character
local oom = qjqe and qjqe:FindFirstChild(_d("cRYcWAscBF0xHlYRIwxLFw"))
local oqt = bch.point(bbja)

if not (oom and oqt) or (oom.Position - oqt).Magnitude > 40 then
return _d("egwEVQFTA1YXUUsAEg5RQwVRAFM5SwYQShABCBkrBFcRFh8X")
end

ps = eg.read() or ps

local gq = false
local wjp = ps.shovels and ps.shovels.shovel_basic == true
local kte = ps.detectors and ps.detectors.detector_basic == true

if not (wjp and kte) then
gq = eg.call(_d("eg8QUAggGVgRBVwX"), _d("SgseTwAfMlsCAlAG"))
ps = eg.read() or ps
end

if ps.equippedShovel ~= _d("SgseTwAfMlsCAlAG") then
eg.call(_d("fBIEUBUgBVYVFFU"), _d("SgseTwAfMlsCAlAG"))
end

if ps.equippedDetector ~= _d("XQYFXAYHAks8E1gWGg4") then
eg.call(_d("fBIEUBU3CE0GEk0KAQ"), _d("XQYFXAYHAks8E1gWGg4"))
end

ps = eg.read() or ps

if ps.equippedShovel == _d("SgseTwAfMlsCAlAG") and ps.equippedDetector == _d("XQYFXAYHAks8E1gWGg4") then
local pisw = eg.wear()
local qlpt = false

if pisw and ic.enabled then
ic.autoFishWanted = false
qlpt = true

fzu(false)

pcall(function()
xlxa:UpdateState(false)
end)
end

return (gq and _d("eg8QUAgWCRkCH11FFhxMCgFJABc") or _d("fBIEUBUDCF0"))
.. _d("GRcZXEUxDEoKEhk2GwJPBh0ZBB0JGSEQSgwQTX0GBVwGBwJLTQ")
.. (qlpt and _d("GSIETQpTK1AQGRkKFQsZTlFNDRZNSgseTwAfTVECAhkRGwgZFx5WCVMeVQwFFw") or _d(""))
end

return _d("bQsUGScSHlAAUWoNHBtcD1FWF1MpXBcUWhEcHxkKAhkWBwRVD1FUDAAeUA0WFw")
end

function eg.unlock()
if eg.busy then
return _d("eA8DXAQXFBkUHksOGgNeTQ")
end

eg.busy = true

local mkg, vd = pcall(eg.run)

eg.busy = false

if not mkg then
return _d("fQoWXgwdChkFEFAJFgkDQw") .. tostring(vd)
end

return vd
end

eg.icon = function()
local rsjm = gethui()

for tgv, ipq in ipairs(rsjm:QueryDescendants(_d("cA4QXgA/DFsGHQ"))) do
if ipq.Name == _d("bQITcAgSClw") then
local uxnn = ipq.Parent
local jkfn = uxnn and uxnn:FindFirstChild(_d("bQITahIaGVoLFEsrEgBc"))

if jkfn and jkfn.Text == _d("fQoWXgwdCg") then
if ipq:GetAttribute(_d("eCAzYSEaCnAAHlc")) then
return true
end

ipq:SetAttribute(_d("eCAzYSEaCnAAHlc"), true)
ipq.Image = _d("")
ipq.BackgroundTransparency = 1

local zrzc = Color3.fromRGB(233, 236, 242)

for mmgq, juuc in ipairs(rsjm:QueryDescendants(_d("cA4QXgA/DFsGHQ"))) do
if juuc.Name == _d("bQITcAgSClw") and juuc ~= ipq and juuc.Image ~= _d("") then
zrzc = juuc.ImageColor3
break
end
end

local function gxf(lkh, qbsv, uyve, rpbz, uncw, ubwp)
local tvtd = Instance.new(_d("fxEQVAA"))

tvtd.Size = UDim2.fromOffset(uyve, rpbz)
tvtd.Position = UDim2.fromOffset(lkh, qbsv)
tvtd.BackgroundColor3 = zrzc
tvtd.BorderSizePixel = 0
tvtd.Parent = ipq

if ubwp then
tvtd.Rotation = ubwp
end

if uncw then
local hgpx = Instance.new(_d("bCoyVhcdCEs"))

hgpx.CornerRadius = UDim.new(0, uncw)
hgpx.Parent = tvtd
end

return tvtd
end

gxf(1.1, 10.2, 7, 6.4, 1.6, -45)
gxf(3.1, 8.3, 11, 2.2, 0.8, -45)
gxf(9.8, 4.4, 5.6, 2, 0.8, 45)

return true
end
end
end

return false
end

task.defer(function()
for vyc = 1, 20 do
if eg.icon() then
break
end

task.wait(0.25)
end
end)

kvqn:Button({
Name = _d("bA0dVgYYTV0KFl4MHQo"),
Callback = function()
task.spawn(function()
vdzw:Notify({
Title = _d("fQoWXgwdCg"),
Description = _d("cQYQXQwdChkXHhkRGwgZNwNcBAAYSwZRcRAdGVwRXw"),
Lifetime = 5,
})

local soa = eg.unlock()

vdzw:Notify({
Title = _d("fQoWXgwdCg"),
Description = soa,
Lifetime = 10,
})
end)
end,
})

eg.statusParagraph = kvqn:Paragraph({
Header = _d("fQoWGRYHDE0G"),
Body = _d("awYQXQwdChkXGVxFFwReQwJYExZDF00"),
})

eg.data = require(phy.ModuleScripts.DigData)

function eg.zoneAt(uxic)
for tjx, kjn in ipairs(game:GetService(_d("egwdVQAQGVAMH2oAARtQABQ")):GetTagged(eg.data.ZoneTag)) do
if kjn:IsA(_d("ewICXDUSH00")) and kjn:IsDescendantOf(workspace) then
local cekh = kjn.CFrame:PointToObjectSpace(uxic)
local yhud = kjn.Size * 0.5

if math.abs(cekh.X) <= yhud.X and math.abs(cekh.Y) <= yhud.Y and math.abs(cekh.Z) <= yhud.Z then
return true
end
end
end

return false
end

function eg.onIsland()
for sh, jtr in ipairs(game:GetService(_d("egwdVQAQGVAMH2oAARtQABQ")):GetTagged(eg.data.ZoneTag)) do
if jtr:IsA(_d("ewICXDUSH00")) and jtr:IsDescendantOf(workspace) then
return true
end
end

return false
end

function eg.bestShovel(gtae)
local ujjk = gtae and gtae.shovels or {}
local vlkk = nil

for exf, oq in ipairs(eg.data.Shovels) do
if ujjk[oq.id] == true then
vlkk = oq.id
end
end

return vlkk
end

function eg.equipBest()
local ksh = eg.read()
local ajcn = eg.bestShovel(ksh)

if not ajcn then
return nil
end

if ksh.equippedShovel ~= ajcn then
eg.call(_d("fBIEUBUgBVYVFFU"), ajcn)
end

eg.wear()

return ajcn
end

function eg.bestDetector(kr)
local jim = kr and kr.detectors or {}
local bteu = nil

for fxl, fski in ipairs(eg.data.Detectors) do
if jim[fski.id] == true then
bteu = fski.id
end
end

return bteu
end

function eg.equipBestDetector()
local rzxd = eg.read()
local rbq = eg.bestDetector(rzxd)

if not rbq then
return nil
end

if rzxd.equippedDetector ~= rbq then
eg.call(_d("fBIEUBU3CE0GEk0KAQ"), rbq)
end

return rbq
end

function eg.leaveNpc()
local ryvq = ovr.Character
local ycn = ryvq and ryvq:FindFirstChild(_d("cRYcWAscBF0xHlYRIwxLFw"))
local wnts = ryvq and ryvq:FindFirstChildOfClass(_d("cRYcWAscBF0"))

if not (ycn and wnts) then
return false
end

local bgq

for lpkw, hqjt in ipairs(bch.npcs) do
if hqjt.name == _d("fQoWXgAB") then
bgq = hqjt
break
end
end

local vzwu = bgq and bch.point(bgq)

if not vzwu then
return false
end

local goq = Vector3.new(ycn.Position.X - vzwu.X, 0, ycn.Position.Z - vzwu.Z)

if goq.Magnitude >= 16 then
return true
end

if goq.Magnitude < 1 then
goq = Vector3.new(0, 0, -1)
end

goq = goq.Unit

local ao = Vector3.new(vzwu.X + goq.X * 22, ycn.Position.Y, vzwu.Z + goq.Z * 22)
local bgr = os.clock() + 6

wnts:MoveTo(ao)

while os.clock() < bgr do
local zsg = ovr.Character
local meqf = zsg and zsg:FindFirstChild(_d("cRYcWAscBF0xHlYRIwxLFw"))

if not meqf or (meqf.Position - ao).Magnitude < 4 then
break
end

task.wait(0.15)
end

pcall(function()
wnts:MoveTo(ycn.Position)
end)

return true
end

function eg.goToSand(ovc)

if ovc or not eg.onIsland() then
if not ovc then

pcall(function()
ioe.TeleportToWorld:FireServer(_d("VQwTWxw"))
end)

local hsm = os.clock() + 15

while not eg.onIsland() and os.clock() < hsm do
task.wait(0.5)
end
end

local pzm

for pzx, owi in ipairs(bch.npcs) do
if owi.name == _d("fQoWXgAB") then
pzm = owi
break
end
end

if pzm then
bch.go(pzm)
task.wait(2)
end
end

if eg.onIsland() then
eg.leaveNpc()
end
end

function eg.spot()
local wfes = ovr.Character
local ow = wfes and wfes:FindFirstChild(_d("cRYcWAscBF0xHlYRIwxLFw"))

if not ow then
return nil
end

local mr = ow.CFrame.LookVector
local sjmi = Vector3.new(mr.X, 0, mr.Z)

if sjmi.Magnitude < 0.01 then
sjmi = Vector3.new(0, 0, -1)
end

sjmi = sjmi.Unit

local fetk = RaycastParams.new()
fetk.FilterType = Enum.RaycastFilterType.Exclude
fetk.FilterDescendantsInstances = { wfes }

local function ij(zvbf, yba)
local szjk = ow.Position + zvbf * yba + Vector3.new(0, 4, 0)
local kiiy = workspace:Raycast(szjk, Vector3.new(0, -18, 0), fetk)

if kiiy and eg.zoneAt(kiiy.Position) then
return kiiy.Position
end
end

for knvu, dwm in ipairs({ 4, 7, 10, 2 }) do
local pwj = ij(sjmi, dwm)

if pwj then
return pwj
end
end

local dbm = Vector3.new(-sjmi.Z, 0, sjmi.X)

for anjt, pqkh in ipairs({ 4, 8 }) do
for ez, oe in ipairs({ 1, -1 }) do
for ylbh, bup in ipairs({ 1, 0.5 }) do
local pmc = ij((dbm * (oe * bup) + sjmi * (1 - bup)).Unit, pqkh)

if pmc then
return pmc
end
end
end
end

return nil
end

function eg.turn()
local xumi = ovr.Character
local zqua = xumi and xumi:FindFirstChild(_d("cRYcWAscBF0xHlYRIwxLFw"))

if not zqua then
return
end

local ksob = zqua.CFrame.LookVector
local sne = Vector3.new(ksob.X, 0, ksob.Z)

if sne.Magnitude < 0.01 then
sne = Vector3.new(0, 0, -1)
end

sne = sne.Unit

local mxns = Vector3.new(-sne.Z, 0, sne.X)

zqua.CFrame = CFrame.lookAt(zqua.Position, zqua.Position + mxns)
end

eg.misses = 0

eg.pending = false

eg.spots = {}
eg.treasures = {}

local function rucl(cgk)
local bzqe = {}
local epyz = {}

for dvqi, kfwb in pairs(cgk) do
local hlc
local idog

if typeof(kfwb) == _d("bwYSTQoBXg") or typeof(kfwb) == _d("eiUDWAgW") then
hlc = dvqi
idog = kfwb
elseif type(kfwb) == _d("TQITVQA") then
hlc = kfwb.id or kfwb.Id or kfwb[1]
idog = kfwb.position or kfwb.Position or kfwb.pos or kfwb[2]
end

if typeof(idog) == _d("eiUDWAgW") then
idog = idog.Position
end

if hlc ~= nil and typeof(idog) == _d("bwYSTQoBXg") then
table.insert(bzqe, { id = hlc, position = idog, spot = true })
epyz[hlc] = true
end
end

return bzqe, epyz
end

pcall(function()
jdcu(ioe.DigUpdate.OnClientEvent, function(kus, pmn)
if kus == _d("fQoWawAAGFUX") then
eg.pending = false
eg.resultAt = os.clock()
elseif kus == _d("fQoWegQdDlwP") then
eg.pending = false
end

if (kus == _d("ahMeTRY") or kus == _d("bREUWBYGH1wQ")) and type(pmn) == _d("TQITVQA") then
local aqki, kzcc = rucl(pmn)

if kus == _d("ahMeTRY") then
for fne, ftlq in ipairs(aqki) do
ftlq.spot = true
end

eg.spots = aqki
eg.reportedSpots = kzcc
else
eg.treasures = aqki

for zume, yrtg in ipairs(aqki) do
yrtg.spot = nil
end

eg.reported = kzcc
end

local mrs = eg.target

if mrs and not mrs.mark then
local xjer = mrs.spot and eg.reportedSpots or eg.reported

if xjer and not xjer[mrs.id] then
eg.targetGone = true
end
end
end
end)
end)

function eg.withinDig(zvrx)
local egky = ovr.Character
local nr = egky and egky:FindFirstChild(_d("cRYcWAscBF0xHlYRIwxLFw"))

if not nr then
return false
end

return (nr.Position - zvrx).Magnitude <= 10
end

eg.markGone = {}

function eg.marked()
local qro = workspace:FindFirstChild(_d("fQoWdAQBBko"))
local wdkj = {}

if not qro then
return wdkj
end

local wbtk = os.clock()

for neip, ygn in ipairs(qro:GetChildren()) do
if ygn.Name == _d("YS4QSw4") and ygn:IsA(_d("ewICXDUSH00")) then
local ykod = ygn.Position
local la = string.format(_d("VAIDUl9WQwkFSxxLQws"), ykod.X, ykod.Z)
local tr = eg.markGone[la]

if not (tr and wbtk - tr < 90) then
table.insert(wdkj, { id = la, position = ykod, mark = true })
end
end
end

return wdkj
end

function eg.chests()
local kfya = {}

for dciq, omxv in ipairs(eg.spots or {}) do
table.insert(kfya, omxv)
end

for is, oxu in ipairs(eg.treasures or {}) do
table.insert(kfya, oxu)
end

for swd, shv in ipairs(eg.marked()) do
local qpuw = false

for bxvm, xwht in ipairs(kfya) do
if (xwht.position - shv.position).Magnitude < 2 then
qpuw = true

break
end
end

if not qpuw then
table.insert(kfya, shv)
end
end

return kfya
end

function eg.release(gmi)
if gmi.mark then
eg.markGone[gmi.id] = os.clock()
else
eg.forget(gmi)
end
end

function eg.nearestChest(svi)
local tq = ovr.Character
local jovn = tq and tq:FindFirstChild(_d("cRYcWAscBF0xHlYRIwxLFw"))

if not jovn then
return nil
end

local aljf
local kbsb

for xdao, cejk in ipairs(eg.chests()) do
local zn = (cejk.position - jovn.Position).Magnitude

if zn <= svi and (not kbsb or zn < kbsb) then
aljf = cejk
kbsb = zn
end
end

return aljf
end

function eg.forget(rd)
for wpg, eksv in ipairs({ eg.spots or {}, eg.treasures or {} }) do
for szhi, zr in ipairs(eksv) do
if zr.id == rd.id then
table.remove(eksv, szhi)

return
end
end
end
end

function eg.walkTo(smqy)
local nqcy = ovr.Character
local lmhm = nqcy and nqcy:FindFirstChild(_d("cRYcWAscBF0xHlYRIwxLFw"))
local vdu = nqcy and nqcy:FindFirstChildOfClass(_d("cRYcWAscBF0"))

if not (lmhm and vdu) then
return false
end

local fhc = os.clock() + 12
local mchc = (lmhm.Position - smqy).Magnitude
local ywk = os.clock()
local sud = false

pcall(function()
vdu:MoveTo(smqy)
end)

while os.clock() < fhc do
local dcf = ovr.Character
local atg = dcf and dcf:FindFirstChild(_d("cRYcWAscBF0xHlYRIwxLFw"))

if not atg then
break
end

local sefg = (atg.Position - smqy).Magnitude

if sefg <= 4 then
sud = true

break
end

if eg.targetGone or not eg.autoOn
or getgenv().ACBXDigGeneration ~= wcn or not tpm() then
break
end

if sefg < mchc - 1 then
mchc = sefg
ywk = os.clock()
elseif os.clock() - ywk > 1.5 then
break
end

task.wait(0.15)
end

pcall(function()
vdu:MoveTo(lmhm.Position)
end)

return sud
end

function eg.digAt(uzv)
eg.misses = 0
eg.pending = true

local xgwf = os.clock()
local byg = pcall(function()
ioe.DigAction:FireServer(_d("ahcQSxE"), uzv)
end)

if not byg then
eg.pending = false
end

local rdg = os.clock() + 6

while eg.pending and eg.autoOn and os.clock() < rdg
and getgenv().ACBXDigGeneration == wcn and tpm() do
task.wait()
end

eg.pending = false

return (eg.resultAt or 0) >= xgwf
end

function eg.autoLoop()
local bue = false

while eg.autoOn and tpm() and getgenv().ACBXDigGeneration == wcn do
local enun = kc and kc.worldBoss
local lz = enun ~= nil
and type(enun.holdsDigging) == _d("XxYfWhEaAlc")
and enun.holdsDigging() == true

if eg.shopping then

task.wait(0.5)
elseif lz or drcb.digBlocked() then

bue = true
task.wait(1)
else
if bue then

bue = false

if type(enun.setRepeat) == _d("XxYfWhEaAlc") then
enun.setRepeat(false)
end

eg.goToSand()
end

local eov = eg.chestOn and eg.nearestChest(2500) or nil
local nde = false

if eov then
eg.target = eov
eg.targetGone = false

local php = ovr.Character and ovr.Character:FindFirstChild(_d("cRYcWAscBF0xHlYRIwxLFw"))
local hxu = php and (php.Position - eov.position).Magnitude or 999

if hxu > 45 then
pcall(function()
bch.standAt(eov.position)
end)

task.wait(0.6)
end

if not eg.walkTo(eov.position) and not eg.targetGone then
pcall(function()
bch.standAt(eov.position)
end)

task.wait(0.6)
eg.walkTo(eov.position)
end

local qpn = not eg.withinDig(eov.position)
local xabr = eg.targetGone

if xabr or qpn then
eg.strikes = xabr and 0 or (eg.strikes + 1)

if xabr or eg.strikes >= 2 then
eg.strikes = 0
eg.release(eov)
eg.skipped = eg.skipped + 1
end
else

if eg.digAt(eov.position) then
eg.strikes = 0
eg.release(eov)
eg.dug = eg.dug + 1
nde = true
else

eg.strikes = eg.strikes + 1

if eg.strikes >= 3 then
eg.strikes = 0
eg.release(eov)
eg.skipped = eg.skipped + 1
end
end
end

eg.target = nil
eg.targetGone = false
end

if not nde then
local xr = eg.spot()

if xr then
eg.digAt(xr)
else

eg.misses = (eg.misses or 0) + 1

if eg.misses >= 4 then
eg.misses = 0
eg.goToSand(true)
else
eg.turn()
task.wait(0.25)
end
end
end
end
end
end

function eg.autoStart()
local tezn = eg.read()

if not (tezn and eg.bestShovel(tezn)) then
return _d("dwxRSg0cG1wPUVYSHQhdQ1wZMB0BVgAaGQEaCl4KH15FFQRLEAUX")
end

local olh = false

if ic.enabled then
ic.autoFishWanted = false

fzu(false)
pcall(function()
xlxa:UpdateState(false)
end)

olh = true
end

zxpz = true
eg.equipBest()

if eg.chestOn then
pcall(eg.equipBestDetector)
end

eg.goToSand()

task.spawn(eg.autoLoop)

return _d("fQoWXgwdChc") .. (olh and _d("GSIETQpTK1AQGRkKFQsZTlFNDRZNSgseTwAfTVECAhkRGwgZFx5WCVMeVQwFFw") or _d(""))
end

function eg.toggleAuto(wa, eyu)
if wa then
local xjww = eg.autoOn == true

eg.chestOn = eyu == true
eg.switching = true

pcall(function()
local zjn = eyu and eg.autoToggle or eg.chestToggle

if zjn then
zjn:UpdateState(false)
end
end)

eg.switching = false

if xjww then
return
end

eg.autoOn = true

task.spawn(function()
local hnz = eg.autoStart()

vdzw:Notify({
Title = eyu and _d("eBYFVkU3BF5DMlEAABlK") or _d("eBYFVkU3BF4"),
Description = hnz,
Lifetime = 6,
})
end)
else

if eg.switching then
return
end

eg.autoOn = false
eg.pending = false
zxpz = false
end
end

eg.autoToggle = kvqn:Toggle({
Name = _d("eBYFVkU3BF4"),
Default = false,
Callback = function(wxvc)
eg.toggleAuto(wxvc, false)
end,
}, _d("XQoWXgwdCmYCBE0K"))

eg.chestToggle = kvqn:Toggle({
Name = _d("eBYFVkU3BF5DMlEAABlK"),
Default = false,
Callback = function(hkm)
eg.toggleAuto(hkm, true)
end,
}, _d("XQoWXgwdCmYCBE0KLA5RBgJN"))

eg.chestParagraph = kvqn:Paragraph({
Header = _d("egsUShEA"),
Body = _d("bREQWg4WCQNDQRlIUylMBEsZVVNAGTAaUBUDCF1ZUQk"),
})

task.spawn(function()
local errq

while tpm() and tyr do
local hlh = #eg.chests()
local gye = _d("bREQWg4WCQND") .. hlh .. _d("GU5RfRAUVxk") .. eg.dug .. _d("GU5Rag4aHUkGFQNF") .. eg.skipped

if eg.chestOn and hlh > 0 then
local zcbb = eg.nearestChest(2500)
local wvy = ovr.Character
local idep = wvy and wvy:FindFirstChild(_d("cRYcWAscBF0xHlYRIwxLFw"))

if zcbb and idep then
local dvkd = math.floor((zcbb.position - idep.Position).Magnitude)
gye = gye .. _d("My0UWBcWHk1ZUQ") .. dvkd .. (dvkd > 45 and _d("GRAFTAEATRELHklM") or _d("GRAFTAEA"))
end
end

if gye ~= errq then
errq = gye

pcall(function()
eg.chestParagraph:UpdateBody(gye)
end)
end

task.wait(0.5)
end
end)

function eg.npcRow()
for mqw, yphp in ipairs(bch.npcs) do
if yphp.name == _d("fQoWXgAB") then
return yphp
end
end
end

function eg.shop(ivbw, ydh)
local hxy, href, xq, aed = pcall(function()
return ioe.DigShop:InvokeServer(ivbw, ydh)
end)

if not hxy then
return false, _d("bQsUGQEaChkQGVYVUwRKQx9WEVMMVxAGXBcaA15N")
end

return href == true, xq, type(aed) == _d("TQITVQA") and aed or nil
end

function eg.pickShovel(scsy)
local wwuz = scsy.shovels or {}
local xd = tonumber(scsy.digs) or 0
local moqa

for xg, xkm in ipairs(eg.data.Shovels) do
if not xkm.crafted and xkm.id ~= _d("SgseTwAfMlsCAlAG") and wwuz[xkm.id] ~= true then
local ssjr = tonumber(xkm.cost) or math.huge

if ssjr <= xd and (not moqa or ssjr > (tonumber(moqa.cost) or 0)) then
moqa = xkm
end
end
end

return moqa
end

function eg.pickDetector(tcr)
local og = tcr.detectors or {}
local dwq = tonumber(tcr.digs) or 0
local lw

for sg, dszo in ipairs(eg.data.Detectors) do
if not dszo.crafted and dszo.id ~= _d("XQYFXAYHAks8E1gWGg4") and og[dszo.id] ~= true then
local adsf = tonumber(dszo.cost) or math.huge

if adsf <= dwq and (not lw or adsf > (tonumber(lw.cost) or 0)) then
lw = dszo
end
end
end

return lw
end

function eg.nextDef(fxr, qw)
local uhk

for cskj, jc in ipairs(fxr) do
local zpom = tonumber(jc.cost)

if not jc.crafted and zpom and qw[jc.id] ~= true then
if not uhk or zpom < (tonumber(uhk.cost) or math.huge) then
uhk = jc
end
end
end

return uhk
end

function eg.toCounter()
local cyk = eg.npcRow()
local vola = cyk and bch.point(cyk)
local ncmk = ovr.Character
local fky = ncmk and ncmk:FindFirstChild(_d("cRYcWAscBF0xHlYRIwxLFw"))

if not (vola and fky) then
return false
end

if (fky.Position - vola).Magnitude <= 20 then
return true
end

bch.go(cyk)
task.wait(2.2)

ncmk = ovr.Character
fky = ncmk and ncmk:FindFirstChild(_d("cRYcWAscBF0xHlYRIwxLFw"))

return fky ~= nil and (fky.Position - vola).Magnitude <= 20
end

function eg.upgradeAll()
local trii = eg.buyOn == true
local gqw = eg.detBuyOn == true

if not (trii or gqw) then
return nil, _d("dgUXFw")
end

local hjs = eg.read()

if not hjs then
return nil, _d("bQsUGQEaChkQGVYVUwRKQx9WEVMMVxAGXBcaA15N")
end

if trii then
local eocv = eg.bestShovel(hjs)

if eocv and hjs.equippedShovel ~= eocv then
eg.equipBest()
end
end

if gqw then
local fyrg = eg.bestDetector(hjs)

if fyrg and hjs.equippedDetector ~= fyrg then
eg.equipBestDetector()
end
end

local ewrp = trii and eg.pickShovel(hjs) or nil
local luso = gqw and eg.pickDetector(hjs) or nil

if not (ewrp or luso) then
return nil, _d("dwxRTBUUH1gHFBkMAE1YBRdWFxcMWw8UGRwWGRc")
end

eg.shopping = true
eg.toCounter()

local upb = {}
local hp

local function zehi(kuwu, fyqc)
if not fyqc then
return
end

local tkvj, yuh = eg.shop(kuwu, fyqc.id)

if tkvj then
table.insert(upb, fyqc.name)
elseif not hp then
hp = tostring(yuh)
end
end

zehi(_d("exYIag0cG1wP"), ewrp)
zehi(_d("exYIfQAHCFoXHks"), luso)

if #upb == 0 then
eg.shopping = false

return nil, _d("exYIGRcWC0wQFF1fUw") .. (hp or _d("VwxRWAsAGlwR"))
end

if trii then
eg.equipBest()
end

if gqw then
eg.equipBestDetector()
end

if eg.autoOn then
eg.leaveNpc()
end

eg.shopping = false

return table.concat(upb, _d("GUhR"))
end

function eg.buyLoop()
while eg.buyOn or eg.detBuyOn do
local cgp, ekc, bww = pcall(eg.upgradeAll)

eg.shopping = false

if not cgp then
task.wait(10)
elseif ekc then
vdzw:Notify({
Title = _d("eBYFVkUxGEBDNVACFARXBFF+ABIf"),
Description = _d("ewwEXg0HTVgNFRkAAhhQEwFcAVMZUQZR") .. ekc .. _d("Fw"),
Lifetime = 6,
})

task.wait(3)
else
task.wait(bww == _d("dgUXFw") and 0.5 or 10)
end
end
end

function eg.syncBuyLoop()
if not (eg.buyOn or eg.detBuyOn) or eg.buyRunning then
return
end

eg.buyRunning = true

task.spawn(function()
eg.buyLoop()

eg.buyRunning = false
end)
end

kvqn:Toggle({
Name = _d("eBYFVkUxGEBDM1wWB01qCx5PAB8"),
Default = false,
Callback = function(npw)
eg.buyOn = npw
eg.syncBuyLoop()
end,
}, _d("XQoWXgwdCmYBBEA"))

kvqn:Toggle({
Name = _d("eBYFVkUxGEBDM1wWB019BgVcBgcCSw"),
Default = false,
Callback = function(nscr)
eg.detBuyOn = nscr
eg.syncBuyLoop()
end,
}, _d("XQoWXgwdCmYBBEA6FwhNBhJNCgE"))

function eg.statusText()
local yrcf = eg.read()

if not yrcf then
return _d("bQsUGQEaChkQGVYVUwRKQx9WEVMMVxAGXBcaA15N")
end

local yj = tonumber(yrcf.digs) or 0
local jmsn = { _d("fQoWSl9T") .. yj }

local function hmw(ahgi, siff)
if not siff then
return ahgi .. _d("A0MUTwABFE0LGFcCUwJODRRdSw")
end

local wgi = tonumber(siff.cost) or 0
local jgz = wgi - yj

return ahgi .. _d("A0M") .. tostring(siff.name) .. _d("GU5R") .. wgi
.. (jgz <= 0 and _d("GUsDXAQXFBA") or (_d("GUs") .. jgz .. _d("GRceGQIcRA")))
end

table.insert(jmsn, hmw(_d("dwYJTUUABVYVFFU"), eg.nextDef(eg.data.Shovels, yrcf.shovels or {})))
table.insert(jmsn, hmw(_d("dwYJTUUXCE0GEk0KAQ"), eg.nextDef(eg.data.Detectors, yrcf.detectors or {})))

return table.concat(jmsn, _d("Mw"))
end

task.spawn(function()
while tpm() and tyr do
local led, ioh = pcall(eg.statusText)

if led and eg.statusParagraph then
pcall(function()
eg.statusParagraph:UpdateBody(ioh)
end)
end

task.wait(6)
end
end)

getgenv().ACBXDigging = eg

dwrz.tab = gwq:Tab({
Name = _d("agYFTQwdCko"),

Image = _d(""),
})

dwrz.icon = function()
local fud = gethui()

for ddxv, lqn in ipairs(fud:QueryDescendants(_d("cA4QXgA/DFsGHQ"))) do
if lqn.Name == _d("bQITcAgSClw") then
local qyhc = lqn.Parent
local cxai = qyhc and qyhc:FindFirstChild(_d("bQITahIaGVoLFEsrEgBc"))

if cxai and cxai.Text == _d("agYFTQwdCko") then
if lqn:GetAttribute(_d("eCAzYSYcCnAAHlc")) then
return true
end

lqn:SetAttribute(_d("eCAzYSYcCnAAHlc"), true)
lqn.Image = _d("")
lqn.BackgroundTransparency = 1

local uny = Color3.fromRGB(168, 170, 176)

local function mlgh(kia, rcuf, izxw, mhtc, wqaq, bvl)
local uzop = Instance.new(_d("fxEQVAA"))

uzop.Size = UDim2.fromOffset(izxw, mhtc)
uzop.Position = UDim2.fromOffset(kia, rcuf)
uzop.BackgroundColor3 = uny
uzop.BorderSizePixel = 0
uzop.Parent = lqn

if not bvl then
uzop.BackgroundTransparency = 1

local dxtv = Instance.new(_d("bCoiTRccBlw"))

dxtv.Color = uny
dxtv.Thickness = 1.3
dxtv.LineJoinMode = Enum.LineJoinMode.Round
dxtv.Parent = uzop
end

if wqaq then
local ytpd = Instance.new(_d("bCoyVhcdCEs"))

ytpd.CornerRadius = UDim.new(0, wqaq)
ytpd.Parent = uzop
end

return uzop
end

local ujuo = {
{ 8, 0, 2, 3 },
{ 8, 15, 2, 3 },
{ 0, 8, 3, 2 },
{ 15, 8, 3, 2 },
{ 2, 2, 3, 3 },
{ 13, 2, 3, 3 },
{ 2, 13, 3, 3 },
{ 13, 13, 3, 3 },
}

for empq, cmn in ipairs(ujuo) do
mlgh(cmn[1], cmn[2], cmn[3], cmn[4], 0, true)
end

mlgh(2, 2, 14, 14, 7, false)
mlgh(7, 7, 4, 4, 2, true)

return true
end
end
end

return false
end

task.defer(function()
for rdar = 1, 20 do
if dwrz.icon() then
break
end

task.wait(0.25)
end
end)

dwrz.prioSection = dwrz.tab:Section({
Side = _d("dQYXTQ"),
})

dwrz.prioSection:Header({
Name = _d("aREYVhcaGUA"),
})

dwrz.prioSection:Paragraph({
Header = _d("bgseGQIcCEpDF1AXABk"),
Body = _d("CEMFWA4WHhkXGVxFEg5aDARXEVMLUBECTUlTWxkUEFARAE1fDAMZAAUISxoTVgEKQxkmEFoNUx9WFFFQFlMMGQ0EVAcWHxkCH11FBwVcQxVLCgMJVhQfGRAdCVwRUVARUwRKQwZRBAdNShcQVwEATU0LFEsAU0AZExhaDlMMGQ0QVABTGVECBRkEHx9cAhVARRsCVQcCGQQdAk0LFEtFHRhUARRLRRIDXUMFUQBTGU4MUUoSEh0XQzAZFxwaGQoCGQ0WAV1DE1gGGE1WDR1ARREUGQJRVwQeCBkCE1YTFk1QF1FNDRIZGQsQSkUAAlQGBVEMHQoZFx4ZARxNSwoWURFTA1YUXzNvIAVWEwIVRR4ISwQYVwJfTVwbAVwBGhlQDB9KRRIDXUMFUQBTH1wQBRkKFU1NCxQZCh0IFBAZVhFTGUsKAUpFEh9cQx9WEVMFXBEUGQodTUkWA0kKAAgDQwVRAApNWA8DXAQXFBkQBVgLF01NCxQZFwYDVwofXkUSGE0MHFgRGgJXQxVWEh1NTgsYVQBTGVEGCBkBHE1NCxRQF1MHVgFf"),
})

dwrz.prioRows = {}

dwrz.prioBuilding = true

local koz = {}

for uqmc, cwy in ipairs(drcb.prioGroups) do
koz[#koz + 1] = cwy.label
end

for tf = 1, #drcb.prioGroups do
local wdnb = nil

pcall(function()
wdnb = dwrz.prioSection:Dropdown({
Name = _d("aREYVhcaGUBD") .. tf,
Search = false,
Multi = false,
Required = false,
Default = tf,
Options = koz,
Callback = function(ntgf)
local xu = type(ntgf) == _d("TQITVQA") and ntgf[1] or ntgf
local hpk

for oal, yzad in ipairs(drcb.prioGroups) do
if yzad.label == xu then
hpk = yzad

break
end
end

if hpk then
dwrz.setPriority(hpk.id, tf)
end
end,
}, _d("SREYVjoBDFcILg") .. tf)
end)

dwrz.prioRows[tf] = wdnb
end

dwrz.prioBuilding = false

dwrz.configSection = dwrz.tab:Section({
Side = _d("dQYXTQ"),
})

dwrz.configSection:Header({
Name = _d("egwfXwwUTXQCH1gCFgBcDQU"),
})

dwrz.autoSaveToggle = dwrz.configSection:Toggle({
Name = _d("eBYFVkUADE8G"),
Default = false,
Callback = function(bc)
dwrz.autoSave = bc
dwrz.autoSaveAt = 0

if bc then
local yr = dwrz.selected or _d("XQYXWBAfGQ")
local pvbt, nlvl = dwrz.save(yr)

dwrz.selected = yr
dwrz.lastText = pvbt and (_d("eBYFVkUADE8GUVYLU0AZFANWERZN") .. yr)
or (_d("eBYFVkUADE8GUVYLX01fCgNKEVMaSwoFXEUVDFAPFF1fUw") .. tostring(nlvl))
else
dwrz.lastText = _d("eBYFVkUADE8GUVYDFUM")
end
end,
}, _d("WgwfXwwUMlgWBVY6AAxPBg"))

dwrz.nameInput = dwrz.configSection:Input({
Name = _d("agIHXEUdDFQG"),
Placeholder = _d("XE0WF0UhDFAHAg"),
AcceptedCharacters = _d("eA8d"),
Callback = function(lidl)
dwrz.nameDraft = lidl
end,
})

dwrz.nameInput.IgnoreConfig = true

dwrz.configSection:Button({
Name = _d("ehEUWBEWTUoCB1w"),
Callback = function()
local po = dwrz.nameDraft or dwrz.nameInput:GetInput()

po = type(po) == _d("ShcDUAsU") and po:gsub(_d("Z0YCEg"), _d("")):gsub(_d("HBBaHQ"), _d("")) or _d("")

if po == _d("") then
vdzw:Dialog({
Title = _d("egwfXwwU"),
Description = _d("bRoBXEUSTVcCHFxFFQJLQwVRAFMeWBUUGQMaH0oXURRFGhkZARRaCh4ISkMFUQBTC1APFB4WUwNYDhQX"),
Buttons = {
{
Name = _d("fgwFGQwH"),
},
},
})

return
end

local xmy, xrhd = dwrz.save(po)

if not xmy then
dwrz.lastText = _d("agIHXEUVDFAPFF1fUw") .. tostring(xrhd)

return
end

dwrz.selected = po
dwrz.lastText = _d("ehEUWBEWCRk") .. po .. _d("Fw")
dwrz.savesAt = 0

task.defer(function()
task.wait(0.25)

pcall(function()
dwrz.fileDropdown:UpdateSelection(po)
end)
end)
end,
})

dwrz.fileDropdown = dwrz.configSection:Dropdown({
Name = _d("agIHXEUVBFUG"),
Search = false,
Multi = false,
Required = false,
Options = dwrz.saves(),
Callback = function(ifj)
local gyee = type(ifj) == _d("TQITVQA") and ifj[1] or ifj

if type(gyee) == _d("ShcDUAsU") and gyee ~= _d("") then
dwrz.selected = gyee
dwrz.selectionShown = gyee

pcall(function()
dwrz.fileDropdown:UpdateName(_d("agIHXEUVBFUGSxk") .. gyee)
end)
end
end,
})

dwrz.fileDropdown.IgnoreConfig = true

dwrz.configSection:Button({
Name = _d("dQwQXUUACFUGEk0AFw"),
Callback = function()
local pre = dwrz.selected or dwrz.fileDropdown.Value
local ut, kao = dwrz.load(pre)

dwrz.lastText = ut and (_d("dQwQXQAXTQ") .. pre .. _d("Fw")) or (_d("dQwQXUUVDFAPFF1fUw") .. tostring(kao))
end,
})

dwrz.configSection:Button({
Name = _d("agIHXEUHAhkQFFUAEBlcBw"),
Callback = function()
local nbxs = dwrz.selected or dwrz.fileDropdown.Value
local xsc, uy = dwrz.save(nbxs)

dwrz.lastText = xsc and (_d("bhEeTQBT") .. nbxs .. _d("Fw")) or (_d("agIHXEUVDFAPFF1fUw") .. tostring(uy))
end,
})

dwrz.configSection:Button({
Name = _d("fQYdXBEWTUoGHVwGBwhdQwJYExY"),
Callback = function()
local gjig = dwrz.selected or dwrz.fileDropdown.Value

if type(gjig) ~= _d("ShcDUAsU") or gjig == _d("") then
dwrz.lastText = _d("aQoSUkUSTUoCB1xFFQRVBlFfDAEeTU0")

return
end

vdzw:Dialog({
Title = _d("fQYdXBEWTQ") .. gjig .. _d("Bg"),
Description = _d("bQsUGQMaAVxDGEpFAQhUDAdcAVMLSwwcGQEaHlJDEFcBUw5YDR9WEVMPXEMDXAYcG1wRFF1L"),
Buttons = {
{
Name = _d("fQYdXBEW"),
Callback = function()
local rgxi, hath = dwrz.delete(gjig)

dwrz.lastText = rgxi
and (_d("fQYdXBEWCRk") .. gjig .. _d("Fw"))
or (_d("egwEVQFTA1YXUV0AHwhNBksZ") .. tostring(hath))
end,
},
{
Name = _d("egIfWgAf"),
},
},
})
end,
})

dwrz.configSection:Button({
Name = _d("awYXSwAABRkPGEoR"),
Callback = function()
dwrz.savesAt = 0
dwrz.lastText = _d("agIHXEUfBEoXUUsAFR9cEBlcAV0")
end,
})

dwrz.configSection:Button({
Name = _d("dAIDUkUSHhkCBE0KUwFWAhU"),
Callback = function()
local ivf = dwrz.selected or dwrz.fileDropdown.Value

if type(ivf) ~= _d("ShcDUAsU") or ivf == _d("") then
dwrz.lastText = _d("aQoSUkUSTUoCB1xFFQRVBlFfDAEeTU0")

return
end

if dwrz.setAutoLoad(ivf) then
dwrz.lastText = ivf .. _d("GQ8eWAEATVYNUUoREh9NTQ")
else
dwrz.lastText = _d("egwEVQFTA1YXUU4XGhlcQwVRAFMMTBceGQkcDF1DHFgXGAhLTQ")
end
end,
})

dwrz.configSection:Button({
Name = _d("eg8UWBdTDEwXHhkJHAxd"),
Callback = function()
dwrz.setAutoLoad(_d(""))
dwrz.lastText = _d("dwwFUQwdChkPHlgBAE1WDVFKERIfTU0")
end,
})

dwrz.statusParagraph = dwrz.configSection:Paragraph({
Header = _d("ahcQTRAA"),
Body = _d(""),
})

dwrz.miscSection = dwrz.tab:Section({
Side = _d("awoWURE"),
})

dwrz.miscSection:Header({
Name = _d("dAoCWg"),
})

dwrz.miscSection:Toggle({
Name = _d("eBYFVkUQAVYQFBkCFgNcERBNDBwDGTY4"),
Default = false,
Callback = function(jnxp)
cfha(jnxp)
end,
}, _d("VAoCWjoSGE0MLloJHB5cPBZcCxYfWBcYVgs"))

dwrz.miscSection:Toggle({
Name = _d("eBYFVkUhAlUP"),
Default = true,
Callback = function(jrp)
dwrz.autoRoll = jrp

if jrp and dwrz.setRollButton then
dwrz.setRollButton(_d("eBYFVjccAVUhBE0RHAM"), true)
end
end,
}, _d("VAoCWjoSGE0MLksKHwE"))

dwrz.miscSection:Toggle({
Name = _d("eBYFVkUiGFAAGhk3HAFV"),
Default = true,
Callback = function(opp)
dwrz.autoQuickRoll = opp

if opp and dwrz.setRollButton then
dwrz.setRollButton(_d("aBYYWg4hAlUPM0wRBwJX"), true)
end
end,
}, _d("VAoCWjoSGE0MLkgQGg5SPANWCR8"))

dwrz.uiSection = dwrz.tab:Section({
Side = _d("awoWURE"),
})

dwrz.uiSection:Header({
Name = _d("bCo"),
})

dwrz.uiSection:Toggle({
Name = _d("ewISUgIBAkwNFRkHHxhL"),
Default = true,
Callback = function(sp)
pcall(function()
vdzw:SetAcrylicBlurState(sp)
end)
end,
}, _d("TAouWwQQBl4RHkwLFzJbDwRL"))

function dwrz.widthFactor(fgj)
return 1 + math.max(0, (fgj or 1) - 1) * 0.8
end

function dwrz.scaleCap()
local nxi = workspace.CurrentCamera and workspace.CurrentCamera.ViewportSize or Vector2.new(1280, 720)
local kvq = math.min(120, math.floor(((nxi.Y - 40 - 8 - 8) / 500) * 100))

while kvq > 50 and (dwrz.baseWidth or 720) * (kvq / 100) * dwrz.widthFactor(kvq / 100) > nxi.X - 16 do
kvq = kvq - 1
end

return math.max(50, kvq)
end

function dwrz.scaleCeiling()
return math.min(1.2, dwrz.scaleCap() / 100)
end

function dwrz.refreshScaleCap()
local nrbq = dwrz.scaleSlider

if not nrbq then
return
end

local intk = dwrz.scaleCeiling()

pcall(function()
nrbq.Settings.Maximum = intk
end)

local zuur = tonumber(nrbq:GetValue()) or 1

if zuur > intk then
dwrz.scaleTarget = intk

pcall(function()
nrbq:UpdateValue(intk)
end)
end
end

dwrz.scaleSlider = dwrz.uiSection:Slider({
Name = _d("bCpRSgYSAVw"),
Default = 1,
Minimum = 0.5,

Maximum = dwrz.scaleCeiling(),
DisplayMethod = _d("bwIdTAA"),
Precision = 2,

Callback = function(jbv)
dwrz.scalePending = tonumber(jbv)
dwrz.scalePendingAt = os.clock()
end,
onInputComplete = function(obff)
local jpux = dwrz.scaleCeiling()

dwrz.scaleTarget = math.clamp(tonumber(obff) or dwrz.scalePending or 1, 0.5, jpux)
dwrz.scalePending = nil

dwrz.scaleAnchor = nil

dwrz.saveUi()
end,
}, _d("TAouSgYSAVw"))

dwrz.refreshScaleCap()

dwrz.themeDropdown = dwrz.uiSection:Dropdown({
Name = _d("bQsUVABJTW8MGF0"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = dwrz.themeOrder,
Callback = function(kmmr)
local jg = type(kmmr) == _d("TQITVQA") and kmmr[1] or kmmr

if type(jg) == _d("ShcDUAsU") and dwrz.presets[jg] then
dwrz.theme = jg
dwrz.accent = nil
dwrz.applyTheme()

pcall(function()
dwrz.themeDropdown:UpdateName(_d("bQsUVABJTQ") .. jg)
end)

dwrz.saveUi()
end
end,
}, _d("TAouTQ0WAFw"))

dwrz.accentPicker = dwrz.uiSection:Colorpicker({
Name = _d("eAASXAsHTVoMHVYQAQ"),
Default = Color3.fromRGB(168, 170, 176),
Alpha = 0,
Callback = function(lort)
dwrz.accent = lort
dwrz.applyTheme()
dwrz.saveUi()
end,
}, _d("TAouWAYQCFcX"))

dwrz.codesSection = dwrz.tab:Section({
Side = _d("awoWURE"),
})

dwrz.codesSection:Header({
Name = _d("egwVXBY"),
})

dwrz.codeText = _d("awYVXAAeHhkGB1wXCk1aDBVcRQcFUBBRXgQeCBkQGVAVAE1OCgVRSVMCVwZRXBMWH0BDElYQAwFcQx5fRQAIWgwfXRZd")

function dwrz.setCodeText(vezr)
dwrz.codeText = vezr

pcall(function()
dwrz.codeParagraph:UpdateBody(vezr)
end)
end

function dwrz.redeemCodes()
if dwrz.redeeming then
return
end

local urp = ioe.RedeemCode
local qcq = phy:FindFirstChild(_d("dAwVTAkWPloRGEkRAA"))
local erxq = qcq and qcq:FindFirstChild(_d("egwVXCESGVg"))
local jhy, eay = false, nil

if urp and erxq then
jhy, eay = pcall(function()
return require(erxq)
end)
end

local jrzd = jhy and type(eay) == _d("TQITVQA") and eay.Codes or nil

if not urp or type(jrzd) ~= _d("TQITVQA") then
dwrz.setCodeText(_d("bQsYSkUFCEsQGFYLUwJfQwVRAFMKWA4UGQ0SHhkNHhkGHAlcQx1QFgdNVhFRVwpTH1wHFFwIUx9cDh5NAF0"))
return
end

local mdu = {}

for slrb in pairs(jrzd) do
mdu[#mdu + 1] = slrb
end

table.sort(mdu)

local pj = #mdu

dwrz.redeeming = true
dwrz.setCodeText(_d("awYVXAAeBFcEUQ") .. pj .. _d("GQAeXQAAQxdN"))

task.spawn(function()
local crs, tti, zpr = 0, 0, 0
local ijix = {}

for vvlk = 1, pj do
if not tpm() then
break
end

local nfj = mdu[vvlk]
local pqdn, tlsc = pcall(function()
return urp:InvokeServer(nfj)
end)

local yvuk = pqdn and type(tlsc) == _d("TQITVQA") and tlsc.success == true
local ryp = pqdn and type(tlsc) == _d("TQITVQA") and tostring(tlsc.message or _d("")) or tostring(tlsc or _d(""))

if not yvuk and string.find(string.lower(ryp), _d("TgIYTQ"), 1, true) then
task.wait(3.5)

pqdn, tlsc = pcall(function()
return urp:InvokeServer(nfj)
end)

yvuk = pqdn and type(tlsc) == _d("TQITVQA") and tlsc.success == true
ryp = pqdn and type(tlsc) == _d("TQITVQA") and tostring(tlsc.message or _d("")) or tostring(tlsc or _d(""))
end

if yvuk then
crs = crs + 1
elseif string.find(string.lower(ryp), _d("WA8DXAQXFA"), 1, true) then
tti = tti + 1
else
zpr = zpr + 1

if #ijix < 6 then
ijix[#ijix + 1] = nfj .. _d("A0M") .. (ryp ~= _d("") and ryp or _d("VwxRWAsAGlwR"))
end
end

dwrz.setCodeText(string.format(_d("HAdRVgNTSF1DXBlAF01LBhVcAB4IXU9RHAFTDFURFFgBCkEZRhUZFxYLTBAUXUs"), vvlk, pj, crs, tti, zpr))

if vvlk < pj and tpm() then
task.wait(1.8)
end
end

local cj = {
string.format(_d("awYVXAAeCF1DVF1JUwxVERRYAQpNUQIVGUAXQRkRFF8QAAhdQ1RdRRwLGUYVFw"), crs, tti, zpr, pj),
}

for vxo, rgal in ipairs(ijix) do
cj[#cj + 1] = rgal
end

dwrz.redeeming = false
dwrz.setCodeText(table.concat(cj, _d("Mw")))
end)
end

dwrz.codesSection:Button({
Name = _d("awYVXAAeTVgPHRkGHAlcEA"),
Callback = function()
dwrz.redeemCodes()
end,
})

dwrz.codeParagraph = dwrz.codesSection:Paragraph({
Header = _d("egwVXBY"),
Body = dwrz.codeText,
})

dwrz.scriptSection = dwrz.tab:Section({
Side = _d("awoWURE"),
})

dwrz.scriptSection:Header({
Name = _d("agADUBUH"),
})

dwrz.scriptSection:Button({
Name = _d("bA0dVgQXTUoAA1AVBw"),
Callback = function()
pcall(function()
vdzw:Unload()
end)

getgenv().ACBXWindow = nil
getgenv().ACBXAllowReload = nil
end,
})

task.spawn(function()
while tpm() do

if os.clock() >= dwrz.savesAt then
dwrz.savesAt = os.clock() + 3

local tob = dwrz.saves()
local enlb = table.concat(tob, _d("RQ"))

if enlb ~= dwrz.knownSaves then
dwrz.knownSaves = enlb

pcall(function()
dwrz.fileDropdown:ClearOptions()
dwrz.fileDropdown:InsertOptions(tob)
end)
end

if dwrz.selected and dwrz.selectionShown ~= dwrz.selected then
dwrz.selectionShown = dwrz.selected

pcall(function()
dwrz.fileDropdown:UpdateSelection(dwrz.selected)
end)
end
end

if dwrz.autoSave and os.clock() >= dwrz.autoSaveAt then
dwrz.autoSaveAt = os.clock() + 60

local zde = dwrz.selected or _d("XQYXWBAfGQ")
local nlqr, qsfc = dwrz.save(zde)

dwrz.selected = zde
dwrz.lastText = nlqr and (_d("eBYFVkUADE8GFRk") .. zde .. _d("GQIFGQ") .. os.date(_d("HCtLHCg")) .. _d("Fw"))
or (_d("eBYFVkUADE8GUV8EGgFcB0sZ") .. tostring(qsfc))
end

if os.clock() >= dwrz.themeAt then
dwrz.themeAt = os.clock() + 3
dwrz.applyTheme()
end

if os.clock() >= dwrz.capAt then
dwrz.capAt = os.clock() + 2
dwrz.refreshScaleCap()
end

if os.clock() >= dwrz.statusAt then
dwrz.statusAt = os.clock() + 2

local ygkn = dwrz.autoLoadName()
local dlc = table.concat({
_d("eBYFVkUfAlgHSxk") .. (ygkn or _d("VwwfXA")),
_d("agIHXBZJTQ") .. tostring(#dwrz.saves()),
dwrz.lastText,
}, _d("Mw"))

if dlc ~= dwrz.shownStatus then
dwrz.shownStatus = dlc

pcall(function()
dwrz.statusParagraph:UpdateBody(dlc)
end)
end
end

task.wait(0.25)
end
end)

task.spawn(function()
while tpm() do

local kgp = dwrz.scalePending

if kgp and os.clock() - (dwrz.scalePendingAt or 0) > 0.35 then
local sw = dwrz.scaleCeiling()
local kbt = math.clamp(kgp, 0.5, sw)

dwrz.scalePending = nil

if math.abs(kbt - dwrz.scaleTarget) > 0.002 then
dwrz.scaleTarget = kbt
dwrz.scaleAnchor = nil

dwrz.saveUi()
end
end

if math.abs(dwrz.scaleTarget - dwrz.scale) > 0.002 then
local xpnt = dwrz.guiRoot()

if xpnt and not dwrz.baseWidth then
dwrz.baseWidth = xpnt.Size.X.Offset
dwrz.baseHeight = xpnt.Size.Y.Offset
end

local psja = dwrz.baseWidth or 720
local jjft = dwrz.baseHeight or 500
local ezzk = workspace.CurrentCamera and workspace.CurrentCamera.ViewportSize or Vector2.new(1280, 720)
local pxgn, ibk = 8, 40

if not dwrz.scaleAnchor and xpnt then

local krbr = dwrz.widthFactor(dwrz.scaleTarget)
local axv, qpuj = psja * krbr * dwrz.scaleTarget, jjft * dwrz.scaleTarget
local nw = xpnt.AbsolutePosition

dwrz.scaleAnchor = Vector2.new(
math.clamp(nw.X, pxgn, math.max(pxgn, ezzk.X - axv - pxgn)),
math.clamp(nw.Y, ibk, math.max(ibk, ezzk.Y - qpuj - pxgn))
)
end

local vhdw = dwrz.scaleAnchor

dwrz.scale = dwrz.scale + (dwrz.scaleTarget - dwrz.scale) * 0.18

local cvus = dwrz.widthFactor(dwrz.scale)

pcall(function()
vdzw:SetScale(dwrz.scale)

if xpnt then
local klcz = math.floor(psja * cvus)

xpnt.Size = UDim2.fromOffset(klcz, math.floor(jjft))

local tdmq = xpnt:FindFirstChild(_d("egwfTQAdGQ"))

if tdmq then
local knyq = xpnt:FindFirstChild(_d("agoVXAcSHw"))
local dkg = math.floor(knyq and knyq.Size.X.Scale * klcz or klcz * 0.325)

tdmq.Size = UDim2.new(0, math.max(0, klcz - dkg), 1, 0)
end
end
end)

if xpnt and vhdw then
local surj, fkkz = psja * cvus * dwrz.scale, jjft * dwrz.scale
local ngc = math.clamp(vhdw.X, pxgn, math.max(pxgn, ezzk.X - surj - pxgn))
local pv = math.clamp(vhdw.Y, ibk, math.max(ibk, ezzk.Y - fkkz - pxgn))

local sdgi = xpnt.Parent and xpnt.Parent.AbsolutePosition or Vector2.zero

pcall(function()
xpnt.Position = UDim2.fromOffset(math.floor(ngc - sdgi.X), math.floor(pv - sdgi.Y))
end)
end
else

dwrz.scaleAnchor = nil
end

task.wait()
end
end)

kc.misc.tierLabels = {}
kc.misc.labelToTier = {}

kc.misc.expSection = kc.misc.tab:Section({
Side = _d("dQYXTQ"),
})

kc.misc.expSection:Header({
Name = _d("fBsBXAEaGVAMH0pFg/Ku4Z6B6g"),
})

kc.misc.claimToggle = kc.misc.expSection:Toggle({
Name = _d("eBYFVkUQAVgKHA"),
Default = false,
Callback = function(li)
local uuz = kc.misc.expeditions

uuz.enabled = li
uuz.claimAt = 0

if li then
uuz.askedAt = 0
uuz.request()
end
end,
}, _d("WBYFVjoQAVgKHA"))

kc.misc.rewardToggle = kc.misc.expSection:Toggle({
Name = _d("eBYFVkUQAVYQFBkXFhpYERVK"),
Default = false,
Callback = function(baw)
local qxj = kc.misc.expeditions

qxj.autoClose = baw

if baw then
qxj.closeRewards()
end
end,
}, _d("XBsBZgQGGVY8ElUKAAg"))

kc.misc.startToggle = kc.misc.expSection:Toggle({
Name = _d("eBYFVkUAGVgRBQ"),
Default = false,
Callback = function(lul)
local ppj = kc.misc.expeditions

if lul and not next(ppj.tiersWanted) then
ppj.autoStart = false

pcall(function()
kc.misc.startToggle:UpdateState(false)
end)

vdzw:Dialog({
Title = _d("eBYFVkUAGVgRBRkLFghdEFFYRQcEXBE"),
Description = _d("aQoSUkUSGRkPFFgWB01WDRQZERoIS0MYV0UHBVxDJVAAAU1dER5JARwaV0MXUBcAGRdDNFgWCk1NAhpcFlMZUQZRWg0WDEkGAk1FEAxLBwIVRT0EXgsFVAQBCBkXGVxFAQxLBgJNSVMMVwdRWAsKTVcWHFsAAU1WBVFNDRYAGQAQV0UBGFdDEE1FHANaBl8"),
Buttons = {
{
Name = _d("fgwFGQwH"),
},
},
})

return
end

ppj.autoStart = lul
ppj.startedAt = {}

if lul then
ppj.askedAt = 0
ppj.request()
end
end,
}, _d("WBYFVjoAGVgRBQ"))

for sdbt, dqw in ipairs(kc.misc.expeditions.tiers()) do
table.insert(kc.misc.tierLabels, tostring(dqw.name))
kc.misc.labelToTier[tostring(dqw.name)] = dqw.id
end

kc.misc.building = true

kc.misc.tierDropdown = kc.misc.expSection:Dropdown({
Name = _d("bQoUSw"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = kc.misc.tierLabels,
Callback = function(oua)
local clg = kc.misc.expeditions

if kc.misc.building then
return
end

local xou = {}
local gp = {}

if type(oua) == _d("TQITVQA") then
for jfv, jkzw in pairs(oua) do
local rdz = kc.misc.labelToTier[tostring(jfv)]

if jkzw and rdz then
xou[rdz] = true
table.insert(gp, tostring(jfv))
end
end
end

table.sort(gp)
clg.tiersWanted = xou

pcall(function()
kc.misc.tierDropdown:UpdateName(#gp > 0 and (_d("bQoUS0WR7ZtD") .. table.concat(gp, _d("FUM"))) or _d("bQoUS0WR7ZtDH1YLFg"))
end)
end,
}, _d("TQoUSw"))

task.defer(function()
kc.misc.building = false
end)

kc.misc.expSection:Button({
Name = _d("eg8QUAhTA1YU"),
Callback = function()
local kuuw = kc.misc.expeditions

if not kuuw.claim() then
vdzw:Notify({
Title = _d("fBsBXAEaGVAMH0o"),
Description = _d("dwwFUQwdChkLEEpFEAJUBlFbBBAGGRoUTUs"),
Lifetime = 5,
})
end
end,
})

kc.misc.expSection:Button({
Name = _d("agYfXUUACFUGEk0AFw"),
Callback = function()
local taly = kc.misc.expeditions

if not next(taly.tiersWanted) then
vdzw:Notify({
Title = _d("fBsBXAEaGVAMH0o"),
Description = _d("aQoSUkUSGRkPFFgWB01WDRQZERoIS0MYV0UHBVxDFUsKAwlWFB8ZAxofShdf"),
Lifetime = 5,
})

return
end

local zp = {}
local zft = 0

for gug, lkpn in ipairs(taly.tiers()) do
if taly.tiersWanted[lkpn.id] and taly.status(lkpn.id) == _d("WBUQUAkSD1UG") then
if taly.start(lkpn.id, zp) then
zft = zft + 1
end
end
end

if zft == 0 then
vdzw:Notify({
Title = _d("fBsBXAEaGVAMH0o"),
Description = _d("dwwFUQwdChkAHkwJF01bBlFKAB0ZA0MFUQBTHlwPFFoRFgkZFxhcFwBNWBEUGQQfH1wCFUBFHBhNT1FWF1MZUQYDXEUSH1xDH1YRUwtWFgMZAB8EXgoTVQBTDlgRFUpFFQJLQwVRAB5D"),
Lifetime = 6,
})
end
end,
})

kc.misc.expInfo = kc.misc.tab:Section({
Side = _d("awoWURE"),
})

kc.misc.expInfo:Header({
Name = _d("fBsBXAEaGVAMH0o"),
})

kc.misc.expParagraph = kc.misc.expInfo:Paragraph({
Header = _d("ahcQTRAA"),
Body = kc.misc.expeditions.text(),
})

kc.misc.expeditions.loadRewards()

kc.misc.expRewardParagraph = kc.misc.expInfo:Paragraph({
Header = _d("eg8QUAgWCQ"),
Body = kc.misc.expeditions.rewardsText(),
})

task.spawn(function()
local bq = kc.misc.expeditions
local eqit = wvo(_d("ahofWiALHVwHGE0MHANK"), 3)

if eqit then
jdcu(eqit.OnClientEvent, function(cero)
if type(cero) ~= _d("TQITVQA") then
return
end

bq.state = cero

bq.offset = (tonumber(cero.now) or os.time()) - os.time()
bq.syncedAt = os.clock()

if type(cero.rewards) == _d("TQITVQA") and #cero.rewards > 0 then
table.insert(bq.rewardLog, 1, {
at = os.time(),
title = tostring(cero.rewardTitle or _d("fBsBXAEaGVAMHw")),
items = cero.rewards,
})

while #bq.rewardLog > 8 do
table.remove(bq.rewardLog)
end

bq.saveRewards()

if bq.autoClose then

task.delay(0.35, bq.closeRewards)
end
end
end)
end

while tpm() do

if os.clock() - bq.askedAt > 1 and os.clock() - bq.syncedAt > 20 then
bq.request()
end

if bq.enabled then
bq.claim()
end

if bq.autoClose then
bq.closeRewards()
end

if bq.autoStart and next(bq.tiersWanted) then
local gssu = {}

for gcbp, sjgi in ipairs(bq.tiers()) do
if bq.tiersWanted[sjgi.id] and bq.status(sjgi.id) == _d("WBUQUAkSD1UG") then
if bq.start(sjgi.id, gssu) then
break
end
end
end
end

local bclq = bq.text()

if kc.misc.expParagraph and bclq ~= kc.misc.expShown then
kc.misc.expShown = bclq

pcall(function()
kc.misc.expParagraph:UpdateBody(bclq)
end)
end

local mxy = bq.rewardsText()

if kc.misc.expRewardParagraph and mxy ~= bq.rewardsShown then
bq.rewardsShown = mxy

pcall(function()
kc.misc.expRewardParagraph:UpdateBody(mxy)
end)
end

task.wait(0.75)
end
end)

kc.misc.util = {
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

function kc.misc.util.hook()
local udbz = kc.misc.util

if udbz.hooked then
return
end

udbz.hooked = true

if ioe.SyncCollection then
jdcu(ioe.SyncCollection.OnClientEvent, function(yoig)
if type(yoig) == _d("TQITVQA") then
udbz.profile = yoig
udbz.profileAt = os.clock()
end
end)
end

if ioe.SyncAchievements then
jdcu(ioe.SyncAchievements.OnClientEvent, function(rpsd)
if type(rpsd) == _d("TQITVQA") then
udbz.ach = rpsd
end
end)
end

if ioe.SyncQuests then
jdcu(ioe.SyncQuests.OnClientEvent, function(czw)
if type(czw) == _d("TQITVQA") and type(czw.list) == _d("TQITVQA") then
udbz.quests = czw
end
end)
end

if ioe.SyncPeriodicQuests then
jdcu(ioe.SyncPeriodicQuests.OnClientEvent, function(vmvo, tcj)
if vmvo == _d("TgYUUgkK") and type(tcj) == _d("TQITVQA") and type(tcj.list) == _d("TQITVQA") then
udbz.weekly = tcj
end
end)
end
end

function kc.misc.util.askProfile()
local jsh = kc.misc.util

if os.clock() - jsh.askedAt < 1.5 then
return
end

jsh.askedAt = os.clock()

if ioe.RequestSync then
pcall(function()
ioe.RequestSync:FireServer()
end)
end
end

function kc.misc.util.currentProfile()
local tnk = kc.misc.util

if type(tnk.profile) ~= _d("TQITVQA") then
tnk.askProfile()

return nil
end

if os.clock() - tnk.profileAt > 20 then
tnk.askProfile()
end

return tnk.profile
end

function kc.misc.util.forgetProfile()
local lpej = kc.misc.util

lpej.profile = nil
lpej.profileAt = 0
lpej.askedAt = 0
end

function kc.misc.util.indexedTotal(jb)
local xz = 0

for zui, zfok in pairs((jb and jb.cardIndex) or {}) do
if zfok then
xz = xz + 1
end
end

return xz
end

function kc.misc.util.indexPending(nchp)
local av = {}

if type(nchp) ~= _d("TQITVQA") then
return av
end

local tg = kc.misc.util.indexedTotal(nchp)
local alos = nchp.indexMilestones or {}

for pfbw = 1, 30 do
if not alos[pfbw] and pfbw * 5 <= tg then
table.insert(av, pfbw)
end
end

return av
end

function kc.misc.util.indexFrame()
local hnix = hk:FindFirstChild(_d("egIDXSwdCVwbNkwM"))

return hnix and hnix:FindFirstChild(_d("cA0VXB01H1gOFA"))
end

function kc.misc.util.clickButton(wgt)
if not wgt then
return false
end

if firesignal then
local umty = pcall(firesignal, wgt.MouseButton1Click)

if umty then
return true
end
end

return pcall(function()
wgt:Activate()
end)
end

function kc.misc.util.closeIndex()
local rt = kc.misc.util.indexFrame()

if not rt or not rt.Visible then
return false
end

pcall(function()
local gsyg = phy:FindFirstChild(_d("dAwVTAkWPloRGEkRAA"))
local ijgn = gsyg and gsyg:FindFirstChild(_d("dAYfTCgSA1gEFEs"))

if ijgn then
require(ijgn).close(rt)
end
end)

kc.misc.util.clickButton(rt:FindFirstChild(_d("eg8eSgAxGE0XHlc")))

pcall(function()
rt.Visible = false
end)

return true
end

function kc.misc.util.claimIndex()
local wvb = kc.misc.util

if os.clock() < wvb.indexAt then
return false
end

local ffag = wvb.currentProfile()

if not ffag then
return false
end

local unqj = wvb.indexPending(ffag)
local osqm = unqj[1]

if not osqm then
return false
end

local yf = wvb.indexedTotal(ffag)
local yyz = wvb.indexAsked

if type(yyz) == _d("TQITVQA") and yyz.milestone == osqm and yyz.total == yf then
return false
end

wvb.indexAsked = { milestone = osqm, total = yf }

pcall(function()
ioe.ClaimIndexReward:FireServer(osqm)
end)

wvb.indexAt = os.clock() + 1.5

wvb.profile = nil
wvb.profileAt = 0

task.delay(0.4, wvb.closeIndex)

return true
end

function kc.misc.util.achPending()
local uhlz = {}
local dpx = kc.misc.util.ach

if type(dpx) ~= _d("TQITVQA") then
return uhlz
end

for okm, qjc in ipairs(dpx.chains or {}) do
for kpr, lipf in ipairs(qjc.levels or {}) do
if lipf.reached and not lipf.claimed then
table.insert(uhlz, { chain = tostring(qjc.id), index = lipf.index, name = tostring(lipf.name or lipf.index) })
end
end
end

return uhlz
end

function kc.misc.util.claimAchievement()
local sxy = kc.misc.util

if os.clock() < sxy.achAt then
return false
end

if type(sxy.ach) ~= _d("TQITVQA") then
if os.clock() - sxy.achAskedAt > 4 and ioe.RequestAchievements then
sxy.achAskedAt = os.clock()

pcall(function()
ioe.RequestAchievements:FireServer()
end)
end

return false
end

for lxzv, bdr in ipairs(sxy.achPending()) do
pcall(function()
ioe.ClaimAchievement:FireServer(bdr.chain, bdr.index)
end)

sxy.achAt = os.clock() + 1

task.delay(1, function()
if ioe.RequestAchievements then
pcall(function()
ioe.RequestAchievements:FireServer()
end)
end
end)

return true
end

return false
end

function kc.misc.util.questRows()
local vbe = kc.misc.util
local sunq = {}

for vorx, qzc in ipairs({ { list = _d("XQIYVRw"), payload = vbe.quests }, { list = _d("TgYUUgkK"), payload = vbe.weekly } }) do
for nc, lzyv in ipairs((type(qzc.payload) == _d("TQITVQA") and qzc.payload.list) or {}) do
if type(lzyv) == _d("TQITVQA") then
table.insert(sunq, { list = qzc.list, index = nc, quest = lzyv })
end
end
end

return sunq
end

function kc.misc.util.questPending()
local algv = {}

for fdl, rk in ipairs(kc.misc.util.questRows()) do
local ggo = rk.quest

if not ggo.claimed and (tonumber(ggo.progress) or 0) >= (tonumber(ggo.target) or math.huge) then
table.insert(algv, rk)
end
end

return algv
end

function kc.misc.util.askQuests()
local xrye = kc.misc.util

if os.clock() - xrye.questAskedAt > 4 and ioe.RequestQuests then
xrye.questAskedAt = os.clock()

pcall(function()
ioe.RequestQuests:FireServer()
end)
end

if os.clock() - xrye.weeklyAskedAt > 4 and ioe.RequestPeriodicQuests then
xrye.weeklyAskedAt = os.clock()

pcall(function()
ioe.RequestPeriodicQuests:FireServer(_d("TgYUUgkK"))
end)
end
end

function kc.misc.util.claimQuest()
local vpis = kc.misc.util

if os.clock() < vpis.questAt then
return false
end

if type(vpis.quests) ~= _d("TQITVQA") and type(vpis.weekly) ~= _d("TQITVQA") then
vpis.askQuests()

return false
end

for fuh, axl in ipairs(vpis.questPending()) do
if axl.list == _d("TgYUUgkK") then
if ioe.ClaimPeriodicQuest then
pcall(function()
ioe.ClaimPeriodicQuest:FireServer(_d("TgYUUgkK"), axl.index)
end)
end
else
pcall(function()
ioe.ClaimQuest:FireServer(axl.index)
end)
end

vpis.questAt = os.clock() + 1.2

task.delay(1, function()
vpis.askQuests()
end)

return true
end

return false
end

function kc.misc.util.packCatalog()
local sfss = kc.misc.util

if sfss.packs then
return sfss.packs
end

local hsd = {}
local wckr, oqv = pcall(function()
return require(phy.ModuleScripts.PackData)
end)

if wckr and type(oqv) == _d("TQITVQA") and type(oqv.Packs) == _d("TQITVQA") then
for zhv, vwgu in ipairs(oqv.Packs) do
if vwgu.id then
table.insert(hsd, { id = tostring(vwgu.id), name = tostring(vwgu.name or vwgu.id) })
end
end
end

sfss.packs = hsd

return hsd
end

function kc.misc.util.packUnlocked(iw, nwkz)
if type(iw) ~= _d("TQITVQA") then
return true
end

local fmqf, uflw = pcall(function()
return require(phy.ModuleScripts.PackData)
end)
local gird, xyq = pcall(function()
return require(phy.ModuleScripts.PackSlotData)
end)

if not (fmqf and gird) then
return true
end

local tuqn = uflw.ById and uflw.ById[nwkz]

if not tuqn then
return false
end

local xmpp, en = pcall(xyq.isPackUnlocked, tuqn, iw)

return (not xmpp) or en == true
end

function kc.misc.util.visit(bl)
local ie = workspace:FindFirstChild(_d("dzMySg"))
local qwd = ie and ie:FindFirstChild(bl)
local ndh = ovr.Character
local upvi = ndh and ndh:FindFirstChild(_d("cRYcWAscBF0xHlYRIwxLFw"))
local oldh = qwd and (qwd:FindFirstChild(_d("cRYcWAscBF0xHlYRIwxLFw")) or qwd:FindFirstChildWhichIsA(_d("ewICXDUSH00"), true))

if not (oldh and upvi) then
return nil
end

local yccz = upvi.CFrame

upvi.CFrame = CFrame.new((oldh.CFrame * CFrame.new(0, 0, -5)).Position)

return yccz
end

function kc.misc.util.returnTo(gvd)
local siqt = ovr.Character
local raq = siqt and siqt:FindFirstChild(_d("cRYcWAscBF0xHlYRIwxLFw"))

if raq and gvd then
raq.CFrame = gvd
end
end

function kc.misc.util.applyPacks(yhms, jay)
local zmbb = kc.misc.util

if os.clock() < zmbb.packAt then
return false, _d("bgIYTUUSTVQMHFwLB0M")
end

local rjgd = zmbb.currentProfile()

if not rjgd then
return false, _d("awYQXQwdChkaHkwXUx1LDBdQCRZNFEMFSxxTDF4CGFdFGgMZAlFKABACVwdf")
end

if jay and (tonumber(rjgd.packSlots) or 1) < 2 then
return false, _d("ag8eTUVBTVcGFF0WUxlRBlFcHQcfWEMBWAYYTUoPHk1FFAxUBgFYFgBD")
end

if not (ioe.OpenPackShop and ioe.EquipPack) then
return false, _d("bQsUGRUSDlJDAlEKA01QEFFXCgdNUA1RTQ0aHhkEEFQAUxtcEQJQCh1D")
end

zmbb.packAt = os.clock() + 8

task.spawn(function()
local aymk = zmbb.visit(_d("dwwTVQAAHlANFko"))

if not aymk then
return
end

pcall(function()
ioe.OpenPackShop:FireServer(_d("SQISUjoeCEsAGVgLBw"))
end)

task.wait(1.2)

if yhms then
pcall(function()
ioe.EquipPack:FireServer(yhms, 1)
end)
end

if jay then
task.wait(0.8)

pcall(function()
ioe.EquipPack:FireServer(jay, 2)
end)
end

task.wait(0.8)
zmbb.returnTo(aymk)
zmbb.forgetProfile()
end)

return true
end

function kc.misc.util.accScore(uhff)
local ora = uhff.effects or {}

return (ora.luckBonus or 0) * 10
+ ((ora.luckMult or 1) - 1) * 200
+ ((ora.borderLuckMult or 1) - 1) * 200
- ((ora.rollCdMult or 1) - 1) * 30
end

function kc.misc.util.accCatalog()
local fat = kc.misc.util

if fat.accessories then
return fat.accessories
end

local zxx = {}

for ewav, dk in ipairs({ _d("eAASXBYAAksaNVgREg"), _d("eAASXBYAAksaNVgREl8") }) do
local nvfs, qy = pcall(function()
return require(phy.ModuleScripts[dk])
end)

if nvfs and type(qy) == _d("TQITVQA") and type(qy.Accessories) == _d("TQITVQA") then
for nkux, lkb in ipairs(qy.Accessories) do
if lkb.id then
table.insert(zxx, {
id = tostring(lkb.id),
name = tostring(lkb.name or lkb.id),
shop = ewav,

shopName = ewav == 1 and _d("eAASXBYAAksaUWoNHB0") or _d("dBoCTQABBFYWAhkoEgM"),
raidable = lkb.raidShopOnly == true,
hidden = lkb.hidden == true,
requirements = lkb.requirements or {},
score = kc.misc.util.accScore(lkb),
})
end
end
end
end

fat.accessories = zxx

return zxx
end

function kc.misc.util.accOwned(szu)
local dfn = {}

for kejt, zd in ipairs((szu and szu.accessories) or {}) do
dfn[tostring(zd)] = true
end

return dfn
end

function kc.misc.util.accMeets(usk, nsj)
for hfj, xzqy in ipairs(nsj.requirements) do
local saqf = usk.cards and usk.cards[xzqy.cardId]
local aq = type(saqf) == _d("TQITVQA") and (tonumber(saqf[xzqy.borderLevel]) or 0) or 0

if aq < (tonumber(xzqy.amount) or 0) then
return false
end
end

return true
end

function kc.misc.util.accPlan(qsrl)
local nujr = kc.misc.util
local ect = nujr.accOwned(qsrl)
local rfyl = {}

for eghp, smu in ipairs(nujr.accCatalog()) do
if not ect[smu.id] and not smu.raidable and not smu.hidden and nujr.accMeets(qsrl, smu) then
local ywdo = rfyl[smu.shop]

if not ywdo or smu.score > ywdo.score then
rfyl[smu.shop] = smu
end
end
end

return rfyl
end

function kc.misc.util.accPicks(fnzs)
local yml = kc.misc.util
local qb = yml.accOwned(fnzs)
local ojlo, ljga

for qonx, djnd in ipairs(yml.accCatalog()) do
if qb[djnd.id] then
if not ojlo or djnd.score > ojlo.score then
ojlo = djnd
end
elseif not djnd.raidable and not djnd.hidden and yml.accMeets(fnzs, djnd) then
if not ljga or djnd.score > ljga.score then
ljga = djnd
end
end
end

return ojlo, ljga
end

function kc.misc.util.equipBest()
local zus = kc.misc.util
local gbuv = zus.currentProfile()

if not gbuv or not ioe.EquipAccessory then
return false
end

local vkl = zus.accPicks(gbuv)

if not vkl or gbuv.equippedAccessory == vkl.id then
return vkl ~= nil
end

pcall(function()
ioe.EquipAccessory:FireServer(vkl.id)
end)

task.delay(1.5, function()
zus.forgetProfile()
end)

return true
end

function kc.misc.util.buyBest()
local rked = kc.misc.util

if os.clock() < rked.accAt then
return false, _d("bgIYTUUSTVQMHFwLB0M")
end

if drcb.busy(1) or drcb.busy(2) then
rked.accNote = _d("cA1RWEURDE0XHVxFXk1YQwJRCgNNTREYSUUEAkwPFRkAHQkZCgU")
return false, _d("cA1RWEURDE0XHVxFXk1YQwJRCgNNTREYSUUEAkwPFRkAHQkZCgUX")
end

local wxq = rked.currentProfile()

if not wxq then
rked.accNote = _d("awYQXQwdChkaHkwXUx1LDBdQCRZNFEMGUAkfTU0RCBkEFAxQDVFQC1MMGRAUWgodCQ")
return false, _d("awYQXQwdChkaHkwXUx1LDBdQCRZNFEMFSxxTDF4CGFdFGgMZAlFKABACVwdf")
end

local fig = rked.accPlan(wxq)
local oh = {}

for bud = 1, 2 do
if fig[bud] then
table.insert(oh, fig[bud].name)
end
end

if #oh == 0 then
rked.accNote = _d("dwwFUQwdChkNFE5FBgNVDBJSABdNQAYFGUhTGVEGUVoEAQlKQxdWF1METUMQSwBTA1YXUVALUxlRBlFaCh8BXAAFUAod")
return false, _d("dwwFUQwdChkNFE5FEAxXQxNcRQYDVQwSUgAXTUAGBRlIUxlRBlFaBAEJSkMXVhdTBE1DEEsAUwNWF1FQC1MZUQZRWgofAVwABVAKHUM")
end

rked.accAt = os.clock() + 12
rked.accNote = _d("bgIdUgwdChkXHhkRGwgZAB5MCwcIS0MXVhdT") .. table.concat(oh, _d("GQIfXUU"))

task.spawn(function()
for zkx = 1, 2 do
local hn = fig[zkx]

if hn then
local qd = zkx == 1 and _d("SRYDShAaGVwHFQ") or _d("TgIXXwAfAFgNFFgRABpYBRdcCQA")
local jwhg = zkx == 1 and ioe.OpenAccessoryShop or ioe.OpenAccessoryShop2
local qle = zkx == 1 and ioe.BuyAccessory or ioe.BuyAccessory2
local jubp = qd and rked.visit(qd) or nil

if not jubp then
local wbtv = workspace:FindFirstChild(_d("dzMySg"))
local hh = wbtv and wbtv:FindFirstChild(qd)

if hh and os.clock() - (rked.worldAskedAt or 0) > 25 then

rked.worldAskedAt = os.clock()
rked.accNote = _d("egsQSwQQGVwRUVcKB01LBhBdHFNAGRcDQAwdChkCFlgMHU1KCx5LER8U")
elseif not hh and os.clock() - (rked.worldAskedAt or 0) > 25 then

rked.worldAskedAt = os.clock()
rked.accNote = _d("dwxRWgoGA00GAxkMHU1NCxhKRQQCSw8VGUhTGVgIGFcCUxlRBlFVChEPQEMFXAkWHVYRBQ")

pcall(function()
ioe.TeleportToWorld:FireServer(_d("VQwTWxw"))
end)

task.wait(4.5)
jubp = rked.visit(qd)
end
end

if jubp and jwhg and qle then

task.wait(0.9)

pcall(function()
jwhg:FireServer()
end)

task.wait(1.2)

pcall(function()
qle:FireServer(hn.id)
end)

task.wait(0.9)
rked.returnTo(jubp)
rked.accNote = _d("ewwEXg0HTQ") .. tostring(hn.name)
elseif not jubp then
rked.accNote = _d("egwEVQFTA1YXUUsAEg5RQwVRAFMOVhYfTQABTRRDBUscUwxeAhhXRRoDGQJRVAoeCFcX")
end

task.wait(0.6)
end
end

rked.forgetProfile()

for zuj = 1, 8 do
if type(rked.profile) == _d("TQITVQA") then
break
end

rked.askProfile()
task.wait(0.7)
end

rked.equipBest()
end)

return true, table.concat(oh, _d("FUM"))
end

function kc.misc.util.indexText()
local rqhk = kc.misc.util

if type(rqhk.profile) ~= _d("TQITVQA") then
return _d("awYQXQwdChkaHkwXUw5YERUZDB0JXBtfF0s")
end

local wzc = rqhk.indexPending(rqhk.profile)
local bsxe = 0

for hkws, cien in pairs(rqhk.profile.indexMilestones or {}) do
if cien then
bsxe = bsxe + 1
end
end

local keqm = tostring(rqhk.indexedTotal(rqhk.profile)) .. _d("GQAQSwEATVANFVwdFgkVQw") .. tostring(bsxe) .. _d("GQwXGVZDTUsGBlgXFx4ZAB1YDB4IXQ")

if #wzc > 0 then
keqm = keqm .. _d("MzEUWAEKVxk") .. table.concat(wzc, _d("FUM"))
end

return keqm
end

function kc.misc.util.achText()
local yjtb = kc.misc.util

if type(yjtb.ach) ~= _d("TQITVQA") then
return _d("awYQXQwdChkCElEMFhtcDhRXEQBDF00")
end

local iou = yjtb.achPending()
local gve = 0

for atat, wbi in ipairs(yjtb.ach.chains or {}) do
for pc in ipairs(wbi.levels or {}) do
gve = gve + 1
end
end

return tostring(#iou) .. _d("GQwXGQ") .. tostring(gve) .. _d("GQISUQwWG1wOFFcRAE1LBhBdHA")
end

function kc.misc.util.questText()
local rqar = kc.misc.util

if type(rqar.quests) ~= _d("TQITVQA") and type(rqar.weekly) ~= _d("TQITVQA") then
return _d("awYQXQwdChkSBFwWBx4XTV8")
end

local dsnj, zdev = 0, 0

for gy, ohs in ipairs(rqar.questPending()) do
if ohs.list == _d("TgYUUgkK") then
zdev = zdev + 1
else
dsnj = dsnj + 1
end
end

local zyfd = type(rqar.quests) == _d("TQITVQA") and #(rqar.quests.list or {}) or 0
local fxp = type(rqar.weekly) == _d("TQITVQA") and #(rqar.weekly.list or {}) or 0

return tostring(dsnj) .. _d("GQwXGQ") .. tostring(zyfd) .. _d("GQcQUAkKTUsGEF0ceQ")
.. tostring(zdev) .. _d("GQwXGQ") .. tostring(fxp) .. _d("GRQUXA4fFBkRFFgBCg")
end

function kc.misc.util.packText()
local buj = kc.misc.util
local bs = buj.profile

if type(bs) ~= _d("TQITVQA") then
return _d("awYQXQwdChkaHkwXUx1YABpKS11D")
end

local function bvy(udk)
for upy, hwbz in ipairs(buj.packCatalog()) do
if hwbz.id == udk then
return hwbz.name
end
end

return tostring(udk)
end

local ctq = _d("ag8eTUVCVxk") .. bvy(bs.equippedPack)

if (tonumber(bs.packSlots) or 1) >= 2 then
ctq = ctq .. _d("MzAdVhFTXwND") .. bvy(bs.equippedPack2)
else
ctq = ctq .. _d("MzAdVhFTXwNDFlgIFh1YEAIZCxwZGQwGVwAX")
end

return ctq
end

function kc.misc.util.accText()
local lxi = kc.misc.util
local pdz = lxi.profile

if type(pdz) ~= _d("TQITVQA") then
return _d("awYQXQwdChkaHkwXUwxaABRKFhwfUAYCF0td")
end

local gdy = lxi.accPicks(pdz)
local udb = lxi.accPlan(pdz)
local mgpg = _d("VwwfXA")

for lvz, rsmi in ipairs(lxi.accCatalog()) do
if rsmi.id == pdz.equippedAccessory then
mgpg = rsmi.name .. _d("GUs") .. rsmi.shopName .. _d("EA")
end
end

local uvjv = _d("fBIEUBUDCF1ZUQ") .. mgpg

if gdy then
uvjv = uvjv .. _d("MyEUShFTAk4NFF1fUw") .. gdy.name
end

uvjv = uvjv .. _d("MyISWgAAHlYRCBk2GwJJWVE") .. (udb[1] and udb[1].name or _d("VwwFUQwdChkNFE4"))
uvjv = uvjv .. _d("My4IShEWH1AMBEpFPgxXWVE") .. (udb[2] and udb[2].name or _d("VwwFUQwdChkNFE4"))

if lxi.accNote then
uvjv = uvjv .. _d("My8QShFTGUsKAQNF") .. lxi.accNote
end

return uvjv
end

kc.misc.util.hook()
kc.misc.util.askProfile()

kc.misc.indexSection = kc.misc.tab:Section({
Side = _d("dQYXTQ"),
})

kc.misc.indexSection:Header({
Name = _d("egIDXUU6A10GCRmV7P6+"),
})

kc.misc.indexToggle = kc.misc.indexSection:Toggle({
Name = _d("eBYFVkUQAVgKHA"),
Default = false,
Callback = function(vxyu)
kc.misc.util.indexOn = vxyu
kc.misc.util.indexAt = 0

kc.misc.util.indexAsked = nil
end,
}, _d("WBYFVjoQAVgKHGZX"))

kc.misc.indexSection:Button({
Name = _d("eg8QUAhTA1YU"),
Callback = function()
local rgrd = kc.misc.util

rgrd.indexAt = 0
rgrd.indexAsked = nil

if not rgrd.claimIndex() then
vdzw:Notify({
Title = _d("egIDXUU6A10GCQ"),
Description = _d("dwxRVAwfCEoXHlcAUwRKQwNcBBcUGRceGQYfDFAOXw"),
Lifetime = 5,
})
end
end,
})

kc.misc.claimSection = kc.misc.tab:Section({
Side = _d("dQYXTQ"),
})

kc.misc.claimSection:Header({
Name = _d("eAAZUAAFCFQGH00WU0sZMgRcFgceGZPutuM"),
})

kc.misc.achToggle = kc.misc.claimSection:Toggle({
Name = _d("eBYFVkUQAVgKHBkEEAVQBgdcCBYDTRA"),
Default = false,
Callback = function(fhab)
kc.misc.util.achOn = fhab
kc.misc.util.achAt = 0

if fhab and ioe.RequestAchievements then
pcall(function()
ioe.RequestAchievements:FireServer()
end)
end
end,
}, _d("WBYFVjoQAVgKHGYEEAVQBgdcCBYDTRA"))

kc.misc.questToggle = kc.misc.claimSection:Toggle({
Name = _d("eBYFVkUQAVgKHBkUBghKFwI"),
Default = false,
Callback = function(wbyn)
kc.misc.util.questOn = wbyn
kc.misc.util.questAt = 0
kc.misc.util.questAskedAt = 0
kc.misc.util.weeklyAskedAt = 0

if wbyn then
kc.misc.util.askQuests()
end
end,
}, _d("WBYFVjoQAVgKHGYUBghKFwI"))

kc.misc.claimSection:Button({
Name = _d("eg8QUAhTDFUPUVcKBA"),
Callback = function()
local kxh = kc.misc.util

kxh.achAt = 0
kxh.questAt = 0

local nrm = kxh.claimAchievement()
local wykc = kxh.claimQuest()

if not (nrm or wykc) then
vdzw:Notify({
Title = _d("eAAZUAAFCFQGH00WU0sZMgRcFgce"),
Description = _d("dwwFUQwdChkKAhkXFgxdGlFNClMOVQIYVEs"),
Lifetime = 5,
})
end
end,
})

kc.misc.packSection = kc.misc.tab:Section({
Side = _d("dQYXTQ"),
})

kc.misc.packSection:Header({
Name = _d("egIDXUUjDFoIAhmV7OON"),
})

kc.misc.packSection:Paragraph({
Header = _d("bRQeGRYfAk0Q"),
Body = _d("aQoSUhZTDEkTHUBFHANVGlFODRYDGRoeTEUDH1wQAhkkAx1VGlFJBBAGSk9RWwAQDEwQFBkRGwgZEAZQERAFGRQQVQ4ATU0MUU0NFk1UBgNaDRIDTU0"),
})

local ftt = {}
local ztkl = {}

for gbg, iymq in ipairs(kc.misc.util.packCatalog()) do
table.insert(ftt, iymq.name)
ztkl[iymq.name] = iymq.id
end

kc.misc.packSlotOne = nil
kc.misc.packSlotTwo = nil

kc.misc.packDropdownOne = kc.misc.packSection:Dropdown({
Name = _d("ag8eTUVC"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = ftt,
Callback = function(drf)
local mkp = type(drf) == _d("TQITVQA") and drf[1] or drf

kc.misc.packSlotOne = ztkl[tostring(mkp)]
end,
}, _d("Sg8eTTpC"))

kc.misc.packDropdownTwo = kc.misc.packSection:Dropdown({
Name = _d("ag8eTUVB"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = ftt,
Callback = function(jyyn)
local pikk = type(jyyn) == _d("TQITVQA") and jyyn[1] or jyyn

kc.misc.packSlotTwo = ztkl[tostring(pikk)]
end,
}, _d("Sg8eTTpB"))

kc.misc.packSection:Button({
Name = _d("eBMBVRxTHVgAGko"),
Callback = function()
local ze = kc.misc.util
local pq = kc.misc.packSlotOne
local plp = kc.misc.packSlotTwo

if not pq then
vdzw:Notify({
Title = _d("egIDXUUjDFoIAg"),
Description = _d("aQoSUkUSTUkCElJFFQJLQwJVCgdNCEMXUBcAGRc"),
Lifetime = 5,
})

return
end

local gg, ji = ze.applyPacks(pq, plp)

if not gg then
vdzw:Dialog({
Title = _d("egIDXUUjDFoIAg"),
Description = ji,
Buttons = {
{
Name = _d("fgwFGQwH"),
},
},
})
end
end,
})

kc.misc.cards = {
rarityLabels = { _d("eA8d"), _d("dwwDVAQf"), _d("fgwdXQ"), _d("awIYVwccGg"), _d("bA0YTwABHlgP") },
borderOf = { Normal = 1, Gold = 2, Rainbow = 3, Universal = 4 },
mergeOn = false,
deconOn = false,
mergeWanted = {},
deconWanted = {},
mergeAt = 0,
deconAt = 0,
mergeDone = _d("dwwFUQwdChkQFFcRUxRcFw"),
deconDone = _d("dwwFUQwdChkQFFcRUxRcFw"),

inFlight = false,

interval = 3600,
manualGap = 20,
manualAt = 0,

protectedPrefixes = { weather = true, boss = true, raid = true, wb = true, fish = true, hw = true, event = true },

deconExceptions = { weather_sayaka = true, weather_caesar = true },

deconConfirmed = false,
burnAskedAt = 0,
}

function kc.misc.cards.isProtected(ybhh, ho)
local yhd = kc.misc.cards
local szhl = tostring(ybhh or _d(""))
local nx = szhl:match(_d("Z0sqWEgJXRRaLBJMLA"))

if not (nx and yhd.protectedPrefixes[nx]) then
return false
end

return not (yhd.deconExceptions[szhl] and ho == 2)
end

function kc.misc.cards.burnAllowed(enq)
local savx = kc.misc.cards
local uzfe = savx.wantedFor(_d("XQYSVgskDFcXFF0"))

if not (uzfe == nil or uzfe[3] or uzfe[4]) then
savx.deconConfirmed = false

return true
end

if savx.deconConfirmed then
return true
end

if enq then
return false
end

if os.clock() < (savx.burnAskedAt or 0) then
return false
end

savx.burnAskedAt = os.clock() + 20

vdzw:Dialog({
Title = _d("exYDV0UhDFANE1YSUwJLQyRXDAUISxAQVUUQDEsHAgY"),
Description = _d("eBYFVkUXCFoMH0oRARhaF1FKAB0JSkMUTwABFBkAHkkcUwRXQwVRAFMAWBcSUQwdChkRHk4WUwxXB1FaBB0DVhdRWwBTGFcHHlcAXU0")
.. _d("bgYQTQ0WHxVDE1YWAEEZERBQAVMPVhACFUUEAksPFRkHHB5KT1FfDAAFUA0WFUU7DFUPHk4AFgMZAh9dRRYbXA0FGQYSH10QUVgXFk1RBh1dRREMWghRXAwHBVwRUU4ECkM"),
Buttons = {
{
Name = _d("exYDV0UHBVwO"),
Callback = function()
savx.deconConfirmed = true
savx.deconAt = 0
savx.manualAt = 0

pcall(function()
kc.misc.deconToggle:UpdateState(true)
end)
end,
},
{
Name = _d("egIfWgAf"),
Callback = function()
pcall(function()
kc.misc.deconToggle:UpdateState(false)
end)
end,
},
},
})

return false
end

function kc.misc.cards.wantedFor(jzc)
local ml = kc.misc.cards[jzc] or {}

if next(ml) == nil or ml[0] then
return nil
end

return ml
end

function kc.misc.cards.npcFor(rajl)
local fnby = workspace:FindFirstChild(_d("dzMySg"))

if not fnby then
return nil
end

local oze = rajl and _d("XxYCXDodHVo") or _d("XQYSVgsAGUsWEk06HR1a")

for qee, opzs in ipairs(fnby:GetChildren()) do
if opzs:GetAttribute(_d("dzMycAE")) == oze then
return opzs
end
end

local uv = rajl and { _d("dgwBUQkK"), _d("VgwBVRwW") } or { _d("agsQTAkS"), _d("cQIHXDEEAn0CFUo") }

for xcyy, kail in ipairs(fnby:GetChildren()) do
for kbst, cgtk in ipairs(uv) do
if kail.Name == cgtk then
return kail
end
end
end

local prov = rajl and { _d("WgIDXUUeCEsEGFcC"), _d("VgwBUQkK") } or { _d("XQYSVgsAGUsWEk0MHAM"), _d("SgsQTAkS") }

for dnd, bce in ipairs(fnby:GetChildren()) do
for dzec, pevx in ipairs(bce:GetDescendants()) do
if pevx:IsA(_d("bQYJTSkSD1wP")) and pevx.Text ~= _d("") then
local gyf = pevx.Text:lower()

for tvpn, jgr in ipairs(prov) do
if gyf:find(jgr, 1, true) then
return bce
end
end

break
end
end
end

return nil
end

function kc.misc.cards.rarityText(gpz)
local dct = kc.misc.cards.wantedFor(gpz)

if not dct then
return _d("eA8d")
end

local mqdm = {}

for hww, byt in pairs(kc.misc.cards.borderOf) do
if dct[byt] then
table.insert(mqdm, hww)
end
end

if #mqdm == 0 then
return _d("eA8d")
end

table.sort(mqdm)

return table.concat(mqdm, _d("FUM"))
end

function kc.misc.cards.run(qn, tzl, bzy)
local hkwg = kc.misc.cards
local sal = kc.misc.util
local yfb = qn and _d("VAYDXgAyGQ") or _d("XQYSVgsyGQ")

if bzy then
if os.clock() < hkwg[yfb] then
return false, _d("dwwFGQEGCBkaFE1L")
end
elseif os.clock() < hkwg.manualAt then
return false, _d("bgIYTUUSTVQMHFwLB0M")
end

if hkwg.inFlight then
return false, _d("eA0eTQ0WHxkAEEsBUxlLCgEZDABNWA8DXAQXFBkRBFcLGgNeTQ")
end

local nas = drcb.busy(1) and 1 or (drcb.busy(2) and 2 or nil)
local irgl = os.clock() - (hlkv.floorAt or 0) < 90
local gpqs = nas ~= nil and drcb.towerSlot() == nas and irgl

if nas and not gpqs then
return false, _d("cA1RWEURDE0XHVxFXk1NCxQZEQEESUMGVhAfCRkGH11FGhkX")
end

if cdau.battlePending and os.time() < (cdau.battlePendingUntil or 0) then
return false, _d("eEMTWBEHAVxDGEpFABlYEQVQCxRNFEMFUQBTGUsKARkSHBhVB1FaBB0OXA9RUBFd")
end

if not qn and not hkwg.burnAllowed() then
return false, _d("egwfXwwBABkxEFALEQJOTCRXDAUISxAQVUUVBEsQBRc")
end

local hyk = hkwg.npcFor(qn)

if not hyk then
return false, qn
and _d("dgwBUQkKTVAQUVcKB01QDVFNDRoeGQ4QSUVeTU0REE8AH01NDFFRDB5NWA0VGRUBCEoQUVARUwxeAhhXSw")
or _d("bQsUGQEWDlYNAk0XBg5NQz9pJlMESkMfVhFTBFdDBVEMAE1UAgEZSFMZSwIHXAlTGVZDGE1FEgNdQwFLAAAeGQoFGQQUDFANXw")
end

local bwms = qn and ioe.OpenFuseDialog or ioe.OpenDeconstructDialog
local zyws = qn and ioe.FuseCards or ioe.DeconstructCards

if not (bwms and zyws) then
return false, _d("bQsQTUUaHhkNHk1FGgMZFxlQFlMKWA4UGRMWH0oKHldL")
end

local kix = qn and _d("VAYDXgAkDFcXFF0") or _d("XQYSVgskDFcXFF0")
local cwck = hkwg.wantedFor(kix)

hkwg.manualAt = os.clock() + hkwg.manualGap

if bzy then
hkwg[yfb] = os.clock() + hkwg.interval
end

hkwg.inFlight = true

task.spawn(function()

local bjz = nil

local function sji(nkk, zfg)
if qn then
hkwg.mergeDone = nkk
else
hkwg.deconDone = nkk
end

if zfg and bzy then
hkwg[yfb] = os.clock() + 120
end

hkwg.inFlight = false
end

local nxhi = sal.visit(hyk.Name)

if not nxhi then
sji(_d("egsQSwQQGVwRUVAWUwNWF1FLABIJQENcGRcWGUsaGFcCUwRXQwVOClMAUA0ETQAAQw"), true)

return
end

task.wait(0.9)

local aud = nil
local hpoz = jdcu(bwms.OnClientEvent, function(zds)
if type(zds) == _d("TQITVQA") then
aud = zds
end
end)

for fmvx = 1, 3 do
pcall(function()
bwms:FireServer()
end)

for kxk = 1, 20 do
if aud then
break
end

task.wait(0.3)
end

if aud then
break
end

task.wait(1.5)
end

hpoz:Disconnect()
sal.returnTo(nxhi)

if type(aud) ~= _d("TQITVQA") then
sji(_d("bQsUGQEaDFUMFhkBGgkZDR5NRRIDShQUS0VeTUsGBUscGgNeQxhXRQcaVkMcUAsGGVwQXw"), true)

return
end

local qsja = {}

for gfa, jxej in ipairs(aud) do
local ciki = tonumber(jxej.borderLevel)
local xkd = jxej.cardId or jxej.id

if ciki and (not cwck or cwck[ciki])
and (qn or not kc.misc.cards.isProtected(xkd, ciki)) then
table.insert(qsja, jxej)
end
end

if #qsja == 0 then

kc.misc.cards.closeFrame(qn)
sji(_d("dwwFUQwdChkXHhkWFgNdQxdWF1M") .. kc.misc.cards.rarityText(kix) .. _d("Fw"))

return
end

if tzl then

local tfj = {}

for hjtr, omzc in ipairs(qsja) do
if (tonumber(omzc.count) or 0) >= tzl then
table.insert(tfj, omzc)
end
end

if #tfj == 0 then
kc.misc.cards.closeFrame(qn)
sji(_d("dwxR") .. kc.misc.cards.rarityText(kix) .. _d("GREeTkUbDEpD") .. tzl .. _d("GQAeSQwWHhkaFE1L"))

return
end

qsja = tfj

table.sort(qsja, function(dbz, uml)
return (tonumber(dbz.count) or 0) < (tonumber(uml.count) or 0)
end)

local odc, akoq = {}, 0

for nrwr, zj in ipairs(qsja) do
local mzmo = tonumber(zj.count) or 0

if #odc > 0 and akoq + mzmo > tzl then
break
end

table.insert(odc, zj)
akoq = akoq + mzmo
end

qsja = odc
bjz = akoq
end

local da = 0

kc.misc.cards.closeFrame(qn)

if qn then
if not cwck then

pcall(function()
zyws:FireServer(_d("WA8d"), nil)
end)

da = #qsja
else
local mxo = {}

for ofm, btb in ipairs(qsja) do
table.insert(mxo, { btb.cardId, tonumber(btb.borderLevel) })
end

pcall(function()
zyws:FireServer(_d("SgYdXAYHCF08EFUJ"), mxo)
end)

da = #mxo
end
else
local tww = {}

for wlo, kulr in ipairs(qsja) do
if #tww >= 25 then
break
end

table.insert(tww, { kulr.cardId, tonumber(kulr.borderLevel), _d("WA8d") })
end

pcall(function()
zyws:FireServer(tww)
end)

da = #tww
end

sji(_d("agYfTUU") .. tostring(da) .. _d("GREeTg") .. (da == 1 and _d("") or _d("Sg"))
.. _d("GUs") .. kc.misc.cards.rarityText(kix) .. _d("EA")
.. (bjz and (_d("FUM") .. tostring(bjz) .. _d("GQAQSwEA")) or _d("")))
end)

return true
end

function kc.misc.cards.closeFrame(ofh)
pcall(function()
local mcaw = ofh and { _d("fxYCXCIGBA"), _d("fxYCXCMBDFQG") } or { _d("fQYSVgsAGUsWEk0iBgQ"), _d("fQYSVgsAGUsWEk0jAQxUBg") }
local nxhc = require(phy.ModuleScripts.MenuManager)
local ledp = hk:FindFirstChild(mcaw[1])
local gwk = ledp and ledp:FindFirstChild(mcaw[2])

if gwk then
nxhc.close(gwk)
end

if not ofh then
local pbj = ledp and ledp:FindFirstChild(_d("fQYSVgsAGUsWEk03EhlcEDdLBB4I"))

if pbj then
nxhc.close(pbj)
else
pbj = hk:FindFirstChild(_d("fQYSVgsAGUsWEk03EhlcEDdLBB4I"))

if pbj then
nxhc.close(pbj)
end
end
end
end)
end

function kc.misc.cards.refresh(ftjj)

local ik = ftjj and kc.misc.mergeParagraph or kc.misc.deconParagraph

if not ik then
return
end

pcall(function()
ik:UpdateBody(ftjj
and kc.misc.cards.mergeText()
or kc.misc.cards.deconText())
end)
end

function kc.misc.cards.mergeText()
local ldpy = kc.misc.cards

return _d("awIDUBEaCEpZUQ") .. ldpy.rarityText(_d("VAYDXgAkDFcXFF0")) .. _d("Mw") .. ldpy.mergeDone
end

function kc.misc.cards.deconText()
local ix = kc.misc.cards

return _d("awIDUBEaCEpZUQ") .. ix.rarityText(_d("XQYSVgskDFcXFF0")) .. _d("Mw") .. ix.deconDone
.. _d("MzQUWBEbCEtPUVsKAB4VQwNYDBdBGRQeSwkXTVsMAkpJUwtQEBlQCxRBGSsQVQkcGlwGHxkEHQkZBgdcCwdNWgIDXRZTDEsGUVcABQhLQwJcCwdD")
end

kc.misc.skill = {
on = false,
at = 0,
mainWanted = {},
raidWanted = {},

mainOrder = {},
raidOrder = {},
last = _d("dwwFUQwdChkBHkwCGxkZGhRN"),
shown = _d(""),
}

function kc.misc.skill.branchMap(iop)
local ge = {}

for bwhr, urvl in ipairs(dj.Trees[iop].branches) do
ge[urvl.name] = urvl
end

return ge
end

function kc.misc.skill.branchLabels(qbir)
local idqo = {}

for gykg, zlpa in ipairs(dj.Trees[qbir].branches) do
table.insert(idqo, zlpa.name)
end

return idqo
end

function kc.misc.skill.wantedFrom(dt, lyas)
local itkm = {}
local zlmf = kc.misc.skill.branchMap(lyas)

if type(dt) == _d("TQITVQA") then
for iwif, mss in pairs(dt) do
if mss and zlmf[tostring(iwif)] then
itkm[zlmf[tostring(iwif)].id] = true
end
end
end

return itkm
end

function kc.misc.skill.ordered(uvpd, qaqa)
local ppes = {}
local maw = {}

for dqz, woo in ipairs(qaqa or {}) do
if uvpd[woo] then
table.insert(ppes, woo)
maw[woo] = true
end
end

for rveu in pairs(uvpd) do
if not maw[rveu] then
table.insert(ppes, rveu)
end
end

return ppes
end

function kc.misc.skill.branchById(ew)
local uet = {}

for gd, uzpf in ipairs(dj.Trees[ew].branches) do
uet[uzpf.id] = uzpf
end

return uet
end

function kc.misc.skill.upgrade()
local wxx = kc.misc.skill
local spso = kc.misc.util
local wemh = spso.currentProfile and spso.currentProfile()

if type(wemh) ~= _d("TQITVQA") then
return false, _d("dwxRSRccC1APFBkcFhkX")
end

local qnn = wemh.skillTrees or {}
local rwp = { [1] = wxx.mainOrder, [2] = wxx.raidOrder }
local iasp = nil

for hyn, dbrg in ipairs(dj.Trees) do
local ipr = qnn[dbrg.id]
local yjzs = tonumber(wemh[dbrg.pointsField or _d("SggYVQkjAlANBUo")]) or 0
local hfji = kc.misc.skill.branchById(hyn)

if type(ipr) == _d("TQITVQA") and yjzs > 0 then
for jqip, cwml in ipairs(rwp[hyn] or {}) do
local cnd = hfji[cwml]

if cnd and not iasp then
local bu = dj.getBranchLevel(qnn, dbrg.id, cnd.id) or 0
local vhh = bu + 1

if vhh <= cnd.levels then
local drhf = cnd.id .. vhh
local xml = 1

if type(cnd.costs) == _d("TQITVQA") and tonumber(cnd.costs[vhh]) then
xml = tonumber(cnd.costs[vhh])
elseif tonumber(cnd.cost) then
xml = tonumber(cnd.cost)
end

if xml <= yjzs and dj.isAvailable(qnn, dbrg.id, drhf) then
iasp = { tree = dbrg.id, node = drhf, name = cnd.name, level = vhh }
end
end
end
end
end
end

if not iasp then
return false, _d("dwwFUQwdChkXHhkHBhQZGhRNSw")
end

ioe.BuySkillNode:FireServer(iasp.tree, iasp.node)

if spso.askProfile then
pcall(spso.askProfile)
end

wxx.last = _d("ewwEXg0HTQ") .. iasp.name .. _d("GQ") .. tostring(iasp.level)

return true
end

function kc.misc.skill.text()
local xwks = kc.misc.skill
local afun = kc.misc.util
local qej = afun.currentProfile and afun.currentProfile()

if type(qej) ~= _d("TQITVQA") then
return _d("aQwYVxEAVxlcew") .. xwks.last
end

local lm = qej.skillTrees or {}
local wwlc = {}

local lbfj = { [1] = xwks.mainOrder, [2] = xwks.raidOrder }

for vcod, bex in ipairs(dj.Trees) do
local cms = tonumber(qej[bex.pointsField or _d("SggYVQkjAlANBUo")]) or 0
local psw = {}
local pujp = kc.misc.skill.branchById(vcod)

for lxy, ojbu in ipairs(lbfj[vcod] or {}) do
local aqa = pujp[ojbu]

if aqa then
local fkaq = dj.getBranchLevel(lm, bex.id, aqa.id) or 0
table.insert(psw, aqa.name .. _d("GQ") .. tostring(fkaq) .. _d("Fg") .. tostring(aqa.levels))
end
end

wwlc[#wwlc + 1] = bex.name .. _d("A0M") .. tostring(cms) .. _d("GRMFSg")
.. (#psw > 0 and (_d("GU5R") .. table.concat(psw, _d("FUM"))) or _d("GU5RVwoHBVANFhkVGg5SBhU"))
end

wwlc[#wwlc + 1] = xwks.last

return table.concat(wwlc, _d("Mw"))
end

kc.misc.mergeSection = kc.misc.tab:Section({
Side = _d("dQYXTQ"),
})

kc.misc.mergeSection:Header({
Name = _d("dAYDXgBTnabE3Q"),
})

kc.misc.mergeToggle = kc.misc.mergeSection:Toggle({
Name = _d("eBYFVkUeCEsEFA"),
Default = false,
Callback = function(sir)
local fwc = kc.misc.cards

fwc.mergeOn = sir

fwc.mergeAt = (sir and dwrz.loading) and (os.clock() + fwc.interval) or 0
end,
}, _d("WBYFVjoeCEsEFA"))

kc.misc.mergeDropdown = kc.misc.mergeSection:Dropdown({
Name = _d("awIDUBEaCEo"),
Search = false,
Multi = true,
Required = false,
Default = { _d("eA8d") },
Options = kc.misc.cards.rarityLabels,
Callback = function(ckls)
local qr = {}

if type(ckls) == _d("TQITVQA") then
for tt, kg in pairs(ckls) do
if kg then
if tt == _d("eA8d") then
qr[0] = true
else
qr[kc.misc.cards.borderOf[tostring(tt)]] = true
end
end
end
end

kc.misc.cards.mergeWanted = qr
kc.misc.cards.refresh(true)
end,
}, _d("SwIDUBEaCEo"))

kc.misc.mergeSection:Button({
Name = _d("dAYDXgBTA1YU"),
Callback = function()
local lpg, arz = kc.misc.cards.run(true)

if not lpg then
vdzw:Notify({
Title = _d("dAYDXgA"),
Description = arz,
Lifetime = 6,
})
end
end,
})

kc.misc.mergeSection:Button({
Name = _d("dAYDXgBTVAk"),
Callback = function()

local vigl, xpzb = kc.misc.cards.run(true, 90)

if not vigl then
vdzw:Notify({
Title = _d("dAYDXgBTVAk"),
Description = xpzb,
Lifetime = 6,
})
end
end,
})

kc.misc.mergeParagraph = kc.misc.mergeSection:Paragraph({
Header = _d("ahcQTRAA"),
Body = kc.misc.cards.mergeText(),
})

kc.misc.accSection = kc.misc.tab:Section({
Side = _d("awoWURE"),
})

kc.misc.accSection:Header({
Name = _d("eAASXBYAAksKFEpFg/Kr7Q"),
})

kc.misc.accToggle = kc.misc.accSection:Toggle({
Name = _d("eBYFVkURCEoXUVgGEAhKEB5LHA"),
Default = false,
Callback = function(grdw)
kc.misc.util.accOn = grdw
kc.misc.util.accAt = 0
end,
}, _d("WBYFVjoRCEoXLlgGEAhKEB5LHA"))

kc.misc.accBuyToggle = kc.misc.accSection:Toggle({
Name = _d("eBYFVkURGEBDE1wWBw"),
Default = false,
Callback = function(odq)
kc.misc.util.accBuyOn = odq
kc.misc.util.accBuyAt = 0
kc.misc.util.accAt = 0
end,
}, _d("WBYFVjoRGEA8E1wWBw"))

kc.misc.accSection:Button({
Name = _d("exYIGQcWHk0"),
Callback = function()
local tyn, ldbq = kc.misc.util.buyBest()

if not tyn then
vdzw:Notify({
Title = _d("eAASXBYAAksKFEo"),
Description = ldbq,
Lifetime = 6,
})
end
end,
})

kc.misc.accSection:Button({
Name = _d("fBIEUBVTD1wQBQ"),
Callback = function()
if not kc.misc.util.equipBest() then
vdzw:Notify({
Title = _d("eAASXBYAAksKFEo"),
Description = _d("dwwFUQwdChkBFE0RFh8ZCgIZCgQDXAdRQAAHQw"),
Lifetime = 5,
})
end
end,
})

kc.misc.accParagraph = kc.misc.accSection:Paragraph({
Header = _d("ahcQTRAA"),
Body = kc.misc.util.accText(),
})

kc.misc.claimInfo = kc.misc.tab:Section({
Side = _d("awoWURE"),
})

kc.misc.claimInfo:Header({
Name = _d("dAoCWgAfAVgNFFYQAA"),
})

kc.misc.indexParagraph = kc.misc.claimInfo:Paragraph({
Header = _d("egIDXUU6A10GCQ"),
Body = kc.misc.util.indexText(),
})

kc.misc.achParagraph = kc.misc.claimInfo:Paragraph({
Header = _d("eAAZUAAFCFQGH00W"),
Body = kc.misc.util.achText(),
})

kc.misc.questParagraph = kc.misc.claimInfo:Paragraph({
Header = _d("aBYUShEA"),
Body = kc.misc.util.questText(),
})

kc.misc.packParagraph = kc.misc.claimInfo:Paragraph({
Header = _d("aQISUhY"),
Body = kc.misc.util.packText(),
})

kc.misc.skillSection = kc.misc.tab:Section({
Side = _d("awoWURE"),
})

kc.misc.skillSection:Header({
Name = _d("aggYVQlTOUsGFBmV7OGK"),
})

kc.misc.skillToggle = kc.misc.skillSection:Toggle({
Name = _d("eBYFVkUGHV4REF0A"),
Default = false,
Callback = function(ph)
local net = kc.misc.skill

if ph and not (next(net.mainWanted) or next(net.raidWanted)) then
net.on = false

pcall(function()
kc.misc.skillToggle:UpdateState(false)
end)

vdzw:Dialog({
Title = _d("aQoSUkUSTVsREFcGG01fCgNKEQ"),
Description = _d("egseVhYWTVgXUVUAEh5NQx5XAFMPSwIfWg1TBFdDBVEAUyBYCh8ZEQEIXEMeS0UhDFAHUU0XFggZBwNWFRcCTg1RFEU")
.. _d("eBYFVkUGHV4REF0AUwJXDwgZFgMIVwcCGRUcBFcXAhkSGwhLBlFACgZNSQwYVxFTBE1N"),
Buttons = {
{
Name = _d("fgwFGQwH"),
},
},
})

return
end

net.on = ph
net.at = 0
end,
}, _d("WBYFVjoGHV4REF0A"))

kc.misc.skillMainDropdown = kc.misc.skillSection:Dropdown({
Name = _d("dAIYV0UHH1wG"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = kc.misc.skill.branchLabels(1),
Callback = function(ka)
local xid = kc.misc.skill
local kfk = xid.wantedFrom(ka, 1)

xid.mainWanted = kfk
xid.mainOrder = xid.ordered(kfk, xid.mainOrder)
xid.shown = _d("")
end,
}, _d("VAIYVzoHH1wG"))

kc.misc.skillRaidDropdown = kc.misc.skillSection:Dropdown({
Name = _d("awIYXUUHH1wG"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = kc.misc.skill.branchLabels(2),
Callback = function(tjj)
local lbe = kc.misc.skill
local lhxo = lbe.wantedFrom(tjj, 2)

lbe.raidWanted = lhxo
lbe.raidOrder = lbe.ordered(lhxo, lbe.raidOrder)
lbe.shown = _d("")
end,
}, _d("SwIYXToHH1wG"))

pcall(function()
kc.misc.skillMainDropdown:UpdateSelection({})
end)

pcall(function()
kc.misc.skillRaidDropdown:UpdateSelection({})
end)

kc.misc.skillParagraph = kc.misc.skillSection:Paragraph({
Header = _d("ahcQTRAA"),
Body = kc.misc.skill.text(),
})

task.spawn(function()
local lbvw = kc.misc.util

while tpm() do
if lbvw.indexOn or lbvw.achOn or lbvw.questOn or lbvw.accOn or lbvw.accBuyOn then
lbvw.currentProfile()
end

if lbvw.indexOn then
lbvw.claimIndex()
end

if lbvw.achOn then
lbvw.claimAchievement()
end

if lbvw.questOn then

if os.clock() - lbvw.questAskedAt > 20 or os.clock() - lbvw.weeklyAskedAt > 20 then
lbvw.askQuests()
end

lbvw.claimQuest()
end

if lbvw.accOn and os.clock() >= lbvw.accAt then
lbvw.accAt = os.clock() + 3
lbvw.equipBest()
end

local eyqb = kc.misc.cards

if not eyqb.inFlight then
if eyqb.mergeOn and os.clock() >= eyqb.mergeAt then
eyqb.run(true, nil, true)
elseif eyqb.deconOn and os.clock() >= eyqb.deconAt then
eyqb.run(false, nil, true)
end
end

if eyqb.mergeDone ~= eyqb.mergeShown then
eyqb.mergeShown = eyqb.mergeDone

pcall(function()
kc.misc.mergeParagraph:UpdateBody(kc.misc.cards.mergeText())
end)
end

if eyqb.deconDone ~= eyqb.deconShown then
eyqb.deconShown = eyqb.deconDone

pcall(function()
kc.misc.deconParagraph:UpdateBody(kc.misc.cards.deconText())
end)
end

local qzhr = kc.misc.skill

if qzhr.on and os.clock() >= qzhr.at then

qzhr.at = os.clock() + 2
qzhr.upgrade()
end

local wlr = kc.misc.skill.text()

if qzhr.shown ~= wlr then
qzhr.shown = wlr

pcall(function()
kc.misc.skillParagraph:UpdateBody(wlr)
end)
end

if lbvw.accBuyOn and os.clock() >= lbvw.accBuyAt then

local wxi = lbvw.buyBest()

lbvw.accBuyAt = os.clock() + (wxi and 45 or 10)
end

local rid = {
{ key = _d("UA0VXB0"), paragraph = kc.misc.indexParagraph, value = lbvw.indexText() },
{ key = _d("WAAZ"), paragraph = kc.misc.achParagraph, value = lbvw.achText() },
{ key = _d("SBYUShE"), paragraph = kc.misc.questParagraph, value = lbvw.questText() },
{ key = _d("SQISUg"), paragraph = kc.misc.packParagraph, value = lbvw.packText() },
{ key = _d("WAAS"), paragraph = kc.misc.accParagraph, value = lbvw.accText() },
}

for wahu, zt in ipairs(rid) do
if zt.paragraph and lbvw.shown[zt.key] ~= zt.value then
lbvw.shown[zt.key] = zt.value

pcall(function()
zt.paragraph:UpdateBody(zt.value)
end)
end
end

task.wait(0.75)
end
end)

local an = dbx:Section({
Side = _d("awoWURE"),
})

an:Paragraph({
Header = _d("fwoCUQwdCg"),
Body = _d("eBYFVkU1BEoLUVwUBgRJEFFACgYfGREeXUlTC1gAFEpFBwVcQwZYERYfGQIfXUUQDEoXAhkKHU1QFwIZCgQDFUMFUQAdTUsGFFUWUxpRBh8ZFhwAXBcZUAsUTVsKBVwWXU1tM1FNClMvWBpRSRAfAUpDCFYQUw9YABoZERxNTQsUGQcSFBkFGEsWB0EZAh9dRQcFXEMFTgpTKVwGAVwWB01uAgVcF1MeTgoFWg0WHhkLHlUBUxlRBlFKFRwZGRoeTEUECEsGUUoREgNdCh9eRRwDGRQZXAtTFFYWUVgXHghdQwVRAB5NFEMFUQBTCVwGAVwWB01LCh9eRRAMSxEYXBZTGVEGUVsMFApcEAUZCQYOUkMTVgsGHhdpe20NFk1KCx5JRREYQBBRWAsXTVwSBFAVAE1LDBVKRRIDXUMTWAwHTU4KBVFFBwVcQxJYFgceGRoeTEUbDE8GXxknBhRQDRYZCxYIXRBRTQ0WTVoMBFcRFh8ZTlFbCgcFGQAeVABTC0sMHBkRGwgZJRhKDRYfVAIfF295LlgXElEAAE1SBhRJFlMMGREEVwsaA15DBVgJHxQZAQgZDAcIVEMQVwFTHlgVFEpFGhkVQwJWRQcFXEMFVhESARkAEEsXGghKQx5PAAFNWwYFTgAWAxkQFEoWGgJXEF8"),
})

local pymh = dbx:Section({
Side = _d("awoWURE"),
})

pymh:Header({
Name = _d("egIFWg0WHg"),
})

local xuao

xuao = pymh:Paragraph({
Header = _d("bgsQTUUKAkxDElgQFAVN"),
Body = uho(),
})

local vzqt = dbx:Section({
Side = _d("awoWURE"),
})

vzqt:Header({
Name = _d("cBAdWAsXTUoLHkk"),
})

vzqt:Toggle({
Name = _d("eBYFVkUQH1gFBRkXHAk"),
Default = false,
Callback = function(ykgw)
ic.island.autoRod = ykgw
ic.islandAt = 0
end,
}, _d("UBAdWAsXMlgWBVY6AQJd"))

vzqt:Toggle({
Name = _d("eBYFVkUQH1gFBRkEEA5cEAJWFwo"),
Default = false,
Callback = function(hcm)
ic.island.autoAcc = hcm
ic.islandAt = 0
end,
}, _d("UBAdWAsXMlgWBVY6Eg5aBgJKCgEU"))

vzqt:Toggle({
Name = _d("fBIEUBVTDFoAFEoWHB9A"),
Default = false,
Callback = function(zf)
ic.island.equipAcc = zf
ic.islandAt = 0
end,
}, _d("UBAdWAsXMlwSBFAVLAxaABRKFhwfQA"))

local zz

zz = vzqt:Paragraph({
Header = _d("cBAdWAsXTV4GEEs"),
Body = ic.shopIsland.text(),
})

local vykq = dbx:Section({
Side = _d("dQYXTQ"),
})

vykq:Header({
Name = _d("awYTUBcHBQ"),
})

ic.rebirthToggle = vykq:Toggle({
Name = _d("eBYFVkUBCFsKA00N"),
Default = false,
Callback = function(ig)
ic.autoRebirth = ig
end,
}, _d("WBYFVjoBCFsKA00N"))

ic.rebirthParagraph = vykq:Paragraph({
Header = _d("ahcQTRAA"),
Body = ic.rebirthText(),
})

vykq:Button({
Name = _d("bTNRTQpTBEoPEFcB"),
Callback = function()
if not ic.gotoIsland() then
vdzw:Notify({
Title = _d("eAEQVwEcA1wHUXAWHwxXBw"),
Description = _d("egsQSwQQGVwRUVAWUwNWF1FLABIJQEMIXBFTQBkXA0BFEgpYCh8ZDB1NWEMcVggWA01N"),
Lifetime = 5,
})
end
end,
})

local lmd

lmd = vykq:Toggle({
Name = _d("eBYFVkU6HlUCH11FOwxLBxJWFxY"),
Default = false,
Callback = function(khg)
xk.island = khg
xk.pending = false
xk.pendingUntil = 0
xk.paused = false
xk.gaveUp = false
xk.stoodDown = false
xk.manualPause = false

if not khg then
return
end

if drcb.otherTowerOn(_d("UQIDXQYcH1w")) then
xk.island = false

pcall(function()
lmd:UpdateState(false)
end)

pcall(function()
vdzw:Dialog({
Title = _d("eBYFVkU6HlUCH11FOwxLBxJWFxZNVgUX"),
Description = _d("bQsUGS0SAVUMBlwAHU1NDAZcF1MESkMQVRcWDF0aUUsQHQNQDRYVRRIDXUMGUBEbTVYNFBkWHwJNQwVRAFMKWA4UGQodAUBDA0wLAE1WDRQZDB0LUA0YTQBTH1YMHBkEB01YQwVQCBZDGTcESwtTGVECBRkKFQsVQx5LRQcYSw1RVgtTLEwXHhk2HwJNQwJWRRYMWgtRTQoECEtDFlwRAE1QFwIZCgQDGRAdVhFd"),
Buttons = {
{
Name = _d("fgwFGQwH"),
},
},
})
end)

return
end

if drcb.enabled and drcb.hardcoreSlot() == nil then
xk.island = false

pcall(function()
lmd:UpdateState(false)
end)

pcall(function()
vdzw:Dialog({
Title = _d("eBYFVkU6HlUCH11FOwxLBxJWFxZNVgUX"),
Description = _d("dwxRSgkcGRkKAhkWFhkZFx4ZBFMZVhQUS0lTDFcHUU0NFk1eAhxcRRwDVRpRShESH00QUVhFBwJOBgMZFwYDGQUDVghTDBkXHk4AAU1KDx5NS1M+XBdRVgsWTU0MUXAWHwxXB1FRBAEJWgwDXElTAktDBUwXHU14FgVWRSABVhdRVgMVQw"),
Buttons = {
{
Name = _d("fgwFGQwH"),
},
},
})
end)

return
end

if not xk.data then
xk.island = false

pcall(function()
lmd:UpdateState(false)
end)

pcall(function()
vdzw:Dialog({
Title = _d("eBYFVkU6HlUCH11FOwxLBxJWFxZNVgUX"),
Description = _d("bQsYSkURGFAPFRkNEh4ZDR4ZLRIfXQAeSwAnAk4GA30EBwwVQwJWRQcFXEMFVhIWHx4QUUoREgpcEFFaBB0DVhdRWwBTH1wCFRkEHQkZAlFLEB1NWgIfVwoHTVsGUUoREh9NBhUX"),
Buttons = {
{
Name = _d("fgwFGQwH"),
},
},
})
end)

return
end

local tjw = xk.remotes.request

if tjw then
pcall(function()
tjw:FireServer()
end)
end
end,
}, _d("WBYFVjoaHlUCH106GwxLBxJWFxY"))

xk.islandToggle = lmd

xk.islandParagraph = vykq:Paragraph({
Header = _d("exYXXxY"),
Body = xk.buffText(),
})

vykq:Button({
Name = _d("aQIESgBTJEoPEFcBUyVYERVaCgEI"),
Callback = function()
if xk.pauseRun then
xk.pauseRun()
end
end,
})

vykq:Button({
Name = _d("fgoHXEUmHRkqAlUEHQkZKxBLARACSwY"),
Callback = function()
if xk.giveUpRun then
xk.giveUpRun()
end
end,
})

local fum = dbx:Section({
Side = _d("dQYXTQ"),
})

fum:Header({
Name = _d("fwoCUQwdChkQGVYV"),
})

fum:Toggle({
Name = _d("eBYFVkURGEBDE1wWB01LDBU"),
Default = false,
Callback = function(cxcl)
ic.shop.autoBuyRod = cxcl
ic.shopAt = 0
end,
}, _d("WBYFVjoRGEA8E1wWBzJLDBU"))

fum:Toggle({
Name = _d("eBYFVkURGEBDE1wWB01bAhhN"),
Default = false,
Callback = function(sj)
ic.shop.autoBuyBait = sj
ic.shopAt = 0
end,
}, _d("WBYFVjoRGEA8E1wWBzJbAhhN"))

fum:Toggle({
Name = _d("fBIEUBVTD1wQBRkXHAk"),
Default = false,
Callback = function(mih)
ic.shop.equipRod = mih
ic.shopAt = 0
end,
}, _d("XBIEUBUsD1wQBWYXHAk"))

fum:Toggle({
Name = _d("fBIEUBVTD1wQBRkHEgRN"),
Default = false,
Callback = function(jrv)
ic.shop.equipBait = jrv
ic.shopAt = 0
end,
}, _d("XBIEUBUsD1wQBWYHEgRN"))

local yqb

yqb = fum:Paragraph({
Header = _d("ewYCTUUKAkxDElgLUwhIFhhJ"),
Body = vhpn(),
})
task.spawn(function()
local bcpn = mab()
local zdr = uho()
local igv = vhpn()
local zi = ic.shopIsland.text()

while tpm() do
local jvs = mab()

if jvs ~= bcpn then
bcpn = jvs
pcall(function()
dp:UpdateBody(jvs)
end)
end

local akv = uho()

if akv ~= zdr then
zdr = akv
pcall(function()
xuao:UpdateBody(akv)
end)
end

local pp = vhpn()

if pp ~= igv then
igv = pp
pcall(function()
yqb:UpdateBody(pp)
end)
end

local tye = ic.shopIsland.text()

if tye ~= zi then
zi = tye
pcall(function()
zz:UpdateBody(tye)
end)
end

task.wait(1)
end
end)

task.spawn(function()
while tpm() do

if wb() and os.clock() >= (ic.shopAt or 0)
and os.clock() >= (ic.islandTripUntil or 0) then
ic.shopAt = os.clock() + 1
pcall(wos)
end

if ic.shopIsland.active() and os.clock() >= (ic.islandAt or 0)
and os.clock() >= math.max(ic.shopHoldUntil or 0, ic.tpHoldUntil or 0) then
ic.islandAt = os.clock() + 2
pcall(ic.shopIsland.run)
end

task.wait(1)
end
end)

wpan:Select()

local ars = wpan:Section({
Side = _d("dQYXTQ"),
})

local ngu = wpan:Section({
Side = _d("awoWURE"),
})

local dufq = ars:Paragraph({
Header = _d("ahcQTRAA"),
Body = gkqe(),
})

ars:Divider()

cdau.npcToggle = ars:Toggle({
Name = _d("eBYFVkU9PXo"),
Default = false,
Callback = function(bbe)

if bbe and not cdau.story and #xe() == 0 then
pcall(function()
cdau.npcToggle:UpdateState(false)
end)

vdzw:Dialog({
Title = _d("eBYFVkU9PXpDH1wAFx4ZAlFNBAEKXBc"),
Description = _d("aQoSUkUSGRkPFFgWB01WDRQZKyMuGQUDVghTGVEGUU4KAQFdEFFbAB8CTk9RVhdTGUwRHxkKHU14FgVWRTACVBMdXBEWTWoXHkscXU1tCxRLAFMESkMfVhEbBFcEUU0KUwtQBBlNRQoITU0"),
Buttons = {
{
Name = _d("fgwFGQwH"),
},
},
})

return
end

cdau.enabled = bbe
end,
}, _d("WBYFVjodHVo"))

ars:Toggle({
Name = _d("bgIdUkUHAhktIXo"),
Default = false,
Callback = function(gl)
cdau.walkToNpc = gl
end,
}, _d("TgIdUjoHAmYNAVo"))

ars:Dropdown({
Name = _d("fQoXXwwQGFUXCA"),
Search = false,
Multi = true,
Required = false,
Default = { _d("dwwDVAQf") },
Options = oi,
Callback = function(ctgk)
local xdta = {}

if type(ctgk) == _d("TQITVQA") then
for bla, njs in ipairs(oi) do
if ctgk[njs] then
table.insert(xdta, lg[njs])
end
end
end

if #xdta == 0 then
xdta = { _d("VwwDVAQf") }
end

cdau.difficulties = xdta
end,
}, _d("XQoXXwwQGFUXCA"))

ars:Toggle({
Name = _d("eBYFVkUhAlYOAg"),
Default = false,
Callback = function(nmso)
oyaa.enabled = nmso
oyaa.inBattle = false
oyaa.pending = false
end,
}, _d("WBYFVjoBAlYOAg"))

local rhi = wpan:Section({
Side = _d("dQYXTQ"),
})

rhi:Header({
Name = _d("ag8eTQ"),
})

rhi:Paragraph({
Header = _d("cQwGGREbCBkQHVYRAE1ODANS"),
Body = _d("ag8eTUVCTRRDOFcDGgNQFwgZMRwaXBFREQscH1QCHRkKAU13ChZRER4MSwZYGQoBTXECHVUKBAhcDVFtCgQIS09RSQkGHhktIXpFEQxNFx1cFlMaUQYfGRYfAk1DQxkMAE1bFgJAS3lnag8eTUVBTRRDP2kmAEEZERBQAQBBGREeVggAQRkqAlUEHQkZKxBLARACSwZfM28xAk0LUUoJHBlKQx5XRT09ekMTWBEHAVwQSxkRBAIZLSF6RRUIWBcESwAATVgXUVYLEAgVQxBXAVMMGREQUAFTD1YQAhkAEg5RTXszMQQCGRceTgABTUsWH0pFGh4ZFxlcRRwDVRpRSwAVGEoGFRkVEgRLQ1wZLAABWA0VGS0SH10AHksAUwJXQxNWERtNSg8eTRZTBEpDHlcAUx9MDVFYFhgIXUMXVhdTGU4KElxLeWdqDx5NFlMCXwVLGQodCBkQHVYRX01NDAZcFwBNTQIaXEUHGEsNAhc"),
})

drcb.toggle = rhi:Toggle({
Name = _d("eBYFVkUgAVYX"),
Default = false,
Callback = function(zkix)
if zkix and drcb.role[1] == drcb.role[2] and drcb.role[1] ~= _d("VxMS") then
drcb.enabled = false

pcall(function()
drcb.toggle:UpdateState(false)
end)

vdzw:Dialog({
Title = _d("eBYFVkUgAVYX"),
Description = _d("ag8eTUVCTVgNFRk2HwJNQ0MZBAEIGQEeTQ1T") .. drcb.roleLabel(1) .. _d("F0MlUQQHTVAQUVYLFk1LFh8ZBAAGXAdRXwoBTU0UGFoAX01KDFFWCxZNVgVRTQ0WTU0UHhkWHwJNEFFRBABNTQxRWwBTHlYOFE0NGgNeQxRVFhZD"),
Buttons = {
{
Name = _d("fgwFGQwH"),
},
},
})

return
end

drcb.enabled = zkix

if zkix then
drcb.hasSlot2 = drcb.detectSlot2()

if drcb.hasSlot2 == false then
vdzw:Dialog({
Title = _d("eBYFVkUgAVYX"),
Description = _d("ag8eTUVBTVUMHlIWUwFWABpcAVNAGQoFGQsWCF0QUU0NFk19FhBVRTEMTRcdXEUgAVYXUV4EHghJAgJKSVMCS0M4VwMaA1AXFBk3HAJUQ0MMVVMOVQYQSwAXQRkBFF8KAQgZFxlcRQAIWgwfXUUAAVYXUVoEHU1bAgVNCRZDGTEeTBEaA15DAk0ECh4ZDB8ZFh8CTUNAGRAdGVAPUU0NFgMX"),
Buttons = {
{
Name = _d("fgwFGQwH"),
},
},
})
end
end
end,
}, _d("WBYFVjoAAVYX"))

function drcb.applyRoles()
if not drcb.enabled then
return
end

if drcb.role[1] == drcb.role[2] and drcb.role[1] ~= _d("VxMS") then
drcb.enabled = false

pcall(function()
drcb.toggle:UpdateState(false)
end)

pcall(function()
vdzw:Dialog({
Title = _d("eBYFVkUgAVYXUVYDFQ"),
Description = _d("ag8eTUVCTVgNFRk2HwJNQ0MZBAEIGQEeTQ1T") .. drcb.roleLabel(1) .. _d("F0MlUQQHTVAQUVYLFk1LFh8ZBAAGXAdRXwoBTU0UGFoAX01YDRUZDAdNWgIfVwoHTU0CGlxFBxpWQwJVCgceF0MiXBFTAlcGUUoJHBkZFx4ZFhwAXBcZUAsUTVwPAlxL"),
Buttons = {
{
Name = _d("fgwFGQwH"),
},
},
})
end)

return
end

local lqe = {}

if drcb.towerSlot() ~= 1 and hlkv.enabled then
hlkv.enabled = false
table.insert(lqe, _d("eBYFVkUnAk4GAw"))

pcall(function()
hlkv.ui:UpdateState(false)
end)
end

if drcb.hardcoreSlot() == nil and xk.island then
xk.island = false
table.insert(lqe, _d("eBYFVkU6HlUCH11FOwxLBxJWFxY"))

pcall(function()
xk.islandToggle:UpdateState(false)
end)
end

if drcb.halloweenSlot() == nil and mnni.run.enabled then
mnni.run.enabled = false
table.insert(lqe, _d("eBYFVkU7DFUPHk4AFgMZNx5OAAE"))

pcall(function()
mnni.toggle:UpdateState(false)
end)
end

if #lqe > 0 then
pcall(function()
vdzw:Dialog({
Title = table.concat(lqe, _d("GQIfXUU")) .. _d("GQwXXw"),
Description = _d("dwxRSgkcGRkKAhkWFhkZFx4ZERsMTUMFVhIWHxkCH0BFHgJLBl0ZFhxNUBdRUQQXTVcMBlEAAQgZFx4ZFwYDF0M2UBMWTVAXUVhFAAFWF1FYAhIEV09RVhdTGUwRHxkkBhlWQyJVCgdNVgUXFw"),
Buttons = {
{
Name = _d("fgwFGQwH"),
},
},
})
end)
end
end

drcb.oneDropdown = rhi:Dropdown({
Name = _d("ag8eTUVC"),
Search = false,
Multi = false,
Required = false,

Default = 1,
Options = drcb.optionsFor[1],
Callback = function(yc)
local brye = type(yc) == _d("TQITVQA") and yc[1] or yc

if type(brye) == _d("ShcDUAsU") and drcb.roleIds[brye] then
drcb.role[1] = drcb.roleIds[brye]
drcb.picked[1] = brye
end

pcall(function()
drcb.oneDropdown:UpdateName(_d("ag8eTUVCTdvj0xk") .. drcb.roleLabel(1))
end)

if drcb.applyRoles then
drcb.applyRoles()
end
end,
}, _d("Sg8eTTpCMgs"))

drcb.twoDropdown = rhi:Dropdown({
Name = _d("ag8eTUVB"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = drcb.optionsFor[2],
Callback = function(cc)
local skq = type(cc) == _d("TQITVQA") and cc[1] or cc

if type(skq) == _d("ShcDUAsU") and drcb.roleIds[skq] then
drcb.role[2] = drcb.roleIds[skq]
drcb.picked[2] = skq
end

pcall(function()
drcb.twoDropdown:UpdateName(_d("ag8eTUVBTdvj0xk") .. drcb.roleLabel(2))
end)

if drcb.applyRoles then
drcb.applyRoles()
end
end,
}, _d("Sg8eTTpBMgs"))

pcall(function()
drcb.oneDropdown:UpdateSelection(_d("bQwGXBc"))
end)

pcall(function()
drcb.twoDropdown:UpdateSelection(_d("dzMyGQcSGU0PFEo"))
end)

getgenv().ACBXSlot = drcb

local yqbs = wpan:Section({
Side = _d("dQYXTQ"),
})

yqbs:Header({
Name = _d("awIYXUURAkoQ"),
})

yqbs:Toggle({
Name = _d("eBYFVkUhDFAHUXsKAB4"),
Default = false,
Callback = function(gwsl)
kc.enabled = gwsl
kc.pending = {}
kc.pendingUntil = {}

if gwsl then
kc.cleared = {}
end
end,
}, _d("WBYFVjoBDFAHLlsKAB4"))

yqbs:Toggle({
Name = _d("eBYFVkUkDFUIUU0KUz9YChUZJxweSg"),
Default = false,
Callback = function(qkru)
kc.walkToBoss = qkru
end,
}, _d("WBYFVjoEDFUILk0KLB9YChVmBxweSg"))

local bqgb
bqgb = yqbs:Slider({
Name = _d("bgIdUkUgHVwGFQ"),
Minimum = 0,
Maximum = 72,
Default = 18,
Precision = 0,
Callback = function(aia)
local dr = math.floor(aia + 0.5)
kc.walkSpeed = dr

if bqgb and dr ~= aia then
bqgb:UpdateValue(dr)
end
end,
}, _d("TgIdUjoAHVwGFQ"))

yqbs:Dropdown({
Name = _d("awIYXUU3BF8FGFoQHxlA"),
Search = false,
Multi = true,
Required = false,
Default = { _d("dwwDVAQf") },
Options = np,
Callback = function(wjel)
local qnfi = {}

if type(wjel) == _d("TQITVQA") then
for gqwr, cdkz in ipairs(np) do
if wjel[cdkz] then
table.insert(qnfi, mmh[cdkz])
end
end
end

if #qnfi == 0 then
qnfi = { _d("VwwDVAQf") }
end

kc.difficulties = qnfi
end,
}, _d("SwIYXToXBF8FGFoQHxlA"))

function kc.pickedIds(sya)
local rly = {}

if type(sya) == _d("TQITVQA") then
for fwn, nzq in ipairs(camr) do
if sya[nzq] and of[nzq] then
table.insert(rly, of[nzq])
end
end
elseif type(sya) == _d("ShcDUAsU") and of[sya] then
rly = { of[sya] }
end

return rly
end

yqbs:Dropdown({
Name = _d("awIYXUUxAkoQ"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = camr,
Callback = function(yife)
kc.picks[1] = kc.pickedIds(yife)
kc.cursor[1] = 1
kc.losses[1] = {}
end,
}, _d("SwIYXToRAkoQ"))

kc.boss2Dropdown = yqbs:Dropdown({
Name = _d("awIYXUUxAkoQURE2HwJNQ0MQ"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = camr,
Callback = function(ag)
kc.picks[2] = kc.pickedIds(ag)
kc.cursor[2] = 1
kc.losses[2] = {}
end,
}, _d("SwIYXToRAkoQLkoJHBlmUQ"))

pcall(function()
kc.boss2Dropdown:SetVisibility(false)
end)

task.spawn(function()
local lp = nil

while tpm() do
local lex = drcb.splitNpc()

if lex ~= lp then
lp = lex

local mvnd = kc.boss2Dropdown

if mvnd then
pcall(function()
mvnd:SetVisibility(lex)
end)
end
end

task.wait(0.5)
end
end)

ngu:Paragraph({
Header = _d("eBYFVkU1BF4LBQ"),
Body = _d("agYdXAYHTVYNFBkKAU1UDANcRT09ehBRXxccABkXGVxFBAJLDxVKRREIVQwGFw"),
})

for awbe, ug in ipairs(guo) do
ngu:Dropdown({
Name = ug.name,
Search = true,
Multi = true,
Required = false,
Default = {},
Options = ug.options,
Callback = function(rzg)
local lhzq = {}

if type(rzg) == _d("TQITVQA") then
if rzg.All then
for tlr, snin in ipairs(ug.ids) do
table.insert(lhzq, snin)
end
else
for dhp, ffe in ipairs(ug.options) do
if rzg[ffe] and ug.byName[ffe] then
table.insert(lhzq, ug.byName[ffe])
end
end
end
elseif type(rzg) == _d("ShcDUAsU") then
if rzg == _d("eA8d") then
for yqio, kjaz in ipairs(ug.ids) do
table.insert(lhzq, kjaz)
end
else
lhzq = { ug.byName[rzg] }
end
end

cdau.selectedByWorld[ug.name] = lhzq
end,
}, _d("VxMSZg") .. ug.id)
end

ngu:Toggle({
Name = _d("eBYFVkUwAlQTHVwRFk1qFx5LHA"),
Default = false,
Callback = function(qty)
cdau.story = qty
cdau.battlePending = false
cdau.battlePendingUntil = 0
end,
}, _d("WBYFVjoQAlQTHVwRFjJKFx5LHA"))

cdau.storyDropdown = ngu:Dropdown({
Name = _d("fQoXXwwQGFUXGFwW"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = oi,
Callback = function(wlss)
local cpx = type(wlss) == _d("TQITVQA") and wlss[1] or wlss

if type(cpx) == _d("ShcDUAsU") and lg[cpx] then
cdau.storyDifficulty = lg[cpx]
end
end,
}, _d("XQoXXwwQGFUXGFwW"))

pcall(function()
cdau.storyDropdown:UpdateSelection(oi[1])
end)

pcall(function()
cdau.storyDropdown:UpdateName(_d("fQoXXwwQGFUXGFwWU4+5wVE") .. oi[1])
end)

ngu:Paragraph({
Header = _d("cQwGGSQGGVZDMlYIAwFcFxQZNgcCSxpRTgoBBko"),
Body = _d("fwoWUREATVwVFEscUx5NDANART09ekNcGSsSAFwIUU0NAQJMBBkZLAAIUgIYGUhTAldDBVEAUwJXBlFdDBULUAAEVREKTVgBHk8AX01ODANSDB0KGRcZXEUSH1wCAhkMHU1WERVcF1MMVwdRWgoeBFcEUVsEEAYZER5MCxdNWBBRWgocAV0MBlcWUw5VBhBLS3lncBdRSwADAVgAFEpFBwVcQxBLABJNXREeSQEcGlcQUU4NGgFcQxhNRRoeGQwfFUUSA11DHVwEBQhKQwNYDBdNWwwCSgAATVgPHlcAXQ"),
})

local gtj = um:Section({
Side = _d("dQYXTQ"),
})

gtj:Header({
Name = _d("bQwGXBc"),
})

local jwq
local eu

local jlvd = {
remotes = {},
watcher = false,
hidMenu = false,

hardWatch = {},
}

pcall(function()
local yvx = getgenv().ACBXHardWatch

if type(yvx) == _d("TQITVQA") then
for cwax, gpo in pairs(yvx) do
pcall(function()
if gpo.Connected then
gpo:Disconnect()
end
end)
end
end

getgenv().ACBXHardWatch = jlvd.hardWatch
end)

function jlvd.hardPick(oxmy)
oxmy = oxmy == true

for jcdj, rgq in ipairs({ _d("ewIFTQkWKkwK"), _d("ewIFTQkWKkwKQw") }) do
local qss = hk:FindFirstChild(rgq)

if qss then
if qss:GetAttribute(_d("bQwGXBc7DEsHIVAGGA")) ~= oxmy then
pcall(function()
qss:SetAttribute(_d("bQwGXBc7DEsHIVAGGA"), oxmy)
end)
end

if qss:GetAttribute(_d("bQwGXBc7DEsHI0wL")) ~= nil and qss:GetAttribute(_d("bQwGXBc7DEsHI0wL")) ~= oxmy then
pcall(function()
qss:SetAttribute(_d("bQwGXBc7DEsHI0wL"), oxmy)
end)
end
end
end
end

function jlvd.pinMode()
if not (hlkv.enabled or hlkv.nightmare) then
return
end

local dfk = hlkv.nightmare == true

for mct, wcrb in ipairs({ _d("ewIFTQkWKkwK"), _d("ewIFTQkWKkwKQw") }) do
local fupk = hk:FindFirstChild(wcrb)

if fupk then
if fupk:GetAttribute(_d("bQwGXBc7DEsHIVAGGA")) ~= dfk then
pcall(function()
fupk:SetAttribute(_d("bQwGXBc7DEsHIVAGGA"), dfk)
end)
end

local xju = jlvd.hardWatch[fupk]

if xju and xju.Connected == false then
jlvd.hardWatch[fupk] = nil
xju = nil
end

if xju == nil then
local hbsp, ii = pcall(function()
return jdcu(fupk:GetAttributeChangedSignal(_d("bQwGXBc7DEsHIVAGGA")), function()
if not (hlkv.enabled or hlkv.nightmare) then
return
end

local vf = hlkv.nightmare == true

if fupk.Parent and fupk:GetAttribute(_d("bQwGXBc7DEsHIVAGGA")) ~= vf then
pcall(function()
fupk:SetAttribute(_d("bQwGXBc7DEsHIVAGGA"), vf)
end)
end
end)
end)

if hbsp then
jlvd.hardWatch[fupk] = ii
end
end
end
end
end

function jlvd.pauseRows()
local rlvl = ovr:FindFirstChild(_d("aQ8QQAABKkwK")) and ovr.PlayerGui:FindFirstChild(_d("agYFTQwdCkokBFA"))

if not rlvl then
return nil, nil
end

return rlvl:FindFirstChild(_d("aQIESgA6A18KH1ARFiRXEwRN"), true), rlvl:FindFirstChild(_d("aQIESgA6A18KH1ARFi5RBhJS"), true)
end

function jlvd.pauseState()
local hna = ovr:FindFirstChild(_d("aQ8QQAABKkwK")) and ovr.PlayerGui:FindFirstChild(_d("agYFTQwdCkokBFA"))
local rdii = hna and hna:FindFirstChild(_d("fgYFagAHGVANFko"), true)

if not rdii then
return nil
end

local ljyh, aod = pcall(function()
return rdii:Invoke()
end)

if ljyh and type(aod) == _d("TQITVQA") then
return aod.pauseInfiniteEnabled == true
end

return nil
end

function jlvd.pauseAt(ioj, qsn)
qsn = math.max(1, math.floor(tonumber(qsn) or 1))

local omzu, iwyn = jlvd.pauseRows()

if not (omzu and iwyn) then
return false
end

local icwa = pcall(function()
if tonumber(omzu.Text) ~= qsn then
omzu.Text = tostring(qsn)

if getconnections then
for szha, cth in ipairs(getconnections(omzu.FocusLost)) do
pcall(function()
cth:Fire(true, Enum.UserInputType.Focus)
end)
end
end
end
end)

if ioj ~= nil then
local eeu = jlvd.pauseState()

if eeu ~= nil and eeu ~= ioj and getconnections then
pcall(function()
for jgp, vfp in ipairs(getconnections(iwyn.MouseButton1Click)) do
pcall(function()
vfp:Fire()
end)
end
end)
end
end

return icwa
end

function jlvd.restorePause()
mk.triggered = false

if mk.enabled and mk.floor > 0 then
jlvd.pauseAt(true, mk.floor)

pcall(function()
ioe.SaveClientData:FireServer({
pauseInfiniteEnabled = true,
pauseInfiniteAt = mk.floor,
})
end)

return
end

pcall(function()
ioe.SaveClientData:FireServer({
pauseInfiniteEnabled = false,
pauseInfiniteAt = 1,
})
end)

jlvd.pauseAt(false, 1)
end

function jlvd.remote(kty)
local rcfx = jlvd.remotes[kty]

if rcfx and rcfx.Parent then
return rcfx
end

local two = phy:FindFirstChild(_d("awYcVhEWHg"))
local nyv = two and two:FindFirstChild(kty)

if nyv then
jlvd.remotes[kty] = nyv
end

return nyv
end

function jlvd.historyOpen()
for udva, pl in ipairs({ _d("ewIFTQkWKkwK"), _d("ewIFTQkWKkwKQw") }) do
local bv = hk:FindFirstChild(pl)
local abfs = bv and bv:FindFirstChild(_d("bQwGXBc7BEoXHkscNR9YDhQ"))

if abfs and abfs.Visible then
return true
end
end

return false
end

function jlvd.generationOpen()
local txk = hk:FindFirstChild(_d("bQwGXBchCEoWHU0iBgQ"))
local zxjx = txk and txk:FindFirstChild(_d("awYCTAkHK0sCHFw"))

return zxjx ~= nil and zxjx.Visible
end

function jlvd.standDown(iea)
if not jlvd.hidMenu then
local syox = true

pcall(function()
syox = vdzw:GetState() ~= false
end)

if syox then
jlvd.hidMenu = true

pcall(function()
vdzw:SetState(false)
end)
end
end

if jlvd.watcher then
return
end

jlvd.watcher = true

task.spawn(function()

local ljwh = os.clock() + 6

while tpm() and os.clock() < ljwh and not iea() do
task.wait(0.2)
end

while tpm() and iea() do
task.wait(0.4)
end

jlvd.watcher = false

if jlvd.hidMenu then
jlvd.hidMenu = false

pcall(function()
vdzw:SetState(true)
end)
end
end)
end

hlkv.floorAt = 0
hlkv.battleAt = 0
hlkv.floor = nil
hlkv.manualPause = false

task.spawn(function()
local rhbh = wvo(_d("ewIFTQkWOEkHEE0A"))
local kxj = wvo(_d("ahofWjEcGlwRN1UKHB8"))
local rsug = wvo(_d("ewIFTQkWKFcH"))
local wvbp = wvo(_d("bQwGXBchGFcmH10AFw"))

if rhbh then
jdcu(rhbh.OnClientEvent, function()
hlkv.battleAt = os.clock()
end)
end

if kxj then
jdcu(kxj.OnClientEvent, function(rqn)
hlkv.floorAt = os.clock()

if type(rqn) == _d("VxYcWwAB") and rqn > 1 then
hlkv.floor = rqn
else
hlkv.floor = nil
end
end)
end

if rsug then
jdcu(rsug.OnClientEvent, function(ujjs)
if type(ujjs) == _d("TQITVQA") and ujjs.mode == _d("TQwGXBc") then
hlkv.floorAt = os.clock()
end
end)
end

if wvbp then
jdcu(wvbp.OnClientEvent, function()

hlkv.lastRunEnded = {
clock = os.clock(),
floor = hlkv.floor,
}

task.delay(1, function()
local ejmm = hk:FindFirstChild(_d("bQwGXBchCEoWHU0iBgQ"))
local nzz = ejmm and ejmm:FindFirstChild(_d("awYCTAkHK0sCHFw"))
local le = {}

if nzz then
for cmgw, omd in ipairs(nzz:GetDescendants()) do
if omd:IsA(_d("bQYJTSkSD1wP")) and omd.Visible and omd.Text ~= _d("") and #le < 12 then
le[#le + 1] = omd.Text
end
end
end

if hlkv.lastRunEnded then
hlkv.lastRunEnded.texts = table.concat(le, _d("GR9R"))
end
end)

hlkv.floorAt = 0
hlkv.battleAt = 0
hlkv.floor = nil

if hlkv.manualPause then
jlvd.restorePause()
end
end)
end

end)

local function za()
local zyr = os.clock()

if zyr - (hlkv.floorAt or 0) < 90 and zyr - (hlkv.battleAt or 0) < 12 then
return true
end

for abtr, qap in ipairs({ _d("ewIFTQkWKkwK"), _d("ewIFTQkWKkwKQw") }) do
local ljav = hk:FindFirstChild(qap)

if ljav then

local oyb = ljav:FindFirstChild(_d("bQwGXBc1AVYMA3UEEQhV"))

if oyb and oyb.Visible then
return true
end

local oug = ljav:FindFirstChild(_d("fw8eVhcgDksGFFc"))

if oug and oug.Visible then
return true
end

local slt = ljav:FindFirstChild(_d("ewIFTQkWPloRFFwL"))

if slt and slt.Visible then
local lrwz = slt:FindFirstChild(_d("aBYYWg40BE8GJEknBhlNDB8"))

if lrwz and lrwz.Visible then
return true
end
end
end
end

return false
end

function jlvd.hardNow()

local tgkg = hk:FindFirstChild(_d("ewIFTQkWKkwK"))
local eh = tgkg and tgkg:GetAttribute(_d("bQwGXBc7DEsHIVAGGA"))

if eh ~= nil then
return eh == true
end

local er = kc.misc.util.profile

return type(er) == _d("TQITVQA") and er.lastTowerHard == true
end

function jlvd.endIfWrongMode(mgh)
if not za() or jlvd.hardNow() == (mgh == true) then
return false
end

pcall(function()
if type(eu) == _d("XxYfWhEaAlc") then
eu()
else
ioe.EndTowerRemote:FireServer(1)
end
end)

hlkv.floor = nil

return true
end

function jlvd.hardPickNow()
for rgyw, ryba in ipairs({ _d("ewIFTQkWKkwK"), _d("ewIFTQkWKkwKQw") }) do
local jmf = hk:FindFirstChild(ryba)
local ojk = jmf and jmf:GetAttribute(_d("bQwGXBc7DEsHIVAGGA"))

if ojk ~= nil then
return ojk == true
end
end

return nil
end

function jlvd.parked()
for kh, cg in ipairs({ _d("ewIFTQkWKkwK"), _d("ewIFTQkWKkwKQw") }) do
local joy = hk:FindFirstChild(cg)

if joy then
local kjs = joy:FindFirstChild(_d("bQwGXBc1AVYMA3UEEQhV"))
local ayiw = joy:FindFirstChild(_d("fw8eVhcgDksGFFc"))
local ejt = joy:FindFirstChild(_d("ewIFTQkWPloRFFwL"))

if kjs and kjs.Visible
and not (ayiw and ayiw.Visible)
and not (ejt and ejt.Visible) then
return true
end
end
end

return false
end

hlkv.ui = gtj:Toggle({
Name = _d("eBYFVkUnAk4GAw"),
Default = false,
Callback = function(jk)

if hlkv.quiet then
return
end

hlkv.enabled = jk
hlkv.pending = false
hlkv.pendingUntil = 0

if jk then

if drcb.enabled and drcb.role[1] ~= _d("TQwGXBc") then
hlkv.enabled = false

pcall(function()
hlkv.ui:UpdateState(false)
end)

pcall(function()
vdzw:Dialog({
Title = _d("eBYFVkUnAk4GAxkKFQs"),
Description = _d("ag8eTUVCTVAQUUoAB01NDFE") .. drcb.roleName(1) .. _d("F0MlUQBTJFcFGFcMBxQZIBBKER8IGQwfVRxTHk0CA00WUwJXQwJVCgdNCE9RSgpTHlwXUWoJHBkZUlFNClM5VhQUS0UVBEsQBRc"),
Buttons = {
{
Name = _d("fgwFGQwH"),
},
},
})
end)

return
end

if drcb.otherTowerOn(_d("TQwGXBc")) then
hlkv.enabled = false

pcall(function()
hlkv.ui:UpdateState(false)
end)

pcall(function()
vdzw:Dialog({
Title = _d("eBYFVkUnAk4GAxkKFQs"),
Description = _d("eA0eTQ0WHxkXHk4AAU1YFgVWCBIZUAwfGQwATVgPA1wEFxQZDB8VRRIDXUMFUQwATVgAElYQHRkZDB9VHFMMVQ8eThZTAlcGUU0KBAhLQwNMC1MMTUMQGREaAFxNUW0QAQMZFxlYEVMCVwZRVgMVTV8KA0oRX01WEVFNEAEDGQwfGSQGGVZDIlUKB01KDFFcBBAFGRAdVhFTClwXAhkMBx4ZDAZXRQcCTgYDFw"),
Buttons = {
{
Name = _d("fgwFGQwH"),
},
},
})
end)

return
end

hlkv.nightmare = false

pcall(function()
hlkv.quiet = true
hlkv.nightmareToggle:UpdateState(false)
hlkv.quiet = false
end)

hlkv.manualPause = false
hlkv.paused = false
jlvd.restorePause()
hlkv.pauseArmed = false

jlvd.endIfWrongMode(false)
jlvd.hardPick(false)

return
end

if not za() then
return
end

hlkv.paused = true
local bcpw = jwq()

vdzw:Notify({
Title = _d("eBYFVkUnAk4GAxkKFQs"),
Description = bcpw and _d("bQwGXBdTH0wNUUkEBh5cB18") or _d("axYfGQwATVUKB1xJUw9MF1FXClMPSwYQUkURGE0XHldFFQJMDRUX"),
Lifetime = 5,
})
end,
}, _d("WBYFVjoHAk4GAw"))

hlkv.nightmareToggle = gtj:Toggle({
Name = _d("eBYFVkU9BF4LBVQEAQgZNx5OAAE"),
Default = false,
Callback = function(ezny)
if hlkv.quiet then
return
end

hlkv.nightmare = ezny

if not ezny then

hlkv.enabled = false
hlkv.pending = false
hlkv.pendingUntil = 0

jlvd.hardPick(false)

pcall(function()
hlkv.quiet = true
hlkv.ui:UpdateState(false)
hlkv.quiet = false
end)

if za() then
hlkv.paused = true
local yt = jwq()

vdzw:Notify({
Title = _d("eBYFVkU9BF4LBVQEAQgZNx5OAAFNVgUX"),
Description = yt and _d("dwoWUREeDEsGUUsQHU1JAgRKABdD") or _d("axYfGQwATVUKB1xJUw9MF1FXClMPSwYQUkURGE0XHldFFQJMDRUX"),
Lifetime = 5,
})
end

return
end

if drcb.enabled and drcb.role[1] ~= _d("TQwGXBc") then
hlkv.nightmare = false

pcall(function()
hlkv.quiet = true
hlkv.nightmareToggle:UpdateState(false)
hlkv.quiet = false
end)

pcall(function()
vdzw:Dialog({
Title = _d("eBYFVkU9BF4LBVQEAQgZNx5OAAFNVgUX"),
Description = _d("dwoWUREeDEsGUW0KBAhLQxJWEB0ZSkMQSkUnAk4GAxkMHU1KDx5NRUJBGQIfXUUKAkwRUUoJHBkZUlFQFlMCV0M") .. drcb.roleName(1) .. _d("GREYXg0HTVcMBhdFIAhNQwJVCgdNCEMFVkUnAk4GAxkDGh9KF18"),
Buttons = {
{
Name = _d("fgwFGQwH"),
},
},
})
end)

return
end

pcall(function()
hlkv.quiet = true
hlkv.ui:UpdateState(false)
hlkv.quiet = false
end)

hlkv.enabled = true
hlkv.manualPause = false
hlkv.paused = false

jlvd.restorePause()
hlkv.pauseArmed = false

jlvd.endIfWrongMode(true)
jlvd.hardPick(true)

hlkv.pending = false
hlkv.pendingUntil = 0
end,
}, _d("WBYFVjodBF4LBVQEAQhmFx5OAAE"))

gtj:Header({
Name = _d("eBYFVkUjDEwQFBkxHBpcEQ"),
})

local ipka

ipka = gtj:Toggle({
Name = _d("eBYFVkUjDEwQFBkjHwJWEQ"),
Default = false,
Callback = function(jdm)
mk.triggered = false

if jdm and mk.floor <= 0 then
mk.enabled = false

pcall(function()
ipka:UpdateState(false)
end)

pcall(function()
ioe.SaveClientData:FireServer({ pauseInfiniteEnabled = false })
end)

vdzw:Dialog({
Title = _d("eBYFVkUjDEwQFBkjHwJWEQ"),
Description = _d("agYFGQRTHVgWAlxFFQFWDAMZBBECTwZRCUUVBEsQBRlIUyxMFx4ZNRIYSgZRbQoECEtDH1wAFx4ZFx4ZDh0CTkMGUQABCBkXHhkWBwJJTQ"),
Buttons = {
{
Name = _d("fgwFGQwH"),
},
},
})

return
end

mk.enabled = jdm

pcall(function()
ioe.SaveClientData:FireServer({
pauseInfiniteEnabled = jdm,
pauseInfiniteAt = mk.floor,
})
end)
end,
}, _d("WBYFVjoDDEwQFGYDHwJWEQ"))

gtj:Input({
Name = _d("aQIESgBTDE1DF1UKHB8"),
Placeholder = _d("XE0WF0VGXQ"),
AcceptedCharacters = _d("dxYcWwABHg"),
Callback = function(rwb)
local fzlo = tonumber(rwb) or 0

if fzlo < 0 then
fzlo = 0
end

if fzlo == mk.floor then
return
end

mk.floor = fzlo
mk.triggered = false

if fzlo <= 0 and mk.enabled then
mk.enabled = false

pcall(function()
ipka:UpdateState(false)
end)
end

pcall(function()
ioe.SaveClientData:FireServer({
pauseInfiniteAt = fzlo,
pauseInfiniteEnabled = mk.enabled,
})
end)
end,
}, _d("SQIESgAsDE08F1UKHB8"))

gtj:Button({
Name = _d("aQIESgBTOVYUFEs"),
Callback = function()
local krz = false

pcall(function()
krz = jwq()
end)

if krz then

hlkv.manualPause = true
return
end

vdzw:Dialog({
Title = _d("aQIESgBTOVYUFEs"),
Description = _d("dwxRVQwFCBkXHk4AAU1LFh8ZERxNSQIESgBTH1AEGU1FHQJOTQ"),
Buttons = {
{
Name = _d("fgwFGQwH"),
},
},
})
end,
})

gtj:Header({
Name = _d("eBYFVkU0BE8GUWwV"),
})

qjxx.toggle = gtj:Toggle({
Name = _d("eBYFVkU0BE8GUWwV"),
Default = false,
Callback = function(enud)
qjxx.triggered = false

if enud and qjxx.floor <= 0 then
qjxx.enabled = false

pcall(function()
qjxx.toggle:UpdateState(false)
end)

vdzw:Dialog({
Title = _d("eBYFVkU0BE8GUWwV"),
Description = _d("agYFGQRTClAVFBkQA01fDx5WF1MMWwwHXEVDTV8KA0oRU0AZIgRNClMqUBUUGTADTVcGFF0WUxlWQxpXCgRNTgsUSwBTGVZDAk0KA0M"),
Buttons = {
{
Name = _d("fgwFGQwH"),
},
},
})

return
end

qjxx.enabled = enud
end,
}, _d("WBYFVjoUBE8GLkwV"))

gtj:Input({
Name = _d("fgoHXEUGHRkMHxkDHwJWEQ"),
Placeholder = _d("XE0WF0VEXQ"),
AcceptedCharacters = _d("dxYcWwABHg"),
Callback = function(cap)
local ir = tonumber(cap) or 0

if ir < 0 then
ir = 0
end

if ir == qjxx.floor then
return
end

qjxx.floor = ir
qjxx.triggered = false

if ir <= 0 and qjxx.enabled then
qjxx.enabled = false

pcall(function()
qjxx.toggle:UpdateState(false)
end)
end
end,
}, _d("XgoHXDoGHWYMH2YDHwJWEQ"))

qjxx.weatherToggle = gtj:Toggle({
Name = _d("eBYFVkUUBE8GUUwVUwJXQwZcBAcFXBE"),
Default = false,
Callback = function(jdk)
qjxx.weatherTriggered = false

if jdk and next(qjxx.weathers) == nil then
qjxx.weatherEnabled = false

pcall(function()
qjxx.weatherToggle:UpdateState(false)
end)

vdzw:Dialog({
Title = _d("bgYQTQ0WHxkkGE8AUzhJ"),
Description = _d("bQoSUkUSGRkPFFgWB01WDRQZEhYMTQsUS0URCFUMBhkDGh9KF1EURRwZUQYDTgwACBkXGVwXFk1QEFFXCgcFUA0WGREcTV4KB1xFBh0ZDB8X"),
Buttons = {
{
Name = _d("fgwFGQwH"),
},
},
})

return
end

qjxx.weatherEnabled = jdk
end,
}, _d("WBYFVjoUBE8GLkwVLAJXPAZcBAcFXBE"))

gtj:Dropdown({
Name = _d("fgoHXEUGHRkUFFgRGwhLEA"),
Multi = true,
Required = false,
Options = { _d("bRoBUQocAw"), _d("ew8YQx8SH10"), _d("dQoWUREdBFcE"), _d("bgofXRYHAksO"), _d("agsQSwwdClgN"), _d("agofXhAfDEsKBUA"), _d("dAwfWBcQBRknHlQEGgM"), _d("bwwYXQ"), _d("dAIVXEUaAxkrFFgTFgM"), _d("dAIfXgQ") },
Callback = function(cbzx)
qjxx.weathers = {}

if type(cbzx) == _d("TQITVQA") then
for vdgx, lf in pairs(cbzx) do
if lf then
qjxx.weathers[vdgx] = true
end
end
end

qjxx.weatherTriggered = false
end,
}, _d("XgoHXDoGHWYUFFgRGwhLEA"))

gtj:Input({
Name = _d("dAofUAgGABkFHVYKAR4"),
Placeholder = _d("CUNMGQQdFBkFHVYKAQ"),
AcceptedCharacters = _d("dxYcXBcaDg"),
Callback = function(gpia)
local ctgg = math.floor(tonumber(gpia) or 0)

if ctgg < 0 then
ctgg = 0
end

qjxx.weatherMinFloor = ctgg
qjxx.weatherTriggered = false
end,
}, _d("VAofUAgGAGYFHVYKAR4"))

gtj:Button({
Name = _d("fgoHXEUmHRk3Hk4AAQ"),
Callback = function()
if not za() then
vdzw:Dialog({
Title = _d("fgoHXEUmHRk3Hk4AAQ"),
Description = _d("dwxRVQwFCBkXHk4AAU1LFh8ZERxNXgoHXEUGHRkRGF4NB01XDAYX"),
Buttons = {
{
Name = _d("fgwFGQwH"),
},
},
})

return
end

vdzw:Dialog({
Title = _d("fgoHXEUmHRk3Hk4AAQ"),
Description = _d("fwwDXwAaGRkXGVxFEBhLERRXEVMZVhQUS0UBGFdcUW0NGh4ZABBXCxwZGQEUGRAdCVYNFBc"),
Buttons = {
{
Name = _d("fgxRWwQQBg"),
},
{
Name = _d("fgoHXEUGHQ"),
Callback = function()
local ocgk = false

pcall(function()
ocgk = eu()
end)

if ocgk then
return
end

task.defer(function()
task.wait(0.3)

vdzw:Dialog({
Title = _d("fgoHXEUmHRk3Hk4AAQ"),
Description = _d("dwxRXgwFCBkWARkHBhlNDB8ZBB0eTgYDXAFTQBkXGVxFARhXQxxYHFMMVREUWAEKTVsGUVYTFh8X"),
Buttons = {
{
Name = _d("fgwFGQwH"),
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

gtj:Button({
Name = _d("egsUWg5TAVYQAhkNGh5NDANA"),
Callback = function()
local nwe = jlvd.remote(_d("awYATAAAGW0MBlwXOwRKFx5LHA"))

if not nwe then
vdzw:Dialog({
Title = _d("dQwCSkU7BEoXHksc"),
Description = _d("bQsYSkURGFAPFRkNEh4ZDR4ZERwaXBFRUQwAGVYRCBkXFgBWFxQX"),
Buttons = {
{
Name = _d("fgwFGQwH"),
},
},
})

return
end

jlvd.standDown(jlvd.historyOpen)

pcall(function()
nwe:FireServer()
end)
end,
})

gtj:Button({
Name = _d("egsUWg5TClwNFEsEBwRWDQI"),
Callback = function()

local otuj = hk:FindFirstChild(_d("bQwGXBchCEoWHU0iBgQ"))
local bshd = otuj and otuj:FindFirstChild(_d("dhMUVyIWA3EKAk0KARQ"))

if not bshd then
vdzw:Dialog({
Title = _d("fgYfXBcSGVAMH0o"),
Description = _d("bQsYSkURGFAPFRkNEh4ZDR4ZAhYDXBEQTQwcA0pDBlALFwJOTQ"),
Buttons = {
{
Name = _d("fgwFGQwH"),
},
},
})

return
end

jlvd.standDown(jlvd.generationOpen)

pcall(function()
bshd:Fire()
end)
end,
})

cdau.bossTeams.towerSection = um:Section({
Side = _d("dQYXTQ"),
})

cdau.bossTeams.towerSection:Header({
Name = _d("bQwGXBdTOVwCHEo"),
})

cdau.bossTeams.towerSection:Paragraph({
Header = _d("cQwGGREcGlwRUU0AEgBKQwZWFxg"),
Body = _d("dgUXA0UWDFoLUUsQHU1MEBRKRQQFWBcUTwABTU0GEFRFGhlKQwJVCgdNWA8DXAQXFBkLHlUBAEMzaT5XX1MIWAAZGREcGlwRUVsAHwJOQwNMCwBNTgoFUUUHBVxDBVwEHk1JChJSABdNXwwDGQwHQw"),
})

cdau.bossTeams.towerToggle = cdau.bossTeams.towerSection:Toggle({
Name = _d("bQwGXBdTOVwCHEo"),
Default = false,
Callback = function(wecd)
cdau.bossTeams.towersOn = wecd
end,
}, _d("TQwGXBcsGVwCHEo"))

for fnh, mxpl in ipairs({
{ kind = _d("TQwGXBc"), name = _d("cA0XUAsaGUBDMlgWBwFcQ14ZKxoKURccWBcW") },
{ kind = _d("UQIDXQYcH1w"), name = _d("cBAdWAsXTXECA10GHB9c") },
}) do
local wppj = math.clamp(math.floor(tonumber(cdau.bossTeams.towerPicked[mxpl.kind]) or 1), 1, 4)

cdau.bossTeams.towerPicked[mxpl.kind] = wppj

cdau.bossTeams.towerUi[mxpl.kind] = cdau.bossTeams.towerSection:Dropdown({
Name = mxpl.name,
Search = false,
Multi = false,
Required = false,
Default = wppj,
Options = { _d("bQYQVEVC"), _d("bQYQVEVB"), _d("bQYQVEVA"), _d("bQYQVEVH") },
Callback = function(hbil)
local scgk = type(hbil) == _d("TQITVQA") and hbil[1] or hbil
local oer = type(scgk) == _d("ShcDUAsU") and tonumber(scgk:match(_d("EUYVEkw"))) or nil

if oer then
cdau.bossTeams.towerPicked[mxpl.kind] = oer
cdau.bossTeams.save()
end

pcall(function()
cdau.bossTeams.towerUi[mxpl.kind]:UpdateName(mxpl.name .. _d("GYHxm0U") .. (scgk or _d("bQYQVEVC")))
end)
end,
}, _d("TQYQVDoHAk4GA2Y") .. mxpl.kind)

pcall(function()
cdau.bossTeams.towerUi[mxpl.kind]:UpdateSelection(_d("bQYQVEU") .. tostring(wppj))
cdau.bossTeams.towerUi[mxpl.kind]:UpdateName(mxpl.name .. _d("GYHxm0UnCFgOUQ") .. tostring(wppj))
end)
end

cdau.bossTeams.towerSection:Header({
Name = _d("ahQQSUUcAxkFHVYKAQ"),
})

cdau.bossTeams.towerSection:Paragraph({
Header = _d("ahQQSUUHCFgOUVYLUwwZBR1WCgE"),
Body = _d("bQsUGQISAFxEAhkKBAMZEAZYFV9NVwwFGQRTHVgWAlxLUyhYABkZFwYBXEMYSkUSTV8PHlYXUwxXB1FNDRZNTQYQVEUEAksNUV8XHAAZFxlYEVMLVQweS0UcAxVDBksMBxlcDVFQCwcCGRcZXEUUDFQGVkpFIAhNFxhXAgBNFF1ReBAHAhk3FFgIUz5OAgEZVFMMVwdRC0lTHlZDBVEAUwpYDhQZCBIGXBBRTQ0WTUoUGE0GG01QFwJcCRVNTgsUV0USTUsWHxkWBwxLFwIZERsMTUMXVQocHxdDP1YRGwRXBFFQFlMeTQwBSQAXTVgNFRkRGwgZEQRXRRgIXBMCGQwHHhkQHVYRXWczIlFaBAAZVQZRSxAdTV4GBUpFBwVcQwJYCBZNShQYTQYbTV8RHlRFBwVQEFFJBB0IVU9RWwAQDEwQFBkRGwgZBBBUAFQeGQwGV0UAGlgTUVYLHxQZBRhLAABNUA0CUAEWTXANF1ALGhlcQyNWCh4eF2l7dQASG1xDEBkDHwJWEVFYEVNdGRceGREGH1dDBVEEB01LFh1cRRwLX00"),
})

function cdau.bossTeams.swapStatusText()
local ggoi = cdau.bossTeams.swap
local uip = {}

if ggoi.on then
table.insert(uip, _d("dg1RFEUEH1AXBVwLUxlWQwVRAFMKWA4UHhZTLEwXHhkxFgxUQyJOBANNSwwGSks"))
else
table.insert(uip, _d("dgUXGUhTGVEGUV4EHggeEFFKEhIdGQoCGQkWC01DEFUKHQgX"))
end

local jpov = {
{ index = 1, floor = ggoi.floor, team = ggoi.team },
{ index = 2, floor = ggoi.floor2, team = ggoi.team2 },
}

for vfht, pbcq in ipairs(jpov) do
if pbcq.floor > 0 then
table.insert(uip, string.format(_d("ahQQSUVWCQNDJVwEHk0cB1FfFxwAGQUdVgoBTRwH"), pbcq.index, pbcq.team, pbcq.floor))
else
table.insert(uip, string.format(_d("ahQQSUVWCQNDHl8DU0VXDFFfCRwCS0MCXBFa"), pbcq.index))
end
end

if cdau.bossTeams.swapMessage ~= _d("") then
table.insert(uip, cdau.bossTeams.swapMessage)
end

return table.concat(uip, _d("Mw"))
end

function cdau.bossTeams.paintSwap()
pcall(function()
cdau.bossTeams.swapStatus:UpdateBody(cdau.bossTeams.swapStatusText())
end)
end

cdau.bossTeams.swapToggle = cdau.bossTeams.towerSection:Toggle({
Name = _d("ahQQSUUHCFgOUVYLUwtVDB5L"),
Default = cdau.bossTeams.swap.on,
Callback = function(dye)
cdau.bossTeams.swap.on = dye

cdau.bossTeams.swapReset()

cdau.bossTeams.swapApply()
cdau.bossTeams.save()
end,
}, _d("ShQQSToHCFgOLlYLLAtVDB5L"))

cdau.bossTeams.swapInput = cdau.bossTeams.towerSection:Input({
Name = _d("fw8eVhc"),
Placeholder = _d("XE0WF0VGXQlDWQlFTk1WBRcQ"),
AcceptedCharacters = _d("dxYcXBcaDg"),
Callback = function(pqt)
local pnuv = tonumber(type(pqt) == _d("ShcDUAsU") and pqt:match(_d("EUYVEkw")) or pqt)

if pnuv then
cdau.bossTeams.swap.floor = pnuv
cdau.bossTeams.swapReset()
cdau.bossTeams.swapApply()
cdau.bossTeams.save()
end
end,
}, _d("Xw8eVhc"))

cdau.bossTeams.swapDropdown = cdau.bossTeams.towerSection:Dropdown({
Name = _d("ahQQSUUHAg"),
Search = false,
Multi = false,
Required = false,
Default = math.clamp(math.floor(tonumber(cdau.bossTeams.swap.team) or 1), 1, 4),
Options = { _d("bQYQVEVC"), _d("bQYQVEVB"), _d("bQYQVEVA"), _d("bQYQVEVH") },
Callback = function(iox)
local acdc = type(iox) == _d("TQITVQA") and iox[1] or iox
local epb = type(acdc) == _d("ShcDUAsU") and tonumber(acdc:match(_d("EUYVEkw"))) or nil

if epb then
cdau.bossTeams.swap.team = epb
cdau.bossTeams.swapReset()
cdau.bossTeams.swapApply()
cdau.bossTeams.save()
end

pcall(function()
cdau.bossTeams.swapDropdown:UpdateName(_d("ahQQSUUHAhmB8ZtF") .. (acdc or _d("bQYQVEVC")))
end)

cdau.bossTeams.paintSwap()
end,
}, _d("ShQQSToHAg"))

cdau.bossTeams.swapInput2 = cdau.bossTeams.towerSection:Input({
Name = _d("fw8eVhdTXw"),
Placeholder = _d("XE0WF0VCXQlTURFVU1AZDBdfTA"),
AcceptedCharacters = _d("dxYcXBcaDg"),
Callback = function(gam)
local sbds = tonumber(type(gam) == _d("ShcDUAsU") and gam:match(_d("EUYVEkw")) or gam)

if sbds then
cdau.bossTeams.swap.floor2 = sbds
cdau.bossTeams.swapReset()
cdau.bossTeams.swapApply()
cdau.bossTeams.save()
end
end,
}, _d("Xw8eVhcsXw"))

cdau.bossTeams.swapDropdown2 = cdau.bossTeams.towerSection:Dropdown({
Name = _d("ahQQSUUHAhlR"),
Search = false,
Multi = false,
Required = false,
Default = math.clamp(math.floor(tonumber(cdau.bossTeams.swap.team2) or 1), 1, 4),
Options = { _d("bQYQVEVC"), _d("bQYQVEVB"), _d("bQYQVEVA"), _d("bQYQVEVH") },
Callback = function(tcig)
local rxyi = type(tcig) == _d("TQITVQA") and tcig[1] or tcig
local mm = type(rxyi) == _d("ShcDUAsU") and tonumber(rxyi:match(_d("EUYVEkw"))) or nil

if mm then
cdau.bossTeams.swap.team2 = mm
cdau.bossTeams.swapReset()
cdau.bossTeams.swapApply()
cdau.bossTeams.save()
end

pcall(function()
cdau.bossTeams.swapDropdown2:UpdateName(_d("ahQQSUUHAhlRUdvl0U0") .. (rxyi or _d("bQYQVEVC")))
end)

cdau.bossTeams.paintSwap()
end,
}, _d("ShQQSToHAmZR"))

cdau.bossTeams.swapStatus = cdau.bossTeams.towerSection:Paragraph({
Header = _d("ahQQSUUAGVgXBEo"),
Body = cdau.bossTeams.swapStatusText(),
})

pcall(function()
local jsx = math.clamp(math.floor(tonumber(cdau.bossTeams.swap.team) or 1), 1, 4)
local ofg = math.clamp(math.floor(tonumber(cdau.bossTeams.swap.team2) or 1), 1, 4)

cdau.bossTeams.swapDropdown:UpdateSelection(_d("bQYQVEU") .. tostring(jsx))
cdau.bossTeams.swapDropdown:UpdateName(_d("ahQQSUUHAhmB8ZtFJwhYDlE") .. tostring(jsx))
cdau.bossTeams.swapDropdown2:UpdateSelection(_d("bQYQVEU") .. tostring(ofg))
cdau.bossTeams.swapDropdown2:UpdateName(_d("ahQQSUUHAhlRUdvl0U1tBhBURQ") .. tostring(ofg))
end)

task.spawn(function()
local dva = cdau.bossTeams.swapStatusText()

while tpm() do
local poev = cdau.bossTeams.swapStatusText()

if poev ~= dva then
dva = poev
cdau.bossTeams.paintSwap()
end

task.wait(2)
end
end)

if cdau.bossTeams.swap.on then
task.delay(2, function()
pcall(cdau.bossTeams.swapApply)
end)
end

cdau.bossTeams.section = um:Section({
Side = _d("awoWURE"),
})

cdau.bossTeams.section:Header({
Name = _d("ewwCSkUnCFgOAg"),
})

cdau.bossTeams.section:Paragraph({
Header = _d("cQwGGQccHkpDBVwEHh4ZFB5LDg"),
Body = _d("dgUXA0UdAk0LGFcCUwRKQwJODAcOUQYVGUhTCE8GA0BFFQReCwUZEAAISkMFUQBTGVwCHBkcHBgZAh1LABIJQEMZWBMWTVUKH1wBUxhJT1FODRoOUUMYSkUHBVxDIlUKB00IQwVcBB5NTA0dXBYATUoPHk1FQU1NAhpcFlMZUQZRWwQHGVUGXzNvPAMDQxRYBhtNWBEUWEURCFUMBhkDGgpRFwIZEhoZUUMFUQBTGVwCHBkcHBgZExhaDlMLVhFRUBFd"),
})

cdau.bossTeams.toggle = cdau.bossTeams.section:Toggle({
Name = _d("ewwCSkUnCFgOAg"),
Default = false,
Callback = function(ipn)
cdau.bossTeams.enabled = ipn
end,
}, _d("WwwCSjoHCFgOAg"))

for fvu, wng in ipairs(guo) do
local ip = cdau.bossTeams.picked[wng.id] or 1

ip = math.clamp(math.floor(tonumber(ip) or 1), 1, 4)
cdau.bossTeams.picked[wng.id] = ip

cdau.bossTeams.ui[wng.id] = cdau.bossTeams.section:Dropdown({
Name = wng.name,
Search = false,
Multi = false,
Required = false,

Default = ip,
Options = { _d("bQYQVEVC"), _d("bQYQVEVB"), _d("bQYQVEVA"), _d("bQYQVEVH") },
Callback = function(sfp)
local ajl = type(sfp) == _d("TQITVQA") and sfp[1] or sfp
local zbsn = type(ajl) == _d("ShcDUAsU") and tonumber(ajl:match(_d("EUYVEkw"))) or nil

if zbsn then
cdau.bossTeams.picked[wng.id] = zbsn

cdau.bossTeams.save()
end

pcall(function()
cdau.bossTeams.ui[wng.id]:UpdateName(wng.name .. _d("GYHxm0U") .. (ajl or _d("bQYQVEVC")))
end)
end,
}, _d("TQYQVDoEAksPFWY") .. wng.id)

pcall(function()
cdau.bossTeams.ui[wng.id]:UpdateSelection(_d("bQYQVEU") .. tostring(ip))
cdau.bossTeams.ui[wng.id]:UpdateName(wng.name .. _d("GYHxm0UnCFgOUQ") .. tostring(ip))
end)
end

cdau.bossTeams.raidSection = um:Section({
Side = _d("awoWURE"),
})

cdau.bossTeams.raidSection:Header({
Name = _d("awIYXUUnCFgOAg"),
})

cdau.bossTeams.raidSection:Paragraph({
Header = _d("cQwGGRcSBF1DBVwEHh4ZFB5LDg"),
Body = _d("dgUXA0UBDFAHAhkQAAgZFBlYERYbXBFRTQASABkXGVxFAAFWF1FYCQEIWAcIGQ0cAV0QXzNvPAMDQxRYBhtNSwIYXUURCFUMBhkMAE1fDAReDQdNTgoFUUUHBVxDBVwEHk1JChJSABdNXwwDGQwHQw"),
})

cdau.bossTeams.raidToggle = cdau.bossTeams.raidSection:Toggle({
Name = _d("awIYXUUnCFgOAg"),
Default = false,
Callback = function(zpt)
cdau.bossTeams.raidsOn = zpt
end,
}, _d("SwIYXToHCFgOAg"))

for qvhq, qmk in ipairs(skzu.Raids) do
if qmk.BossTitle and qmk.id then
local rsy = cdau.bossTeams.raidPicked[qmk.id] or 1

rsy = math.clamp(math.floor(tonumber(rsy) or 1), 1, 4)
cdau.bossTeams.raidPicked[qmk.id] = rsy

cdau.bossTeams.raidUi[qmk.id] = cdau.bossTeams.raidSection:Dropdown({
Name = qmk.BossTitle,
Search = false,
Multi = false,
Required = false,
Default = rsy,
Options = { _d("bQYQVEVC"), _d("bQYQVEVB"), _d("bQYQVEVA"), _d("bQYQVEVH") },
Callback = function(fnl)
local jqk = type(fnl) == _d("TQITVQA") and fnl[1] or fnl
local mpu = type(jqk) == _d("ShcDUAsU") and tonumber(jqk:match(_d("EUYVEkw"))) or nil

if mpu then
cdau.bossTeams.raidPicked[qmk.id] = mpu
cdau.bossTeams.save()
end

pcall(function()
cdau.bossTeams.raidUi[qmk.id]:UpdateName(qmk.BossTitle .. _d("GYHxm0U") .. (jqk or _d("bQYQVEVC")))
end)
end,
}, _d("TQYQVDoBDFAHLg") .. qmk.id)

pcall(function()
cdau.bossTeams.raidUi[qmk.id]:UpdateSelection(_d("bQYQVEU") .. tostring(rsy))
cdau.bossTeams.raidUi[qmk.id]:UpdateName(qmk.BossTitle .. _d("GYHxm0UnCFgOUQ") .. tostring(rsy))
end)
end
end

task.spawn(function()
local hkn = gkqe()

while tpm() do
local mne = gkqe()

if drcb.enabled and drcb.statusText then
mne = drcb.statusText()
end

mne = mne .. _d("M2kiXBcFCEtDBElF") .. nays()

if mne ~= hkn then
hkn = mne
pcall(function()
dufq:UpdateBody(mne)
end)
end
task.wait(0.5)
end
end)

task.spawn(function()
while tpm() do
for jisl, fpi in ipairs({ _d("ewIFTQkWKkwK"), _d("ewIFTQkWKkwKQw") }) do
local utkf = hk:FindFirstChild(fpi)
local hs = utkf and utkf:FindFirstChild(_d("ewIFTQkWPloRFFwL"))
local uxqf = utkf and utkf:FindFirstChild(_d("cQoVXCcSGU0PFHsQBxlWDQ"))

if hs and hs.Visible and uxqf and not uxqf.Visible then
uxqf.Visible = true
end
end

task.wait(0.5)
end
end)

task.spawn(function()
local sqbp = false

while tpm() do
if yqmw then
local ndo = hk:FindFirstChild(_d("bQwGXBchCEoWHU0iBgQ"))
local rboi = ndo and ndo:FindFirstChild(_d("awYCTAkHK0sCHFw"))
local rsmf = ndo and ndo:FindFirstChild(_d("fgYfXBcSGVANFn8XEgBc"))

if rsmf and rsmf.Visible then
rsmf.Visible = false
end

local bwv = rboi and rboi.Visible or false

if bwv and not sqbp then
local kljd = rboi:FindFirstChild(_d("eg8eSgAxGE0XHlc"))
local xvp = false

if kljd then
for xi, orv in ipairs({ _d("dAwESgAxGE0XHldUMAFQABo"), _d("eAAFUBMSGVwH") }) do
local mxwg = kljd[orv]
if mxwg then
for pnd, ltn in ipairs(getconnections(mxwg)) do
pcall(function()
ltn:Fire()
end)
xvp = true
end
end
end
end

if not xvp then
rboi.Visible = false
else
task.spawn(function()
task.wait(0.3)
if rboi.Parent and rboi.Visible then
rboi.Visible = false
end
end)
end
end

sqbp = bwv
else
sqbp = false
end

task.wait(0.2)
end
end)

local ncj = {}

function ncj.active()
return cdau.enabled or cdau.story
end

function ncj.towerHolds()
if drcb.enabled then
return false
end

if mnni.run.enabled then
return true
end

return hlkv.enabled and not hlkv.paused
end

function ncj.ready(gfgi, sjbg, fmov)
local swe = cdau.unlocked[gfgi]

return (not swe or swe[sjbg] ~= false) and pfvv(gfgi, sjbg) <= fmov
end

function ncj.hasReadyTarget()
local slsn = os.time()

for yyfi, ov in ipairs(xe()) do
for pnxp, ynzj in ipairs(svsd()) do
if ncj.ready(ov, ynzj, slsn) then
return true
end
end
end

return false
end

function ncj.backOff(dlku, alcg)
vcx(dlku, alcg, os.time() + 5)
end

function ncj.findTarget()
for yucz, buu in ipairs(xe()) do
local nzej = yilx(buu)
local fxlg = os.time() - (cdau.lastFetch[buu] or 0) > 60

if fxlg and nzej and not cdau.walkToNpc then
obs(nzej)
task.wait(0.3)
nils(buu)
end

for sqlf, zig in ipairs(svsd()) do
if ncj.ready(buu, zig, os.time()) then
return buu, zig
end
end
end

return nil
end

function cdau.bossTeams.slotForFight()
if drcb.hasSlot2 == false then
return 1
end

if drcb.busy(2) then
return 1
end

return 2
end

function cdau.bossTeams.slotTeam(uw)
local xvdk = hk:FindFirstChild(_d("agYFTQwdCkokBFA"))
local yjh = xvdk and xvdk:FindFirstChild(_d("ag8eTTEWDFQ") .. uw .. _d("exYFTQod"), true)
local vycl = yjh and yjh.Text

return vycl and tonumber(vycl:match(_d("EUYVEkw"))) or nil
end

function cdau.bossTeams.applyTeam(pym, gmcc)
pym = tonumber(pym)

if not pym then
return false
end

gmcc = tonumber(gmcc) or cdau.bossTeams.slotForFight()

if drcb.busy(gmcc) then
return false
end

cdau.bossTeams.lastSlot = gmcc

local xal = cdau.bossTeams.slotTeam(gmcc) or cdau.bossTeams.applied[gmcc]

if xal == pym then
return true
end

local ibym = jlvd.remote(_d("ahQYTQYbOVwCHA"))

if not ibym then
return false
end

local rq = pcall(function()
ibym:FireServer(pym, false, gmcc)
end)

cdau.bossTeams.applied[gmcc] = pym
task.wait(0.2)

return rq
end

function cdau.bossTeams.apply(vyh)
if not cdau.bossTeams.enabled then
return
end

local crgw = cdau.bossTeams.worldOf[vyh]
local uaw = crgw and cdau.bossTeams.picked[crgw]

if not uaw then
return
end

cdau.bossTeams.applyTeam(uaw)
end

function cdau.bossTeams.applyTower(tup, kwjy)
if not cdau.bossTeams.towersOn then
return false
end

local sza = cdau.bossTeams.towerPicked[tup]

local jwhd = cdau.bossTeams.swapFired[tup]

if cdau.bossTeams.swap.on and type(jwhd) == _d("TQITVQA") then
sza = jwhd[2] or jwhd[1] or sza
end

if not sza then
return false
end

return cdau.bossTeams.applyTeam(sza, kwjy)
end

function cdau.bossTeams.applyRaid(doi)
if not cdau.bossTeams.raidsOn then
return
end

local xic = doi and cdau.bossTeams.raidPicked[doi]

if not xic then
return
end

cdau.bossTeams.applyTeam(xic)
end

function ncj.fight(msg, cl)
local tej = yilx(msg)

if not tej then
ncj.backOff(msg, cl)
return false
end

local ssw

if cdau.walkToNpc then
local nqvi = qvf[msg]

if nqvi then
ioe.TeleportToWorld:FireServer(nqvi)
task.wait(2.5)

local efwf = yilx(msg) or tej
local fagq = efwf:GetPivot()

ssw = saan(fagq.Position + fagq.LookVector * 6, function()
return not ncj.active() or not cdau.walkToNpc
end)

if ssw then
nils(msg)
ssw = ncj.ready(msg, cl, os.time())
end
end
else
ssw = obs(tej)
end

if not ssw then
ncj.backOff(msg, cl)
return false
end

task.wait(0.4)
cdau.bossTeams.apply(msg)
cdau.activeDifficulty[msg] = cl
ioe.SetNPCDifficulty:FireServer(msg, cl)
task.wait(0.4)

cdau.currentBattle = {
npcId = msg,
difficulty = cl,
}
so = msg
dv = cl
ioe.StartNPCBattle:FireServer(msg)
vcx(msg, cl, os.time() + 10)
cdau.battlePending = true
cdau.battlePendingUntil = os.time() + 30
task.wait(1)

return true
end

cdau.workPending = function()

if kc.misc and kc.misc.cards and kc.misc.cards.inFlight then
return true
end

if not ncj.active() then
return false
end

if cdau.battlePending then
return true
end

local yhw = drcb.npcSlot()

if yhw and drcb.busy(yhw) then
return true
end

return ncj.hasReadyTarget()
end

task.spawn(function()
while tpm() do

local zhe = (drcb.enabled and (kc.enabled or oyaa.enabled or kc.worldBoss.enabled))
or ncj.towerHolds()
or not drcb.slotFree(drcb.npcSlot())

or (kc.misc and kc.misc.cards and kc.misc.cards.inFlight)
or (cdau.battlePending and os.time() < cdau.battlePendingUntil)

if ncj.active() and not zhe and not drcb.prioBlocks(_d("VxMS")) then
local dvc, cruk = ncj.findTarget()

if dvc then
ncj.fight(dvc, cruk)
end
end

task.wait(0.5)
end
end)

task.spawn(function()
while tpm() do

local saax = {}

if kc.enabled then
local ipao = drcb.roleSlot(_d("VxMS"))

if ipao then
table.insert(saax, ipao)
end

if drcb.splitNpc() and ipao ~= 2 then
table.insert(saax, 2)
end
end

local nof = phy:FindFirstChild(_d("awIYXTYHDE0WAg"))

if #saax > 0 and nof and (not oyaa.enabled or drcb.splitNpc()) and (drcb.enabled or not cdau.workPending()) then
for gfp, tsj in ipairs(saax) do
local stt = nof

local qa = kc.bossFor(tsj, (tsj ~= 1 and not drcb.splitNpc()) and 1 or nil)
local mjmx = stt:GetAttribute(_d("cBA+SQAd")) == true or stt:GetAttribute(_d("fwwDWgAX")) == true
local inh = qa ~= nil and stt:GetAttribute(_d("awYQXRws") .. qa) == true
local qxiu = qa and yo(qa)

if qa and kc.pending[qa] and os.time() >= (kc.pendingUntil[qa] or 0) then
kc.pending[qa] = false
kc.cleared[qa] = nil
end

if qa and drcb.slotFree(tsj) and mjmx and inh and kc.cleared[qa] ~= qxiu and not kc.pending[qa] then
local uiq = uhmz[qa]
local bjs = uiq and yilx(uiq)
local mul = false

if bjs then
if kc.walkToBoss then
local kn = uktv[qa]
local ute = ovr.Character and ovr.Character:FindFirstChild(_d("cRYcWAscBF0xHlYRIwxLFw"))
local flw = bjs:GetPivot().Position
local ajx = ute and (ute.Position - flw).Magnitude <= 15

if ajx then
mul = true
elseif kn then
ioe.TeleportToWorld:FireServer(kn)

local yfzh = os.clock()
while os.clock() - yfzh < 2.5 and kc.enabled do
task.wait(0.1)
end

if kc.enabled then
local mvun = yilx(uiq) or bjs
local ttn = mvun:GetPivot()
local isfk = ttn.Position + ttn.LookVector * 6
mul = eq(isfk, kc.walkSpeed, function()
return not kc.enabled or not kc.walkToBoss
end)
end
end

if not mul then
mul = obs(bjs)
end
else
mul = obs(bjs)
end

if mul then
task.wait(0.5)
end
end

if mul and not drcb.prioBlocks(_d("SwIYXRY")) then
kc.inFlight[qa] = tsj
kc.pending[qa] = true
kc.pendingUntil[qa] = os.time() + 15
kc.cleared[qa] = qxiu

local ftl = kc.difficulties[1] or _d("VwwDVAQf")
local kidl = kc.progress[qa]

if kidl then
local vlt = kidl.unlocked
local rneq = kidl.cooldowns

for pb, ctvn in ipairs(kc.difficulties) do
local yfrd = not vlt or vlt[ctvn] ~= false
local udd = rneq and tonumber(rneq[ctvn]) or 0

if yfrd and udd <= 0 then
ftl = ctvn
break
end
end
end

cdau.bossTeams.applyRaid(qa)
ioe.SetRaidDifficulty:FireServer(ftl, qa)
task.wait(0.3)
ioe.StartRaidBattle:FireServer(qa)
task.wait(2)
end
end
end
end

task.wait(1)
end
end)

task.spawn(function()
while tpm() do
local sxb = oyaa.inBattle and os.time() < oyaa.inBattleUntil

if oyaa.enabled and (drcb.enabled or not cdau.workPending()) and not sxb and drcb.slotFree(drcb.roomSlot()) and not (oyaa.pending and os.time() < oyaa.pendingUntil) then
local eb = oyaa.progress

if eb == nil then
ioe.RequestInfiniteRoomProgress:FireServer()
task.wait(0.5)
else
local vpa = nil

for gpqv, sine in ipairs(ptj.Milestones) do
if ptj.isMilestoneUnlocked(sine, eb) and not ptj.isMilestoneCleared(sine, eb) then
vpa = sine
break
end
end

if vpa then

local uhv = drcb.roomSlot()

oyaa.currentRoom = vpa
oyaa.inBattle = true
oyaa.inBattleUntil = os.time() + 60
oyaa.pending = true
oyaa.pendingUntil = os.time() + 10

local qent = hk:FindFirstChild(uhv == 2 and _d("awYCXBExDE0XHVwjHwJWEUM") or _d("awYCXBExDE0XHVwjHwJWEQ"))
if qent and qent:IsA(_d("ewofXQQRAVwmB1wLBw")) then
qent:Fire(vpa, _d("UA0XUAsaGVw8A1YKHg"))
end

local hhb = hk:FindFirstChild(uhv == 2 and _d("ahcQSxE6A18KH1ARFj9WDBx7BAcZVQZD") or _d("ahcQSxE6A18KH1ARFj9WDBx7BAcZVQY"))
if hhb and hhb:IsA(_d("ewofXQQRAVwmB1wLBw")) then
hhb:Fire(vpa)
end

ioe.StartBattle:FireServer(_d("UA0XUAsaGVw8A1YKHg"), {
milestone = vpa,
slot = uhv,
})
task.wait(2)
end
end
end

task.wait(1)
end
end)

local function kaqm(gvx, mzkl)
local botm = hk:FindFirstChild(_d("agADXAAdKkwK"))

if not botm then
return
end

local ywp = botm:FindFirstChild(gvx)
local fpy = ywp and ywp:FindFirstChild(_d("bwIdTAA/DFsGHQ"), true)
local hti = ywp and ywp:FindFirstChild(_d("dQITXAk"), true)

if not ywp then
return
end

local rrpm = false

if fpy then
rrpm = fpy.Text == _d("dg0")
elseif hti then
rrpm = not string.lower(hti.Text):find(_d("VgUX"), 1, true)
end

if rrpm ~= mzkl then
for rfl, wgvz in ipairs(getconnections(ywp.MouseButton1Click)) do
local ctfx = wgvz.Function

if type(ctfx) == _d("XxYfWhEaAlc") then
pcall(ctfx)
else
pcall(function()
wgvz:Fire()
end)
end
end
end
end

getgenv().ACBXSetRollButton = kaqm

local function okhw(zl)
kaqm(_d("aBYYWg4hAlUPM0wRBwJX"), zl)
kaqm(_d("eBYFVjccAVUhBE0RHAM"), zl)
end

getgenv().ACBXSetRollUi = okhw
dwrz.setRollButton = kaqm

pcall(function()
ioe.SaveClientData:FireServer({ autoHideBattle = false })
end)

task.defer(function()
task.wait(0.5)

local bzx = hk:FindFirstChild(_d("ewIFTQkWKkwK"))
local rxl = bzx and bzx:FindFirstChild(_d("ewIFTQkWPloRFFwL"))
local rwaf = bzx and bzx:FindFirstChild(_d("cQoVXCcSGU0PFHsQBxlWDQ"))

if rwaf and rwaf.Visible and rxl and not rxl.Visible and azbt() then
for qge, yrqp in ipairs(getconnections(rwaf.MouseButton1Click)) do
local qm = yrqp.Function

if type(qm) == _d("XxYfWhEaAlc") then
pcall(qm)
else
pcall(function()
yrqp:Fire()
end)
end
end
end
end)

okhw(true)

task.spawn(function()
while tpm() do

if dwrz.autoRoll then
kaqm(_d("eBYFVjccAVUhBE0RHAM"), true)
end

if dwrz.autoQuickRoll then
kaqm(_d("aBYYWg4hAlUPM0wRBwJX"), true)
end

task.wait(1)
end
end)

local function jugu()

if hlkv.floor then
return hlkv.floor
end

local uirj = hk:FindFirstChild(_d("ewIFTQkWKkwK"))

if not uirj then
return nil
end

for wk, mnwl in ipairs({ _d("bQwGXBc1AVYMA3UEEQhV"), _d("axYffwkcAksvEFsAHw") }) do
local xf = uirj:FindFirstChild(mnwl)

if xf and xf.Visible and xf.Text then
local lnx = tonumber(xf.Text:match(_d("EUYVEkw")))

if lnx then
return lnx
end
end
end

local gva = uirj:FindFirstChild(_d("fw8eVhcgDksGFFc"))
local nvb = gva and gva:FindFirstChild(_d("bQwBewQB"))
local lefe = nvb and nvb:FindFirstChild(_d("fw8eVhc/DFsGHQ"))

if lefe then
return tonumber(lefe.Text:match(_d("EUYVEkw")))
end

return nil
end

function cdau.bossTeams.swapRows(vew)
local osuf = hk:FindFirstChild(_d("agYFTQwdCkokBFA"))
local mx = osuf and osuf:FindFirstChild(_d("eBYFVjYEDEk") .. vew .. _d("awwG"), true)

if not mx then
return nil
end

return mx:FindFirstChild(_d("eBYFVjYEDEk") .. vew .. _d("egsUWg4")),
mx:FindFirstChild(_d("eBYFVjYEDEk") .. vew .. _d("bQYQVA")),
mx:FindFirstChild(_d("eBYFVjYEDEk") .. vew .. _d("fw8eVhc"))
end

function cdau.bossTeams.swapOn(ogva)
local plf = hk:FindFirstChild(_d("agYFTQwdCkokBFA"))
local vgs = plf and plf:FindFirstChild(_d("fgYFagAHGVANFko"), true)

if not vgs then
return nil
end

local ilo, ajm = pcall(function()
return vgs:Invoke()
end)

if ilo and type(ajm) == _d("TQITVQA") then
return ajm[ogva == 1 and _d("WBYFVjEWDFQwBlgVNgNYAR1cAQ") or _d("WBYFVjEWDFQwBlgVQShXAhNVABc")] == true
end

return nil
end

function cdau.bossTeams.swapBox(jrs, twx)
if tonumber(jrs.Text) == twx then
return
end

jrs.Text = tostring(twx)

if getconnections then
for ruj, bnxf in ipairs(getconnections(jrs.FocusLost)) do
pcall(function()
bnxf:Fire(true, Enum.UserInputType.Focus)
end)
end
end
end

function cdau.bossTeams.swapSet(qoha, cb, xwpu, atqc)
local lgp, jixj, dieg = cdau.bossTeams.swapRows(qoha)

if not (lgp and jixj and dieg) then
return false
end

xwpu = math.max(1, math.floor(tonumber(xwpu) or 1))
atqc = math.clamp(math.floor(tonumber(atqc) or 1), 1, 4)

cdau.bossTeams.swapBox(dieg, xwpu)
cdau.bossTeams.swapBox(jixj, atqc)

local evr = cdau.bossTeams.swapOn(qoha)

if evr ~= nil and evr ~= (cb == true) and getconnections then
pcall(function()
for fite, vejr in ipairs(getconnections(lgp.MouseButton1Click)) do
pcall(function()
vejr:Fire()
end)
end
end)
end

local hfc = qoha == 1 and _d("") or _d("Cw")

pcall(function()
ioe.SaveClientData:FireServer({
[_d("WBYFVjEWDFQwBlgV") .. hfc .. _d("fA0QWwkWCQ")] = cb == true,
[_d("WBYFVjEWDFQwBlgV") .. hfc .. _d("bQYQVA")] = atqc,
[_d("WBYFVjEWDFQwBlgV") .. hfc .. _d("fw8eVhc")] = xwpu,
})
end)

return true
end

function cdau.bossTeams.swapApply()
local ihk = cdau.bossTeams
local ah = ihk.swap
local oqq = true

if ah.on then
oqq = ihk.swapSet(1, ah.floor > 0, ah.floor, ah.team)
oqq = ihk.swapSet(2, ah.floor2 > 0, ah.floor2, ah.team2) and oqq
else
oqq = ihk.swapSet(1, false, ah.floor, ah.team)
oqq = ihk.swapSet(2, false, ah.floor2, ah.team2) and oqq
end

ihk.swapMessage = _d("")

if not oqq then
ihk.swapMessage = _d("bQsUGQISAFxEAhkkBhlWQyVcBB5NahQQSUUBAk4QUVgXFk1XDAUZBwYEVRdRQAAHTRRDA1wRARRQDRYX")
end

ihk.paintSwap()
end

function cdau.bossTeams.swapReset(bug)
local zilq = cdau.bossTeams

if bug then
zilq.swapFired[bug] = nil
else
zilq.swapFired = {}
end
end

function cdau.bossTeams.swapTick()
local dvf = cdau.bossTeams
local aqqp = dvf.swap

if not aqqp.on or (aqqp.floor <= 0 and aqqp.floor2 <= 0) then
if next(dvf.swapFired) ~= nil then
dvf.swapFired = {}
end

return
end

local elb = os.clock()
local cpp = jlvd.remote(_d("ahQYTQYbOVwCHA"))

if elb - (dvf.swapWroteAt or 0) > 10 then
dvf.swapWroteAt = elb
dvf.swapApply()
end

local fep = {
{
kind = _d("TQwGXBc"),
slot = drcb.towerSlot(),

live = elb - (hlkv.floorAt or 0) < 90,
floor = jugu(),

own = true,
},
{
kind = _d("UQIDXQYcH1w"),
slot = drcb.hardcoreSlot(),
live = xk.active(),
floor = xk.floorNow(),

own = false,
},
}

local wv = {
{ index = 1, floor = aqqp.floor, team = aqqp.team },
{ index = 2, floor = aqqp.floor2, team = aqqp.team2 },
}

for uoh, ihl in ipairs(fep) do
if not ihl.live then

dvf.swapFired[ihl.kind] = nil
elseif ihl.own and cpp and ihl.floor then
local otq = dvf.swapFired[ihl.kind]

for lyfv, jgkp in ipairs(wv) do
local py = type(otq) == _d("TQITVQA") and otq[jgkp.index]

if jgkp.floor > 0 and ihl.floor == jgkp.floor and not py then
local eigs = pcall(function()
cpp:FireServer(math.clamp(math.floor(jgkp.team), 1, 4), true, ihl.slot or 1)
end)

if eigs then
otq = type(otq) == _d("TQITVQA") and otq or {}
otq[jgkp.index] = jgkp.team
dvf.swapFired[ihl.kind] = otq

dvf.swapMessage = string.format(_d("egICTQkWTV8PHlYXU0hdQ1wZFgQETQAZXAFTGVZDJVwEHk0cB18"), ihl.floor, jgkp.team)
dvf.paintSwap()
end
end
end
end
end
end

task.spawn(function()
while tpm() do
pcall(cdau.bossTeams.swapTick)
task.wait(0.5)
end
end)

local function crvj()

return ncj.active() and ncj.hasReadyTarget()
end

function kc.worldBoss.remote(rjrq)
local lct = kc.worldBoss

lct.remotes = lct.remotes or {}

local ctx = lct.remotes[rjrq]

if ctx and ctx.Parent then
return ctx
end

local fur = jlvd.remote(rjrq)

if fur then
lct.remotes[rjrq] = fur
end

return fur
end

function kc.worldBoss.setRepeat(mh)
local ukao = kc.worldBoss
local eces = ukao.remote(_d("bgwDVQExAkoQMFoRGgJX"))

if not eces then
return false
end

local gav = ukao.state
local qutu = type(gav) == _d("TQITVQA") and gav.repeatOn == true

if qutu == (mh and true or false) then
ukao.repeatIntent = nil

return true
end

if mh then
local rou = workspace:FindFirstChild(_d("bgwDVQExAkoQMEsAHQw"))
local pbz = rou and (rou:FindFirstChild(_d("egYdVSgSFQ")) or rou)
local pew = ovr.Character and ovr.Character:FindFirstChild(_d("cRYcWAscBF0xHlYRIwxLFw"))

if not (pbz and pew) then
return false
end

local xs, apos = pcall(function()
return pbz:GetPivot()
end)

if not xs or (pew.Position - apos.Position).Magnitude > 60 then
return false
end
end

if ukao.repeatIntent == mh and os.clock() - (ukao.repeatAskedAt or 0) < 20 then
return false
end

ukao.repeatIntent = mh

pcall(function()
eces:FireServer(_d("SwYBXAQH"))
end)

ukao.repeatAskedAt = os.clock()

return true
end

function kc.worldBoss.requestSync()
local uavg = kc.worldBoss
local iads = uavg.remote(_d("bgwDVQExAkoQMFoRGgJX"))

if iads then
pcall(function()
iads:FireServer(_d("ShofWg"))
end)
end

uavg.askedAt = os.clock()
end

function kc.worldBoss.hasWork()
local pjbe = kc.worldBoss
local bjwf = pjbe.state

if not pjbe.enabled or type(bjwf) ~= _d("TQITVQA") then
return false
end

local rdm = pjbe.isOpen()

if rdm == nil then
rdm = bjwf.open == true
end

return rdm and bjwf.inFight ~= true
end

kc.worldBoss.bossUp = function()
local loei = kc.worldBoss

if not loei.enabled then
return false
end

local ppb = loei.isOpen()

if ppb ~= nil then
return ppb == true
end

local zbtl = loei.state

return type(zbtl) == _d("TQITVQA") and zbtl.open == true
end

function kc.worldBoss.meter()
local dscz = kc.worldBoss
local upk = os.clock()

if upk - (dscz.meterAt or 0) < 1 then
return dscz.meterCurrent, dscz.meterMax
end

dscz.meterAt = upk
dscz.meterCurrent = nil
dscz.meterMax = nil

local zw = phy:FindFirstChild(_d("bgwDVQExAkoQIk0EBxhK"))
local jzvi = zw and tonumber(zw:GetAttribute(_d("dAYFXBc")))
local kxy = zw and tonumber(zw:GetAttribute(_d("dAYFXBc+DEE")))

if jzvi and kxy and kxy > 0 then
dscz.meterCurrent = jzvi
dscz.meterMax = kxy

return dscz.meterCurrent, dscz.meterMax
end

local function yior(rne)
if type(rne) ~= _d("ShcDUAsU") then
return nil
end

local hgr, ofao = rne:match(_d("EThUXUBdMBJKVEpPWzZyLjNSCBEwBko"))
local lygh = tonumber(hgr)

if not lygh then
return nil
end

local fcmk = ({ K = 1000, M = 1000000, B = 1000000000 })[string.upper(ofao or _d(""))] or 1

return lygh * fcmk
end

local cgm = hk:FindFirstChild(_d("bgwDVQExAkoQM1gLHQhLJARQ"))
local aldr = cgm and cgm:FindFirstChild(_d("ewIfVwAB"))
local vzm = aldr and aldr:FindFirstChild(_d("dAYFXBcxDEs"))
local nzln = vzm

if vzm and not vzm:IsA(_d("bQYJTSkSD1wP")) then
nzln = vzm:FindFirstChild(_d("bQYJTQ"))
end

local zpts = nzln and nzln:IsA(_d("bQYJTSkSD1wP")) and nzln.Text or nil

if type(zpts) == _d("ShcDUAsU") then
local vny, esnu = zpts:match(_d("ETgvFjhYRBZLXxJM"))

dscz.meterCurrent = yior(vny)
dscz.meterMax = yior(esnu)
end

return dscz.meterCurrent, dscz.meterMax
end

function kc.worldBoss.meterFull()
local ddm, kez = kc.worldBoss.meter()

return ddm ~= nil and kez ~= nil and kez > 0 and ddm >= kez
end

kc.worldBoss.holdsFishing = function()
local jrdf = kc.worldBoss

if not jrdf.enabled or not jrdf.bossUp() then
return false
end

if jrdf.stopAtFull and jrdf.meterFull() then
return false
end

return drcb.prioBlocks(_d("TgIFXBc"))
end

kc.worldBoss.holdsDigging = function()
local free = kc.worldBoss

if not free.enabled or not free.bossUp() then
return false
end

if free.stopAtFull and free.meterFull() then
return false
end

return drcb.digBlocked()
end

kc.worldBoss.usesGameChain = function()
return true
end

function kc.worldBoss.travel()
local qv = kc.worldBoss
local ugf = ovr.Character
local hg = ugf and ugf:FindFirstChild(_d("cRYcWAscBF0xHlYRIwxLFw"))

if not hg or os.clock() < qv.travelUntil then
return
end

qv.travelUntil = os.clock() + 6

local ckwp = workspace:FindFirstChild(_d("bgwDVQExAkoQIVYXBwxV"))
local rrzt = ckwp and ckwp:FindFirstChild(_d("aQwDTQQf"))

if not rrzt then
return
end

if (hg.Position - rrzt.Position).Magnitude > 150 then
local ztf = jlvd.remote(_d("bQYdXBUcH003Hm4KAQFd"))

if ztf then
pcall(function()
ztf:FireServer(_d("VQwTWxw"))
end)
end

return
end

if (hg.Position - rrzt.Position).Magnitude > 6 then
qv.walkLeg(rrzt.Position + Vector3.new(0, 3, 0), 4)

if (hg.Position - rrzt.Position).Magnitude > 9 then
return
end
end

local ofdo = rrzt:FindFirstChildOfClass(_d("aREeQQweBE0aIUsKHh1N"))

if not ofdo then
return
end

pcall(function()
if type(fireproximityprompt) == _d("XxYfWhEaAlc") then
fireproximityprompt(ofdo)
else
ofdo:InputHoldBegin()
task.wait(0.25)
ofdo:InputHoldEnd()
end
end)
end

function kc.worldBoss.reach()
local ahp = kc.worldBoss

local svkp = workspace:FindFirstChild(_d("bgwDVQExAkoQMEsAHQw")) or workspace:FindFirstChild(_d("bgwDVQExAkoQIkkEBAM"), true)
local kaye = ovr.Character
local qxp = kaye and kaye:FindFirstChild(_d("cRYcWAscBF0xHlYRIwxLFw"))

if not (svkp and qxp) then
ahp.travel()
return false
end

local dxr = svkp:FindFirstChild(_d("egYdVSgSFQ")) or svkp
local xjyc, jvvu = pcall(function()
return dxr:GetPivot()
end)

if not xjyc then
return false
end

local npp = jvvu.Position + jvvu.LookVector * 6 + Vector3.new(0, 3, 0)
local euo = Vector3.new(jvvu.Position.X, npp.Y, jvvu.Position.Z)

qxp.CFrame = CFrame.lookAt(npp, euo)

return true
end

kc.worldBoss.cityBounds = { 19100, 20900, -850, 850 }

function kc.worldBoss.inArena()
local cbi = ovr.Character and ovr.Character:FindFirstChild(_d("cRYcWAscBF0xHlYRIwxLFw"))
local morw = kc.worldBoss.cityBounds

if not cbi then
return false
end

local eeez = cbi.Position

return eeez.X >= morw[1] and eeez.X <= morw[2]
and eeez.Z >= morw[3] and eeez.Z <= morw[4]
end

function kc.worldBoss.enterCity(jd)
local rl = kc.worldBoss

local orpo = os.clock() + (jd or 30)

if rl.inArena() then
return true
end

while os.clock() < orpo do
if not rl.enabled then
return false
end

rl.travel()

if rl.inArena() then
return true
end

task.wait(0.5)
end

return rl.inArena()
end

kc.worldBoss.walking = false
kc.worldBoss.walkStartedAt = 0

function kc.worldBoss.walkLeg(mhlb, mhj)
local gxqn = kc.worldBoss
local rqqj = ovr.Character
local ukcp = rqqj and rqqj:FindFirstChild(_d("cRYcWAscBF0xHlYRIwxLFw"))
local mfrs = rqqj and rqqj:FindFirstChildOfClass(_d("cRYcWAscBF0"))

if not (ukcp and mfrs) then
return false
end

if gxqn.walking and os.clock() - (gxqn.walkStartedAt or 0) < 45 then
return false
end

mhj = mhj or 6

gxqn.walking = true
gxqn.walkStartedAt = os.clock()

local qys, wgy = pcall(function()
local ycv = os.clock() + 40
local osse = 0
local oy = ukcp.Position
local lwbl = os.clock()

while gxqn.enabled and os.clock() < ycv do
local yokd = Vector3.new(mhlb.X - ukcp.Position.X, 0, mhlb.Z - ukcp.Position.Z)

if yokd.Magnitude <= mhj then
return true
end

if os.clock() - osse >= 0.25 then
mfrs:MoveTo(Vector3.new(mhlb.X, ukcp.Position.Y, mhlb.Z))
osse = os.clock()
end

if os.clock() - lwbl >= 1.2 then
if (ukcp.Position - oy).Magnitude < 2 then
mfrs.Jump = true
end

oy = ukcp.Position
lwbl = os.clock()
end

task.wait(0.1)
end

return Vector3.new(mhlb.X - ukcp.Position.X, 0, mhlb.Z - ukcp.Position.Z).Magnitude <= mhj
end)

pcall(function()
mfrs:MoveTo(ukcp.Position)
end)

gxqn.walking = false

return qys and wgy == true
end

function kc.worldBoss.walkIn(udj)
local ijwd = kc.worldBoss
local iotj = workspace:FindFirstChild(_d("bgwDVQExAkoQMEsAHQw"))
local mme = iotj and (iotj:FindFirstChild(_d("egYdVSgSFQ")) or iotj) or nil
local cuyr = ovr.Character and ovr.Character:FindFirstChild(_d("cRYcWAscBF0xHlYRIwxLFw"))

if not (mme and cuyr) then
return false
end

local vzr, aul = pcall(function()
return mme:GetPivot()
end)

if not vzr then
return false
end

local kzs = aul.Position + aul.LookVector * 6 + Vector3.new(0, 3, 0)

if (cuyr.Position - kzs).Magnitude <= (udj or 10) then
return true
end

local zrgm = ijwd.walkLeg(kzs, udj or 6)

if not zrgm then
zrgm = (cuyr.Position - aul.Position).Magnitude <= 25
end

return zrgm
end

function kc.worldBoss.approach()
local hvpr = kc.worldBoss

if not hvpr.walkToBoss then
return hvpr.reach()
end

if not hvpr.enterCity() then
return false
end

return hvpr.walkIn(10)
end

function kc.worldBoss.fight()
local ebc = kc.worldBoss
local yggh = ebc.remote(_d("bgwDVQExAkoQMFoRGgJX"))

local function rsup(qygo)
ebc.nextFightAt = os.clock() + (qygo or 20)

return false
end

if not yggh then
return rsup(60)
end

if ebc.stopAtFull and ebc.meterFull() then
return rsup(20)
end

if ic.enabled
and (ic.tpToBay or ic.deepZone)
and ic.phase ~= _d("UAcdXA") then
return false
end

ebc.takingUntil = os.clock() + 45

local icl = workspace:FindFirstChild(_d("bgwDVQExAkoQMEsAHQw"))
local bjdj = icl and (icl:FindFirstChild(_d("egYdVSgSFQ")) or icl) or nil
local mcks = ovr.Character and ovr.Character:FindFirstChild(_d("cRYcWAscBF0xHlYRIwxLFw"))

local function vuh()
if not (bjdj and mcks) then
return nil
end

local zgk, crfd = pcall(function()
return bjdj:GetPivot()
end)

if not zgk then
return nil
end

return (mcks.Position - crfd.Position).Magnitude
end

local umy = ebc.usesGameChain() and (vuh() or math.huge) <= 60

if not umy and not ebc.approach() then
ebc.takingUntil = os.clock() + 3

return rsup(ebc.inArena() and 3 or 20)
end

if bjdj and mcks then
local gkcm, vzfn = pcall(function()
return bjdj:GetPivot()
end)

if not gkcm or (mcks.Position - vzfn.Position).Magnitude > 60 then
ebc.takingUntil = os.clock() + 2

return rsup(ebc.inArena() and 2 or 10)
end
end

cdau.bossTeams.applyTeam(ebc.team)

task.wait(umy and 0 or (ebc.walkToBoss and 0.3 or 1.4))

pcall(function()
yggh:FireServer(_d("XwoWURE"))
end)

ebc.fightAt = os.clock()

ebc.holdUntil = os.clock() + (ebc.usesGameChain() and 0.7 or 4)

ebc.takingUntil = os.clock() + 0.6

if ic.enabled and (ic.tpToBay or ic.deepZone) then
ic.deepPhase = _d("UAcdXA")
ic.deepStageAt = 0
ic.nextCastAt = 0
end

ebc.killsAtFire = type(ebc.state) == _d("TQITVQA") and tonumber(ebc.state.kills) or nil

if not ebc.usesGameChain() and ic.enabled
and (ic.tpToBay or ic.deepZone) then
ebc.nextFightAt = os.clock() + 1
end

return true
end

function kc.worldBoss.buy(wxkv)
local ffyh = kc.worldBoss
local iqt = ffyh.remote(_d("bgwDVQExAkoQMFoRGgJX"))

wxkv = wxkv or 1

if not iqt then
return 0
end

local szaj = 0

for wrk = 1, wxkv do
local xay = ffyh.state

if type(xay) ~= _d("TQITVQA") or type(xay.shop) ~= _d("TQITVQA") then
break
end

if os.clock() < ffyh.buyAt then
break
end

local lksd = tonumber(xay.medals) or 0
local sxbv = nil

for nbw, sjpn in ipairs(xay.shop) do
local etu = tonumber(sjpn.price) or 0
local hbnp = sjpn.kind ~= _d("UBcUVA") or (tonumber(sjpn.left) or 0) > 0

if ffyh.selected[sjpn.id] == true and hbnp and sjpn.owned ~= true and etu <= lksd then
sxbv = sjpn
break
end
end

if not sxbv then
break
end

pcall(function()
iqt:FireServer(_d("WxYI"), sxbv.id, 1)
end)

szaj = szaj + 1
ffyh.bought = ffyh.bought + 1
ffyh.buyAt = os.clock() + 1.2

ffyh.syncedAt = 0
ffyh.requestSync()
task.wait(1.1)
end

return szaj
end

kc.worldBoss.questGroups = { _d("SQYDSgodDFU"), _d("Xg8eWwQf"), _d("XwodVQ"), _d("SwYCTRcaDk0KHlc") }

function kc.worldBoss.questRows(xjx)
local kgzv = kc.worldBoss
local zvir = type(xjx) == _d("TQITVQA") and xjx.quests or nil
local aky = {}

if type(zvir) ~= _d("TQITVQA") then
return aky
end

for qs, wy in ipairs(kgzv.questGroups) do
local bglb = zvir[wy]

if type(bglb) == _d("TQITVQA") then
for hkz, qmyk in ipairs(bglb) do
if type(qmyk) == _d("TQITVQA") then
table.insert(aky, qmyk)
end
end
end
end

return aky
end

function kc.worldBoss.claim()
local kijb = kc.worldBoss
local jdbw = kijb.remote(_d("bgwDVQExAkoQMFoRGgJX"))
local mxgn = kijb.state

if not jdbw or type(mxgn) ~= _d("TQITVQA") or type(mxgn.quests) ~= _d("TQITVQA") then
return 0
end

if os.clock() < kijb.claimAt then
return 0
end

local lxev = kijb.questRows(mxgn)

if #lxev == 0 then
return 0
end

local iwe = {}

for ad, zbqf in ipairs(lxev) do
if zbqf.id ~= nil then
iwe[tostring(zbqf.id)] = true
end
end

for owfm, dftq in pairs(kijb.claimFired) do
if not iwe[owfm] or os.clock() - dftq > 120 then
kijb.claimFired[owfm] = nil
end
end

local rjr = nil

for ncpz, ung in ipairs(lxev) do
if ung.complete == true and ung.claimed ~= true and ung.id ~= nil then
local wbnl = tostring(ung.id)
local nli = kijb.claimFired[wbnl]

if not (nli and os.clock() - nli < 6) then
rjr = ung
break
end
end
end

if not rjr then
return 0
end

kijb.claimFired[tostring(rjr.id)] = os.clock()
kijb.claimedTotal = kijb.claimedTotal + 1

pcall(function()
jdbw:FireServer(_d("Wg8QUAg"), rjr.id)
end)

kijb.claimAt = os.clock() + 2
kijb.syncedAt = 0
kijb.requestSync()

return 1
end

kc.worldBoss.syncRemote = wvo(_d("bgwDVQExAkoQIkALEA"))

if kc.worldBoss.syncRemote then
jdcu(kc.worldBoss.syncRemote.OnClientEvent, function(rbkz)
local gope = kc.worldBoss

if type(rbkz) ~= _d("TQITVQA") then
return
end

gope.state = rbkz
gope.syncedAt = os.clock()

if rbkz.inFight == true then
gope.wasFighting = true
elseif gope.wasFighting then
gope.wasFighting = false

if ic.enabled then
pcall(ic.recover)
end
end
end)
end

task.spawn(function()
kc.worldBoss.requestSync()
end)

task.spawn(function()
while tpm() do
local gj = kc.worldBoss
local zoui = gj.state

if gj.autoClaim then
if os.clock() - gj.syncedAt > 4 and os.clock() - gj.askedAt > 1 then
gj.requestSync()
end

gj.claim()
end

if gj.enabled then

if os.clock() - gj.syncedAt > (gj.bossUp() and 1.5 or 4) and os.clock() - gj.askedAt > 1 then
gj.requestSync()
end

if gj.autoBuy and next(gj.selected) then
gj.buy(1)
end

local vizi = type(zoui) == _d("TQITVQA") and zoui.repeatOn == true

if gj.usesGameChain() then

local awo = type(zoui) == _d("TQITVQA") and tonumber(zoui.kills) or nil

if awo and awo ~= gj.seenKills then
gj.seenKills = awo
gj.progressAt = os.clock()

gj.chainWaitAt = nil
end

if gj.bossUp() and not vizi and os.clock() - (gj.repeatAskedAt or 0) > 20 then
if gj.approach() then
gj.repeatSeeded = true
gj.progressAt = os.clock()

gj.setRepeat(true)
end
end

if gj.hasWork() and os.clock() >= gj.holdUntil
and os.clock() >= (gj.nextFightAt or 0)
and os.clock() - (gj.kickAt or 0) > 0.5
and not (gj.stopAtFull and gj.meterFull())
and not drcb.prioBlocks(_d("WwwCSg")) then
gj.chainWaitAt = nil
gj.kickAt = os.clock()
gj.fight()
elseif not gj.hasWork() then
gj.chainWaitAt = nil
end

if not gj.bossUp() then
gj.chainWaitAt = nil

if vizi and os.clock() - (gj.repeatAskedAt or 0) > 6 then
gj.repeatSeeded = false
gj.setRepeat(false)
end
end
elseif gj.isOpen() and vizi and os.clock() - (gj.repeatAskedAt or 0) > 6 then
gj.setRepeat(false)
end

local nxea = type(zoui) == _d("TQITVQA") and tonumber(zoui.kills) or nil

if gj.killsAtFire ~= nil and nxea == gj.killsAtFire
and os.clock() - (gj.fightAt or 0) > (gj.inArena() and 2.5 or 9)
and os.clock() < (gj.nextFightAt or 0)
and os.clock() >= gj.holdUntil then
gj.killsAtFire = nil
gj.nextFightAt = os.clock()
end

if not gj.usesGameChain() and gj.hasWork() and os.clock() >= gj.holdUntil
and os.clock() >= (gj.nextFightAt or 0)
and not (gj.stopAtFull and gj.meterFull()) then

local qeo = crvj()
local dpvx = drcb.roleSlot(_d("VxMS")) or 1
local jcdf = drcb.enabled and drcb.busy(dpvx)

if not qeo and not jcdf then
gj.fight()
end
end
end

local mdp = gj.bodyText()

if gj.bodyParagraph and mdp ~= gj.bodyShown then
gj.bodyShown = mdp

pcall(function()
gj.bodyParagraph:UpdateBody(mdp)
end)
end

local twu = gj.shopText()

if gj.shopParagraph and twu ~= gj.shopShown then
gj.shopShown = twu

pcall(function()
gj.shopParagraph:UpdateBody(twu)
end)
end

task.wait(0.5)
end
end)

function drcb.roomsHaveWork()
if not oyaa.enabled then
return false
end

local ijx = oyaa.progress

if ijx == nil then
return true
end

for tvtc, dmrs in ipairs(ptj.Milestones) do
if ptj.isMilestoneUnlocked(dmrs, ijx) and not ptj.isMilestoneCleared(dmrs, ijx) then
return true
end
end

return false
end

function drcb.raidHasWork()
if not kc.enabled then
return false
end

local oaan = phy:FindFirstChild(_d("awIYXTYHDE0WAg"))

if not oaan then
return false
end

if not (oaan:GetAttribute(_d("cBA+SQAd")) == true or oaan:GetAttribute(_d("fwwDWgAX")) == true) then
return false
end

for pgj, hqu in ipairs({ 1, 2 }) do
local vkgu = (hqu ~= 1 and not drcb.splitNpc()) and 1 or nil
local rghg = kc.picks[vkgu or hqu] and kc.bossFor(hqu, vkgu)

if rghg and kc.cleared[rghg] ~= yo(rghg) then
return true
end
end

return false
end

function drcb.prioRank(bwg)
for iph, sun in ipairs(drcb.prioGroups) do
if sun.id == bwg then
return sun.rank
end
end

return 99
end

function drcb.prioWants(ilt)
if ilt == _d("SwIYXRY") then
return drcb.raidHasWork()
elseif ilt == _d("WwwCSg") then

return kc.worldBoss.hasWork()
elseif ilt == _d("VxMS") then
return crvj() or drcb.roomsHaveWork()
elseif ilt == _d("TQwGXBc") then
return hlkv.enabled or hlkv.nightmare == true or mnni.run.enabled
elseif ilt == _d("UQIDXQYcH1w") then
return xk.active()
elseif ilt == _d("TgIFXBc") then
return ic.enabled or eg.autoOn == true
end

return false
end

function drcb.prioBlocks(bmb)
local lhzc = drcb.prioRank(bmb)

for mxc, cwpo in ipairs(drcb.prioGroups) do
if cwpo.id ~= bmb and cwpo.rank < lhzc and drcb.prioWants(cwpo.id) then
return true
end
end

return false
end

function drcb.digBlocked()
local ykw = drcb.prioRank(_d("TgIFXBc"))

for yiip, aliz in ipairs(drcb.prioGroups) do
if aliz.id ~= _d("TgIFXBc") and aliz.id ~= _d("TQwGXBc") and aliz.id ~= _d("UQIDXQYcH1w")
and aliz.rank < ykw and drcb.prioWants(aliz.id) then
return true
end
end

return false
end

function drcb.towerYields()
return drcb.prioBlocks(_d("TQwGXBc"))
end

function drcb.towerOutranks()
return not drcb.enabled and (xk.active() or mnni.run.enabled)
end

local function rmfg(tzx)
if not tzx then
return false
end

local zqet = false

for xdhn, cs in ipairs(getconnections(tzx.MouseButton1Click)) do
local quoe = cs.Function

if type(quoe) == _d("XxYfWhEaAlc") then
pcall(quoe)
else
pcall(function()
cs:Fire()
end)
end

zqet = true
end

return zqet
end

function eu()
for abl, vhyd in ipairs({ _d("ewIFTQkWKkwK"), _d("ewIFTQkWKkwKQw") }) do
local lsnt = hk:FindFirstChild(vhyd)

if lsnt then
local qkwh = lsnt:FindFirstChild(_d("ewIFTQkWPloRFFwL"))
local rnrw = qkwh and qkwh:FindFirstChild(_d("aBYYWg40BE8GJEknBhlNDB8"))

if rmfg(rnrw) then
return true
end

local chkh = lsnt:FindFirstChild(_d("fw8eVhcgDksGFFc"))
local sdk = chkh and chkh:FindFirstChild(_d("ewwFTQoeL1gR"))
local scig = sdk and sdk:FindFirstChild(_d("fgoHXDADL0wXBVYL"))

if rmfg(scig) then
return true
end
end
end

local hch = phy:FindFirstChild(_d("awYcVhEWHg"))
local nyn = hch and hch:FindFirstChild(_d("fgoHXDADOVYUFEs"))
local pyu = hch and hch:FindFirstChild(_d("fA0VbQoECEsxFFQKBwg"))

if not (nyn or pyu) then
return false
end

if nyn then
pcall(function()
nyn:FireServer()
end)
end

if pyu then
pcall(function()
pyu:FireServer(1)
end)
end

hlkv.manualPause = false
hlkv.floor = nil
jlvd.restorePause()

return true
end

local cajw = eu

function eu()

hlkv.lastGiveUp = {
at = os.time(),
clock = os.clock(),
floor = hlkv.floor,
parked = jlvd.parked(),
active = za(),
hard = jlvd.hardNow(),
nightmare = hlkv.nightmare == true,
caller = debug.traceback(_d(""), 2),
}

local fcj = cajw()

if fcj then
xtig.armedAt = os.clock()
end

return fcj
end

function jwq(rvs)

local zkb = false

if rvs ~= false and za() then
local wvx = jugu()

if wvx then
zkb = jlvd.pauseAt(true, wvx) or zkb

hlkv.pauseArmed = true
end
end

for cws, htiw in ipairs({ _d("ewIFTQkWKkwK"), _d("ewIFTQkWKkwKQw") }) do
local zqej = hk:FindFirstChild(htiw)

if zqej then
local rjin = zqej:FindFirstChild(_d("ewIFTQkWPloRFFwL"))
local lla = rjin and rjin:FindFirstChild(_d("aBYYWg4xH1wCGnsQBxlWDQ"))

if lla then

if tostring(lla.Text):find(_d("2//i"), 1, true) then
zkb = true
elseif rmfg(lla) then
zkb = true
end
end

local gei = zqej:FindFirstChild(_d("fw8eVhcgDksGFFc"))

if gei and gei.Visible then
local pjis = gei:FindFirstChild(_d("ewwFTQoeL1gR"))
local ilmo = pjis and pjis:FindFirstChild(_d("bQIaXCcBCFgIM0wRBwJX"))

if rmfg(ilmo) then
zkb = true
end
end
end
end

return zkb
end

function xk.pauseRun()
if not za() then
pcall(function()
vdzw:Dialog({
Title = _d("aQIESgBTJEoPEFcBUyVYERVaCgEI"),
Description = _d("dwxRTQoECEtDA0wLUwRKQx1QExZNSwoWURFTA1YUXRkWHE1NCxRLAFMESkMfVhEbBFcEUU0KUx1YFgJcSw"),
Buttons = {
{
Name = _d("fgwFGQwH"),
},
},
})
end)

return
end

xk.paused = true
xk.manualPause = true
local rm = jwq(false)

pcall(function()
vdzw:Notify({
Title = _d("aQIESgBTJEoPEFcBUyVYERVaCgEI"),
Description = rm and _d("bQwGXBdTH0wNUUkEBh5cB18") or _d("axYfGQwATVUKB1xJUw9MF1FXClMPSwYQUkURGE0XHldFFQJMDRUX"),
Lifetime = 5,
})
end)
end

function xk.giveUpRun()
if not za() then
pcall(function()
vdzw:Dialog({
Title = _d("fgoHXEUmHRkqAlUEHQkZKxBLARACSwY"),
Description = _d("dwxRTQoECEtDA0wLUwRKQx1QExZNSwoWURFTA1YUXRkWHE1NCxRLAFMESkMfVhEbBFcEUU0KUwpQFRQZEAND"),
Buttons = {
{
Name = _d("fgwFGQwH"),
},
},
})
end)

return
end

xk.gaveUp = true
xk.paused = true
local ogxo = eu()

pcall(function()
vdzw:Notify({
Title = _d("fgoHXEUmHRkqAlUEHQkZKxBLARACSwY"),
Description = ogxo and _d("fgIHXEUGHRkXGVxFEBhLERRXEVMZVhQUS0UVAVYMAxc") or _d("axYfGQwATVUKB1xJUw9MF1FXClMKUBUUGRADTVsWBU0KHU1fDARXAV0"),
Lifetime = 5,
})
end)
end

task.spawn(function()
while tpm() do

pcall(jlvd.pinMode)

if hlkv.pauseArmed and not mk.enabled
and (not hlkv.enabled or not hlkv.paused) then
jlvd.restorePause()

if jlvd.pauseState() ~= true then
hlkv.pauseArmed = false
end
end

if hlkv.enabled and not hlkv.manualPause and drcb.towerSlot() ~= nil
and not mnni.run.enabled then

local rnz = os.clock() - (hlkv.floorAt or 0) > 12
and os.clock() - (hlkv.battleAt or 0) > 12

local lkkr = drcb.towerSlot() == 1 and not hlkv.paused
and not (mk.enabled and mk.floor > 0)
and rnz
and jlvd.parked()

if lkkr then
hlkv.parkedAt = hlkv.parkedAt > 0 and hlkv.parkedAt or os.clock()

if os.clock() - hlkv.parkedAt >= 25 then
hlkv.parkedAt = os.clock()
eu()
end
else
hlkv.parkedAt = 0
end

local ywtc = jlvd.hardPickNow()

local oeiw = not hlkv.paused and not hlkv.pending
and not (mk.enabled and mk.floor > 0)
and za()
and ywtc ~= nil
and ywtc ~= (hlkv.nightmare == true)

if oeiw then
hlkv.modeWrongAt = hlkv.modeWrongAt or os.clock()
else
hlkv.modeWrongAt = nil
end

if hlkv.modeWrongAt and os.clock() - hlkv.modeWrongAt > 20
and os.clock() - (hlkv.modeFixAt or 0) > 20 then
hlkv.modeFixAt = os.clock()
hlkv.modeWrongAt = nil
jlvd.endIfWrongMode(hlkv.nightmare == true)
end

if (hlkv.floorAt or 0) > 0 and not hlkv.paused
and os.clock() - hlkv.floorAt > 60
and os.clock() - (hlkv.battleAt or 0) > 60
and not za()
and not drcb.busy(drcb.towerSlot() or 1) then
hlkv.floorAt = 0
hlkv.battleAt = 0
hlkv.floor = nil
end

if not drcb.enabled and (drcb.towerOutranks() or drcb.towerYields()) then
if not hlkv.paused then
hlkv.paused = true
jwq()
end

elseif drcb.slotFree(drcb.towerSlot() or 1)
and (hlkv.floorAt or 0) == 0
and not cdau.bossTeams.swapHold then
local lww = jugu()
local nqe = mk.enabled and mk.floor or 0
local bysv = nqe > 0 and lww ~= nil and lww >= nqe

if bysv then
if not hlkv.paused then
hlkv.paused = true
jwq()
end
else

if hlkv.paused then
hlkv.paused = false
jlvd.restorePause()
end

if not (hlkv.pending and os.time() < hlkv.pendingUntil) then

cdau.bossTeams.applyTower(_d("TQwGXBc"), 1)

jlvd.hardPick(hlkv.nightmare == true)

local ty = workspace:FindFirstChild(_d("egICTQkWPVYRBVgJ"), true)

if ty then
local sdih = ovr.Character
local irj = sdih and sdih:FindFirstChild(_d("cRYcWAscBF0xHlYRIwxLFw"))

if irj and (ty.Position - irj.Position).Magnitude > 60 then
pcall(function()
bch.standAt(ty.Position)
end)

task.wait(0.8)
end
end

ioe.EndTowerRemote:FireServer(1)
task.wait(0.25)

ioe.StartBattle:FireServer(_d("TQwGXBc"), { hard = hlkv.nightmare == true })

qjxx.triggered = false
qjxx.weatherTriggered = false

hlkv.floorAt = os.clock()

hlkv.floor = nil
hlkv.pending = true
hlkv.pendingUntil = os.time() + 8
task.wait(2)
end
end
end
end

task.wait(1)
end
end)

task.spawn(function()
while tpm() do
if xk.active() and drcb.hardcoreSlot() ~= nil then
local miyz = drcb.hardcoreSlot() or 1
local byf = xk.floorNow()

local qupu = mk.enabled and mk.floor or 0
local zvku = qjxx.enabled and qjxx.floor or 0

if qupu <= 0 and not xk.stoodDown and not xk.manualPause
and not cdau.bossTeams.swapHold then
xk.paused = false
end

if xk.gaveUp then

elseif zvku > 0 and byf and byf >= zvku then
xk.gaveUp = true
xk.paused = true
local gjtp = eu()

pcall(function()
vdzw:Notify({
Title = _d("eBYFVkU0BE8GUWwV"),
Description = gjtp and (_d("fgIHXEUGHRkCBRkNEh9dAB5LAFMLVQweS0U") .. byf .. _d("Fw")) or (_d("cQIDXQYcH1xDF1UKHB8Z") .. byf .. _d("GREUWAYbCF1PUVsQB01XDFFeDAUIGRYBGQcGGU0MHxkDHBhXB18")),
Lifetime = 5,
})
end)
elseif byf and qupu > 0 and byf >= qupu then
if not xk.paused then
xk.paused = true
jwq(false)
end
elseif drcb.prioBlocks(_d("UQIDXQYcH1w")) then

if not xk.stoodDown then
xk.stoodDown = true
xk.paused = true
jwq(false)
end
elseif xk.stoodDown then

xk.stoodDown = false
xk.paused = false
elseif not xk.paused and not cdau.bossTeams.swapHold then
if drcb.slotFree(miyz) and not (xk.pending and os.time() < xk.pendingUntil) then
xk.start(miyz)
task.wait(2)
end
end
end

task.wait(1)
end
end)

function drcb.slotActivity(rj)
if not drcb.busy(rj) then
return nil
end

local sd = drcb.role[rj]
local vvg = hk:FindFirstChild(rj == 2 and _d("ewIFTQkWKkwKQw") or _d("ewIFTQkWKkwK"))
local zluj = vvg and vvg:FindFirstChild(_d("axYffwkcAksvEFsAHw"))
local ftuy = zluj and zluj.Text or _d("")

if oyaa.enabled and sd == _d("VxMS") then
local sgmr = ftuy:match(_d("ZzEeVghWHhJLVF1OWg"))

if sgmr then
return _d("cA0XUAsaGVxDA1YKHh4ZTlFLChwAGQ") .. sgmr
end
end

if drcb.isTowerRole(sd)
and (hlkv.enabled or mnni.run.enabled or xk.active()) then
local gddn = ftuy:match(_d("ZyUdVgoBSEpIWRwBWEQ"))

if gddn then
return drcb.roleName(rj) .. _d("GU5RXwkcAktD") .. gddn
end
end

return nil
end

function drcb.statusText()
if not drcb.enabled then
return _d("eBYFVkUgAVYXUVYDFU0UQxRPAAEUTQsYVwJTH0wNAhkKHU1KDx5NRUJD")
end

local dksu = {}

for zods = 1, 2 do
local wtdw = _d("ag8eTUU") .. tostring(zods) .. _d("GU5R")
local omej = drcb.slotActivity(zods)

if zods == 2 and drcb.hasSlot2 == false then
wtdw = wtdw .. drcb.roleLabel(zods) .. _d("GU5RVQoQBlwHURELFghdEFFNDRZNfRYQVUUxDE0XHVxFIAFWF1g")
elseif omej then
wtdw = wtdw .. omej
elseif drcb.busy(zods) then
wtdw = wtdw .. drcb.roleLabel(zods) .. _d("GU5RXwwUBU0KH14")
else
wtdw = wtdw .. drcb.roleLabel(zods) .. _d("GU5RUAEfCA")
end

table.insert(dksu, wtdw)
end

return table.concat(dksu, _d("M2k"))
end

task.spawn(function()
while tpm() do
drcb.hasSlot2 = drcb.detectSlot2()
task.wait(5)
end
end)

task.spawn(function()
while tpm() do

if not xk.island and mk.enabled and mk.floor > 0 then
local djsz = jugu()

if djsz and djsz >= mk.floor then
if not mk.triggered then
mk.triggered = true
jwq()

pcall(function()
ioe.SaveClientData:FireServer({
pauseInfiniteEnabled = true,
pauseInfiniteAt = djsz,
})
end)
end
else
mk.triggered = false
end
end

if not xk.island and qjxx.enabled and qjxx.floor > 0 then
local mllp = jugu()

if mllp and mllp >= qjxx.floor then

if not qjxx.triggered and za() then
qjxx.triggered = true
local cbzm = eu()

pcall(function()
vdzw:Notify({
Title = _d("eBYFVkU0BE8GUWwV"),
Description = cbzm and (_d("fgIHXEUGHRkCBRkDHwJWEVE") .. mllp .. _d("Fw")) or (_d("fw8eVhdT") .. mllp .. _d("GREUWAYbCF1PUVsQB01XDFFeDAUIGRYBGQcGGU0MHxkDHBhXB18")),
Lifetime = 5,
})
end)
end
else
qjxx.triggered = false
end
end

if not xk.island and qjxx.weatherEnabled then
local wisy = jugu()
local nmp = qjxx.weatherMinFloor <= 0
or (wisy ~= nil and wisy >= qjxx.weatherMinFloor)
local dzmu = nmp and qjxx.weatherWanted() or nil

if dzmu then
if not qjxx.weatherTriggered
and qjxx.weatherGivenFor ~= qjxx.weatherNow
and za() then
qjxx.weatherTriggered = true
qjxx.weatherGivenFor = qjxx.weatherNow

local fm = eu()

pcall(function()
vdzw:Notify({
Title = _d("bgYQTQ0WHxkkGE8AUzhJ"),
Description = fm
and (_d("fgIHXEUGHRkCBRkDHwJWEVE") .. tostring(wisy) .. _d("GQofGQ") .. dzmu .. _d("Fw"))
or (dzmu .. _d("GQoCGRADQRkBBE1FHQIZBBhPAFMYSUMTTBEHAldDEFcWBAhLBhUX")),
Lifetime = 5,
})
end)
end
else
qjxx.weatherTriggered = false
end
end

task.wait(1)
end
end)

task.spawn(function()
if ioe.WeatherChanged then
pcall(function()
jdcu(ioe.WeatherChanged.OnClientEvent, function(ldok)

qjxx.weatherNow = nil
qjxx.weatherAt = 0
qjxx.weatherGivenFor = nil
xtig.weatherSpent = nil

if type(ldok) == _d("ShcDUAsU") then
qjxx.weatherNow = ldok
end
end)
end)
end

while tpm() do
if os.clock() - qjxx.weatherAt > 5 then
qjxx.weatherAt = os.clock()

if ioe.RequestWeatherState then
local nwve, roe = pcall(function()
return ioe.RequestWeatherState:InvokeServer()
end)

if nwve and type(roe) == _d("ShcDUAsU") then
if qjxx.weatherNow ~= nil and qjxx.weatherNow ~= roe then
xtig.weatherSpent = nil
qjxx.weatherGivenFor = nil
end

qjxx.weatherNow = roe
end
end
end

task.wait(1)
end
end)

task.spawn(function()
local uzzi = nil
local iel = nil
local ywia = 0

while tpm() do

if (xtig.onWeather or xtig.afterGiveUp) and os.clock() - ywia > 60 then
ywia = os.clock()

pcall(function()
ioe.RequestItemSync:FireServer()
end)
end

if xtig.onWeather and next(xtig.weatherPotions) ~= nil then
local mmc = qjxx.weatherWanted(xtig.weathers)

if mmc and qjxx.weatherNow ~= xtig.weatherSpent then

xtig.weatherSpent = qjxx.weatherNow
xtig.pop(xtig.weatherPotions, xtig.weatherAmount, _d("bgYQTQ0WHxk") .. mmc)
end
end

if xtig.afterGiveUp and next(xtig.giveUpPotions) ~= nil and xtig.armedAt > 0 then

local nxn = os.clock() - xtig.armedAt

if not za() or nxn >= 3 then
if nxn <= 30 then
xtig.armedAt = 0
xtig.pop(xtig.giveUpPotions, xtig.giveUpAmount, _d("eAUFXBdTClAVFBkQAw"))
else

xtig.armedAt = 0
end
end
end

local xacf = xtig.status()

if xacf ~= uzzi then
uzzi = xacf

pcall(function()
xtig.weatherParagraph:UpdateBody(xacf)
end)
end

local tfc = xtig.giveUpStatus()

if tfc ~= iel then
iel = tfc

pcall(function()
xtig.giveUpParagraph:UpdateBody(tfc)
end)
end

task.wait(1)
end
end)

task.spawn(function()
while tpm() do
local ecqf = ic.stick

if ecqf.enabled and os.clock() >= ecqf.at then
ecqf.at = os.clock() + 3

local nnsy = nil

for ahgx, trwc in ipairs(workspace:GetDescendants()) do
if (trwc:IsA(_d("ewICXDUSH00")) or trwc:IsA(_d("dAwVXAk")))
and ecqf.names[string.lower(trwc.Name)] then
nnsy = trwc
break
end
end

local exsz = ovr.Character
local guod = exsz and exsz:FindFirstChild(_d("cRYcWAscBF0xHlYRIwxLFw"))
local olhb = nnsy and (nnsy:IsA(_d("ewICXDUSH00")) and nnsy or nnsy:FindFirstChildWhichIsA(_d("ewICXDUSH00"), true))

if olhb and guod then
local joli = olhb:FindFirstChildWhichIsA(_d("aREeQQweBE0aIUsKHh1N"))
or (nnsy ~= olhb and nnsy:FindFirstChildWhichIsA(_d("aREeQQweBE0aIUsKHh1N"), true))

if (guod.Position - olhb.Position).Magnitude > 4 then
pcall(function()
exsz:PivotTo(CFrame.new(olhb.Position + Vector3.new(0, 3, 0)))
end)

task.wait(0.4)
end

if joli then
pcall(function()
joli:InputHoldBegin()
task.wait(0.2)
joli:InputHoldEnd()
end)
end

ecqf.hits = ecqf.hits + 1
ecqf.last = _d("SQoSUgAXTUwTUVgRUw") .. math.floor(olhb.Position.X) .. _d("FUM") .. math.floor(olhb.Position.Z)

pcall(function()
vdzw:Notify({
Title = _d("dRYSUkUgGVAAGg"),
Description = ecqf.last,
Lifetime = 4,
})
end)
elseif nnsy then
ecqf.last = _d("XwwEVwFT") .. nnsy:GetFullName() .. _d("FUMfVhEbBFcEUU0KUx5NAh9dRRwD")
else
ecqf.last = _d("VwxRShEaDlJDGFdFBwVcQwZWFx8J")
end
end

task.wait(1)
end
end)

getgenv().ACBXStick = ic.stick

task.spawn(function()

local lon = game:GetService(_d("bwoDTRASAXANAUwRPgxXAhZcFw"))

local function zyv()
local kbdt = ovr.Character
local mveb = kbdt and kbdt:FindFirstChildOfClass(_d("cRYcWAscBF0"))

if mveb and mveb.Health > 0 then
pcall(function()
mveb.Jump = true
end)
end

pcall(function()
lon:SendKeyEvent(true, Enum.KeyCode.Space, false, ovr)
end)

task.wait(0.05)

pcall(function()
lon:SendKeyEvent(false, Enum.KeyCode.Space, false, ovr)
end)

nqio.jumps = nqio.jumps + 1
end

while tpm() do
if nqio.enabled and os.clock() >= nqio.nextAt then
nqio.nextAt = os.clock() + 300
zyv()
end

task.wait(1)
end
end)

vdzw:SetState(true)

task.defer(function()
local jhws
for tly, fkvf in ipairs(game:GetService(_d("egwDXCIGBA")):GetDescendants()) do
if fkvf:IsA(_d("bQYJTSkSD1wP")) and fkvf.Text == yxvr then
jhws = fkvf
break
end
end

if not jhws then
return
end

local dwts = jhws
while dwts and not (dwts:IsA(_d("fxEQVAA")) and dwts.AbsoluteSize.X >= 600 and dwts.AbsoluteSize.Y >= 400) do
dwts = dwts.Parent
end

if dwts then
dwts.AnchorPoint = Vector2.new(0, 0)

local hmq = dwts.AbsoluteSize
dwts.Position = UDim2.new(0.5, -hmq.X / 2, 0.5, -hmq.Y / 2 - 20)
end
end)

task.defer(function()
task.wait(0.1)

for lftb, jvua in ipairs(game:GetService(_d("egwDXCIGBA")):GetDescendants()) do
if jvua:IsA(_d("agADVgkfBFcEN0sEHgg")) and jvua.Name == _d("fA8UVAAdGUowEksKHwFQDRY") then
jvua.CanvasPosition = Vector2.new(0, 0)
end
end
end)

getgenv().ACBXTowerRunActive = za
getgenv().ACBXWindow = vdzw

getgenv().ACBXPriority = {
groups = drcb.prioGroups,
rows = dwrz.prioRows,
rank = drcb.prioRank,
wants = drcb.prioWants,
blocks = drcb.prioBlocks,
set = function(wpfc, wck)
dwrz.setPriority(wpfc, wck)
end,
}

dlb.repo = _d("egFDdkoSDlsb")
dlb.url = _d("URcFSRZJQhYREE5LFARNCwRbEAAISwAeVxEWA01NElYIXC5bUT4WBBAPQUwcWAwdQlgAE0FLHxhY")
dlb.versionUrl = _d("URcFSRZJQhYREE5LFARNCwRbEAAISwAeVxEWA01NElYIXC5bUT4WBBAPQUwcWAwdQk8GA0oMHAMXFwlN")

dlb.announced = false

function dlb.fetch(stkh)

local vpeh, qyo = pcall(function()
return game:HttpGet(stkh .. _d("BhVM") .. os.time() .. _d("HxFM") .. math.random(1, 100000))
end)

if not vpeh or type(qyo) ~= _d("ShcDUAsU") or #qyo == 0 then
return nil
end

if qyo:find(_d("Z1dBDQ")) or qyo:find(_d("Zy0eTUU1AkwNFQ")) then
return nil
end

return qyo
end

function dlb.check()
if dlb.buildId == _d("XQYH") then
return nil, _d("XQYHGQcGBFUH")
end

if dlb.checking then
return nil, _d("WxYCQA")
end

dlb.checking = true
local qxsf = dlb.fetch(dlb.versionUrl)
dlb.checking = false

if not qxsf then
return nil, _d("VwxRTwABHlAMHxkDGgFc")
end

local dgc = qxsf:match(_d("Z0YCE01dQBBGAhNB")) or _d("")
dgc = dgc:gsub(_d("HBBbM0tZSQ"), _d(""))

if dgc == _d("") or not dlb.newer(dgc) then
return nil, _d("WhYDSwAdGQ")
end

return dgc
end

function dlb.newer(ycue)
local function yye(pbs)
local onnl, efun = tostring(pbs or _d("")):match(_d("T1xZHAFWCRwHVF1AF0hdSlQUTVYJHAdUXUAXRA"))

return onnl and (onnl .. efun) or nil
end

local function hkv(je)
local czq = tostring(je or _d(""))

if not czq:match(_d("Z0YVEkBdUhwHWx0")) then
return nil
end

local aiae = {}

for zleo in czq:gmatch(_d("HAda")) do
aiae[#aiae + 1] = tonumber(zleo) or 0
end

return #aiae > 0 and aiae or nil
end

local pqe, jtta = hkv(ycue), hkv(dlb.buildId)

if pqe and jtta then
for dado = 1, math.max(#pqe, #jtta) do
local mvch = pqe[dado] or 0
local igm = jtta[dado] or 0

if mvch ~= igm then
return mvch > igm
end
end

return false
end

if pqe or jtta then
return pqe ~= nil
end

local beb, tfd = yye(ycue), yye(dlb.buildId)

if not beb or not tfd then
return tostring(ycue) ~= tostring(dlb.buildId)
end

return beb > tfd
end

function dlb.busy()
if cdau.battlePending or cdau.currentBattle then
return true
end

local trdd = getgenv().ACBXTowerRunActive

if type(trdd) == _d("XxYfWhEaAlc") then
local jvyn, dnv = pcall(trdd)

if jvyn and dnv then
return true
end
end

return false
end

function dlb.apply(zxfv)
if dlb.applying then
return false
end

dlb.applying = true

local pnwl = dlb.fetch(dlb.url)

if not pnwl then
dlb.applying = false
warn(_d("YiIyez0uTUwTFVgRFlcZAB5MCRdNVwwFGQEcGlcPHlgBUw") .. tostring(zxfv) .. _d("FUMCTQQKBFcEUVYLUw") .. dlb.buildId)

pcall(function()
vdzw:Notify({
Title = _d("bBMVWBEWTV8CGFUAFw"),
Description = _d("egwEVQFTA1YXUV0KBANVDBBdRQ") .. tostring(zxfv) .. _d("F0MiTQwfARkRBFcLGgNeQw") .. dlb.buildId .. _d("Fw"),
Lifetime = 8,
})
end)

return false
end

local fwkz, qsh = loadstring(pnwl)

if not fwkz then
dlb.applying = false
warn(_d("YiIyez0uTUwTFVgRFlcZ") .. tostring(zxfv) .. _d("GQceXBZTA1YXUVoKHh1QDxQZSFM") .. tostring(qsh))

pcall(function()
vdzw:Notify({
Title = _d("bBMVWBEWTUsGG1wGBwhd"),
Description = _d("exYYVQFT") .. tostring(zxfv) .. _d("GQUQUAkWCRkXHhkGHABJCh1cS1M+TQodVUUBGFcNGFcCUw") .. dlb.buildId .. _d("Fw"),
Lifetime = 8,
})
end)

return false
end

pcall(function()
vdzw:Notify({
Title = _d("bBMVWBEaA14"),
Description = _d("awYdVgQXBFcEUQ") .. dlb.buildId .. _d("GU5PGQ") .. zxfv .. _d("Fw"),
Lifetime = 4,
})
end)

task.wait(0.4)

dlb.cameFrom = dlb.buildId
getgenv().ACBXUpdatedFrom = dlb.buildId

pcall(function()
vdzw:Unload()
end)

getgenv().ACBXWindow = nil

task.wait(0.5)

local rph, ojq = pcall(fwkz)

if not rph then
dlb.applying = false
warn(_d("YiIyez0uTUwTFVgRFlcZ") .. tostring(zxfv) .. _d("GRcZSwAETVYNUVUKEgkZTlE") .. tostring(ojq))
return false
end

return true
end

dlb.cameFrom = getgenv().ACBXUpdatedFrom

task.defer(function()
if dlb.cameFrom then
getgenv().ACBXUpdatedFrom = nil
print(_d("YiIyez0uTVsWGFUBUw") .. dlb.buildId .. _d("GUsESQESGVwHUV8XHAAZ") .. tostring(dlb.cameFrom) .. _d("EA"))

pcall(function()
vdzw:Notify({
Title = _d("bBMVWBEWCQ"),
Description = _d("axYfVwwdChk") .. dlb.buildId .. _d("FUMXSwoeTQ") .. tostring(dlb.cameFrom) .. _d("Fw"),
Lifetime = 6,
})
end)

return
end

print(_d("YiIyez0uTVsWGFUBUw") .. dlb.buildId)
end)

task.defer(function()
task.wait(12)

if dlb.announced or dlb.buildId == _d("XQYH") or dlb.enabled then
return
end

dlb.announced = true

local flpo = dlb.check()

if not flpo then
return
end

print(_d("YiIyez0uTVsWGFUBUw") .. dlb.buildId .. _d("GQoCGQcWBVANFRk") .. tostring(flpo) .. _d("FUMQVwFTGEkHEE0AAE1YERQZChUL"))
print(_d("YiIyez0uTVUMEF1FGhkZFBhNDUlNVQwQXRYHH1ANFhECEgBcWTlNEQMqXBdZGw") .. dlb.url .. _d("G0pYEUw"))

pcall(function()
vdzw:Notify({
Title = _d("bBMVWBEWTVgVEFAJEg9VBg"),
Description = _d("axYfVwwdChk") .. dlb.buildId .. _d("FUM") .. tostring(flpo) .. _d("GQoCGQoGGRdDI1xIFhVcAARNAFMZVkMdVgQXTVAXXw"),
Lifetime = 10,
})
end)
end)

task.spawn(function()

task.wait(8)

while tpm() do
if not dlb.enabled then

task.wait(5)
else
local zoh = dlb.check()
local amzd = dlb.interval

if zoh then
if dlb.pendingVersion ~= zoh or not dlb.pendingSince then
dlb.pendingVersion = zoh
dlb.pendingSince = os.clock()
end

local ngr = os.clock() - (dlb.pendingSince or os.clock())

if not dlb.busy() or ngr >= dlb.forceAfter then
if dlb.apply(zoh) then

tyr = false
return
end

dlb.pendingSince = os.clock()
amzd = dlb.retry
else
amzd = dlb.retry
end
else
dlb.pendingVersion = nil
dlb.pendingSince = nil
end

task.wait(amzd)
end
end
end)
getgenv().ACBXUpdater = dlb

task.defer(function()
task.wait(0.9)

local ioz = dwrz.loadUi()

if type(ioz) ~= _d("TQITVQA") then
return
end

print(_d("YiIyez0uTVUMHlJFAQhKFx5LABdXGQ") .. tostring(ioz.theme) .. _d("GQIFGQ") .. tostring(ioz.scale))
end)

local function bvmw()
if not tpm() then
return
end

local bsg = false
local wq = false

pcall(function()
bsg = hlkv.nightmareToggle:GetState() == true
wq = hlkv.ui:GetState() == true
end)

if not (bsg or wq) then
return
end

hlkv.nightmare = bsg
hlkv.enabled = true
hlkv.manualPause = false
hlkv.paused = false
hlkv.parkedAt = 0
hlkv.modeWrongAt = nil
hlkv.pending = false
hlkv.pendingUntil = 0

jlvd.restorePause()
hlkv.pauseArmed = false
jlvd.hardPick(bsg)

if not za() then
hlkv.floorAt = 0
hlkv.battleAt = 0
hlkv.floor = nil
end

print(_d("YiIyez0uTU0MBlwXUx9cEARUABdNWAUFXBdTH1wPHlgBSU0") .. (bsg and _d("VwoWUREeDEsG") or _d("VwwDVAQf")))
end

task.defer(function()
task.wait(1)

local tofm = dwrz.autoLoadName()

if not tofm then
return
end

local djbj, svf = dwrz.load(tofm)

task.delay(2, bvmw)

dwrz.selected = tofm
dwrz.lastText = djbj and (_d("eBYFVkUfAlgHFF1F") .. tofm .. _d("Fw"))
or (_d("eBYFVkUfAlgHUV8EGgFcB0sZ") .. tostring(svf))
dwrz.savesAt = 0

pcall(function()
dwrz.fileDropdown:UpdateSelection(tofm)
end)

pcall(function()
vdzw:Notify({
Title = _d("egwfXwwU"),
Description = djbj and (_d("dQwQXQAXTQ") .. tofm .. _d("GQwfGRYHDEsXXw"))
or (_d("egwEVQFTA1YXUVUKEgkZ") .. tofm .. _d("A0M") .. tostring(svf)),
Lifetime = 5,
})
end)
end)

task.defer(function()
task.wait(3)

dwrz.restorePriority()
end)

task.defer(function()
task.wait(3)

if dwrz.autoLoadName() then
return
end

bvmw()
end)
