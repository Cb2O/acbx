local _d = (function()
local A = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
local M = {}
local cache = {}
for i = 1, #A do
M[string.sub(A, i, i)] = i - 1
end
local K = string.char(117, 110, 106, 48, 118, 98, 101)
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

local bnvg = "ACB Rebirth v0.999"

local function zqt(hrg)
for awbv, svon in ipairs(hrg:GetDescendants()) do
if svon:IsA(_d("IQsSRDoDBxAC")) and svon.Text == bnvg then
local oxl = svon
while oxl and not oxl:IsA(_d("Jg0YVRMMIgAH")) do
oxl = oxl.Parent
end
return oxl
end
end
end

local function zae()
local toqm = game:GetService(_d("JQILSRMQFg")).LocalPlayer

for oa, nu in ipairs({
(gethui and gethui() or game:GetService(_d("NgEYVTEXDA"))),
game:GetService(_d("NgEYVTEXDA")),
toqm and toqm:FindFirstChild(_d("JQILSRMQIgAH")),
}) do
for pr, ttb in ipairs(nu:GetChildren()) do

if ttb:IsA(_d("Jg0YVRMMIgAH")) then
local occ = ttb:FindFirstChild(_d("Nw8ZVQ"))

if occ and occ:FindFirstChild(_d("JgcOVRQDFw")) and occ:FindFirstChild(_d("NgEERBMMEQ")) then
return ttb
end
end
end
end
end

if zae() and getgenv().ACBXAllowReload ~= true then
local nlp = getgenv().ACBXWindow
local bj = false
local cjlx = false

if nlp and nlp.Dialog then
pcall(function()
if nlp.GetState and nlp:GetState() == false then
nlp:SetState(true)
end

nlp:Dialog({
Title = _d("NC0oECQHBxwcHlhWCxZVDwZCEwMBDE4YRRgMDBsJ"),
Description = _d("NE4JXwYbRRwdSlEaEAAUChMQGg0EEQsOEB8MRQEGA0NWEQAGHQNfGExFJwsaXBcBAFUHHhABCxEdTh5YHxFFGgAPD1Y2DRBOGEUYDAwbCUpTGRIcVR0eXwYRRRMHGEMCTkUGAUpfGA4cVQEEVVYHExAcSlQECxMQHUpEHgdFFA0JXwMMEVs"),
Buttons = {
{
Name = _d("JwsaXBcBAA"),
Callback = function()
cjlx = true
bj = true
end,
},
{
Name = _d("PgsPQA"),
Callback = function()
bj = true
end,
},
},
})
end)
else

cjlx = true
bj = true
end

local vsg = os.clock() + 90

while not bj and os.clock() < vsg do
task.wait(0.25)
end

if not cjlx then
warn(_d("Li8pci4/RRkBC1RWEAATGxlVEkJIVRoCVVYBCgUXSkQeAxFVBxkQBBcLGwcEV1YRERQXGR5WIQkcDQEQJAcVGQ8JVVYWClUdHVEGQgwBQkpfBEIQBgtKZRgOChQKSkMVEAwFGkpZGEIMAR1KYxMWERwADUNWFgQXQA"))

return
end

warn(_d("Li8pci4/RQcLGlwXAQwbCUpEHgdFBxsEXh8MAlUNBUAPQhIcGgIQAgoMBk4FXhNM"))
end

getgenv().ACBXAllowReload = nil

local omq = getgenv().ACBXWindow
if omq then
pcall(function()
omq:Unload()
end)
end

for sjut, fjw in ipairs({
game:GetService(_d("NgEYVTEXDA")),
game:GetService(_d("JQILSRMQFg")).LocalPlayer:FindFirstChild(_d("JQILSRMQIgAH")),
}) do
if fjw then
local jxxw = zqt(fjw)
if jxxw then
jxxw:Destroy()
end
end
end

local xqkh = game:GetService(_d("JQILSRMQFg"))
local yiyr = game:GetService(_d("JwsaXB8BBAELDmMCDRcUCQ8"))
local clqz = game:GetService(_d("JQ8eWBALCxEHBFclBxcDBwlV"))
local tahs = game:GetService(_d("JxsEYxMQExwNDw"))
local pl = xqkh.LocalPlayer
local zl = pl:WaitForChild(_d("JQILSRMQIgAH"))

local mfcp = false

local function pg()
pcall(function()
local bgj = game:GetService(_d("IRkPVRgxAAcYA1MT"))
local aony = (gethui and gethui()) or zl
local czt = Color3.fromRGB(77, 166, 255)
local kd = pl.DisplayName

local function vsj(zmky, wd, lnrx)
bgj:Create(
zmky,
TweenInfo.new(wd, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
lnrx
):Play()
task.wait(wd)
end

local cxna = Instance.new(_d("Jg0YVRMMIgAH"))
cxna.Name = _d("NC0oaD8MEQcB")
cxna.IgnoreGuiInset = true
cxna.DisplayOrder = 1000000
cxna.ResetOnSpawn = false
cxna.Parent = aony

local fg = Instance.new(_d("MxwLXRM"))
fg.Size = UDim2.fromScale(1, 1)
fg.BackgroundColor3 = Color3.fromRGB(4, 6, 11)
fg.BackgroundTransparency = 1
fg.BorderSizePixel = 0
fg.Parent = cxna

local dt = Instance.new(_d("MxwLXRM"))
dt.AnchorPoint = Vector2.new(0.5, 0.5)
dt.Position = UDim2.fromScale(0.5, 0.5)
dt.Size = UDim2.fromOffset(400, 176)
dt.BackgroundColor3 = Color3.fromRGB(11, 16, 26)
dt.BackgroundTransparency = 1
dt.BorderSizePixel = 0
dt.Parent = cxna

local zjf = Instance.new(_d("ICcpXwQMAAc"))
zjf.CornerRadius = UDim.new(0, 14)
zjf.Parent = dt

local rlf = Instance.new(_d("ICc5RAQNDhA"))
rlf.Color = Color3.fromRGB(46, 60, 86)
rlf.Thickness = 1
rlf.Transparency = 1
rlf.Parent = dt

local vw = Instance.new(_d("MxwLXRM"))
vw.Size = UDim2.fromOffset(44, 2)
vw.Position = UDim2.new(0.5, -22, 0, 34)
vw.BackgroundColor3 = czt
vw.BorderSizePixel = 0
vw.BackgroundTransparency = 1
vw.Parent = dt

local pgdg = Instance.new(_d("IQsSRDoDBxAC"))
pgdg.BackgroundTransparency = 1
pgdg.Size = UDim2.new(1, -48, 0, 48)
pgdg.Position = UDim2.fromOffset(24, 42)
pgdg.Font = Enum.Font.GothamBold
pgdg.Text = _d("NixKeCMg")
pgdg.TextSize = 28
pgdg.TextYAlignment = Enum.TextYAlignment.Center
pgdg.TextColor3 = Color3.fromRGB(236, 242, 255)
pgdg.TextTransparency = 1
pgdg.Parent = dt

local vfb = Instance.new(_d("IQsSRDoDBxAC"))
vfb.BackgroundTransparency = 1
vfb.Size = UDim2.new(1, -48, 0, 20)
vfb.Position = UDim2.fromOffset(24, 94)
vfb.Font = Enum.Font.Gotham
vfb.Text = _d("GQELVB8MAg")
vfb.TextSize = 14
vfb.TextColor3 = Color3.fromRGB(150, 163, 186)
vfb.TextTransparency = 1
vfb.Parent = dt

local nar = Instance.new(_d("MxwLXRM"))
nar.Size = UDim2.fromOffset(240, 3)
nar.Position = UDim2.new(0.5, -120, 0, 130)
nar.BackgroundColor3 = Color3.fromRGB(34, 44, 64)
nar.BorderSizePixel = 0
nar.BackgroundTransparency = 1
nar.Parent = dt

local uz = Instance.new(_d("MxwLXRM"))
uz.Size = UDim2.fromScale(0, 1)
uz.BackgroundColor3 = czt
uz.BorderSizePixel = 0
uz.BackgroundTransparency = 1
uz.Parent = nar

local aldk = Instance.new(_d("ICcpXwQMAAc"))
aldk.CornerRadius = UDim.new(0, 4)
aldk.Parent = nar

local kl = Instance.new(_d("ICcpXwQMAAc"))
kl.CornerRadius = UDim.new(0, 4)
kl.Parent = uz

vsj(fg, 0.35, { BackgroundTransparency = 0.15 })
task.spawn(function()
vsj(dt, 0.3, { BackgroundTransparency = 0 })
end)
task.spawn(function()
vsj(rlf, 0.3, { Transparency = 0 })
end)
vsj(pgdg, 0.3, { TextTransparency = 0 })
vsj(vw, 0.3, { BackgroundTransparency = 0 })
vsj(vfb, 0.3, { TextTransparency = 0 })
vsj(nar, 0.3, { BackgroundTransparency = 0 })
vsj(uz, 0.3, { BackgroundTransparency = 0 })

local ys = { _d("GQELVB8MAg"), _d("GQELVB8MAls"), _d("GQELVB8MAltA"), _d("GQELVB8MAltARA") }
task.spawn(function()
bgj:Create(uz, TweenInfo.new(1.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
Size = UDim2.fromScale(1, 1),
}):Play()
for is = 1, 6 do
vfb.Text = ys[(is - 1) % #ys + 1]
task.wait(0.2)
end
end)
task.wait(1.2)

vsj(pgdg, 0.2, { TextTransparency = 1 })
vsj(vfb, 0.2, { TextTransparency = 1 })
vsj(nar, 0.2, { BackgroundTransparency = 1 })
vsj(uz, 0.2, { BackgroundTransparency = 1 })

pgdg.Text = _d("IQYLXh0RRRMBGBADEQwbCUpdD0IWFhwDQAI")
pgdg.TextSize = 22
pgdg.TextWrapped = true
vfb.Text = bnvg
vsj(pgdg, 0.25, { TextTransparency = 0 })
vsj(vfb, 0.25, { TextTransparency = 0 })
task.wait(1.1)
vsj(pgdg, 0.2, { TextTransparency = 1 })
vsj(vfb, 0.2, { TextTransparency = 1 })

pgdg.Text = _d("IgsGUxkPAFU") .. kd .. _d("VToFEDUgRT0bCA")
pgdg.TextSize = 22
vfb.Text = _d("BhoLQgILCxI")
vsj(pgdg, 0.3, { TextTransparency = 0 })
vsj(vfb, 0.3, { TextTransparency = 0 })
task.wait(1.3)

vsj(pgdg, 0.25, { TextTransparency = 1 })
vsj(vfb, 0.25, { TextTransparency = 1 })
vsj(fg, 0.35, { BackgroundTransparency = 1 })

cxna:Destroy()
end)

mfcp = true
end

task.spawn(pg)

local gsk = yiyr:WaitForChild(_d("JwsHXwIHFg"))

local function oce(latl, du)
local heq = gsk:FindFirstChild(latl)

if heq then
return heq
end

local rgqr = gsk:WaitForChild(latl, du or 3)

if not rgqr then
warn(_d("NC0oaExCFxADBUQTQkI") .. latl .. _d("Uk4EX1YOChsJD0JWBx0cHR5DVgsLVRoCWQVCAhQDDxAABxcGBwVeVk9FAQYLRFYEABQaH0ITQgwGTgVWEA"))
end

return rgqr
end

local gh = {
StartNPCBattle = oce(_d("JhoLQgIsNTYsC0QCDgA")),
NPCBattleResult = oce(_d("Oz4pchcWERkLOFUFFwkB")),
SyncNPCCooldowns = oce(_d("JhcEUzgyJjYBBVwSDRIbHQ")),
SetNPCDifficulty = oce(_d("JgsefiYhIRwIDFkVFwkBFw")),
StartRaidBattle = oce(_d("JhoLQgIwBBwKKFECFgkQ")),
SetRaidDifficulty = oce(_d("JgseYhcLATEHDFYfARAZGhM")),
RaidProgress = oce(_d("Jw8DVCYQChIcD0MF")),
RequestRaidProgress = oce(_d("JwsbRRMREScPA1QmEAoSHA9DBQ")),
SyncInfiniteRoomProgress = oce(_d("JhcEUz8MAxwAA0QTMAoaAzpCGQUXEB0Z")),
BuyRaidItem = oce(_d("NxsTYhcLATwaD10")),
RaidShopState = oce(_d("Jw8DVCUKCgU9HlECBw")),
RaidNotify = oce(_d("Jw8DVDgNERwIEw")),
SyncItems = oce(_d("JhcEUz8WABgd")),

UseItem = oce(_d("IB0PeQIHCA")),
RequestWeatherState = oce(_d("JwsbRRMRESILC0QeBxcmGgtEEw")),
WeatherChanged = oce(_d("IgsLRB4HFzYGC14RBwE")),
FishingUpdate = oce(_d("MwcZWB8MAiAeDlECBw")),
FishingThrow = oce(_d("MwcZWB8MAiEGGF8B")),
FishingReel = oce(_d("MwcZWB8MAicLD1w")),
FishingStop = oce(_d("MwcZWB8MAiYaBUA")),

FishingIslandTeleport = oce(_d("MwcZWB8MAjwdBlEYBjEQAg9AGRAR")),

SyncCollection = oce(_d("JhcEUzUNCRkLCUQfDQs")),
RequestSync = oce(_d("JwsbRRMRESYXBFM")),
ClaimIndexReward = oce(_d("NgILWRsrCxELEmITFQQHCg")),
RequestAchievements = oce(_d("JwsbRRMRETQNAlkTFAAYCwREBQ")),
SyncAchievements = oce(_d("JhcEUzcBDRwLHFUbBwsBHQ")),
ClaimAchievement = oce(_d("NgILWRsjBh0HD0YTDwAbGg")),
RequestQuests = oce(_d("JwsbRRMRESQbD0MCEQ")),
SyncQuests = oce(_d("JhcEUycXAAYaGQ")),
ClaimQuest = oce(_d("NgILWRszEBAdHg")),
RequestPeriodicQuests = oce(_d("JwsbRRMRESULGFkZBgwWPx9VBRYW")),
SyncPeriodicQuests = oce(_d("JhcEUyYHFxwBDlkVMxAQHR5D")),
ClaimPeriodicQuest = oce(_d("NgILWRsyAAcHBVQfATQACxlE")),

OpenFuseDialog = oce(_d("Oh4PXjAXFhAqA1EaDQI")),
FuseCards = oce(_d("MxsZVTUDFxEd")),
OpenDeconstructDialog = oce(_d("Oh4PXjIHBhoAGUQEFwYBKgNRGg0C")),
DeconstructCards = oce(_d("MQsJXxgREQcbCUQ1AxcRHQ")),
OpenPackShop = oce(_d("Oh4PXiYDBh49Al8G")),
EquipPack = oce(_d("MB8fWQYyBBYF")),

RequestSkillTree = oce(_d("JwsbRRMRESYFA1waNhcQCw")),
BuySkillNode = oce(_d("NxsTYx0LCRkgBVQT")),
OpenAccessoryShop = oce(_d("Oh4PXjcBBhAdGV8EGzYdARo")),
OpenAccessoryShop2 = oce(_d("Oh4PXjcBBhAdGV8EGzYdARoC")),
BuyAccessory = oce(_d("NxsTcRUBAAYdBUIP")),
BuyAccessory2 = oce(_d("NxsTcRUBAAYdBUIPUA")),
EquipAccessory = oce(_d("MB8fWQYjBhYLGUMZEBw")),

RedeemCode = oce(_d("JwsOVRMPJhoKDw")),

OpenNPCDialog = oce(_d("Oh4PXjgyJjEHC1wZBQ")),
TeleportToWorld = oce(_d("IQsGVQYNFwE6BWcZEAkR")),
RaidBattleStarted = oce(_d("Jw8DVDQDEQECD2MCAxcBCw4")),
BattleEnd = oce(_d("Nw8eRBoHIBsK")),
StartBattle = oce(_d("JhoLQgIgBAEaBlU")),
RequestInfiniteRoomProgress = oce(_d("JwsbRRMRETwADFkYCxEQPAVfGzIXGgkYVQUR")),
EndTowerRemote = oce(_d("MAAOZBkVAAc8D10ZFgA")),
SaveClientData = oce(_d("Jg8cVTUODBAAHnQXFgQ")),
OpenRaidShop = oce(_d("Oh4PXiQDDBE9Al8G")),
RequestItemSync = oce(_d("JwsbRRMRETwaD10lGwsW")),
FishingGetState = oce(_d("MwcZWB8MAjILHmMCAxEQ")),
FishingSetAuto = oce(_d("MwcZWB8MAiYLHnEDFgo")),
FishingShop = oce(_d("MwcZWB8MAiYGBUA")),
DigGetState = oce(_d("MQcNdxMWNgEPHlU")),
DigShop = oce(_d("MQcNYx4NFQ")),
DigAction = oce(_d("MQcNcRUWDBoA")),
DigUpdate = oce(_d("MQcNZQYGBAEL")),
}

local eqik = require(yiyr.ModuleScripts.NPCData)
local yidb = require(yiyr.ModuleScripts.WorldDifficultyData)
local pjs = require(yiyr.ModuleScripts.BossData)
local bh = require(yiyr.ModuleScripts.RaidData)
local jxv = require(yiyr.ModuleScripts.InfiniteRoomData)
local phs = require(yiyr.ModuleScripts.CraftData)
local yqc = require(yiyr.ModuleScripts.AchievementData)
local tm = require(yiyr.ModuleScripts.RaidShopData)
local mw = require(yiyr.ModuleScripts.ItemData)
local pyr = require(yiyr.ModuleScripts.CardData)
local izj = require(yiyr.ModuleScripts.SkillTreeData)

local ff = {
enabled = false,
role = { _d("AQEdVQQ"), _d("Gx4J") },

picked = { _d("IQEdVQQ"), _d("Oz4pEBQDEQECD0M") },
hasSlot2 = nil,
toggle = nil,

optionsFor = {
{ _d("IQEdVQQ"), _d("PQ8GXBkVABAASkQZFQAH"), _d("Oz4pEBQDEQECD0M") },
{ _d("Oz4pEBQDEQECD0M"), _d("PB0GURgGRR0PGFQVDRcQ") },
},
roleIds = {
Tower = _d("AQEdVQQ"),

[_d("PQ8YVBUNFxBOHl8BBxc")] = _d("HQ8YVBUNFxA"),
[_d("Oz4pEBQDEQECD0M")] = _d("Gx4J"),
[_d("PQ8GXBkVABAASkQZFQAH")] = _d("HQ8GXBkVABAA"),
[_d("PB0GURgGRR0PGFQVDRcQ")] = _d("HQ8YVBUNFxA"),
},
roleNames = {
tower = _d("IQEdVQQ"),
hardcore = _d("PB0GURgGRR0PGFQVDRcQ"),
npc = _d("Oz4pEBQDEQECD0M"),
halloween = _d("PQ8GXBkVABAASkQZFQAH"),
},
}

function ff.detectSlot2()
local mke = zl:FindFirstChild(_d("JgseRB8MAgYpH1k"))
local pka = mke and mke:FindFirstChild(_d("JgIFRCIHBBhcOF8B"), true)

if pka then
return pka.Visible == true
end

return nil
end

function ff.roleSlot(hj)
if not ff.enabled then
return 1
end

for wjg = 1, 2 do
if ff.role[wjg] == hj then
return wjg
end
end

return nil
end

function ff.isTowerRole(hdsj)
return hdsj == _d("AQEdVQQ") or hdsj == _d("HQ8YVBUNFxA") or hdsj == _d("HQ8GXBkVABAA")
end

function ff.towerSlot()
return ff.roleSlot(_d("AQEdVQQ"))
end

function ff.hardcoreSlot()
local xljw = ff.roleSlot(_d("HQ8YVBUNFxA"))

if xljw == 2 and ff.hasSlot2 == false then
return 1
end

return xljw
end

function ff.halloweenSlot()

local jebu = ff.roleSlot(_d("HQ8GXBkVABAA"))

if jebu == 1 then
return 1
end

return nil
end

function ff.roomSlot()
local ue = ff.roleSlot(_d("Gx4J"))

if not ff.enabled then
return 1
end

if ue == nil then
return nil
end

if ue == 2 and ff.hasSlot2 == false then
return 1
end

return ue
end

function ff.splitNpc()
return ff.enabled and ff.role[1] == _d("Gx4J") and ff.role[2] == _d("Gx4J")
end

function ff.busy(shp)
local tpiv = zl:FindFirstChild(shp == 2 and _d("PAAoUQIWCRBc") or _d("PAAoUQIWCRA"))

return tpiv ~= nil and tpiv:IsA(_d("NwEFXCADCQAL")) and tpiv.Value == true
end

function ff.roleName(hsk)
return ff.roleNames[ff.role[hsk]] or ff.roleNames.npc
end

function ff.roleLabel(gs)
return ff.picked[gs] or ff.roleName(gs)
end

local md = nil

if yiyr:FindFirstChild(_d("OAEORRoHNhYcA0ACEQ")) and yiyr.ModuleScripts:FindFirstChild(_d("PQ8GXBkVABAAPl8BBxcxDx5R")) then
local erry, hdhg = pcall(function()
return require(yiyr.ModuleScripts.HalloweenTowerData)
end)

if erry then
md = hdhg
end
end

local xu = nil

if yiyr:FindFirstChild(_d("OAEORRoHNhYcA0ACEQ")) and yiyr.ModuleScripts:FindFirstChild(_d("MwcZWB8MAjEPHlE")) then
local zy, vsnp = pcall(function()
return require(yiyr.ModuleScripts.FishingData)
end)

if zy then
xu = vsnp
end
end

local function pstf(etmn)
return tostring(etmn):reverse():gsub(_d("XUsOFRJHAVw"), _d("UF9G")):reverse():gsub(_d("K0I"), _d(""))
end

local pges = {
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

getgenv().ACBXHalloweenUpgrades = pges.upgrade
getgenv().ACBXHalloweenTower = pges.run

pges.shopData = tm.ShopById.halloween
pges.shopItems = {}
pges.shopLabels = {}
pges.cardNames = {
hw_brook = _d("NxwFXx1CTTgbGVkVAwlVPQFVGgcRGgBD"),
hw_death_the_kid = _d("MQsLRB5CER0LSnsfBkVdJgtCGw0LHA1KdwMMRSIHD1wSBxdc"),
hw_barragan = _d("Nw8YQhcFBBtOQmMdBwkQGgVeVikMGwlD"),
}
pges.cardShortNames = {
hw_brook = _d("NxwFXx0"),
hw_death_the_kid = _d("MQsLRB5CER0LSnsfBg"),
hw_barragan = _d("Nw8YQhcFBBs"),
}

for qrah, mrci in ipairs(pges.shopData.Items) do
local dpig, zmn = next(mrci.price or {})
local evqf = mrci.id
local wwxc = mrci.id

if mrci.itemId then
local ie = mw.ById[mrci.itemId]
evqf = ie and (ie.name or mrci.itemId) or mrci.itemId
wwxc = evqf
elseif mrci.cardId then
evqf = pges.cardNames[mrci.cardId] or (pyr.ById[mrci.cardId] and pyr.ById[mrci.cardId].name) or mrci.cardId
wwxc = pges.cardShortNames[mrci.cardId] or evqf
end

local ax = dpig == _d("HQ8GXBkVABAANVMXDAEM") and _d("Ng8EVA8") or (dpig == _d("Hw8JWykNOhkPBEQTEAs") and _d("OQ8ERBMQCwY") or tostring(dpig))
local onv = evqf .. _d("VYzqpFY") .. pstf(zmn) .. _d("VQ") .. ax

table.insert(pges.shopItems, {
id = mrci.id,
label = onv,
shortName = wwxc,
currency = dpig,
price = zmn,
stock = mrci.stock,
cardId = mrci.cardId,
})

table.insert(pges.shopLabels, onv)
end

for iva, qc in ipairs({
_d("JwsbRRMRET0PBlwZFQAQAD9AERAEEQsZ"),
_d("NxsTeBcOCRoZD1UYNxUSHAtUEw"),
_d("PQ8GXBkVABAAP0AREAQRCzlEFxYA"),
_d("JwsbRRMRET0PBlwZFQAQAD5fAQcXJRwFVwQHFgY"),
_d("JhcEUz4DCRkBHVUTDDEaGQ9CJhAKEhwPQwU"),
_d("Oh4PXj4DCRkBHVUTDDEaGQ9C"),
}) do
pges.remote[qc] = oce(qc)
end

function pges.fire(uow, ...)
local pep = pges.remote[uow]

if not pep then
return
end

local cb = { ... }

pcall(function()
pep:FireServer(table.unpack(cb))
end)
end

function pges.on(hdr, ou)
local se = pges.remote[hdr]

if se then
se.OnClientEvent:Connect(ou)
end
end

if md then
for gr, qrc in ipairs(md.Upgrades) do
table.insert(pges.upgrades, {
id = qrc.id,
name = qrc.name,
maxLevel = qrc.maxLevel,
})

table.insert(pges.labels, qrc.name)
end
end

function pges.level(pc)
if not md then
return 0
end

return md.getUpgradeLevel(pges.upgrade.levels, pc)
end

function pges.cost(hbeb)
if not md then
return nil
end

return md.getUpgradeCost(hbeb, pges.level(hbeb))
end

function pges.bonus(zri, yp)
if not md then
return _d("")
end

return md.formatUpgradeBonus(zri, yp)
end

function pges.request()
pges.upgrade.lastRequest = os.time()
pges.fire(_d("JwsbRRMRET0PBlwZFQAQAD9AERAEEQsZ"))
end

function pges.text()
if not md then
return _d("PQ8GXBkVABAASmQZFQAHTg5RAgNFHB1KXhkWRRwASkQeCxZVDB9ZGgZL")
end

local auey = pges.upgrade
local ex = {}

if auey.balance == nil then
table.insert(ex, _d("JRsHQB0LCwZUSh1WSgQGBQNeEUIRHQtKQxMQExAcQw"))
else
table.insert(ex, _d("JRsHQB0LCwZUSg") .. pstf(auey.balance))
end

for rxd, zu in ipairs(pges.upgrades) do
local legl = pges.level(zu.id)
local mzco = pges.cost(zu.id)
local vik = auey.selected[zu.id] and _d("LhY3EA") or _d("Lk43EA")
local to = vik .. zu.name .. _d("VU4mRlY") .. legl .. _d("Wg") .. zu.maxLevel

if mzco then
table.insert(ex, to .. _d("VU4EVQ4WRQ") .. tostring(mzco) .. _d("VU4") .. pges.bonus(zu.id, legl + 1))
else
table.insert(ex, to .. _d("VU4HUQ4HAQ"))
end
end

if not next(auey.selected) then
table.insert(ex, _d("JQcJW1YXFRIcC1QTEUUcAEpEHgdFERwFQBINEhtOC14SQiQAGgUQAxICBw8OVQVCBwAXGRACCgBVDQJVFxIABhpKXxgHRQwBHxAVAwtVDwxWGRABWw"))
end

return table.concat(ex, _d("fw"))
end

function pges.buy()
local zg = pges.upgrade

if zg.waiting or zg.balance == nil or os.time() - zg.lastBuy < 1 then
return
end

local duwa = nil
local dvws = nil

for as, ds in ipairs(pges.upgrades) do
if zg.selected[ds.id] and os.time() >= (zg.failedUntil[ds.id] or 0) then
local dhqw = pges.cost(ds.id)

if dhqw and zg.balance >= dhqw and (not dvws or dhqw < dvws) then
duwa = ds.id
dvws = dhqw
end
end
end

if not duwa then
return
end

zg.waiting = true
zg.lastBuy = os.time()
zg.pendingId = duwa
zg.pendingLevel = pges.level(duwa)

zg.balance = zg.balance - dvws

pges.fire(_d("NxsTeBcOCRoZD1UYNxUSHAtUEw"), duwa)
end

pges.on(_d("PQ8GXBkVABAAP0AREAQRCzlEFxYA"), function(zrlh)
if type(zrlh) ~= _d("AQ8IXBM") then
return
end

local eg = pges.upgrade

eg.balance = tonumber(zrlh.balance) or 0
eg.levels = type(zrlh.levels) == _d("AQ8IXBM") and zrlh.levels or {}

if eg.pendingId then
if pges.level(eg.pendingId) <= eg.pendingLevel then
eg.failedUntil[eg.pendingId] = os.time() + 15
end

eg.pendingId = nil
end

if type(zrlh.message) == _d("BhoYWRgF") then
eg.lastMessage = zrlh.message
end

eg.waiting = false
end)

pges.on(_d("JhcEUz4DCRkBHVUTDDEaGQ9CJhAKEhwPQwU"), function(xbt, isa)
pges.run.highest = tonumber(xbt) or 0
pges.run.savedRun = type(isa) == _d("AQ8IXBM") and isa or nil
end)

pges.on(_d("Oh4PXj4DCRkBHVUTDDEaGQ9C"), function(jik, fsan, tgjb)
pges.run.highest = tonumber(jik) or pges.run.highest
pges.run.savedRun = type(tgjb) == _d("AQ8IXBM") and tgjb or nil
end)

gh.BattleEnd.OnClientEvent:Connect(function(mn)
if type(mn) == _d("AQ8IXBM") and mn.mode == _d("HAAMWRgLERAxGF8ZDw") and mn.tower == _d("HQ8GXBkVABAA") then
pges.run.inBattle = false
pges.run.pending = true
pges.run.pendingUntil = os.time() + 3

task.delay(0.3, function()
pges.requestProgress()
end)
end
end)

function pges.requestProgress()
pges.run.lastRequest = os.time()
pges.fire(_d("JwsbRRMRET0PBlwZFQAQAD5fAQcXJRwFVwQHFgY"))
end

function pges.bestRoom()
local yv = pges.run.highest

if not md or yv == nil then
return nil
end

for xmnt, qcjj in ipairs(md.Milestones) do
if md.isMilestoneUnlocked(qcjj, yv)
and not md.isMilestoneCleared(qcjj, yv) then
return qcjj
end
end

return nil
end

function pges.startRun()
local hu = pges.bestRoom()

if not hu then
return false
end

local be = pges.run.savedRun
local gmu = type(be) == _d("AQ8IXBM") and be.milestone == hu
local sk = gmu and (tonumber(be.currentFloor) or hu) or hu

local kyl = ff.halloweenSlot() or 1

local nfj = getgenv().ACBXAuto

nfj = type(nfj) == _d("AQ8IXBM") and nfj.bossTeams or nil

if pges.run.teamChosen and nfj and nfj.applyTeam then
nfj.applyTeam(pges.run.team, kyl)
end

local vt = zl:FindFirstChild(kyl == 2 and _d("JwsZVQIgBAEaBlUwDgoaHFg") or _d("JwsZVQIgBAEaBlUwDgoaHA"))

if vt and vt:IsA(_d("NwcEVBcACRArHFUYFg")) then
pcall(function()
vt:Fire(sk, _d("HAAMWRgLERAxGF8ZDw"))
end)
end

local lmii = zl:FindFirstChild(kyl == 2 and _d("JhoLQgIrCxMHBFkCBzcaAQdyFxYRGQtY") or _d("JhoLQgIrCxMHBFkCBzcaAQdyFxYRGQs"))

if lmii and lmii:IsA(_d("NwcEVBcACRArHFUYFg")) then
pcall(function()
lmii:Fire(sk, _d("HQ8GXBkVABAA"), sk)
end)
end

pges.run.milestone = hu
pges.run.savedRun = nil
pges.run.inBattle = true
pges.run.inBattleUntil = os.time() + 120
pges.run.pending = true
pges.run.pendingUntil = os.time() + 10

if gmu then
gh.StartBattle:FireServer(_d("HAAMWRgLERAxGF8ZDw"), {
continue = true,
tower = _d("HQ8GXBkVABAA"),
slot = kyl,
})
else
gh.StartBattle:FireServer(_d("HAAMWRgLERAxGF8ZDw"), {
tower = _d("HQ8GXBkVABAA"),
milestone = hu,
slot = kyl,
})
end

return true
end

local sgs = {}
for rgtt, zvi in ipairs(eqik.NPCs) do
sgs[zvi.name] = zvi.id
end

local yrsd = getgenv().ACBXCooldowns
if type(yrsd) ~= _d("AQ8IXBM") then
yrsd = {}
getgenv().ACBXCooldowns = yrsd
end

local xdji = getgenv().ACBXAuto
if type(xdji) == _d("AQ8IXBM") and type(xdji.cooldowns) == _d("AQ8IXBM") then
for aff, mu in pairs(xdji.cooldowns) do
if yrsd[aff] == nil then
yrsd[aff] = mu
end
end
end

local nqmv = {
enabled = false,
story = false,
storyDifficulty = _d("GwEYXRcO"),
storyDropdown = nil,
selectedByWorld = {},
difficulties = { _d("GwEYXRcO") },
walkToNpc = false,
cooldowns = yrsd,
activeDifficulty = {},
lastFetch = {},
unlocked = {},
currentBattle = nil,
battlePending = false,
battlePendingUntil = 0,
}

nqmv.bossTeams = {
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

path = _d("NC0oaFkWABQDGR4cEQob"),
}

function nqmv.bossTeams.trackCollection()
if nqmv.bossTeams.collectionHooked then
return
end

nqmv.bossTeams.collectionHooked = true

local emw = gsk:FindFirstChild(_d("JhcEUzUNCRkLCUQfDQs"))

if not emw then
return
end

emw.OnClientEvent:Connect(function(cgjc)
if type(cgjc) == _d("AQ8IXBM") and type(cgjc.teams) == _d("AQ8IXBM") then
nqmv.bossTeams.teams = cgjc.teams
nqmv.bossTeams.teamsAt = os.clock()
end
end)

task.spawn(function()

task.wait(3)

for ca = 1, 8 do
if nqmv.bossTeams.teams then
return
end

local vse = gsk:FindFirstChild(_d("JhkDRBUKMRAPBw"))
local vpo = nqmv.bossTeams.slotTeam
local dag = nil

if vse and type(vpo) == _d("ExsEUwILChs") then
local iu, bbqj = pcall(vpo, 2)
dag = iu and bbqj or nil

if not dag then
iu, bbqj = pcall(vpo, 1)
dag = iu and bbqj or nil
end
end

if dag then
pcall(function()
vse:FireServer(dag, false, 2)
end)
end

task.wait(6)
end
end)
end

function nqmv.bossTeams.teamCards(we)
local iv = nqmv.bossTeams.teams

if type(iv) ~= _d("AQ8IXBM") then
return nil
end

local bbwi = iv[we]

if type(bbwi) ~= _d("AQ8IXBM") then
return 0
end

local vqmq = 0

for resp, ygxz in pairs(bbwi) do
if type(ygxz) == _d("AQ8IXBM") then
vqmq = vqmq + 1
end
end

return vqmq
end

function nqmv.bossTeams.raidState()
return getgenv().ACBXAutoRaid
end

function nqmv.bossTeams.save()
if type(writefile) ~= _d("ExsEUwILChs") then
return false
end

local wc = {}

for bc, wzl in pairs(nqmv.bossTeams.picked) do
wc[bc] = wzl
end

local lc = {}

for pbts, jr in pairs(nqmv.bossTeams.raidPicked) do
lc[pbts] = jr
end

local rlwp = {}

for sxaa, zr in pairs(nqmv.bossTeams.towerPicked) do
rlwp[sxaa] = zr
end

return pcall(function()
if type(makefolder) == _d("ExsEUwILChs") and type(isfile) == _d("ExsEUwILChs") and not isfile(nqmv.bossTeams.path) then
pcall(makefolder, _d("NC0oaA"))
end

local yvyu = nqmv.bossTeams.raidState()
local rodb = yvyu and yvyu.worldBoss
local iy = nil

if rodb and rodb.teamChosen then
iy = rodb.team
end

writefile(nqmv.bossTeams.path, game:GetService(_d("PRoeQCUHFwMHCVU")):JSONEncode({
areas = wc,
raids = lc,
towers = rlwp,
swap = nqmv.bossTeams.swap,
globalBoss = iy,
updatedAt = os.time(),
}))
end)
end

function nqmv.bossTeams.load()
if type(readfile) ~= _d("ExsEUwILChs") or type(isfile) ~= _d("ExsEUwILChs") then
return false
end

local jy, oeue = pcall(function()
if not isfile(nqmv.bossTeams.path) then
return nil
end

return readfile(nqmv.bossTeams.path)
end)

if not jy or type(oeue) ~= _d("BhoYWRgF") or #oeue == 0 then
return false
end

local rao
local pnz = pcall(function()
rao = game:GetService(_d("PRoeQCUHFwMHCVU")):JSONDecode(oeue)
end)

if not pnz or type(rao) ~= _d("AQ8IXBM") then
return false
end

if type(rao.areas) == _d("AQ8IXBM") then
for nr, aq in pairs(rao.areas) do
local dtcf = tonumber(aq)

if dtcf and dtcf >= 1 and dtcf <= 4 then
nqmv.bossTeams.picked[nr] = dtcf
end
end
end

if type(rao.raids) == _d("AQ8IXBM") then
for ao, wndx in pairs(rao.raids) do
local tgr = tonumber(wndx)

if tgr and tgr >= 1 and tgr <= 4 then
nqmv.bossTeams.raidPicked[ao] = tgr
end
end
end

if type(rao.towers) == _d("AQ8IXBM") then
for neq, afvh in pairs(rao.towers) do
local mnwk = tonumber(afvh)

if mnwk and mnwk >= 1 and mnwk <= 4 then
nqmv.bossTeams.towerPicked[neq] = mnwk
end
end
end

if type(rao.swap) == _d("AQ8IXBM") then
local zc = tonumber(rao.swap.team)
local ohh = tonumber(rao.swap.floor)

if zc and zc >= 1 and zc <= 4 then
nqmv.bossTeams.swap.team = zc
end

if ohh and ohh > 0 then
nqmv.bossTeams.swap.floor = ohh
end

local atbz = tonumber(rao.swap.team2)
local ra = tonumber(rao.swap.floor2)

if atbz and atbz >= 1 and atbz <= 4 then
nqmv.bossTeams.swap.team2 = atbz
end

if ra and ra > 0 then
nqmv.bossTeams.swap.floor2 = ra
end

nqmv.bossTeams.swap.on = rao.swap.on == true
end

local me = tonumber(rao.globalBoss)
local dp = nqmv.bossTeams.raidState()
local ajo = dp and dp.worldBoss

if me and me >= 1 and me <= 4 and ajo then
ajo.team = me

ajo.teamChosen = true
end

return true
end

local tkw = nil
local ofj = nil

local function rv(uk, xygi)
return uk .. _d("CQ") .. xygi
end

local function ky(vvlm, mdv)
return nqmv.cooldowns[rv(vvlm, mdv)] or 0
end

local function blis(iing, azh, xuh)
nqmv.cooldowns[rv(iing, azh)] = xuh
end

getgenv().ACBXAuto = nqmv

local tnt = {
enabled = false,
picks = { [1] = {}, [2] = {} },
cursor = { [1] = 1, [2] = 1 },
losses = { [1] = {}, [2] = {} },
inFlight = {},

lossLimit = 3,
difficulties = { _d("GwEYXRcO") },
walkToBoss = false,
walkSpeed = 18,
pending = {},
pendingUntil = {},
cleared = {},
progress = {},
}

getgenv().ACBXAutoRaid = tnt

tnt.worldBoss = {
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

fishingMode = _d("AQENVQIKAAc"),
fishingDropdown = nil,

digHold = false,

walkToBoss = false,
walkToggle = nil,

building = false,
}

nqmv.bossTeams.trackCollection()
nqmv.bossTeams.load()

function tnt.worldBoss.data()
local sh = tnt.worldBoss

if sh.module == nil then
local dlr, lhs = pcall(function()
return require(yiyr.ModuleScripts.WorldBossData)
end)

sh.module = dlr and lhs or false
end

return sh.module or nil
end

function tnt.worldBoss.clock(vq)
vq = math.max(0, math.floor(tonumber(vq) or 0))

local pd = math.floor(vq / 3600)
local xsnw = math.floor((vq % 3600) / 60)
local krv = vq % 60

if pd > 0 then
return string.format(_d("UAoCEFNSVxED"), pd, xsnw)
end

if xsnw > 0 then
return string.format(_d("UAoHEFNSVxEd"), xsnw, krv)
end

return string.format(_d("UAoZ"), krv)
end

function tnt.worldBoss.status()
local ee = nil

pcall(function()
ee = yiyr:FindFirstChild(_d("IgEYXBIgCgYdOUQXFhAG"))
end)

return ee
end

function tnt.worldBoss.isOpen()
local zdqm = tnt.worldBoss.status()

if not zdqm then
return nil
end

return zdqm:GetAttribute(_d("NA0eWQAH")) == true
end

function tnt.worldBoss.window()
local ron = tnt.worldBoss.status()

if not ron then
return nil, nil
end

return tonumber(ron:GetAttribute(_d("MAAOQzcW"))), tonumber(ron:GetAttribute(_d("OwsSRDcW")))
end

function tnt.worldBoss.cycle()
local fzy = tnt.worldBoss
local krx = fzy.data()

if not krx or not krx.getCycleState then
return nil
end

local iflm, tvv = pcall(function()
return krx.getCycleState()
end)

return iflm and tvv or nil
end

function tnt.worldBoss.shopList()
local aedu = tnt.worldBoss

if aedu.items then
return aedu.items
end

local bs = {}
local ge = aedu.data()

if not ge or type(ge.ShopItems) ~= _d("AQ8IXBM") then
aedu.items = bs
return bs
end

for xld, mk in ipairs(ge.ShopItems) do
local dov = nil

pcall(function()
if mk.itemId then
local khqt = require(yiyr.ModuleScripts.ItemData)
local yen = khqt[mk.itemId] or (khqt.ById and khqt.ById[mk.itemId])
dov = yen and yen.name or nil
elseif mk.cardId then
local tqd = require(yiyr.ModuleScripts.CardData)
local vli = tqd[mk.cardId] or (tqd.ById and tqd.ById[mk.cardId])
dov = vli and vli.name or nil
end
end)

local qn = tnt.worldBoss.state

if type(qn) == _d("AQ8IXBM") and type(qn.shop) == _d("AQ8IXBM") then
for iz, hyq in ipairs(qn.shop) do
if hyq.id == mk.id and hyq.name then
dov = hyq.name
break
end
end
end

if not dov then

dov = tostring(mk.accessoryId or mk.id or _d("Sg")):gsub(_d("Kg"), _d("VQ")):gsub(_d("XUsLGV45QAJJNxpf"), function(kj, kf)
return kj:upper() .. kf
end)
end

table.insert(bs, {
id = mk.id,
name = dov,
price = tonumber(mk.price) or 0,
kind = mk.itemId and _d("HBoPXQ") or (mk.cardId and _d("Fg8YVA") or _d("FA0JVQURCgcX")),
})
end

aedu.items = bs

return bs
end

function tnt.worldBoss.bodyText()
local gck = tnt.worldBoss
local rd = gck.state

if type(rd) ~= _d("AQ8IXBM") then
return _d("JwsLVB8MAlUaAlVWAAoGHUQeWA")
end

local mjzn = {}
local wvin = gck.cycle()
local mdsc = gck.isOpen()
local srgu, mqre = gck.window()

if mdsc == nil then
mdsc = rd.open == true
end

if mdsc then
local xpj = _d("Oh4PXg")

if not srgu and wvin then
srgu = wvin.endsAt
end

if srgu and srgu > os.time() then
xpj = xpj .. _d("VazdEA") .. gck.clock(srgu - os.time()) .. _d("VQIPVgI")
end

table.insert(mjzn, xpj)
else
local huv = _d("MQEdXlYECgdOBF8B")

if not mqre and wvin then
mqre = wvin.nextAt
end

if mqre and mqre > os.time() then
huv = huv .. _d("fywLUx1CDBtO") .. gck.clock(mqre - os.time())
end

table.insert(mjzn, huv)
end

table.insert(mjzn, _d("OAsOURoRX1U") .. tostring(rd.medals or 0) .. _d("fyUDXBoRX1U") .. tostring(rd.kills or 0))

if rd.inFight then
table.insert(mjzn, _d("MwcNWAILCxI"))
elseif mdsc then

table.insert(mjzn, rd.killedThisSpawn and _d("JwsLVA9oLhwCBlUSQhEdBxkQBRIEAgBKURoQABQKEw") or _d("JwsLVA8"))
end

if gck.stopAtFull then
local dm, qtc = gck.meter()

if dm and qtc then
local function muwi(ril)
if ril >= 1000000000 then
return string.format(_d("UEBbVjQ"), ril / 1000000000)
elseif ril >= 1000000 then
return string.format(_d("UAkn"), math.floor(ril / 100000) / 10)
elseif ril >= 1000 then
return string.format(_d("UAkh"), math.floor(ril / 100) / 10)
end

return tostring(math.floor(ril))
end

table.insert(mjzn, _d("JgsYRhMQRRgLHlUEWEU") .. muwi(dm) .. _d("VUFK") .. muwi(qtc)
.. (gck.meterFull() and _d("fygfXBpCSFUABURWBAwSBh5ZGAVFAQYDQ1YRFRQZBA") or _d("")))
end
end

return table.concat(mjzn, _d("f2Q"))
end

function tnt.worldBoss.shopText()
local kvo = tnt.worldBoss
local ko = kvo.state

if type(ko) ~= _d("AQ8IXBM") or type(ko.shop) ~= _d("AQ8IXBM") then
return _d("JwsLVB8MAlUaAlVWEQ0aHkQeWA")
end

local np = { _d("OAsOURoRX1U") .. tostring(ko.medals or 0) }

for fc, dfy in ipairs(ko.shop) do
local dqmv = tostring(dfy.name or dfy.id)
local zeg = tostring(dfy.price or _d("Sg"))
local oy

if dfy.kind == _d("HBoPXQ") then
oy = dqmv .. _d("fw") .. zeg .. _d("VazdEA") .. tostring(dfy.left or 0) .. _d("Wg") .. tostring(dfy.stock or _d("Sg")) .. _d("VQIPVgI")
elseif dfy.owned then
oy = dqmv .. _d("fyEdXhMG")
else
oy = dqmv .. _d("fw") .. zeg .. _d("VazdEBkMAFUBDFY")
end

table.insert(np, oy)
end

return table.concat(np, _d("f2Q"))
end

function tnt.worldBoss.shopOptions()
local cpj = tnt.worldBoss

if cpj.options then
return cpj.options
end

local kllx = {}

cpj.labelToId = {}

for avl, sl in ipairs(cpj.shopList()) do
local irv = sl.name .. _d("VazdEA") .. tostring(sl.price)

table.insert(kllx, irv)
cpj.labelToId[irv] = sl.id
end

cpj.options = kllx

return kllx
end

local function vgp(cc)
local qh = tnt.progress[cc]
local xj = yiyr:FindFirstChild(_d("Jw8DVCUWBAEbGQ"))
local dl = xj and xj:GetAttribute(_d("NhcJXBMrAQ"))

if type(qh) == _d("AQ8IXBM") then
if qh.cycleId then
dl = qh.cycleId
end

if qh.completed and qh.completedRaidId then
return tostring(dl) .. _d("TwoFXhM")
end

local vni = qh.phaseIndex or qh.phase

if vni then
return tostring(dl) .. _d("Tw") .. tostring(vni)
end
end

return tostring(dl)
end

function tnt.finished(kcjz)
local ness = tnt.progress[kcjz]

return type(ness) == _d("AQ8IXBM") and ness.completed == true and ness.completedRaidId == kcjz
end

function tnt.bossFor(cxji)
local bv = tnt.picks[cxji]

if not bv or #bv == 0 then
return nil
end

local hfe = yiyr:FindFirstChild(_d("Jw8DVCUWBAEbGQ"))
local nrxz = tnt.losses[cxji] or {}
local oz = tnt.cursor[cxji] or 1

for agus = 0, #bv - 1 do
local drsi = (oz - 1 + agus) % #bv + 1
local ag = bv[drsi]
local uovo = not hfe or hfe:GetAttribute(_d("JwsLVA89") .. ag) == true

if uovo and not tnt.finished(ag) and (nrxz[ag] or 0) < tnt.lossLimit then
tnt.cursor[cxji] = drsi

return ag
end
end

return nil
end

gh.RaidBattleStarted.OnClientEvent:Connect(function(blb)

local jmi = type(blb) == _d("AQ8IXBM") and blb.raidId or nil

if type(jmi) == _d("BhoYWRgF") then
tnt.pending[jmi] = false
else
for pgrs in pairs(tnt.pending) do
tnt.pending[pgrs] = false
end
end
end)

gh.BattleEnd.OnClientEvent:Connect(function(fypc)
for lb in pairs(tnt.pending) do
tnt.pending[lb] = false
end

if type(fypc) ~= _d("AQ8IXBM") or not tnt.enabled then
return
end

local jygv = type(fypc.raidId) == _d("BhoYWRgF") and fypc.raidId or nil
local qg = jygv and tnt.inFlight[jygv] or nil

if not jygv then
for mvib, dqu in pairs(tnt.inFlight) do
jygv = mvib
qg = dqu
break
end
end

if not jygv then
return
end

tnt.inFlight[jygv] = nil

if fypc.result == _d("GQEZVQ") then

local oveu = tnt.losses[qg or 1]

tnt.cleared[jygv] = nil
oveu[jygv] = (oveu[jygv] or 0) + 1

for jgi in pairs(tnt.pendingUntil) do
tnt.pendingUntil[jgi] = os.time() + 3
end
else

tnt.losses[qg or 1][jygv] = 0
end
end)

gh.RaidProgress.OnClientEvent:Connect(function(wtpt)
if type(wtpt) == _d("AQ8IXBM") and type(wtpt.raidId) == _d("BhoYWRgF") then
tnt.progress[wtpt.raidId] = wtpt
end
end)

gh.RequestRaidProgress:FireServer()

local tal = {
enabled = false,
progress = nil,
currentRoom = nil,
inBattle = false,
inBattleUntil = 0,
pending = false,
pendingUntil = 0,
}

getgenv().ACBXAutoRooms = tal

gh.SyncInfiniteRoomProgress.OnClientEvent:Connect(function(wy)
if type(wy) == _d("GxsHUhMQ") then
tal.progress = wy
tal.pending = false
end
end)

gh.BattleEnd.OnClientEvent:Connect(function(nq)
if type(nq) == _d("AQ8IXBM") and nq.mode == _d("HAAMWRgLERAxGF8ZDw") then
tal.inBattle = false
tal.pending = true
tal.pendingUntil = os.time() + 3

task.delay(0.3, function()
gh.RequestInfiniteRoomProgress:FireServer()
end)
end
end)

gh.RequestInfiniteRoomProgress:FireServer()

local wk = {
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

getgenv().ACBXAutoTower = wk

local ls = {
enabled = false,
floor = 0,
triggered = false,
}

getgenv().ACBXAutoPause = ls

local nppz = {
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
Typhoon = _d("ARcaWBkNCw"),
Blizzard = _d("FwIDSgwDFxE"),
Lightning = _d("GQcNWAIMDBsJ"),
Windstorm = _d("AgcEVAUWCgcD"),
Sharingan = _d("BgYLQh8MAhQA"),
Singularity = _d("BgcEVwMOBAcHHkk"),
[_d("OAEEUQQBDVUqBV0XCws")] = _d("GAEEUQQBDSoKBV0XCws"),
Void = _d("AwEDVA"),
[_d("OA8OVVYLC1UmD1EABws")] = _d("GA8OVSkLCyoGD1EABws"),
Manga = _d("GA8EVxc"),
},
}

function nppz.weatherWanted(qndm)
local qt = nppz.weatherNow

if type(qt) ~= _d("BhoYWRgF") then
return nil
end

for xnm, wrua in pairs(qndm or nppz.weathers) do
if wrua and nppz.weatherIds[xnm] == qt then
return xnm
end
end

return nil
end

getgenv().ACBXAutoGiveUp = nppz

local wqo = {
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

if yiyr:FindFirstChild(_d("OAEORRoHNhYcA0ACEQ")) and yiyr.ModuleScripts:FindFirstChild(_d("PQ8YVBUNFxA6BUcTECEUGgs")) then
local rpr, qujv = pcall(function()
return require(yiyr.ModuleScripts.HardcoreTowerData)
end)

if rpr then
wqo.data = qujv
end
end

getgenv().ACBXHardcore = wqo

task.spawn(function()
local lcfg = yiyr:FindFirstChild(_d("JwsHXwIHFg"))

if not lcfg then
return
end

local lioa = lcfg:WaitForChild(_d("JhcEUz4DFxENBUITNgoCCxhgBA0CBwsZQw"), 20)

if lioa and lioa:IsA(_d("JwsHXwIHIAMLBEQ")) then
wqo.remotes.sync = lioa

lioa.OnClientEvent:Connect(function(kzyg)
if type(kzyg) ~= _d("AQ8IXBM") then
return
end

wqo.progress = tonumber(kzyg.progress) or wqo.progress
wqo.best = tonumber(kzyg.best) or wqo.best

if type(kzyg.points) == _d("AQ8IXBM") then
wqo.points = kzyg.points
end
end)
end

local aly = lcfg:WaitForChild(_d("JwsbRRMRET0PGFQVDRcQOgVHExA1BwENQhMRFg"), 20)

if aly and aly:IsA(_d("JwsHXwIHIAMLBEQ")) then
wqo.remotes.request = aly

pcall(function()
aly:FireServer()
end)
end

local djmc = lcfg:WaitForChild(_d("MgIFUhcOJwAIDGUGBgQBCw4"), 20)

if djmc and djmc:IsA(_d("JwsHXwIHIAMLBEQ")) then
djmc.OnClientEvent:Connect(function(dym, ojg, pa, aqy)
wqo.globalLuck = tonumber(dym) or 0
wqo.globalRoll = tonumber(ojg) or 0
wqo.globalLuckTime = type(pa) == _d("BhoYWRgF") and pa or _d("")
wqo.globalRollTime = type(aqy) == _d("BhoYWRgF") and aqy or _d("")
end)
end
end)

function ff.otherTowerOn(wsk)
if ff.enabled then
return false
end

if wsk == _d("AQEdVQQ") then
return false
end

if wsk == _d("HQ8GXBkVABAA") then
return wqo.active()
end

return pges.run.enabled
end

function wqo.active()
return wqo.island
end

function wqo.unspentPoints()
local gzv = wqo.data
local yrbv = tonumber(wqo.progress) or 0
local df = 0

if type(gzv) == _d("AQ8IXBM") and type(gzv.getEarnedPoints) == _d("ExsEUwILChs") then
local mih, ve = pcall(gzv.getEarnedPoints, yrbv)
df = mih and tonumber(ve) or 0
end

return math.max(0, df - #(wqo.points or {})), df
end

function wqo.buffText()
local xorl = wqo.data

if type(xorl) ~= _d("AQ8IXBM") then
return _d("PQ8YVBUNFxA6BUcTECEUGgsQHxFFGAcZQx8MAlUIGF8bQhEdBxkQFBcMGQpE")
end

local bst = tonumber(wqo.progress) or 0
local og = tonumber(wqo.best) or 0
local zprq, zof = wqo.unspentPoints()
local vwmc = {
_d("MwIFXwRC") .. bst .. _d("VU5KchMREVU") .. og,
_d("JQEDXgIRX1U") .. zprq .. _d("VRsEQwYHCwFOBVZW") .. zof .. _d("VQsLQhgHAQ"),
}

local pcm = {}

for qbix, mgeb in ipairs(wqo.points or {}) do
local pzc = xorl.StatById and xorl.StatById[mgeb]
local kcnc = pzc and (pzc.name or mgeb) or tostring(mgeb)
local cv = xorl.PointValue and xorl.PointValue[mgeb]

table.insert(pcm, cv and (kcnc .. _d("VUU") .. tostring(cv)) or kcnc)
end

if #pcm == 0 then
table.insert(vwmc, _d("NxsMVgVYRRsBBFVWAAoACQJEVhsAAQ"))
else
table.insert(vwmc, _d("NxsMVgVYRQ") .. table.concat(pcm, _d("WU4")))
end

local ggw = {}

if (tonumber(wqo.globalLuck) or 0) > 0 then
table.insert(ggw, _d("ORsJW1ZJ") .. tostring(wqo.globalLuck) .. _d("UA") .. (wqo.globalLuckTime ~= _d("") and (_d("VUY") .. wqo.globalLuckTime .. _d("XA")) or _d("")))
end

if (tonumber(wqo.globalRoll) or 0) > 0 then
table.insert(ggw, _d("JwEGXFYRFRALDhBd") .. tostring(wqo.globalRoll) .. _d("UA") .. (wqo.globalRollTime ~= _d("") and (_d("VUY") .. wqo.globalRollTime .. _d("XA")) or _d("")))
end

if #ggw == 0 then
table.insert(vwmc, _d("MgIFUhcORRcbDFYFWEUbAQRVVgMGAQccVQ"))
else
table.insert(vwmc, _d("MgIFUhcORRcbDFYFWEU") .. table.concat(ggw, _d("WU4")))
end

return table.concat(vwmc, _d("fw"))
end

function wqo.nextMilestone()
local hho = wqo.data

if type(hho) ~= _d("AQ8IXBM") or type(hho.Milestones) ~= _d("AQ8IXBM") or #hho.Milestones == 0 then
return nil
end

local ja = tonumber(pl:GetAttribute(_d("PQ8YVBUNFxAoBl8ZEA"))) or 0

return math.min(ja + 1, hho.Milestones[#hho.Milestones])
end

function wqo.start(vc)
local iq = wqo.nextMilestone()

if not iq then
return false
end

local rp = zl:FindFirstChild(vc == 2 and _d("JwsZVQIgBAEaBlUwDgoaHFg") or _d("JwsZVQIgBAEaBlUwDgoaHA"))

if rp and rp:IsA(_d("NwcEVBcACRArHFUYFg")) then
pcall(function()
rp:Fire(iq, _d("HAAMWRgLERAxGF8ZDw"))
end)
end

local cffq = zl:FindFirstChild(vc == 2 and _d("JhoLQgIrCxMHBFkCBzcaAQdyFxYRGQtY") or _d("JhoLQgIrCxMHBFkCBzcaAQdyFxYRGQs"))

if cffq and cffq:IsA(_d("NwcEVBcACRArHFUYFg")) then
pcall(function()
cffq:Fire(iq, _d("HQ8YVBUNFxA"), iq)
end)
end

if nqmv.bossTeams.applyTower then
nqmv.bossTeams.applyTower(_d("HQ8YVBUNFxA"), vc)
end

wqo.pending = true
wqo.pendingUntil = os.time() + 10

return pcall(function()
gh.StartBattle:FireServer(_d("HAAMWRgLERAxGF8ZDw"), {
tower = _d("HQ8YVBUNFxA"),
milestone = iq,
slot = vc,
})
end)
end

function wqo.floorNow()
local fzc = ff.hardcoreSlot()

if not fzc or not ff.busy(fzc) then
return nil
end

local uuvo = zl:FindFirstChild(fzc == 2 and _d("Nw8eRBoHIgAHWA") or _d("Nw8eRBoHIgAH"))
local gsp = uuvo and uuvo:FindFirstChild(_d("JxsEdhoNCgciC1ITDg"))
local mm = gsp and gsp.Text or _d("")

return tonumber(mm:match(_d("KygGXxkQQAZFQhUSSUw")))
end

local kke = {
enabled = true,
nextAt = os.clock() + 300,
jumps = 0,
}

getgenv().ACBXAntiKick = kke

local mif = getgenv().ACBXNoUpdate == true

local fd = {
enabled = not mif,
buildId = "0.999",
interval = 180,
retry = 45,
forceAfter = 900,
applying = false,
checking = false,
pendingVersion = nil,
pendingSince = nil,
cameFrom = nil,
}

local zbxg = {
enabled = false,
tpToBay = false,

stick = {
enabled = false,
at = 0,
hits = 0,
last = _d("GggM"),

names = {
[_d("BhoDUx0")] = true,
[_d("GRsJW1YRERwNAQ")] = true,
[_d("GRsJWwUWDBYF")] = true,
[_d("GRsJWykRERwNAQ")] = true,
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
rod = _d("WA"),
castTime = 0,
tutorialStep = 0,
phase = _d("HAoGVQ"),
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
deepPhase = _d("HAoGVQ"),
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

local qkmf = Vector3.new(-546.8, 13.9, -40250.1)

if type(getgenv().ACBXFishingCatches) == _d("AQ8IXBM") then
zbxg.catches = getgenv().ACBXFishingCatches
end

zbxg.totalCatches = 0

for vnrl, hs in pairs(zbxg.catches) do
zbxg.totalCatches = zbxg.totalCatches + hs
end

getgenv().ACBXFishingCatches = zbxg.catches
getgenv().ACBXFishing = zbxg

zbxg.catchName = function(zze)
local lu = mw.ById[zze]

if lu and lu.name then
return lu.name
end

local jq = pyr.ById[zze]

if jq and jq.name then
return jq.name
end

return zze
end

local cjw

cjw = {
folder = _d("NC0oaA"),
path = _d("NC0oaFkBBAENAlUFTA8GAQQ"),
at = 0,
save = function()
if type(writefile) ~= _d("ExsEUwILChs") then
return false
end

local jl = pcall(function()
if type(makefolder) == _d("ExsEUwILChs") and type(isfile) == _d("ExsEUwILChs") and not isfile(cjw.path) then
pcall(makefolder, cjw.folder)
end

writefile(cjw.path, game:GetService(_d("PRoeQCUHFwMHCVU")):JSONEncode({
catches = zbxg.catches,
totalCatches = zbxg.totalCatches,
lastCatch = zbxg.lastCatch,
updatedAt = os.time(),
}))
end)

return jl
end,
load = function()
if type(readfile) ~= _d("ExsEUwILChs") or type(isfile) ~= _d("ExsEUwILChs") then
return false
end

local idgx, fjmq = pcall(function()
if not isfile(cjw.path) then
return nil
end

return readfile(cjw.path)
end)

if not idgx or type(fjmq) ~= _d("BhoYWRgF") or #fjmq == 0 then
return false
end

local pal
local xyr = pcall(function()
pal = game:GetService(_d("PRoeQCUHFwMHCVU")):JSONDecode(fjmq)
end)

if not xyr or type(pal) ~= _d("AQ8IXBM") or type(pal.catches) ~= _d("AQ8IXBM") then
return false
end

for rlib, rjv in pairs(pal.catches) do
local khog = tonumber(rjv) or 0

if khog > 0 then
zbxg.catches[tostring(rlib)] = math.max(zbxg.catches[tostring(rlib)] or 0, khog)
end
end

zbxg.totalCatches = 0

for gzlc, nxfo in pairs(zbxg.catches) do
zbxg.totalCatches = zbxg.totalCatches + nxfo
end

return true
end,
}

cjw.load()
getgenv().ACBXFishingStore = cjw

local dcls = {}

local kjp = 0

local function qgv()
local dg = {}

for lcdr, mfax in ipairs(workspace:GetDescendants()) do
if mfax:IsA(_d("Nw8ZVSYDFwE")) and mfax.Name == _d("Ig8eVQQ") then
table.insert(dg, mfax)
end
end

dcls = dg
kjp = os.clock()
end

local function sedr(jg)
if type(jg) ~= _d("AQ8IXBM") then
return false
end

zbxg.loaded = true
zbxg.dirty = false
zbxg.fishing = jg.fishing == true
zbxg.autoOn = jg.autoOn == true
zbxg.autoUnlocked = jg.autoUnlocked == true
zbxg.casts = tonumber(jg.casts) or zbxg.casts
zbxg.totalCasts = tonumber(jg.totalCasts) or zbxg.totalCasts
zbxg.luck = tonumber(jg.luck) or zbxg.luck
zbxg.rod = tostring(jg.equippedRod or zbxg.rod)
zbxg.castTime = tonumber(jg.castTime) or zbxg.castTime
zbxg.tutorialStep = tonumber(jg.tutorialStep) or zbxg.tutorialStep

if type(jg.rods) == _d("AQ8IXBM") then
zbxg.rodsOwned = jg.rods
end

if type(jg.baits) == _d("AQ8IXBM") then
zbxg.baitsOwned = jg.baits
end

if type(jg.boats) == _d("AQ8IXBM") then
zbxg.boatsOwned = jg.boats
end

if type(jg.mats) == _d("AQ8IXBM") then
zbxg.mats = jg.mats
end

if jg.bootOwned ~= nil then
zbxg.boot.owned = jg.bootOwned == true
end

if jg.bootEquipped ~= nil then
zbxg.boot.equipped = jg.bootEquipped == true
end

if jg.equippedBait ~= nil then
zbxg.equippedBait = tostring(jg.equippedBait)
end

if jg.activeBoat ~= nil then
zbxg.activeBoat = tostring(jg.activeBoat)
end

zbxg.boatTier = tonumber(jg.boatTier) or zbxg.boatTier
zbxg.islandLocked = jg.islandLocked == true
zbxg.rebirths = tonumber(jg.rebirths) or zbxg.rebirths

if type(jg.rebirthCards) == _d("AQ8IXBM") then
zbxg.rebirthCards = jg.rebirthCards
end

zbxg.lastSync = os.time()

return true
end

local function aa()
local gwo, kqhc = pcall(function()
return gh.FishingGetState:InvokeServer()
end)

if not gwo or type(kqhc) ~= _d("AQ8IXBM") then
zbxg.loaded = false
return false
end

return sedr(kqhc)
end

local sect = false

local function num()
if sect then
return false
end

local pbc = pl.Character

if not pbc then
return false
end

if pbc:FindFirstChild(_d("MwcZWB8MAicBDg")) then
return true
end

local yvr = pl:FindFirstChild(_d("Nw8JWwYDBh4"))
local dgk = yvr and yvr:FindFirstChild(_d("MwcZWB8MAicBDg"))
local mogy = pbc:FindFirstChildOfClass(_d("PRsHURgNDBE"))

if not (dgk and mogy) then
return false
end

return pcall(function()
mogy:EquipTool(dgk)
end)
end

local function vvdr()
local gz = pl.Character
local bt = gz and gz:FindFirstChild(_d("PRsHURgNDBE8BV8CMgQHGg"))

if not bt then
return nil
end

local nwdz = RaycastParams.new()
nwdz.FilterType = Enum.RaycastFilterType.Exclude
nwdz.FilterDescendantsInstances = { gz }

local okff = 24
local ov = {}
local aw = 0

for eelg = 0, okff - 1 do
local eyt = math.rad(eelg * (360 / okff))
local hd = Vector3.new(math.sin(eyt), 0, math.cos(eyt))
local dyq = bt.Position + hd * 20 + Vector3.new(0, 40, 0)
local cug = workspace:Raycast(dyq, Vector3.new(0, -120, 0), nwdz)
local pyo = cug and (bt.Position.Y - cug.Position.Y) or 120

ov[eelg] = pyo > 12

if ov[eelg] then
aw = aw + 1
end
end

if aw == 0 then
return nil
end

local hfmd, tupe = nil, 0

for jbkx = 0, okff - 1 do
if ov[jbkx] and not ov[(jbkx - 1) % okff] then
local ui = 0

while ui < okff and ov[(jbkx + ui) % okff] do
ui = ui + 1
end

if ui > tupe then
hfmd = jbkx
tupe = ui
end
end
end

if not hfmd then
return nil
end

local dciy = hfmd + (tupe - 1) / 2
local zjkh = math.rad(dciy * (360 / okff))

return Vector3.new(math.sin(zjkh), 0, math.cos(zjkh))
end

local function thm()
local ejk = pl.Character
local nqv = ejk and ejk:FindFirstChild(_d("PRsHURgNDBE8BV8CMgQHGg"))

if not nqv then
return nil
end

if #dcls == 0 or os.clock() - kjp > 20 then
qgv()
end

local bujh, zmh = nil, math.huge

for rwnt, da in ipairs(dcls) do
if da.Parent then
local bfd = (da.Position - nqv.Position).Magnitude

if bfd < zmh then
zmh = bfd
bujh = da
end
end
end

if not bujh or zmh > 25 then
local skq = vvdr()

if skq then
return skq
end
end

if not bujh then
return nil
end

local gudg = Vector3.new(bujh.Position.X - nqv.Position.X, 0, bujh.Position.Z - nqv.Position.Z)

if gudg.Magnitude < 0.05 then
return Vector3.new(0, 0, -1)
end

return gudg.Unit
end

local function at()
local wsui = pl.Character
local uzb = wsui and wsui:FindFirstChild(_d("PRsHURgNDBE8BV8CMgQHGg"))

if not uzb then
return nil
end

local ye = uzb.CFrame.LookVector
local ng = Vector3.new(ye.X, 0, ye.Z)

if ng.Magnitude < 0.05 then
return nil
end

return ng.Unit
end

local function yy()
local rcea = pl.Character
local oyfs = rcea and rcea:FindFirstChild(_d("PRsHURgNDBE8BV8CMgQHGg"))

if not oyfs then
return false
end

local gqx = qkmf
local hxrt = RaycastParams.new()
hxrt.FilterType = Enum.RaycastFilterType.Exclude
hxrt.FilterDescendantsInstances = { rcea }

local aws = workspace:Raycast(qkmf + Vector3.new(0, 40, 0), Vector3.new(0, -200, 0), hxrt)

if aws and aws.Instance.Name ~= _d("Ig8eVQQ") then
gqx = Vector3.new(qkmf.X, aws.Position.Y + 3, qkmf.Z)
end

oyfs.CFrame = CFrame.new(gqx)
task.wait(0.5)
qgv()

return true
end

local function yxq()
local dai = pl.Character
local gb = dai and dai:FindFirstChild(_d("PRsHURgNDBE8BV8CMgQHGg"))

if not gb then
return false
end

local sges = Vector3.new(qkmf.X - gb.Position.X, 0, qkmf.Z - gb.Position.Z)
local dc = sges.Magnitude

if dc < 2 then
return false
end

local noln = sges.Unit

if dc > 12 then
local ah = math.min(14, dc - 6)
local xhqw = gb.Position + noln * ah
local kkf = RaycastParams.new()
kkf.FilterType = Enum.RaycastFilterType.Exclude
kkf.FilterDescendantsInstances = { dai }

local kom = workspace:Raycast(xhqw + Vector3.new(0, 25, 0), Vector3.new(0, -80, 0), kkf)

if kom and kom.Instance.Name ~= _d("Ig8eVQQ") then
local oqtd = kom.Position.Y + 3.2

if math.abs(oqtd - gb.Position.Y) <= 10 then
local mi = Vector3.new(kom.Position.X, oqtd, kom.Position.Z)
gb.CFrame = CFrame.lookAt(mi, mi + noln)

return true
end
end
end

gb.CFrame = CFrame.lookAt(gb.Position, gb.Position + noln)

return true
end

local gez = {}

gez.surfaceWait = 8

gez.walking = false
gez.walkStartedAt = 0

gez.islandHold = Vector3.new(-7384, 16.3, -40539)

gez.custom = nil
gez.customIsland = nil

gez.islandAnchors = {
{ id = _d("FAwLXhINCxAKNVkFDgQbCg"), x = -3800 },
{ id = _d("ARkDXikAABQNAlUF"), x = -6180 },
{ id = _d("AgcEVBsLCRkxA0MaBw"), x = -7480 },
}

gez.arrivals = {
abandoned_island = Vector3.new(-3825, 24, -40260),
twin_beaches = Vector3.new(-6180, 40, -40350),
windmill_isle = Vector3.new(-7480, 30, -40350),
lobby = Vector3.new(-499, 17, -40234),
}

function gez.islandOf(cmgs)
if not cmgs then
return _d("GQEIUg8")
end

if cmgs.X > -4500 then
return _d("GQEIUg8")
end

local jmnx, hg = _d("FAwLXhINCxAKNVkFDgQbCg"), math.huge

for lze, wl in ipairs(gez.islandAnchors) do
local fdo = math.abs(cmgs.X - wl.x)

if fdo < hg then
jmnx = wl.id
hg = fdo
end
end

return jmnx
end

gez.savedVersion = 2

do
local qws = getgenv().ACBXDeepSpot

if type(qws) == _d("AQ8IXBM") and qws.v == gez.savedVersion
and tonumber(qws.X) and tonumber(qws.Y) and tonumber(qws.Z) then
gez.custom = Vector3.new(tonumber(qws.X), tonumber(qws.Y), tonumber(qws.Z))
gez.customIsland = qws.island
end
end

function gez.spot()
return gez.custom or gez.islandHold
end

function gez.dropStale()
if not gez.custom then
return false
end

if gez.zoneAt(gez.custom) then
return false
end

gez.custom = nil
gez.customIsland = nil
getgenv().ACBXDeepSpot = nil

return true
end

function gez.capture()
local tqjz = pl.Character
local vmbl = tqjz and tqjz:FindFirstChild(_d("PRsHURgNDBE8BV8CMgQHGg"))

if not vmbl then
return false, _d("OwFKUx4DFxQNHlUEQhEaThhVFwZFFE4ZQBkWRRMcBV1Y")
end

local fago = vmbl.Position
local bcfh = gez.floorAt(Vector3.new(fago.X, fago.Y + 10, fago.Z))

if not bcfh then
return false, _d("JhoLXhJCChtOGV8aCwFVCRhfAwwBVQgDQgUWRVhOHlgfEUUGHgVEVgoEBk4EX1YECRoBGBACDUUWDxlEVgQXGgNE")
end

local pwh = gez.zoneAt(fago)

if not pwh then
return false, _d("IQYDQ1YRFRoaSlkFQgoAGhlZEgdFEBgPQg9CAxwdAlkYBUUHBwRXVk9FBhoLXhJCCgMLGBACCgBVGQtEExBFEwcYQwJM")
end

gez.custom = fago
gez.customIsland = gez.islandOf(fago)

getgenv().ACBXDeepSpot = {
X = fago.X,
Y = fago.Y,
Z = fago.Z,
island = gez.customIsland,
v = gez.savedVersion,
}

return true, _d("Jg8cVRJCER0HGRAFEgoBTgtDVhYNEE4OVRMSSAIPHlUEQg0aAg4QXg") .. tostring(pwh.name) .. _d("XEA")
end

function gez.zoneTable()
local aja = {}

if xu and type(xu.Zones) == _d("AQ8IXBM") then
for jv, xaep in ipairs(xu.Zones) do
aja[#aja + 1] = {
id = tostring(xaep.id),
name = tostring(xaep.name or xaep.id),
half = tonumber(xaep.half) or 0,
luck = tonumber(xaep.luck) or 0,
index = tonumber(xaep.index) or 0,
boatTier = tonumber(xaep.boatTier) or 0,
}
end
end

table.sort(aja, function(imln, puix)
return imln.index < puix.index
end)

return aja
end

function gez.zoneAt(glp)
local jpj = xu and xu.ZoneCenter
local raog = gez.zoneTable()

if not (jpj and glp and #raog > 0) then
return nil
end

local ewl = math.max(math.abs(glp.X - jpj.X), math.abs(glp.Z - jpj.Z))

for lxuu, dxaf in ipairs(raog) do
if ewl < dxaf.half then
return dxaf
end
end

return nil
end

function gez.current()
local zlj = pl.Character
local pp = zlj and zlj:FindFirstChild(_d("PRsHURgNDBE8BV8CMgQHGg"))

return pp and gez.zoneAt(pp.Position) or nil
end

function gez.sync()
local urps = gez.current()
zbxg.zoneId = urps and urps.id or nil
end

function gez.floorAt(cav)
local yw = pl.Character
local soez = RaycastParams.new()
soez.FilterType = Enum.RaycastFilterType.Exclude
soez.FilterDescendantsInstances = { yw }

local ydq = workspace:Raycast(Vector3.new(cav.X, cav.Y + 20, cav.Z), Vector3.new(0, -80, 0), soez)

if ydq and ydq.Instance.Name ~= _d("Ig8eVQQ") then
return ydq
end

return nil
end

function gez.ensureSpotMap()
local uify = gez.spot()
local ssbn = Vector3.new(uify.X, uify.Y + 20, uify.Z)

if gez.floorAt(ssbn) then
return true
end

local lsat = workspace:FindFirstChild(_d("OA8aQw"))

if lsat and lsat:FindFirstChild(_d("NgELQwIDCTkBCFIP")) then
if os.clock() - (gez.hopAt or 0) > 1 then
gez.hopAt = os.clock()
gez.hop(uify)
zbxg.lastMessage = _d("OAEcWRgFRQEBSkQeB0URCw9AWxUEAQsYEAUSCgE")
end

return false
end

if os.clock() - (gez.islandAskedAt or 0) > 1.2 then
gez.islandAskedAt = os.clock()

local xhr = gez.customIsland or gez.islandOf(uify)

if xhr == _d("GQEIUg8") then
pcall(function()
gh.TeleportToWorld:FireServer(_d("GQEIUg8"))
end)
else
pcall(function()
gh.FishingIslandTeleport:FireServer(_d("Ag8TQBkLCwE"), xhr)
end)
end

zbxg.lastMessage = _d("IQ8BWRgFRQEGDxARAwgQSRkQAgcJEB4FQgJCERpOHlgTQgEQCxodAQMREBxKXRcS")
end

return false
end

function gez.hop(ujvq)
local dw = pl.Character
local lhap = dw and dw:FindFirstChild(_d("PRsHURgNDBE8BV8CMgQHGg"))
local tedd = dw and dw:FindFirstChildOfClass(_d("PRsHURgNDBE"))

if not (lhap and tedd) then
return false
end

if tedd.SeatPart then
pcall(function()
tedd.Sit = false
end)
end

lhap.AssemblyLinearVelocity = Vector3.zero
lhap.CFrame = CFrame.new(Vector3.new(ujvq.X, ujvq.Y + 8, ujvq.Z))

return true
end

function gez.faceWater()
local dpe = pl.Character
local qvko = dpe and dpe:FindFirstChild(_d("PRsHURgNDBE8BV8CMgQHGg"))

if not qvko then
return false
end

local hohi = thm()

if not hohi then
local slu = xu and xu.ZoneCenter

if slu then
local xt = Vector3.new(slu.X - qvko.Position.X, 0, slu.Z - qvko.Position.Z)

hohi = xt.Magnitude > 1 and xt.Unit or nil
end
end

if not hohi then
return false
end

qvko.CFrame = CFrame.lookAt(qvko.Position, qvko.Position + hohi)

return true
end

function gez.aimWater(qzu)
local fy = pl.Character
local oipy = fy and fy:FindFirstChild(_d("PRsHURgNDBE8BV8CMgQHGg"))

if not oipy then
return false
end

if qzu then
qgv()
end

local jky = oipy.CFrame.LookVector
local voj = Vector3.new(jky.X, 0, jky.Z)
local hwqh = thm()

if not hwqh then
return false
end

if voj.Magnitude > 0.05 and voj.Unit:Dot(hwqh) > 0.985 then
return true
end

oipy.CFrame = CFrame.lookAt(oipy.Position, oipy.Position + hwqh)

return true
end

function gez.hold(hr)
local az = pl.Character
local xosk = az and az:FindFirstChild(_d("PRsHURgNDBE8BV8CMgQHGg"))
local zm = az and az:FindFirstChildOfClass(_d("PRsHURgNDBE"))

if not (xosk and zm) then
return false
end

if zm.SeatPart then
pcall(function()
zm.Sit = false
end)
end

local rlhs = gez.floorAt(hr)

if not rlhs then
return false
end

xosk.AssemblyLinearVelocity = Vector3.zero
xosk.CFrame = CFrame.new(Vector3.new(hr.X, rlhs.Position.Y + 3.2, hr.Z))

pcall(gez.aimWater, true)

zbxg.phase = _d("HAoGVQ")
zbxg.nextCastAt = 0

return true
end

function gez.dive()
local pyx = gez.spot()

if not gez.ensureSpotMap() then
return false
end

if not gez.hold(pyx) then
return false
end

gez.islandAskedAt = 0

local oo = gez.zoneAt(pyx)

zbxg.lastMessage = oo
and (_d("PQEGVB8MAlUaAlVWBgAQHkdHFxYAB04ZQBkWRV0") .. tostring(oo.name) .. _d("XA"))
or _d("PQEGVB8MAlUaAlVWBgAQHkdHFxYAB04ZQBkW")

task.wait(0.25)
gez.sync()
zbxg.deepDiveAt = os.clock() + 2

return true
end

function gez.walk()
local eu = pl.Character
local oraj = eu and eu:FindFirstChild(_d("PRsHURgNDBE8BV8CMgQHGg"))

if gez.walking and os.clock() - (gez.walkStartedAt or 0) < 60 then
return false
end

if not oraj then
return false
end

local gmd = gez.spot()

if (oraj.Position - Vector3.new(gmd.X, oraj.Position.Y, gmd.Z)).Magnitude <= 8 then
zbxg.phase = _d("HAoGVQ")
zbxg.nextCastAt = 0

return true
end

gez.walking = true
gez.walkStartedAt = os.clock()
zbxg.deepPhase = _d("Ag8GWw")
zbxg.deepStageAt = os.clock()
zbxg.lastMessage = _d("Ig8GWx8MAlUaBRACCgBVCg9VBgcWAU4dUQIHF1UdGl8C")

task.spawn(function()
local ss = eu and eu:FindFirstChildOfClass(_d("PRsHURgNDBE"))

local isxe, fkpk = pcall(function()

local ib = workspace:FindFirstChild(_d("OA8aQw"))
local dbf = gez.customIsland or gez.islandOf(gmd)
local ltbo = (oraj.Position - Vector3.new(gmd.X, oraj.Position.Y, gmd.Z)).Magnitude

if ltbo > 400 then
if not (ib and ib:FindFirstChild(_d("NgELQwIDCTkBCFIP"))) then
pcall(function()
gh.TeleportToWorld:FireServer(_d("GQEIUg8"))
end)

local guj = os.clock() + 20

while zbxg.deepWalk and os.clock() < guj do
local fzzc = workspace:FindFirstChild(_d("OA8aQw"))

if fzzc and fzzc:FindFirstChild(_d("NgELQwIDCTkBCFIP")) then
break
end

task.wait(0.5)
end
end

if zbxg.deepWalk then
local nvln = gez.arrivals and gez.arrivals[dbf]

if nvln then
gez.hop(nvln)
else
local xv = Vector3.new(gmd.X - oraj.Position.X, 0, gmd.Z - oraj.Position.Z)
local lncr = xv.Magnitude > 1 and xv.Unit or Vector3.new(1, 0, 0)

gez.hop(Vector3.new(gmd.X - lncr.X * 120, gmd.Y, gmd.Z - lncr.Z * 120))
end

task.wait(1.5)
end
end

if zbxg.deepWalk and ss then

local oqml = (oraj.Position - Vector3.new(gmd.X, oraj.Position.Y, gmd.Z)).Magnitude
local pub = os.clock() + math.clamp(oqml / 8, 30, 600)
local nvv = 0
local gdhw = oraj.Position
local ijgs = os.clock()

while zbxg.deepWalk and os.clock() < pub do
local lk = Vector3.new(gmd.X - oraj.Position.X, 0, gmd.Z - oraj.Position.Z)

if lk.Magnitude <= 3 then
break
end

if os.clock() - nvv >= 0.25 then
ss:MoveTo(Vector3.new(gmd.X, oraj.Position.Y, gmd.Z))
nvv = os.clock()
end

if os.clock() - ijgs >= 1.2 then
if (oraj.Position - gdhw).Magnitude < 2 then
ss.Jump = true
end

gdhw = oraj.Position
ijgs = os.clock()
end

task.wait(0.1)
end

ss:MoveTo(oraj.Position)
end
end)

gez.walking = false

if not isxe then
zbxg.deepPhase = _d("HAoGVQ")
zbxg.deepStageAt = os.clock()
zbxg.lastMessage = _d("Ig8GW1YWClUqD1UGBxYBTj1RAgcXVQgLWRoHAU9O") .. tostring(fkpk)

return
end

if not zbxg.deepWalk then
return
end

local cgz = Vector3.new(oraj.Position.X - gmd.X, 0, oraj.Position.Z - gmd.Z)

if cgz.Magnitude <= 6 then

pcall(gez.aimWater, true)
zbxg.phase = _d("HAoGVQ")
zbxg.nextCastAt = 0
zbxg.deepPhase = _d("HQEGVA")
zbxg.deepStageAt = os.clock()
gez.sync()
zbxg.lastMessage = _d("Ig8GWxMGRQEBSkQeB0UGDxxVEkIBEAsaHQEDERAcSkMGDRE")
else

zbxg.deepPhase = _d("HAoGVQ")
zbxg.deepStageAt = os.clock()
zbxg.lastMessage = _d("NgEfXBJCCxoaSkcXDg5VGgUQAgoAVQoPVQYHFgFOHVECBxdVHRpfAkJIVRoYSR8MAlUPDVEfDA")
end
end)

return false
end

function gez.settle()
for rfh = 1, 30 do
if not zbxg.deepZone or zbxg.deepWalk then
return false
end

if gez.dive() then
return true
end

task.wait(1)
end

return false
end

function gez.surface()
local qqw = pl.Character
local lfz = qqw and qqw:FindFirstChild(_d("PRsHURgNDBE8BV8CMgQHGg"))

if not lfz then
return false
end

local mp = RaycastParams.new()
mp.FilterType = Enum.RaycastFilterType.Exclude
mp.FilterDescendantsInstances = { qqw }

local uw = workspace:Raycast(qkmf + Vector3.new(0, 40, 0), Vector3.new(0, -200, 0), mp)
local gsry = qkmf

if uw and uw.Instance.Name ~= _d("Ig8eVQQ") then
gsry = Vector3.new(qkmf.X, uw.Position.Y + 3, qkmf.Z)
end

lfz.CFrame = CFrame.new(gsry)
zbxg.phase = _d("HAoGVQ")
zbxg.nextCastAt = 0

return true
end

function zbxg.gotoIsland()
local dzbo = pl.Character
local quk = dzbo and dzbo:FindFirstChild(_d("PRsHURgNDBE8BV8CMgQHGg"))
local jcu = workspace:FindFirstChild(_d("PB0GURgGIxwdAlUEDwQbIDpz"), true)

if not (quk and jcu) then
return false
end

local htnp = jcu:GetPivot()
local ndl = RaycastParams.new()
ndl.FilterType = Enum.RaycastFilterType.Exclude
ndl.FilterDescendantsInstances = { dzbo, jcu }

local oug = nil
local xpk = -math.huge

for iyfh, ofie in ipairs({ Vector3.new(0, 0, 6), Vector3.new(6, 0, 0), Vector3.new(0, 0, -6), Vector3.new(-6, 0, 0), Vector3.new(0, 0, 0) }) do
local ev = workspace:Raycast(htnp.Position + ofie + Vector3.new(0, 30, 0), Vector3.new(0, -120, 0), ndl)

if ev and ev.Position.Y > xpk then
oug = ev
xpk = ev.Position.Y
end
end

if oug then
quk.CFrame = CFrame.new(Vector3.new(oug.Position.X, xpk + 3.5, oug.Position.Z))
else
quk.CFrame = CFrame.new(htnp.Position + Vector3.new(0, 4, 0))
end

zbxg.phase = _d("HAoGVQ")
zbxg.nextCastAt = 0

return true
end

function gez.cycle()
local zfv = os.clock()
local mkzi = zbxg.deepPhase or _d("HAoGVQ")
local od = tonumber(zbxg.deepStageAt) or 0

if zfv < math.max(zbxg.shopTripUntil or 0, zbxg.tpHoldUntil or 0) then
return
end

if mkzi == _d("HAoGVQ") then
zbxg.deepPhase = _d("HQEGVA")
zbxg.deepStageAt = zfv

if zbxg.deepWalk then
gez.walk()
else
gez.dive()
end

return
end

if mkzi == _d("Ag8GWw") then
return
end

if mkzi == _d("HQEGVA") then
local mkxt = gez.current()

local qtv = gez.zoneAt(gez.spot())

if mkxt and not pl:GetAttribute(_d("JhkDXRsLCxI")) and zfv - (zbxg.deepAimAt or 0) > 2 then
zbxg.deepAimAt = zfv
pcall(gez.aimWater)
end

if pl:GetAttribute(_d("JhkDXRsLCxI")) then
if zbxg.deepWalk then

zbxg.deepPhase = _d("HAoGVQ")
zbxg.deepStageAt = zfv
else
zbxg.deepPhase = _d("EQca")
zbxg.deepStageAt = zfv
zbxg.lastMessage = _d("JhkDXRsLCxJOC0RWFg0QTg5VExJFBh4FRFZPRQYbGFYXAQARTgxfBEIEHBw")
end
elseif not mkxt or (qtv and mkxt.index < qtv.index) then

zbxg.deepPhase = _d("HAoGVQ")
zbxg.deepStageAt = zfv
end

return
end

if mkzi == _d("EQca") then
gez.surface()
zbxg.deepPhase = _d("BhsYVhcBAA")
zbxg.deepStageAt = zfv

return
end

if mkzi == _d("BhsYVhcBAA") and zfv - od >= gez.surfaceWait then
zbxg.deepPhase = _d("HAoGVQ")
end
end

local function opr()
local fya = pl.Character
local pv = fya and fya:FindFirstChild(_d("PRsHURgNDBE8BV8CMgQHGg"))

if not pv then
return false
end

return (pv.Position - qkmf).Magnitude <= 12
end

local function mfhg()
if not num() then
return false
end

local asg = pcall(function()
gh.FishingSetAuto:FireServer(true)
end)

zbxg.usingGameAuto = asg
return asg
end

local function anno()
zbxg.usingGameAuto = false

pcall(function()
gh.FishingSetAuto:FireServer(false)
end)

pcall(function()
gh.FishingStop:FireServer()
end)
end

function zbxg.recover()
zbxg.phase = _d("HAoGVQ")
zbxg.nextCastAt = 0
zbxg.deepPhase = _d("HAoGVQ")
zbxg.deepStageAt = 0
zbxg.deepDiveAt = 0
zbxg.waterRefusals = 0
zbxg.usingGameAuto = false
zbxg.castMark = zbxg.totalCasts
zbxg.castMarkAt = os.clock()

pcall(anno)
pcall(num)

if zbxg.deepZone and not gez.current() then

pcall(function()
gh.TeleportToWorld:FireServer(_d("GQEIUg8"))
end)
elseif zbxg.tpToBay and not opr() then
pcall(yy)
end

zbxg.lastMessage = _d("MwcZWB8MAlUdHlEaDgARTkcQBAcWEBpKRB4HRQIPHlUEQgQbCkpEGQ0OVRoCVVYFBBgLTUNWDgoXDBMQBA0S")
end

local function eyu()
if not num() then
zbxg.lastMessage = _d("OwFKVh8RDRwADRAEDQFVBwQQAgoAVQwLUx0SBBYF")
return false
end

local dssx = at()
local vcjs = thm()
local ijx = dssx or vcjs

if not ijx then
zbxg.lastMessage = _d("OwFKRxcWAAdODF8DDAFVAA9RBAAc")
return false
end

if dssx and vcjs and dssx:Dot(vcjs) < 0.25 then
ijx = vcjs
end

zbxg.phase = _d("Fg8ZRB8MAg")
zbxg.lastMessage = nil
zbxg.watchdogAt = os.clock() + 25

local dilg, hn = pcall(function()
gh.FishingThrow:FireServer(1, ijx)
end)

if not dilg then
zbxg.phase = _d("HAoGVQ")
zbxg.lastMessage = tostring(hn)
zbxg.nextCastAt = os.clock() + 3
return false
end

return true
end

local ro = gh.FishingUpdate.OnClientEvent:Connect(function(zq, vyan)
zbxg.dirty = true

if zq == _d("JhoLRBM") then
if type(vyan) == _d("AQ8IXBM") then
zbxg.autoOn = vyan.autoOn == true
end

return
end

if zq == _d("Ng8ZRA") then
zbxg.phase = _d("Ag8DRB8MAjcHHlU")
zbxg.waterRefusals = 0
return
end

if zq == _d("NwceVQ") then
local xip = type(vyan) == _d("AQ8IXBM") and tonumber(vyan.warning) or 1

zbxg.phase = _d("BwsPXB8MAg")
zbxg.watchdogAt = os.clock() + 15

task.delay(math.max(0.3, xip + 0.8), function()
if zbxg.phase ~= _d("BwsPXB8MAg") then
return
end

pcall(function()
gh.FishingReel:FireServer(true, 120)
end)

zbxg.phase = _d("BwsZXxoUDBsJ")
end)

return
end

if zq == _d("Ng8eUx4") then

local lmg = type(vyan) == _d("AQ8IXBM") and tonumber(vyan.totalCasts) or nil
local jh = tonumber(getgenv().ACBXFishingCatchMark) or 0

if lmg and lmg <= jh and jh - lmg < 25 then
return
end

if lmg then
getgenv().ACBXFishingCatchMark = lmg
end

local bdva = type(vyan) == _d("AQ8IXBM") and tostring(vyan.itemId) or _d("AAABXhkVCw")
local ip = zbxg.catchName(bdva)

zbxg.catches[bdva] = (zbxg.catches[bdva] or 0) + 1
zbxg.totalCatches = (zbxg.totalCatches or 0) + 1

local cyed = type(vyan) == _d("AQ8IXBM") and vyan.chest or nil

if type(cyed) == _d("AQ8IXBM") and cyed.itemId then
local xzf = tostring(cyed.itemId)

zbxg.catches[xzf] = (zbxg.catches[xzf] or 0) + 1
end

if os.clock() - (cjw.at or 0) >= 5 then
cjw.at = os.clock()
cjw.save()
end
zbxg.lastCatch = ip
zbxg.lastMessage = nil
zbxg.phase = _d("HAoGVQ")
zbxg.nextCastAt = os.clock() + 2.5

if type(vyan) == _d("AQ8IXBM") then
zbxg.casts = tonumber(vyan.casts) or zbxg.casts
zbxg.totalCasts = tonumber(vyan.totalCasts) or zbxg.totalCasts
zbxg.autoUnlocked = vyan.autoUnlocked == true or zbxg.autoUnlocked
end

return
end

if zq == _d("NBseXzkEAw") then

zbxg.usingGameAuto = false
zbxg.phase = _d("HAoGVQ")
zbxg.nextCastAt = os.clock() + 1
return
end

if zq == _d("MB0JUQYHAQ") then
zbxg.phase = _d("HAoGVQ")
zbxg.lastMessage = _d("IQYPEBALFh1ODV8CQgQCDxM")
zbxg.nextCastAt = os.clock() + 2.5
return
end

if zq == _d("JwsAVRUWABE") then
zbxg.phase = _d("HAoGVQ")

local av = type(vyan) == _d("AQ8IXBM") and tostring(vyan.message) or _d("Ng8ZRFYQAB8LCUQTBg")
zbxg.lastMessage = av

if av:lower():find(_d("Ag8eVQQ"), 1, true) then
zbxg.waterRefusals = (zbxg.waterRefusals or 0) + 1

if zbxg.waterRefusals >= 2 then
zbxg.waterRefusals = 0

if yxq() then
zbxg.lastMessage = _d("JwsMRQUHAVUaHVkVB0VYTh5FBAwAEU4IURUJRQEBHVEEBkUBBg8QAQMREBw")
zbxg.nextCastAt = os.clock() + 1.5
return
end
end

zbxg.nextCastAt = os.clock() + 8
return
end

zbxg.waterRefusals = 0
zbxg.nextCastAt = os.clock() + 3
return
end
end)

local function nw()
if not zbxg.loaded then
return _d("JwsLVB8MAlUIA0MeCwsSThlEFxYAW0BE")
end

local dn = zbxg.autoUnlocked == true
or (zbxg.totalCasts or 0) > 0
or (zbxg.tutorialStep or 0) > 0
local csd = xu and xu.RodsById and xu.RodsById[zbxg.rod]
local jn = csd and tostring(csd.name) or tostring(zbxg.rod)
local dyw = math.floor((tonumber(zbxg.luck) or 0) * 100 + 0.5)

local lrqn = {
_d("JwEOClY") .. jn,
_d("ORsJW0xC") .. dyw .. _d("UA"),
}

local cba = gez.current()

if cba then
table.insert(lrqn, _d("LwEEVUxC") .. cba.name .. _d("VUZB") .. tostring(math.floor(cba.luck * 100 + 0.5)) .. _d("UE4GRRUJTA"))
end

table.insert(lrqn, _d(""))
table.insert(lrqn, _d("Ng8ZRAVCERpOGUATDAFPTg") .. pstf(zbxg.casts or 0))
table.insert(lrqn, _d("IQEeURpCBhQdHkNMQg") .. pstf(zbxg.totalCasts or 0))

table.insert(lrqn, _d(""))
table.insert(lrqn, _d("MwcZWB8MAlUbBFwZAQ4QClAQ") .. (dn and _d("DAsZ") or _d("GwE")))
table.insert(lrqn, _d("NBseX1sEDAYGSkUGBRcUCg8KVg") .. (zbxg.autoUnlocked and _d("GhkEVRI") or _d("GwEeEBkVCxAK")))

if zbxg.enabled then
local mllt = zbxg.usingGameAuto and _d("Eg8HVVYDEAEB") or tostring(zbxg.phase)

if mllt == _d("Ag8DRB8MAjcHHlU") then
mllt = _d("Ag8DRB8MAlUIBUJWA0UXBx5V")
elseif mllt == _d("BwsPXB8MAg") then
mllt = _d("BwsPXB8MAlUHBA")
elseif mllt == _d("BwsZXxoUDBsJ") then
mllt = _d("GQ8EVB8MAlUHHg")
end

table.insert(lrqn, _d(""))
table.insert(lrqn, _d("NBseX1YkDAYGUBA") .. mllt)

local fcr = tnt.worldBoss

if fcr and type(fcr.hasWork) == _d("ExsEUwILChs") and fcr.enabled and fcr.hasWork() then
table.insert(lrqn, _d("PQEGVB8MAk9ODVwZAAQZTghfBRFFHB1KRQZCTQcLGUUbBxZVAQQQHxYWVQ0FXxoGCgIAQw"))
end

if zbxg.lastCatch then
table.insert(lrqn, _d("OQ8ZRFYBBAENAgpW") .. zbxg.lastCatch)
end
end

if zbxg.lastMessage then
table.insert(lrqn, _d(""))
table.insert(lrqn, _d("OwEeVUxC") .. zbxg.lastMessage)
end

return table.concat(lrqn, _d("fw"))
end

local function ix()
local jpqw = 0

for gfug, cdh in pairs(zbxg.catches) do
local bdb = mw.ById[gfug]

if not (bdb and bdb.type == _d("FgYPQwI")) then
jpqw = jpqw + cdh
end
end

return jpqw
end

local function ai()
local ww = {}

for rj, omce in pairs(zbxg.catches) do
local xzwh = mw.ById[rj]
local quos = xzwh and xzwh.type == _d("FgYPQwI") or false

table.insert(ww, {
name = zbxg.catchName(rj),
count = omce,
chest = quos,
rank = quos and (tonumber(xzwh.border) or 1) or 0,
})
end

if #ww == 0 then
return _d("OwEeWB8MAlUNC0URChFVFw9EWGhvIRsYXlYNC1UvH0QZQiMcHQIQFwwBVRoCVVYWBBkCExAFFgQHGhkQHgcXEEBKeQJCFhQYD0NWCxEGCwZWWkIWGk4DRFYBBAccA1UFQgoDCxgQGAcdAU4ZVQURDBoARA")
end

table.sort(ww, function(gc, wkh)
if gc.chest ~= wkh.chest then
return gc.chest
end

if gc.chest and gc.rank ~= wkh.rank then
return gc.rank > wkh.rank
end

if gc.count ~= wkh.count then
return gc.count > wkh.count
end

return gc.name < wkh.name
end)

local xf = {}

for idnx, qoh in ipairs(ww) do
table.insert(xf, qoh.name .. _d("VYzqpFY") .. pstf(qoh.count))
end

local rhaf = {
table.concat(xf, _d("f2Q")),
_d(""),
_d("IQEeURpCBhQbDVgCWEU") .. pstf(ix()) .. _d("VazdEA") .. #ww .. _d("VQUDXhIR"),
}

if zbxg.lastCatch then
table.insert(rhaf, _d("OQ8ZRFYBBAENAgpW") .. tostring(zbxg.lastCatch))
end

return table.concat(rhaf, _d("fw"))
end

local cmx = {
rod = Vector3.new(-493, 18, -40254),
bait = Vector3.new(-493, 18, -40254),
}

local function dzd(on)
if not xu then
return {}
end

local rjgz

if on == _d("BwEO") then
rjgz = xu.RodsById
elseif on == _d("Fw8DRA") then
rjgz = xu.BaitsById
else
rjgz = nil
end

local mgjn = {}

for vxs, er in pairs(rjgz or {}) do
if not er.crafted then
table.insert(mgjn, {
id = tostring(vxs),
name = tostring(er.name or vxs),
cost = tonumber(er.cost) or 0,
luck = tonumber(er.luck) or 0,
index = tonumber(er.index) or 0,
island = er.shop == _d("HB0GURgG"),
})
end
end

table.sort(mgjn, function(qa, sa)
if qa.index ~= sa.index then
return qa.index < sa.index
end

return qa.cost < sa.cost
end)

return mgjn
end

local function osrf(jueb)
if jueb == _d("BwEO") then
return zbxg.rodsOwned or {}
elseif jueb == _d("Fw8DRA") then
return zbxg.baitsOwned or {}
end

return {}
end

local function hrgk(pbq)
if pbq == _d("BwEO") then
return zbxg.rod
elseif pbq == _d("Fw8DRA") then
return zbxg.equippedBait
end

return nil
end

local function sqn(gmx)
local kuff = osrf(gmx)
local nth = nil

for lgrd, ujw in ipairs(dzd(gmx)) do
if kuff[ujw.id] == true then
nth = ujw
end
end

return nth
end

local function waku(gd)
if gd.island and zbxg.islandLocked then
return false
end

return true
end

local function cqhb(jo)
local noki = osrf(jo)
local kft = zbxg.casts or 0
local llei = nil

for tjg, ux in ipairs(dzd(jo)) do
if noki[ux.id] ~= true and ux.cost <= kft and waku(ux) then
llei = ux
end
end

return llei
end

local function udai(khh)
local uim = osrf(khh)

for id, oxfh in ipairs(dzd(khh)) do
if uim[oxfh.id] ~= true and waku(oxfh) then
return oxfh
end
end

return nil
end

local function mv(eraz, bo)
if not bo then
return _d("GwEEVVYNEhsLDg")
end

return bo.name .. _d("VUZB") .. tostring(math.floor(bo.luck * 100 + 0.5)) .. _d("UE4GRRUJTA")
end

local function qlqn()
if not xu then
return _d("MwcZWB8MAjEPHlFWDAoBTgxfAwwBVUNKQx4NFVUKC0QXQhAbDxxRHw4EFwIPHg")
end

local wed = {}
local sr = { rod = _d("JwEO"), bait = _d("Nw8DRA") }

for mpuf, lvv in ipairs({ _d("BwEO"), _d("Fw8DRA") }) do
local oc = sqn(lvv)
local xwn = nil

for clm, eogy in ipairs(dzd(lvv)) do
if eogy.id == hrgk(lvv) then
xwn = eogy.name
end
end

if #wed > 0 then
table.insert(wed, _d(""))
end

table.insert(wed, sr[lvv] .. _d("T04") .. mv(lvv, oc))
table.insert(wed, _d("OgBKXhkVX1U") .. (xwn or _d("GwEEVQ")))

local dvcd = cqhb(lvv) or udai(lvv)

if dvcd then
local ues = dvcd.cost - (zbxg.casts or 0)

table.insert(wed, _d("OwsSRExC") .. dvcd.name .. _d("VazdEA") .. pstf(dvcd.cost) .. _d("VQ0LQwIR"))

if ues > 0 then
table.insert(wed, _d("OwsPVFY") .. pstf(ues) .. _d("VQMFQhM"))
end
else
table.insert(wed, _d("OwsSRExCAAMLGEkCCgwbCUpfAQwAEQ"))
end
end

table.insert(wed, _d(""))
table.insert(wed, _d("Ng8ZRAVCERpOGUATDAFPTg") .. pstf(zbxg.casts or 0))

if zbxg.shopMessage then
table.insert(wed, _d(""))
table.insert(wed, zbxg.shopMessage)
end

return table.concat(wed, _d("fw"))
end

local function wdh(gbji, eur)
local xvo = os.clock()

if xvo < (zbxg.shopCallAt or 0) then
return false, _d("BgIFRw")
end

zbxg.shopCallAt = xvo + 1.4

local qjyt, bf, rfq, bi = pcall(function()
return gh.FishingShop:InvokeServer(gbji, eur)
end)

if not qjyt then
return false, _d("EBwYXwRC") .. tostring(bf)
end

sedr(bi)

if bf == true then
return true, nil
end

return false, tostring(rfq or _d("BwsMRQUHAQ"))
end

function zbxg.rebirthCardsHeld()
local kboz = xu and type(xu.RebirthCards) == _d("AQ8IXBM") and #xu.RebirthCards or 0

if kboz == 0 then
return 0, 0
end

local rkmm = 0

for ke, fakr in ipairs(xu.RebirthCards) do
if zbxg.rebirthCards[fakr.cardId] then
rkmm = rkmm + 1
end
end

return rkmm, kboz
end

function zbxg.rebirthReady()
local kteg, kcbs = zbxg.rebirthCardsHeld()

return kcbs > 0 and kteg >= kcbs and (tonumber(zbxg.rebirths) or 0) < 1
end

function zbxg.rebirthText()
local msd, kvr = zbxg.rebirthCardsHeld()

if kvr == 0 then
return _d("MwcZWB8MAlUKC0QXQgsaGkpcGQMBEApGEAUNRQcLCFkEFg1VBxkQAwwEAw8DXBcACRBA")
end

if (tonumber(zbxg.rebirths) or 0) >= 1 then
return _d("JwsIWQQWDRAKRBAiCgBVLwhRGAYKGwsOED8RCRQADhAfEUUaHg9eWA")
end

if msd >= kvr then
return _d("NAIGEA") .. kvr .. _d("VQ0LQhIRRRMHGVgTBktVPA9REhtFAQFKQhMADAcaAh4")
end

local gvqb = {}

for klf, zccj in ipairs(xu.RebirthCards) do
if not zbxg.rebirthCards[zccj.cardId] then
table.insert(gvqb, (string.gsub(zccj.cardId, _d("KwgDQx49"), _d(""))))
end
end

return msd .. _d("Wg") .. kvr .. _d("VQ0LQhIRS1U9HlkaDkUbCw9UVg") .. table.concat(gvqb, _d("WU4")) .. _d("Ww")
end

local function lomy(rcd)
local gm = pl.Character
local kqys = gm and gm:FindFirstChild(_d("PRsHURgNDBE8BV8CMgQHGg"))

if not kqys then
return false
end

return (kqys.Position - (cmx[rcd] or cmx.rod)).Magnitude <= 26
end

local function nxi(zj)
if lomy(zj) then
return true
end

local eifm = pl.Character
local mb = eifm and eifm:FindFirstChild(_d("PRsHURgNDBE8BV8CMgQHGg"))

if not mb then
return false
end

local ts = cmx[zj] or cmx.rod
zbxg.shopTripUntil = os.clock() + 12
zbxg.shopHoldUntil = os.clock() + 12

pcall(function()
mb.CFrame = CFrame.new(ts)
end)

task.wait(1.2)

return lomy(zj)
end

local function wkqi(itnr, xktv, dpi)
if not dpi then
return false
end

if (zbxg.casts or 0) < dpi.cost then
return false
end

if not nxi(itnr) then
zbxg.shopMessage = _d("NgEfXBJCCxoaSkITAwYdTh5YE0IWHQEaEBANF1U") .. dpi.name
return false
end

local io, vp = wdh(xktv, dpi.id)

if not io then
local xzp = tostring(vp)
local ptwq = xzp:find(_d("IQ8GW1YWClUaAlVWJAwGBg9CGwML"), 1, true) or xzp:find(_d("NwELRFYmABQCD0I"), 1, true)

if ptwq then

zbxg.shopMessage = _d("Ig8GWx8MAlUbGhACDUUBBg8QFQ0QGxoPQlYECgdO") .. dpi.name
return false
end

if vp ~= _d("BgIFRw") then
zbxg.shopAt = os.clock() + 15
zbxg.shopMessage = _d("JgsYRhMQRQcLDEUFBwFV") .. dpi.name .. _d("VUY") .. xzp .. _d("XA")
end

return false
end

zbxg.shopMessage = _d("NwEfVx4WRQ") .. dpi.name

return true
end

local function iei(xe)
local feng = sqn(xe)

if not feng or hrgk(xe) == feng.id then
return false
end

local xpbl

if xe == _d("BwEO") then
xpbl = _d("MB8fWQYwChE")
elseif xe == _d("Fw8DRA") then
xpbl = _d("MB8fWQYgBBwa")
else
return false
end

local eol, tzb = wdh(xpbl, feng.id)

if not eol then
if tzb ~= _d("BgIFRw") then
zbxg.shopMessage = _d("NgEfXBJCCxoaSlUHFwwFTg") .. feng.name .. _d("VUY") .. tostring(tzb) .. _d("XA")
end

return false
end

if xe == _d("BwEO") then
zbxg.rod = feng.id
elseif xe == _d("Fw8DRA") then
zbxg.equippedBait = feng.id
else
return false
end

zbxg.shopMessage = _d("MB8fWQYSABFO") .. feng.name

return true
end

local function sejm()
local cvg = zbxg.shop

if os.time() - (zbxg.lastSync or 0) >= 5 then
aa()
end

if cvg.equipRod then
iei(_d("BwEO"))
end

if cvg.equipBait then
iei(_d("Fw8DRA"))
end

if cvg.autoBuyRod then
wkqi(_d("BwEO"), _d("NxsTYhkG"), cqhb(_d("BwEO")))
end

if cvg.autoBuyBait then
wkqi(_d("Fw8DRA"), _d("NxsTchcLEQ"), cqhb(_d("Fw8DRA")))
end
end

local function ffjw()
local yq = zbxg.shop

return yq.autoBuyRod or yq.autoBuyBait or yq.equipRod or yq.equipBait
end

zbxg.shopIsland = {
rods = function()
local bamb = xu and xu.RodsById or {}
local lcms = {}

for swge, lar in pairs(bamb) do
if tostring(lar.shop) == _d("HB0GURgG") then
table.insert(lcms, {
id = tostring(swge),
name = tostring(lar.name or swge),
cost = tonumber(lar.cost) or 0,
luck = tonumber(lar.luck) or 0,
index = tonumber(lar.index) or 0,
crafted = lar.crafted == true,
})
end
end

table.sort(lcms, function(ipd, fsz)
return ipd.index < fsz.index
end)

return lcms
end,

angler = function()
local tvlo = workspace:FindFirstChild(_d("Oz4pQw"), true)

if not tvlo then
return nil
end

for qz, ze in ipairs(tvlo:GetChildren()) do
if ze:GetAttribute(_d("JgsJQhMWJBsJBlUELDU2")) then
return ze
end
end

return nil
end,
held = function(rahe)
return (zbxg.rodsOwned or {})[rahe] == true
end,
recipeHeld = function(tptc)
for go, rcrw in ipairs(tptc or {}) do
local de = tonumber((zbxg.mats or {})[rcrw.id]) or 0

if de < (tonumber(rcrw.count) or 0) then
return false
end
end

return true
end,
recipeText = function(eaxb)
local szk = {}

for xi, came in ipairs(eaxb or {}) do
local eyx = tonumber((zbxg.mats or {})[came.id]) or 0
local izv = (mw.ById[came.id] and mw.ById[came.id].name) or tostring(came.id)

table.insert(szk, izv .. _d("VQ") .. pstf(eyx) .. _d("Wg") .. pstf(tonumber(came.count) or 0))
end

return table.concat(szk, _d("VazdEA"))
end,

stand = function(oeh)
local frvq = pl.Character
local age = frvq and frvq:FindFirstChild(_d("PRsHURgNDBE8BV8CMgQHGg"))

if not (age and oeh) then
return false
end

local nl = oeh:GetPivot()
local tpy = oeh:FindFirstChild(_d("PRsHURgNDBE8BV8CMgQHGg")) or oeh:FindFirstChildWhichIsA(_d("Nw8ZVSYDFwE"), true)
local wcnz = tpy and (tpy.CFrame * CFrame.new(0, 0, -5)).Position or nil

if not wcnz then
local zgir = RaycastParams.new()
zgir.FilterType = Enum.RaycastFilterType.Exclude
zgir.FilterDescendantsInstances = { frvq, oeh }

local sqz = nil
local nh = math.huge

for jhte, bdnx in ipairs({ Vector3.new(0, 0, 6), Vector3.new(6, 0, 0), Vector3.new(0, 0, -6), Vector3.new(-6, 0, 0), Vector3.new(0, 0, 0) }) do
local udkm = workspace:Raycast(nl.Position + bdnx + Vector3.new(0, 30, 0), Vector3.new(0, -140, 0), zgir)

if udkm and tostring(udkm.Instance.Name) ~= _d("Ig8eVQQ") and udkm.Position.Y <= nl.Position.Y + 10 then
local bghi = math.abs(udkm.Position.Y - nl.Position.Y)

if bghi < nh then
sqz = udkm
nh = bghi
end
end
end

wcnz = sqz and Vector3.new(sqz.Position.X, sqz.Position.Y + 3.5, sqz.Position.Z) or (nl.Position + Vector3.new(0, 4, 0))
end

zbxg.shopTripUntil = os.clock() + 12

zbxg.islandTripUntil = os.clock() + 12

pcall(function()
age.CFrame = CFrame.new(wcnz)
end)

task.wait(1.2)

return true
end,
atIsland = function()
local ltid = workspace:FindFirstChild(_d("PB0GURgGIxwdAlUEDwQbIDpz"), true)
local kdq = pl.Character
local gxmk = kdq and kdq:FindFirstChild(_d("PRsHURgNDBE8BV8CMgQHGg"))

if not (ltid and gxmk) then
return false
end

return (gxmk.Position - ltid:GetPivot().Position).Magnitude <= 45
end,
toIsland = function()
if zbxg.shopIsland.atIsland() then
return true
end

zbxg.shopTripUntil = os.clock() + 12

if not zbxg.gotoIsland() then
return false
end

task.wait(1.2)

return zbxg.shopIsland.atIsland()
end,

craftExcalibur = function()
local lz = zbxg.shopIsland.angler()

if not lz or zbxg.shopIsland.held(_d("BwEObwUHBgcLHg")) then
return false
end

if not zbxg.shopIsland.recipeHeld(xu and xu.SecretRecipe) then
return false
end

zbxg.shopIsland.stand(lz)

local ntz, hvaf = wdh(_d("NhwLVgIwChE"), _d("BwEObwUHBgcLHg"))

if ntz then
zbxg.rod = _d("BwEObwUHBgcLHg")
zbxg.islandMessage = _d("NhwLVgIHAVUaAlVWJx0WDwZZFBcXVRwFVFYDEVUaAlVWKgwRCg9eViMLEgIPQg")
elseif hvaf ~= _d("BgIFRw") then
zbxg.islandMessage = _d("PQcOVBMMRTQADVwTEEUHCwxFBQcBVRoCVVYnHRYPBlkUFxdVRg") .. tostring(hvaf) .. _d("XA")
end

return ntz
end,
buyRod = function()
if zbxg.islandLocked then
return false
end

local awun = zbxg.rodsOwned or {}
local na = nil

for wzn, tks in ipairs(zbxg.shopIsland.rods()) do
if not tks.crafted
and awun[tks.id] ~= true
and tks.cost <= (zbxg.casts or 0)
and (na == nil or tks.index > na.index) then
na = tks
end
end

if not na then
return false
end

if not zbxg.shopIsland.toIsland() then
zbxg.islandMessage = _d("NgEfXBJCCxoaSkITAwYdTh5YE0IMBgILXhJCBhobBEQTEA")
return false
end

local qttv, shdk = wdh(_d("NxsTYhkG"), na.id)

if qttv then
zbxg.islandMessage = _d("NwEfVx4WRQ") .. na.name
elseif shdk ~= _d("BgIFRw") then
local gvr = tostring(shdk)

if not (gvr:find(_d("IQ8GW1YWCg"), 1, true) or gvr:find(_d("PB0GURgGAAc"), 1, true)) then
zbxg.islandAt = os.clock() + 15
zbxg.islandMessage = _d("JgsYRhMQRQcLDEUFBwFV") .. na.name .. _d("VUY") .. gvr .. _d("XA")
end
end

return qttv
end,
craftBoot = function()
if zbxg.boot.owned or zbxg.islandLocked then
return false
end

if not zbxg.shopIsland.recipeHeld(xu and xu.BootRecipe) then
return false
end

if not zbxg.shopIsland.toIsland() then
zbxg.islandMessage = _d("NgEfXBJCCxoaSkITAwYdTh5YE0IMBgILXhJCBhobBEQTEA")
return false
end

local bkuu, ilgu = wdh(_d("NhwLVgIgChoa"))

if bkuu then
zbxg.boot.owned = true
zbxg.islandMessage = _d("NhwLVgIHAVUaAlVWLgASCwRUFxAcVSwFXwI")
elseif ilgu ~= _d("BgIFRw") then
zbxg.islandMessage = _d("PB0GURgGRTMHGVgTEAgUAEpCEwQQBgsOEAIKAFUMBV8CQk0") .. tostring(ilgu) .. _d("XA")
end

return bkuu
end,
best = function()
local jggj = zbxg.rodsOwned or {}
local cxet = nil

for oqmg, zi in ipairs(zbxg.shopIsland.rods()) do
if jggj[zi.id] == true and (cxet == nil or zi.luck > cxet.luck) then
cxet = zi
end
end

return cxet
end,

equipRod = function()
local qi = zbxg.shopIsland.best()

if not qi or zbxg.rod == qi.id then
return false
end

local zkdc, faj = wdh(_d("MB8fWQYwChE"), qi.id)

if zkdc then
zbxg.rod = qi.id
zbxg.islandMessage = _d("MB8fWQYSABFO") .. qi.name
elseif faj ~= _d("BgIFRw") then
zbxg.islandMessage = _d("NgEfXBJCCxoaSlUHFwwFTg") .. qi.name .. _d("VUY") .. tostring(faj) .. _d("XA")
end

return zkdc
end,
equipBoot = function()
if not zbxg.boot.owned or zbxg.boot.equipped then
return false
end

local coc, oqp = wdh(_d("MB8fWQYgChoa"), true)

if coc then
zbxg.boot.equipped = true
zbxg.islandMessage = _d("MB8fWQYSABFOHlgTQikQCQ9eEgMXDE4oXxkW")
elseif oqp ~= _d("BgIFRw") then
zbxg.islandMessage = _d("NgEfXBJCCxoaSlUHFwwFTh5YE0IHGgEeEF4") .. tostring(oqp) .. _d("XA")
end

return coc
end,
active = function()
local gymf = zbxg.island

return gymf.autoRod or gymf.equipRod or gymf.autoAcc or gymf.equipAcc
end,
run = function()
local um = zbxg.island

if os.time() - (zbxg.lastSync or 0) >= 8 then
aa()
end

local sq = false

if um.autoRod then
sq = zbxg.shopIsland.craftExcalibur()
end

if um.equipRod then
zbxg.shopIsland.equipRod()
end

if um.autoRod and not sq then
zbxg.shopIsland.buyRod()
end

if um.autoAcc then
zbxg.shopIsland.craftBoot()
end

if um.equipAcc then
zbxg.shopIsland.equipBoot()
end
end,
text = function()
if not xu then
return _d("MwcZWB8MAjEPHlFWDAoBTgxfAwwBVUNKRB4HRRwdBlEYBkUGBgVAVgsWVRsEUQADDBkPCFwTTA")
end

local slk = {}
local adjd = zbxg.rodsOwned or {}

table.insert(slk, zbxg.islandLocked and _d("NAwLXhINCxAKSnkFDgQbCkpZBUIJGg0BVRJCSFUcD1IfEBEdTgxZBBERWw") or _d("NAwLXhINCxAKSnkFDgQbCkpZBUIKBQsEHg"))

for git, rg in ipairs(zbxg.shopIsland.rods()) do
local dv

if adjd[rg.id] == true then
dv = zbxg.rod == rg.id and _d("GhkEVRJCp8JOBV5WDAoC") or _d("GhkEVRI")
elseif rg.crafted then
dv = _d("PQcOVBMMRTQADVwTEEUHCwlZBgc")
else
dv = pstf(rg.cost) .. _d("VQ0LQwIR")
end

table.insert(slk, rg.name .. _d("VYzqpFY") .. dv)
end

table.insert(slk, _d(""))

if adjd.rod_secret then
table.insert(slk, _d("MBYJURoLBwAcUBAZFQsQCg"))
else
local zqtd = zbxg.shopIsland.recipeHeld(xu.SecretRecipe)

table.insert(slk, _d("MBYJURoLBwAcUBA") .. (zqtd and _d("BwsJWQYHRQcLC1QP") or _d("BwsJWQYHRQYGBUIC")))
table.insert(slk, zbxg.shopIsland.recipeText(xu.SecretRecipe))
end

table.insert(slk, _d("PQcOVBMMRTQADVwTEF9V") .. (zbxg.shopIsland.angler() and _d("AB5KXhkV") or _d("GwEeEB4HFxA")))
table.insert(slk, _d(""))

local ivux = zbxg.boot
local ssvv

if ivux.equipped then
ssvv = _d("OQsNVRgGBAcXSnIZDRFPTg9BAwsVBQsO")
elseif ivux.owned then
ssvv = _d("OQsNVRgGBAcXSnIZDRFPTgVHGAcB")
elseif zbxg.shopIsland.recipeHeld(xu.BootRecipe) then
ssvv = _d("OQsNVRgGBAcXSnIZDRFPThhVFQsVEE4YVRcGHA")
else
ssvv = _d("OQsNVRgGBAcXSnIZDRFPTg") .. zbxg.shopIsland.recipeText(xu.BootRecipe)
end

table.insert(slk, ssvv)
table.insert(slk, _d("Ng8ZRAVCERpOGUATDAFPTg") .. pstf(zbxg.casts or 0))

if zbxg.islandMessage then
table.insert(slk, _d(""))
table.insert(slk, zbxg.islandMessage)
end

return table.concat(slk, _d("fw"))
end,
}

task.spawn(function()
aa()
end)

local kvd = {
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

getgenv().ACBXAutoBuyHalloween = kvd

gh.SyncItems.OnClientEvent:Connect(function(gssg)
if type(gssg) == _d("AQ8IXBM") then
kvd.balances = gssg
kvd.lastSync = os.time()
end
end)

gh.RequestItemSync:FireServer()

gh.RaidShopState.OnClientEvent:Connect(function(zrk)
if type(zrk) == _d("AQ8IXBM") and zrk.shopId == _d("HQ8GXBkVABAA") then
kvd.shopState = zrk
kvd.stateAt = os.clock()
end
end)

gh.RaidNotify.OnClientEvent:Connect(function(xzh)
local ydth = kvd.pending

if not ydth or type(xzh) ~= _d("BhoYWRgF") then
return
end

if xzh:sub(1, 9) == _d("JTs4cz4jNjAq") then
kvd.purchased[ydth.id] = (kvd.purchased[ydth.id] or 0) + 1
kvd.pending = nil
else
if kvd.balances[ydth.currency] then
kvd.balances[ydth.currency] = kvd.balances[ydth.currency] + ydth.price
end

kvd.failedUntil[ydth.id] = os.time() + 5
kvd.pending = nil
end
end)

pges.trip = {
untilAt = 0,
lastTry = 0,
lastResult = nil,
spot = nil,
}

function pges.merchant()
local zp = workspace:FindFirstChild(_d("Oz4pQw"))
local fs = pges.shopData and pges.shopData.NpcName or _d("JRsHQB0LC1UjD0IVCgQbGg")

return zp and zp:FindFirstChild(fs) or nil
end

function pges.stand()
local wah = pges.merchant()
local asrw = wah and (wah:FindFirstChild(_d("PRsHURgNDBE8BV8CMgQHGg")) or wah:FindFirstChildWhichIsA(_d("Nw8ZVSYDFwE")))
local jvig = pl.Character
local yxzp = jvig and jvig:FindFirstChild(_d("PRsHURgNDBE8BV8CMgQHGg"))

if not (asrw and yxzp) then
return false
end

pges.trip.spot = asrw.Position + Vector3.new(0, 3, 4)
yxzp.AssemblyLinearVelocity = Vector3.zero
yxzp.CFrame = CFrame.new(pges.trip.spot)

return true
end

function pges.fresh()
return kvd.shopState ~= nil and os.clock() - kvd.stateAt < 30
end

function pges.guiOpen()
local qqet = zl:FindFirstChild(_d("PQ8GXBkVABAAOVgZEiIABw"))
local pht = qqet and qqet:FindFirstChild(_d("JgYFQDAQBBgL"))

if pht then
return pht.Visible == true
end

for etta, znrg in ipairs(zl:GetChildren()) do
if znrg:IsA(_d("Jg0YVRMMIgAH")) and znrg.Name:lower():find(_d("HQ8GXBkVABAA"), 1, true) and znrg.Enabled then
return true
end
end

return false
end

function pges.close()
local qhj = zl:FindFirstChild(_d("PQ8GXBkVABAAOVgZEiIABw"))
local ju = qhj and qhj:FindFirstChild(_d("JgYFQDAQBBgL"))

if not (ju and ju.Visible) then
return false
end

local esaf = ju:FindFirstChild(_d("NgIFQxMgEAEaBV4"))

if not esaf then
for lmwq, rt in ipairs(ju:GetDescendants()) do
if rt:IsA(_d("MhsDcgMWERoA")) and tostring(rt.Name):lower():find(_d("FgIFQxM"), 1, true) then
esaf = rt
break
end
end
end

if esaf and type(firesignal) == _d("ExsEUwILChs") then
pcall(function()
firesignal(esaf.MouseButton1Click)
end)

task.wait(0.3)

if not ju.Visible then
return true
end
end

pcall(function()
ju.Visible = false
end)

return true
end

function pges.spend()
if kvd.pending or os.time() - (kvd.lastAttempt or 0) < 1 then
return nil
end

local xrqe = kvd.shopState

for nwo, ubwt in ipairs(pges.shopItems) do
if kvd.selected[ubwt.id] and os.time() >= (kvd.failedUntil[ubwt.id] or 0) then
local okgf = ubwt.stock
local ey = kvd.purchased[ubwt.id] or 0

if xrqe and xrqe.stocks and xrqe.stocks[ubwt.id] then
okgf = xrqe.stocks[ubwt.id]
end

if xrqe and xrqe.bought then
ey = math.max(ey, xrqe.bought[ubwt.id] or 0)
end

local ava = okgf and (okgf - ey) or 1
local mcb = kvd.balances[ubwt.currency] or 0

if ava > 0 and mcb >= ubwt.price then
kvd.pending = {
id = ubwt.id,
price = ubwt.price,
currency = ubwt.currency,
at = os.time(),
}
kvd.lastAttempt = os.time()
kvd.balances[ubwt.currency] = mcb - ubwt.price

pcall(function()
gh.BuyRaidItem:FireServer(ubwt.id, 1)
end)

return ubwt.id
end
end
end

return nil
end

function pges.open(wj)
if not wj and pges.fresh() then
return true
end

if not wj and os.clock() < (pges.trip.lastTry or 0) + 8 then
return false
end

pges.trip.lastTry = os.clock()
pges.trip.untilAt = os.clock() + 12

zbxg.shopTripUntil = os.clock() + 12
zbxg.shopHoldUntil = os.clock() + 12
zbxg.phase = _d("HAoGVQ")

local ch = pges.merchant()
local wqxa = ch and ch:FindFirstChild(_d("JRwFSB8PDAEXOkIZDxUB"))

if not (ch and wqxa) then
zbxg.deepPhase = _d("HAoGVQ")
pges.trip.untilAt = os.clock() + 60
pges.trip.lastResult = _d("IQYPECYXCAUFA15WLwAHDQJRGBZFHB1KXhkWRRwASkQeCxZVDB9ZGgZL")

return false
end

local ruxr = os.clock() + 3
local nn = 0

while os.clock() < ruxr do

pges.stand()

if os.clock() >= nn then
nn = os.clock() + 0.8

if type(fireproximityprompt) == _d("ExsEUwILChs") then
pcall(function()
fireproximityprompt(wqxa)
end)
end

pcall(function()
gh.OpenRaidShop:FireServer(_d("HQ8GXBkVABAA"))
end)
end

if pges.guiOpen() or pges.fresh() then
break
end

task.wait(0.1)
end

if not (pges.guiOpen() or pges.fresh()) then

zbxg.deepPhase = _d("HAoGVQ")
pges.trip.untilAt = os.clock() + 60
pges.trip.lastResult = _d("IQYPEBUNEBsaD0JWBgwRTgRfAkIEGx0dVQRCSFUHHhAZDAkMTgVAEwwWVQcEEAIKAFUdD1EFDQsUAkpRBAcEWw")

return false
end

pges.trip.lastResult = _d("NgEfXgIHF1UBGlUYTA")

for rcc = 1, 3 do
pges.stand()

if not pges.spend() then
break
end

task.wait(1.2)
end

pcall(pges.close)

zbxg.deepPhase = _d("HAoGVQ")

return true
end

local function buu(xr)
xr = math.max(0, math.floor(xr))
local om = math.floor(xr / 3600)
local jx = math.floor((xr % 3600) / 60)
local hiks = xr % 60

if om > 0 then
return string.format(_d("UAoCEFNSVxED"), om, jx)
elseif jx > 0 then
return string.format(_d("UAoHEFNSVxEd"), jx, hiks)
end

return string.format(_d("UAoZ"), hiks)
end

local function ft()
local ohc = zl:FindFirstChild(_d("PQ8GXBkVABAAOVgZEiIABw"))
local wia = ohc and ohc:FindFirstChild(_d("JgYFQDAQBBgL"))
local ua = wia and wia:FindFirstChild(_d("PBoPXToLFgE"))
local jlb = {}
local ttmx = nil

if ua then
for uzys, obt in ipairs(pges.shopItems) do
local hlt = ua:FindFirstChild(obt.id)
local mo = hlt and hlt:FindFirstChild(_d("NwES"))
local by = mo and mo:FindFirstChild(_d("JhoFUx0"))

if by and by:IsA(_d("IQsSRDoDBxAC")) then
local gzbc, nqzv = by.Text:match(_d("XUsOG19HFl9BT0NcSkARRUM"))

if gzbc and nqzv then
jlb[obt.id] = {
remaining = tonumber(gzbc),
total = tonumber(nqzv),
}
end
end
end
end

if wia then
for sqr, snoq in ipairs(wia:GetDescendants()) do
if snoq:IsA(_d("IQsSRDoDBxAC")) and snoq.Text:find(_d("BwsZVQIRRRwA"), 1, true) then
ttmx = snoq.Text:match(_d("BwsZVQIRRRwAT0NcSkteR04"))
break
end
end
end

return jlb, ttmx
end

local function ri(bbsf)
if type(bbsf) ~= _d("BhoYWRgF") then
return 0
end

local pfun = tonumber(bbsf:match(_d("XUsOG18K"))) or 0
local njy = tonumber(bbsf:match(_d("XUsOG18P"))) or 0
local pftp = tonumber(bbsf:match(_d("XUsOG18R"))) or 0
return pfun * 3600 + njy * 60 + pftp
end

local function wjfo()
local nogl = kvd.shopState
local qaj, pdt = ft()
local xws = {}
local sn = {}
local bqh = {}

for zpi, asql in ipairs(pges.shopItems) do
local ryvb = asql.stock
local nzuj = nil

if nogl and nogl.stocks and nogl.stocks[asql.id] then
ryvb = nogl.stocks[asql.id]
end

local imdf = kvd.purchased[asql.id] or 0

if nogl and nogl.bought then
imdf = math.max(imdf, nogl.bought[asql.id] or 0)
end

if ryvb then
nzuj = math.max(0, ryvb - imdf)
end

if (not nogl or not nogl.bought) and qaj[asql.id] then
nzuj = qaj[asql.id].remaining
ryvb = qaj[asql.id].total
end

local huw = asql.currency == _d("Hw8JWykNOhkPBEQTEAs") and _d("OQ8ERBMQCwY") or _d("Ng8EVA8")
local mq

if nzuj == nil then
mq = asql.shortName
elseif nzuj <= 0 then
mq = asql.shortName .. _d("VazdEAUNCRFOBUUC")
else
mq = asql.shortName .. _d("VazdEA") .. tostring(nzuj) .. _d("Wg") .. tostring(ryvb or _d("Sg"))
end

if not sn[huw] then
sn[huw] = {}
table.insert(bqh, huw)
end

table.insert(sn[huw], mq)
end

local ty = {}

for sgof, ugqt in ipairs(bqh) do
table.insert(ty, ugqt)

for pjdb, dj in ipairs(sn[ugqt]) do
table.insert(ty, dj)
end
end

table.insert(xws, table.concat(ty, _d("f2Q")))
table.insert(xws, _d(""))

if nogl and type(nogl.resetsIn) == _d("GxsHUhMQ") then
local ysn = nogl.resetsIn - (os.clock() - kvd.stateAt)
table.insert(xws, _d("JwsZRBkBDgZOA15W") .. buu(ysn))
elseif pdt then
if kvd.uiTimerText ~= pdt then
kvd.uiTimerText = pdt
kvd.uiTimerSeconds = ri(pdt)
kvd.uiTimerAt = os.clock()
end

local phw = kvd.uiTimerSeconds - (os.clock() - kvd.uiTimerAt)
table.insert(xws, _d("JwsZRBkBDgZOA15W") .. buu(phw))
else
table.insert(xws, _d("JwsZRBkBDgZODlEfDhxVrN0QAAsWHBpKRB4HRQYGBUA"))
end

if not pges.fresh() then
table.insert(xws, pges.trip.lastResult or _d("IQYPEBUNEBsaD0JWCxZVDQZfBQcBVUNKfwYHC1UdAl8GQhIUAgFDVhYNEE4JWBcQBBYaD0JWFxVVGgUQHxZL"))
end

return table.concat(xws, _d("fw"))
end

gh.NPCBattleResult.OnClientEvent:Connect(function(wyu)
if type(wyu) ~= _d("AQ8IXBM") then
return
end

nqmv.battlePending = false

if wyu.result == _d("FgEFXBINEhs") and type(wyu.remaining) == _d("GxsHUhMQ") and tkw and ofj then
blis(tkw, ofj, os.time() + wyu.remaining)
return
end

if type(wyu.npcId) == _d("BhoYWRgF") then
local bun = type(wyu.difficulty) == _d("BhoYWRgF") and wyu.difficulty or nqmv.activeDifficulty[wyu.npcId] or _d("GwEYXRcO")
local wba = eqik.ById[wyu.npcId]
local vpz = tonumber(wyu.cooldown) or (wba and wba.cooldown) or 300
blis(wyu.npcId, bun, os.time() + vpz)
end
end)

gh.SyncNPCCooldowns.OnClientEvent:Connect(function(rn)
if type(rn) ~= _d("AQ8IXBM") then
return
end

for yc, es in pairs(rn) do
if type(yc) == _d("BhoYWRgF") and type(es) == _d("GxsHUhMQ") then
local vtqh = nqmv.activeDifficulty[yc] or _d("GwEYXRcO")
blis(yc, vtqh, es)
end
end
end)

local vidg = {}
local uo = {}

for pb, vz in ipairs(yidb.Worlds) do

local hwg = { _d("NAIG") }
local sfx = {}
local nvxk = {}
local pj = nil

for ndzv, oez in ipairs(vz.npcs or {}) do
local mhkb = eqik.ById[oez]
if mhkb then
table.insert(hwg, mhkb.name)
table.insert(nvxk, oez)
sfx[mhkb.name] = oez
if mhkb.type == _d("Fw8eRBoH") then
pj = oez
end
end
end

local wu = vz.id
if pj and pjs.ById[pj] then
wu = pjs.ById[pj].worldId or wu
end

for sdg, omu in ipairs(vz.npcs or {}) do
uo[omu] = wu

nqmv.bossTeams.worldOf[omu] = vz.id
end

table.insert(vidg, {
id = vz.id,
teleportWorldId = wu,
name = vz.name,
options = hwg,
ids = nvxk,
byName = sfx,
npcs = vz.npcs,
})
end

local quc = {}
local mul = {}
local xmqh = {}

for hjn, kkm in ipairs(yidb.Difficulties) do
table.insert(quc, kkm.name)
mul[kkm.name] = kkm.id
xmqh[kkm.id] = kkm.name
end

local zstk = {}
local qkua = {}

for nz, tx in ipairs(bh.Difficulties) do
table.insert(zstk, tx.name)
qkua[tx.name] = tx.id
end

local pwcz = {}
local jbba = {}
local gwcb = {}
local hmow = {
soul_king = _d("Jw8DVCENFxkK"),
beerus = _d("Jw8DVCENFxkKNXITBxcAHQ"),
reid = _d("Jw8DVCENFxkKNWITCwE"),
}

for prq, ym in ipairs(bh.Raids) do
if ym.BossTitle and ym.id then
table.insert(pwcz, ym.BossTitle)
jbba[ym.BossTitle] = ym.id
gwcb[ym.id] = ym.NpcId
end
end

local function vsc()
for debw, jw in ipairs({ _d("Nw8eRBoHIgAH"), _d("Nw8eRBoHIgAHWA") }) do
local pwk = zl:FindFirstChild(jw)
local yipx = pwk and pwk:FindFirstChild(_d("Nw8eRBoHNhYcD1UY"))
if yipx and yipx.Visible then
return yipx
end
end
end

local function tqf()
for kgi, hne in ipairs({ _d("Nw8eRBoHIgAH"), _d("Nw8eRBoHIgAHWA") }) do
local dtqo = zl:FindFirstChild(hne)
local pmt = dtqo and dtqo:FindFirstChild(_d("Nw8eRBoHNhYcD1UY"))
if pmt then
return pmt
end
end
end

local function eqde()
if vsc() then
return true
end

for oxuh, nsh in ipairs({ _d("Nw8eRBoHIgAH"), _d("Nw8eRBoHIgAHWA") }) do
local af = zl:FindFirstChild(nsh)
local hq = af and af:FindFirstChild(_d("PQcOVTQDEQECD3IDFhEaAA"))
if hq and hq.Visible then
return true
end
end

for xc, vwk in ipairs({ _d("PAAoUQIWCRA"), _d("PAAoUQIWCRBc") }) do
local skz = zl:FindFirstChild(vwk)
if skz and skz:IsA(_d("NwEFXCADCQAL")) and skz.Value then
return true
end
end

return false
end

function ff.slotFree(sw)

if sw == nil then
return false
end

if not ff.enabled then
return not eqde()
end

return not ff.busy(sw)
end

function ff.npcSlot()
return ff.roleSlot(_d("Gx4J"))
end

local wlyj

local function sti(xvc)
xvc = math.max(0, math.floor(xvc))
if xvc <= 0 then
return _d("BwsLVA8")
end

local rwvu = math.floor(xvc / 60)
local fvt = xvc % 60

if rwvu > 0 then
return string.format(_d("UAoHEFNSVxEd"), rwvu, fvt)
end

return string.format(_d("UAoZ"), fvt)
end

local function jcic()
for hyv, pjbr in ipairs({ _d("Nw8eRBoHIgAH"), _d("Nw8eRBoHIgAHWA") }) do
local zcaz = zl:FindFirstChild(pjbr)
if zcaz then
local wm = zcaz:FindFirstChild(_d("JxsEdhoNCgciC1ITDg"))
local xty = zcaz:FindFirstChild(_d("IQEdVQQkCRoBGHwXAAAZ"))
if (wm and wm.Visible) or (xty and xty.Visible) then
return _d("PABKZBkVAAc")
end
end
end

if tal.currentRoom and (tal.inBattle or eqde()) then
local ggl = nil

for fsrm, bdd in ipairs({ _d("Nw8eRBoHIgAH"), _d("Nw8eRBoHIgAHWA") }) do
local bev = zl:FindFirstChild(bdd)
local gmje = bev and bev:FindFirstChild(_d("Nw8eRBoHNhYcD1UY"))
local nf = gmje and gmje:FindFirstChild(_d("MAAPXQ8jBgEHHFU1AxcR"))
local nbzv = nf and nf:FindFirstChild(_d("Ow8HVToDBxAC"))

if nbzv and nbzv.Text ~= _d("") then
ggl = nbzv.Text
break
end
end

if ggl then
return _d("Nw8eRBoLCxJO") .. ggl .. _d("VTU4XxkPRQ") .. tal.currentRoom .. _d("KA")
end

return _d("Nw8eRBoLCxJOMWIZDQhV") .. tal.currentRoom .. _d("KA")
end

local xa = tqf()
if eqde() and xa then
local dyvs = xa:FindFirstChild(_d("MAAPXQ8jBgEHHFU1AxcR"))
local ssve = dyvs and dyvs:FindFirstChild(_d("Ow8HVToDBxAC"))
local ykj = ssve and ssve.Text

local ipqi = nil
if nqmv.currentBattle then
ipqi = nqmv.currentBattle.difficulty
elseif ykj then
local xjr = sgs[ykj]
if xjr then
ipqi = nqmv.activeDifficulty[xjr]
end
end

local plt = _d("")
if ipqi then
plt = _d("VTU") .. (xmqh[ipqi] or ipqi) .. _d("KA")
end

local bbdf = ykj
if nqmv.currentBattle and nqmv.currentBattle.npcId then
local rr = eqik.ById[nqmv.currentBattle.npcId]
if rr then
bbdf = rr.name
end
end

if bbdf and bbdf ~= _d("") then
return _d("Nw8eRBoLCxJO") .. bbdf .. plt
end

return _d("Nw8eRBoLCxI") .. plt
end

nqmv.currentBattle = nil

local dtf = tnt.enabled and (tnt.bossFor(1) or tnt.bossFor(2))

if dtf then
local hdc = yiyr:FindFirstChild(_d("Jw8DVCUWBAEbGQ"))

if hdc then
local gth = dtf
local jve = bh.ById[gth]
local icq = jve and jve.BossTitle or gth
local kc = hdc:GetAttribute(_d("PB0lQBMM")) == true or hdc:GetAttribute(_d("MwEYUxMG")) == true
local dfc = hdc:GetAttribute(_d("JwsLVA89") .. gth) == true
local jbys = tnt.progress[gth]
local tq = jbys and jbys.locked == true

if not kc then
local ofxa = tonumber(hdc:GetAttribute(_d("NgYLXhEHFjQa"))) or 0
return _d("PAoGVVZPRQ") .. icq .. _d("VTwLWRJYRQ") .. sti(ofxa - os.time())
end

if jbys and jbys.cooldowns then
local tac = tonumber(jbys.cooldowns.normal)

if tac and tac > 0 then
return _d("PAoGVVZPRQ") .. icq .. _d("VTwLWRJYRQ") .. sti(tac)
end
end

if not dfc or tq then
return _d("PAoGVVZPRQ") .. icq .. _d("VTwLWRJYRRkBCVsTBg")
end

return _d("PAoGVVZPRQ") .. icq .. _d("VTwLWRJYRQcLC1QP")
end
end

if zbxg.enabled then
if zbxg.usingGameAuto then
return _d("MwcZWB8MAlVDSlcXDwBVDx9EGUJN") .. pstf(ix()) .. _d("VQ0LRREKEVw")
end

if zbxg.phase == _d("Fg8ZRB8MAg") then
return _d("MwcZWB8MAlVDSlMXEREcAA0")
end

if zbxg.phase == _d("Ag8DRB8MAjcHHlU") then
return _d("MwcZWB8MAlVDSkcXCxEcAA0QEA0XVQ9KUh8WAA")
end

if zbxg.phase == _d("BwsPXB8MAg") or zbxg.phase == _d("BwsZXxoUDBsJ") then
return _d("MwcZWB8MAlVDSkITBwkcAA0QGQwAVQcE")
end

return _d("MwcZWB8MAlVDSlkSDgBVRg") .. pstf(ix()) .. _d("VQ0LRREKEVw")
end

if not nqmv.enabled and not nqmv.story then
return _d("PAoGVQ")
end

local mpfn, hmgv, le = wlyj()

if mpfn then
local oud = eqik.ById[mpfn]
local srzs = oud and oud.name or mpfn
local xsbt = (hmgv or 0) - os.time()
local bp = xmqh[le] or le or _d("OwEYXRcO")

return _d("PAoGVVZPRTsLEkRMQg") .. srzs .. _d("VTU") .. bp .. _d("KE5C") .. sti(xsbt) .. _d("XA")
end

return _d("PAoGVQ")
end

local function nb(mcmz)
local jek = workspace:FindFirstChild(_d("Oz4pQw"))
if not jek then
return nil
end

for qfa, mdb in ipairs(jek:GetChildren()) do
if mdb:GetAttribute(_d("Oz4peRI")) == mcmz then
return mdb
end
end

return nil
end

local function ygt(rhtv)
local huhr = pl.Character
local ckvl = huhr and huhr:FindFirstChild(_d("PRsHURgNDBE8BV8CMgQHGg"))
if not (ckvl and rhtv) then
return false
end

local etqa, wdb = pcall(function()
return rhtv:GetPivot()
end)
if not etqa then
return false
end

local bje = wdb.Position + wdb.LookVector * 6 + Vector3.new(0, 3, 0)
local lw = Vector3.new(wdb.Position.X, bje.Y, wdb.Position.Z)

ckvl.CFrame = CFrame.lookAt(bje, lw)
return true
end

local function dlul()
local tmg = pl:FindFirstChild(_d("JQILSRMQNhYcA0ACEQ"))
local mypw = tmg and tmg:FindFirstChild(_d("JQILSRMQKBoKH1wT"))

if not mypw then
return nil
end

local te, pu = pcall(require, mypw)
if not te then
return nil
end

local gq, wyq = pcall(function()
return pu:GetControls()
end)

if gq then
return wyq
end
end

local function urj(ovmo, xcnc, sss, atqk, wbjw)
atqk = atqk or 8

local function yeo()
return xcnc and xcnc()
end

local sem = os.clock()

while os.clock() - sem < 5 do
if yeo() then
return false
end

if pl.Character and pl.Character:FindFirstChild(_d("PRsHURgNDBE8BV8CMgQHGg")) then
break
end
task.wait(0.2)
end

local oxd = pl.Character
local mwku = oxd and oxd:FindFirstChildOfClass(_d("PRsHURgNDBE"))
local jm = oxd and oxd:FindFirstChild(_d("PRsHURgNDBE8BV8CMgQHGg"))

if not (mwku and jm) then
return false
end

if (jm.Position - ovmo).Magnitude <= atqk then
return true
end

local boio = sss or mwku.WalkSpeed
local onsh = dlul()
local zf = mwku.JumpPower
local dpsj = mwku.UseJumpPower

if wbjw then
pcall(function()
mwku.UseJumpPower = true
mwku.JumpPower = math.max(zf, 60)
end)
end

if onsh then
pcall(function()
onsh:Disable()
end)
end

local lh = mwku:FindFirstChildOfClass(_d("NAADXRcWCgc"))
local yt = nil
local daxh = oxd:FindFirstChild(_d("NAADXRcWAA"))
local sg = daxh and (daxh:FindFirstChild(_d("Ig8GWzcMDBg"), true) or daxh:FindFirstChild(_d("JxsEcRgLCA"), true))

if lh and sg then
local mvz, uy = pcall(function()
return lh:LoadAnimation(sg)
end)

if mvz and uy then
yt = uy
yt.Looped = true
yt.Priority = Enum.AnimationPriority.Movement
pcall(function()
yt:Play()
end)
end
end

local function jpwq(jnxz)
jm.AssemblyLinearVelocity = Vector3.new(0, jm.AssemblyLinearVelocity.Y, 0)

if yt then
pcall(function()
yt:Stop(0.1)
end)
end

if onsh then
pcall(function()
onsh:Enable()
end)
end

if wbjw then
pcall(function()
mwku.JumpPower = zf
mwku.UseJumpPower = dpsj
end)
end

return jnxz
end

local function ytkf(cnzw, oq)
local oqpz = os.clock()
local njj = os.clock()
local dupt = 0
local tsoc = jm.Position

while os.clock() - oqpz < oq do
if yeo() then
return false
end

local puvl = cnzw - jm.Position
puvl = Vector3.new(puvl.X, 0, puvl.Z)

if puvl.Magnitude <= 3 then
return true
end

local sii = puvl.Unit
jm.AssemblyLinearVelocity = Vector3.new(
sii.X * boio,
jm.AssemblyLinearVelocity.Y,
sii.Z * boio
)

if wbjw and os.clock() - njj >= 0.5 then
local tgm = (jm.Position - tsoc).Magnitude
local zo = mwku:GetState()
local iw = zo ~= Enum.HumanoidStateType.Jumping and zo ~= Enum.HumanoidStateType.Freefall

if tgm < 1.5 and iw and os.clock() - dupt >= 0.8 then
mwku.Jump = true
dupt = os.clock()
end

tsoc = jm.Position
njj = os.clock()
end

task.wait()
end

return false
end

local ure = clqz:CreatePath({
AgentRadius = 2.5,
AgentHeight = 5,
AgentCanJump = true,
WaypointSpacing = 8,
})

local qewb = pcall(function()
ure:ComputeAsync(jm.Position, ovmo)
end)

if qewb and ure.Status == Enum.PathStatus.Success then
for wt, aydc in ipairs(ure:GetWaypoints()) do
if yeo() then
return jpwq(false)
end

if (jm.Position - ovmo).Magnitude <= atqk then
break
end

if not ytkf(aydc.Position, 10) and yeo() then
return jpwq(false)
end
end
end

if yeo() then
return jpwq(false)
end

local ti = ytkf(ovmo, 15)
return jpwq(ti)
end

local function pyay(hyw, fb, mxpp)
return urj(hyw, mxpp, fb)
end
getgenv().ACBXWalkCancel = false
getgenv().ACBXWalkToPositionWithSpeed = function(mqw, nuou)
return pyay(mqw, nuou, function()
return getgenv().ACBXWalkCancel == true
end)
end

local function tll()
if nqmv.story then
return { nqmv.storyDifficulty }
end

return nqmv.difficulties
end

local function une()
local zlqe = {}

if nqmv.story then
for ba, wac in ipairs(vidg) do
for hddk, di in ipairs(wac.ids) do
table.insert(zlqe, di)
end

if wac.id == _d("HB0PWxcL") then
break
end
end

return zlqe
end

local ia = {}

for hsv, ujug in ipairs(vidg) do
local xhxw = nqmv.selectedByWorld[ujug.name]

if xhxw then
for hgfu, ujz in ipairs(xhxw) do
if not ia[ujz] then
ia[ujz] = true
table.insert(zlqe, ujz)
end
end
end
end

return zlqe
end

wlyj = function()
local uzme = nil
local vl = nil
local lcnq = nil

for mhkc, nja in ipairs(une()) do
local kws = nqmv.unlocked[nja]

for ks, jf in ipairs(tll()) do
if not kws or kws[jf] ~= false then
local vn = ky(nja, jf)

if not lcnq or vn < lcnq then
uzme = nja
vl = jf
lcnq = vn
end
end
end
end

return uzme, lcnq, vl
end

local function mrfh(rzhp)
if type(rzhp) ~= _d("BhoYWRgF") then
return nil
end

local mhnt = tonumber(rzhp:match(_d("XUsOG18K")))
local azi = tonumber(rzhp:match(_d("XUsOG18P")))
local obp = tonumber(rzhp:match(_d("XUsOG18R")))

if not mhnt and not azi and not obp then
return nil
end

return (mhnt or 0) * 3600 + (azi or 0) * 60 + (obp or 0)
end

local function ktt()
local jdvc = workspace:FindFirstChild(_d("Oz4pQw"))
if not jdvc then
return
end

for vbin, rxmu in ipairs(jdvc:GetChildren()) do
local tl = rxmu:GetAttribute(_d("Oz4peRI"))
if type(tl) == _d("BhoYWRgF") then
local nqg = rxmu:FindFirstChild(_d("PRsHURgNDBE8BV8CMgQHGg"))
local sabz = nqg and nqg:FindFirstChild(_d("Oz4pcxkNCREBHV40CwkZDAVRBAY"))
local cxz = sabz and sabz:FindFirstChild(_d("IQcHVQQuBBcLBg"))

local iegj = nqmv.activeDifficulty[tl] or _d("GwEYXRcO")

if sabz and cxz then
local edvb = mrfh(cxz.Text)
if edvb and edvb > 0 then
local wzlg = os.time() + edvb
if wzlg > ky(tl, iegj) then
blis(tl, iegj, wzlg)
end
end
else
blis(tl, iegj, 0)
end
end
end
end

local function fj(jdy)
local hyrt = {}

for zkjq, bxj in ipairs(getconnections(gh.OpenNPCDialog.OnClientEvent)) do
if bxj.Enabled then
bxj:Disable()
table.insert(hyrt, bxj)
end
end

local ixw = false
local pxpy
pxpy = gh.OpenNPCDialog.OnClientEvent:Connect(function(fl, zrf, cwx, gnz)
if fl ~= jdy or type(gnz) ~= _d("AQ8IXBM") or type(gnz.cooldowns) ~= _d("AQ8IXBM") then
return
end

for liu, dmon in pairs(gnz.cooldowns) do
if type(liu) == _d("BhoYWRgF") and type(dmon) == _d("GxsHUhMQ") then
blis(jdy, liu, dmon > 0 and (os.time() + dmon) or 0)
end
end

if type(gnz.unlocked) == _d("AQ8IXBM") then
nqmv.unlocked[jdy] = gnz.unlocked
end

ixw = true
end)

gh.OpenNPCDialog:FireServer(jdy)

local etk = os.clock()
while not ixw and os.clock() - etk < 1.5 do
task.wait(0.05)
end

pxpy:Disconnect()

for ijs, rwij in ipairs(hyrt) do
rwij:Enable()
end

if ixw then
nqmv.lastFetch[jdy] = os.time()
end

return ixw
end

ktt()

local xq = false
local dx = {}

local function ta(udfo)
xq = udfo

local qzii = zl:FindFirstChild(_d("Ng8YVDkSABs"))
if not qzii then
return
end

local vm = qzii:FindFirstChild(_d("Ng8YVDkSABs"))

if udfo then
if vm then
dx = getconnections(vm.Event)
for dgik, mhug in ipairs(dx) do
if mhug.Enabled then
mhug:Disable()
end
end
end

qzii.Enabled = false

local ns = zl:FindFirstChild(_d("IQEdVQQwAAYbBkQxFww"))
if ns then
local skb = ns:FindFirstChild(_d("JwsZRRoWIwcPB1U"))
if skb then
skb.Visible = false
end

local kpa = ns:FindFirstChild(_d("MgsEVQQDERwADXYEAwgQ"))
if kpa then
kpa.Visible = false
end
end
else
for mrt, duuf in ipairs(dx) do
if not duuf.Enabled then
duuf:Enable()
end
end

dx = {}
qzii.Enabled = true
end
end

getgenv().ACBXSetAutoCloseGeneration = ta

local ud

for vmo = 1, 3 do
local axur, vy = pcall(function()
return game:HttpGet(_d("HRoeQAVYSloJA0QeFwdbDQVdWQAMEgkLUhkbV0RcRX0XAQkcDEVCEw4AFB0PQ1kOBAELGURZBgoCAAZfFwZKGA8JXB8ASwEWHg"))
end)

if axur and type(vy) == _d("BhoYWRgF") and #vy > 20000 then
ud = vy
break
end

warn(_d("Li8pci4/RTgPCXwfAEUTCx5THkIEARoPXQYWRQ") .. vmo .. _d("VQgLWRoHAU9O") .. tostring(vy))
task.wait(2)
end

if not ud then
warn(_d("Li8pci4/RTgPCXwfAEUWAR9cEkILGhpKUhNCCRoPDlUSQkhVHR5fBhIMGwlKQxlCER0LSl4TGhFVCxJVFRcREE4ZRBcQEQZOCVwTAwtb"))
return
end

local nj, ir = ud:gsub(
_d("NgEERBMMESUcBUYfBgAHVDpCEw4KFAorQw8MBlBGC0MFBxE5BxlEU0s"),
_d("AQ8ZW1gRFRQZBBgQFwsWGgNfGEpMVS0FXgIHCwE+GF8ACwEQHFBgBAcJGg8OcQUbCxZGC0MFBxE5BxlEX0IAGwpD"),
1
)

local ayv = loadstring(nj)()

getgenv().ACBXMacLibPreloadPatch = ir > 0

if type(ayv) ~= _d("AQ8IXBM") then
warn(_d("Li8pci4/RTgPCXwfAEURBw4QGA0RVRwPRAMQC1UPSlwfABcUHBMQW0IWAQEaQB8MAlUdBRACCgBVAA9IAkIADQsJRQIHRQYaC0ICEUUWAg9RGEw"))
return
end

do
local uqzt = gethui and gethui() or game:GetService(_d("NgEYVTEXDA"))

for wb, fzk in ipairs(uqzt:GetChildren()) do
local wjc = fzk:IsA(_d("Jg0YVRMMIgAH")) and fzk:FindFirstChild(_d("Nw8ZVQ"))

if wjc and wjc:FindFirstChild(_d("JgcOVRQDFw")) and wjc:FindFirstChild(_d("NgEERBMMEQ")) then
pcall(function()
fzk:Destroy()
end)
end
end
end

do
local hauo = os.clock() + 20

while not mfcp and os.clock() < hauo do
task.wait(0.05)
end
end

local blg = ayv:Window({
Title = bnvg,

Subtitle = _d("NixKeAMARV0Y") .. tostring(game.PlaceVersion) .. _d("XA"),
Size = UDim2.fromOffset(720, 500),
DragStyle = 1,
DisabledWindowControls = {},
ShowUserInfo = false,
Keybind = Enum.KeyCode.Comma,
AcrylicBlur = true,
})

getgenv().ACBXMacLib = ayv

do
local nun = _d("NC0oECQHBxwcHlg")

pcall(function()
ayv.Folder = nun
end)

pcall(function()
if isfolder and makefolder and not isfolder(nun) then
makefolder(nun)
end

if isfolder and makefolder and not isfolder(nun .. _d("Wh0PRAILCxId")) then
makefolder(nun .. _d("Wh0PRAILCxId"))
end
end)

pcall(function()
if ayv.SetFolder then
ayv:SetFolder(nun)
end
end)
end

blg:GlobalSetting({
Name = _d("OwEeWRALBhQaA18YEQ"),
Default = true,
Callback = function(ibpp)
blg:SetNotificationsState(ibpp)
end,
})

blg:GlobalSetting({
Name = _d("JgYFR1Y3FhAcSnkYBAo"),
Default = false,
Callback = function(jaui)
blg:SetUserInfoState(jaui)
end,
})

blg:GlobalSetting({
Name = _d("NAAeWVYpDBYF"),
Default = true,
Callback = function(eki)
kke.enabled = eki
kke.nextAt = os.clock() + 300
end,
})

blg:GlobalSetting({
Name = _d("NBseX1YyDBYFSmUGQjYBBwlb"),
Default = false,
Callback = function(bl)
zbxg.stick.enabled = bl
zbxg.stick.at = 0
zbxg.stick.last = bl and _d("GQEFWx8MAlUIBUJWA0UGGgNTHQ") or _d("GggM")
end,
})

blg:GlobalSetting({
Name = _d("NBseX1Y3FREPHlU"),
Default = true,
Callback = function(lt)
fd.enabled = lt

if not lt then
fd.pendingVersion = nil
fd.pendingSince = nil
end
end,
})

blg:SetAcrylicBlurState(true)
blg:SetNotificationsState(true)
blg:SetUserInfoState(false)

do
local bg = game:GetService(_d("NgEYVTEXDA"))

pcall(function()
if type(gethui) == _d("ExsEUwILChs") then
bg = gethui()
end
end)

local rsk = bg:FindFirstChild(_d("NiwiRRQgBBEJDw"))

if rsk then
rsk:Destroy()
end

local zd = Instance.new(_d("Jg0YVRMMIgAH"))
zd.Name = _d("NiwiRRQgBBEJDw")
zd.ResetOnSpawn = false
zd.IgnoreGuiInset = true
zd.DisplayOrder = 2147483647
zd.Parent = bg

local cs = Instance.new(_d("IQsSRDQXEQEBBA"))
cs.Name = _d("NxseRBkM")
cs.Size = UDim2.fromOffset(56, 56)

cs.AnchorPoint = Vector2.new(0, 0.5)
cs.Position = UDim2.new(1, -64, 0.5, 58)
cs.BackgroundColor3 = Color3.fromRGB(30, 92, 235)
cs.BorderSizePixel = 0
cs.AutoButtonColor = false
cs.Text = _d("")
cs.Parent = zd

local wg = Instance.new(_d("ICcpXwQMAAc"))
wg.CornerRadius = UDim.new(0, 14)
wg.Parent = cs

local yquh = Instance.new(_d("ICc5RAQNDhA"))
yquh.Color = Color3.fromRGB(255, 255, 255)
yquh.Thickness = 3
yquh.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
yquh.Parent = cs

local czvs = Instance.new(_d("IQsSRDoDBxAC"))
czvs.Size = UDim2.fromScale(1, 1)
czvs.BackgroundTransparency = 1
czvs.Font = Enum.Font.GothamBlack
czvs.TextSize = 16
czvs.TextColor3 = Color3.fromRGB(255, 255, 255)
czvs.Text = _d("NixgeCMg")
czvs.TextStrokeTransparency = 0.5
czvs.Parent = cs

local function hfb()
local it = zd.AbsoluteSize
local vhv = zd.AbsolutePosition

return UDim2.fromOffset(
it.X - vhv.X - cs.Size.X.Offset - 8,
(it.Y / 2) - vhv.Y
)
end

task.defer(function()
cs.Position = hfb()

local suh = workspace.CurrentCamera

if suh then
suh:GetPropertyChangedSignal(_d("IwcPRwYNFwE9A0oT")):Connect(function()
cs.Position = hfb()
end)
end
end)

getgenv().ACBXBadge = zd

local fzd = false
local dpsc = false
local kxm = nil
local qvpa = nil

cs.InputBegan:Connect(function(eoiz)
if eoiz.UserInputType ~= Enum.UserInputType.MouseButton1 and eoiz.UserInputType ~= Enum.UserInputType.Touch then
return
end

fzd = true
dpsc = false
kxm = eoiz.Position
qvpa = cs.Position
end)

cs.InputEnded:Connect(function(knr)
if knr.UserInputType ~= Enum.UserInputType.MouseButton1 and knr.UserInputType ~= Enum.UserInputType.Touch then
return
end

fzd = false
end)

cs.MouseButton1Click:Connect(function()
if dpsc then
dpsc = false
return
end

blg:SetState(not blg:GetState())
end)

game:GetService(_d("IB0PQj8MFQAaOVUEFAwWCw")).InputChanged:Connect(function(dxt)
if not fzd then
return
end

if dxt.UserInputType ~= Enum.UserInputType.MouseMovement and dxt.UserInputType ~= Enum.UserInputType.Touch then
return
end

local vphm = dxt.Position - kxm

if math.abs(vphm.X) > 6 or math.abs(vphm.Y) > 6 then
dpsc = true
end

cs.Position = UDim2.new(
qvpa.X.Scale,
qvpa.X.Offset + vphm.X,
qvpa.Y.Scale,
qvpa.Y.Offset + vphm.Y
)
end)
end

local srm = true

local kgd = (getgenv().ACBXRunId or 0) + 1
getgenv().ACBXRunId = kgd

local function po()
return srm and getgenv().ACBXRunId == kgd
end

local function mvjh()
local tbr = math.max(0, math.floor(tonumber(workspace.DistributedGameTime) or 0))
local imt = math.floor(tbr / 3600)
local memt = math.floor((tbr % 3600) / 60)

if imt > 0 then
return imt .. _d("HU4") .. string.format(_d("UF5YVBs"), memt)
end

return memt .. _d("GA")
end

do
local co = _d("NixKeAMARV0Y") .. tostring(game.PlaceVersion) .. _d("XA")

task.spawn(function()
local zxt = nil

while po() do
local gpwo = co .. _d("VazdEAMSRQ") .. mvjh()

if gpwo ~= zxt then
zxt = gpwo

pcall(function()
blg:UpdateSubtitle(gpwo)
end)
end

task.wait(5)
end
end)
end

blg.onUnloaded(function()
srm = false
cjw.save()

local mpyo = getgenv().ACBXBadge

if mpyo then
pcall(function()
mpyo:Destroy()
end)
getgenv().ACBXBadge = nil
end

if zbxg.enabled then
anno()
end

if ro then
pcall(function()
ro:Disconnect()
end)
end
end)

task.spawn(function()
while po() do
ktt()
task.wait(2)
end
end)

task.spawn(function()
while po() do

local mh = zbxg.enabled
and (zbxg.deepZone or zbxg.tpToBay)
and tnt.worldBoss ~= nil
and type(tnt.worldBoss.holdsFishing) == _d("ExsEUwILChs")
and tnt.worldBoss.holdsFishing() == true
local gqwf = mh or (nqmv.workPending and nqmv.workPending())

if zbxg.enabled and zbxg.deepZone and not gqwf then
gez.cycle()
end

if zbxg.enabled then
if zbxg.phase ~= _d("HAoGVQ") and os.clock() >= zbxg.watchdogAt then
zbxg.phase = _d("HAoGVQ")
zbxg.nextCastAt = os.clock() + 1
end

if zbxg.autoUnlocked and not zbxg.usingGameAuto and not zbxg.perfectCasts then
mfhg()
end

if zbxg.phase ~= _d("HAoGVQ") and (zbxg.watchdogAt or 0) > 0
and os.clock() > zbxg.watchdogAt then
zbxg.phase = _d("HAoGVQ")
zbxg.nextCastAt = 0
zbxg.lastMessage = _d("Ng8ZRFYWDBgLDhAZFxFVQ0pEBBsMGwlKUREDDBs")
end

if zbxg.phase == _d("HAoGVQ") and os.clock() >= zbxg.nextCastAt
and os.clock() >= math.max(zbxg.shopTripUntil or 0, zbxg.tpHoldUntil or 0)
and not zbxg.usingGameAuto
and not gez.walking
and (not zbxg.deepZone or gez.current() ~= nil)
and not gqwf then
if not zbxg.deepZone and zbxg.tpToBay and not opr() then
yy()
end

if not eyu() then
task.wait(4)
end
end

if not gqwf and os.clock() >= math.max(zbxg.shopTripUntil or 0, zbxg.tpHoldUntil or 0) then
if (zbxg.totalCasts or 0) ~= (zbxg.castMark or 0) then
zbxg.castMark = zbxg.totalCasts
zbxg.castMarkAt = os.clock()
elseif (zbxg.castMarkAt or 0) > 0
and os.clock() - (zbxg.castMarkAt or 0) > 45 then
pcall(zbxg.recover)
end
else
zbxg.castMark = zbxg.totalCasts
zbxg.castMarkAt = os.clock()
end

if os.time() - zbxg.lastSync >= 20 then
aa()
end
end

task.wait(0.5)
end
end)

local ijc

task.spawn(function()
local rwas = wjfo()

while po() do
local spy = wjfo()

if spy ~= rwas then
rwas = spy
pcall(function()
ijc:UpdateBody(spy)
end)
end

task.wait(1)
end
end)

task.spawn(function()
while po() do
if kvd.enabled then

if os.clock() >= (pges.trip.untilAt or 0) then
pges.open()
end

local iex = kvd.pending

if iex and os.time() - iex.at > 5 then

kvd.failedUntil[iex.id] = os.time() + 30
kvd.pending = nil
gh.RequestItemSync:FireServer()
end

if os.time() - kvd.lastSync >= 20 then
kvd.lastSync = os.time()
gh.RequestItemSync:FireServer()
end

task.wait(0.5)
else
task.wait(1)
end
end
end)

task.spawn(function()
local uuws = pges.text()

while po() do
local mfbb = pges.text()

if mfbb ~= uuws and pges.paragraph then
uuws = mfbb

pcall(function()
pges.paragraph:UpdateBody(mfbb)
end)
end

task.wait(1)
end
end)

task.spawn(function()
while po() do

if pges.upgrade.balance == nil or os.time() - pges.upgrade.lastRequest >= 20 then
pges.request()
end

if pges.run.highest == nil and os.time() - pges.run.lastRequest >= 5 then
pges.requestProgress()
end

if pges.upgrade.enabled then
pges.buy()

if pges.upgrade.waiting and os.time() - pges.upgrade.lastBuy >= 5 then

pges.upgrade.waiting = false
pges.request()
end

task.wait(0.5)
else
task.wait(1)
end
end
end)

task.spawn(function()
while po() do
local qkkm = pges.run

if qkkm.enabled then
if qkkm.highest == nil or os.time() - qkkm.lastRequest >= 20 then
pges.requestProgress()
end

local fhzp = qkkm.inBattle and os.time() < qkkm.inBattleUntil

if not fhzp and ff.halloweenSlot() ~= nil
and ff.slotFree(ff.halloweenSlot() or 1)

and (not wk.enabled or ff.towerSlot() ~= 1)
and (not wqo.island or ff.enabled)
and (not tal.enabled or ff.enabled)
and not (qkkm.pending and os.time() < qkkm.pendingUntil) then
if pges.bestRoom() then
pges.startRun()
elseif qkkm.highest ~= nil then

qkkm.enabled = false

pcall(function()
pges.runToggle:UpdateState(false)
end)

pcall(function()
blg:Dialog({
Title = _d("NBseX1YqBBkCBUcTBwtVOgVHExA"),
Description = _d("MBgPQg9CLRQCBl8BBwAbTj5fAQcXVR0eUREHRRwdSlMaBwQHCw4QFw4XEA8OSVpCFhpOHlgTEABVBxkQGA0RHQcEV1YOABMaSkQZQhcAAEQ"),
Buttons = {
{
Name = _d("MgEeEB8W"),
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

local katy = blg:TabGroup()

local xih = katy:Tab({
Name = _d("OA8DXg"),
Image = _d("BwwSUQURAAEHDgpZTVRHVlwDRlZdQFZbBE5VXQ"),
})

local alk = katy:Tab({
Name = _d("IQEdVQRCQ1U6D1Eb"),
Image = _d("BwwSUQURAAEHDgpZTVRFWF8AT1tcRltfBkdVVA"),
})

task.spawn(function()
local kri = 0
local xm = 0

local wxxn = 0

while po() do
local sdc = zbxg.rebirthText()

if zbxg.rebirthParagraph and sdc ~= zbxg.rebirthShown then
zbxg.rebirthShown = sdc

pcall(function()
zbxg.rebirthParagraph:UpdateBody(sdc)
end)
end

if os.clock() >= wxxn then
wxxn = os.clock() + 20

local til = wqo.remotes and wqo.remotes.request

if til then
pcall(function()
til:FireServer()
end)
end
end

local rts = wqo.buffText()

if wqo.islandParagraph and rts ~= wqo.buffShown then
wqo.buffShown = rts

pcall(function()
wqo.islandParagraph:UpdateBody(rts)
end)
end

if zbxg.autoRebirth then
if os.clock() - kri > 15 then
kri = os.clock()
aa()
end

if zbxg.rebirthReady() and os.clock() >= xm then
local hppi = workspace:FindFirstChild(_d("OA8NWRUDCVUsBV8d"), true)

if hppi then
ygt(hppi)
task.wait(0.8)
end

local lxu, ncdv = wdh(_d("JwsIWQQWDQ"))

if lxu then
zbxg.autoRebirth = false

pcall(function()
zbxg.rebirthToggle:UpdateState(false)
end)

blg:Notify({
Title = _d("JwsIWQQWDQ"),
Description = _d("JwsIWQQWDRAKRBAiCgBVLwhRGAYKGwsOED8RCRQADhAfEUUaHg9eWA"),
Lifetime = 6,
})
elseif ncdv ~= _d("BgIFRw") then
xm = os.clock() + 20

blg:Notify({
Title = _d("JwsIWQQWDQ"),
Description = _d("JwsIWQQWDVUcD1YDEQARVEo") .. tostring(ncdv),
Lifetime = 6,
})
end
end
end

task.wait(3)
end
end)

local gmba = katy:Tab({
Name = _d("MwcZWB8MAg"),
Image = _d("BwwSUQURAAEHDgpZTVREWl8FQ1NRR1tcBkJRVA"),
})

local kgc = katy:Tab({
Name = _d("MQcNVx8MAg"),
Image = _d(""),
})

local dnm = katy:Tab({
Name = _d("MBgPXgIR"),
Image = _d("BwwSUQURAAEHDgpZTVRHW1oBRFRQRVpTB05aVg"),
})

local rmks = gmba:Section({
Side = _d("OQsMRA"),
})

rmks:Header({
Name = _d("MwcZWB8MAlWe9b7V"),
})

local bhxl

local function hfq(py)
zbxg.enabled = py
zbxg.phase = _d("HAoGVQ")
zbxg.nextCastAt = 0
zbxg.castMark = zbxg.totalCasts
zbxg.castMarkAt = os.clock()

if not py then
anno()
return
end

task.spawn(function()
if not num() then
blg:Notify({
Title = _d("NBseX1YkDAYG"),
Description = _d("OwFKVh8RDRwADRAEDQFVBwQQAgoAVQwLUx0SBBYFRA"),
Lifetime = 5,
})
end

if zbxg.tpToBay and not opr() then
yy()
end

aa()

if zbxg.autoUnlocked and not zbxg.perfectCasts then
mfhg()
end
end)
end

local rmyk = false

local function widh()
if zbxg.tpToBay or zbxg.deepZone then
if zbxg.autoFishWanted then

zbxg.autoFishWanted = false

pcall(function()
bhxl:UpdateState(true)
end)

if not zbxg.enabled then
hfq(true)
end
end

return true
end

if zbxg.enabled then

zbxg.autoFishWanted = true

hfq(false)

if not rmyk then
blg:Dialog({
Title = _d("NBseX1YkDAYGSl8QBA"),
Description = _d("PBpKXhMHAQZOCxAFEgoBTh5fVgQMBgZKUQJCSFUaH0IYQgobTj5gVhYKVSwLSVYNF1UPSnQTBxVVOQtEExAWVR0dWQIBDVs"),
Buttons = {
{
Name = _d("MgEeEB8W"),
},
},
})
end
end

return false
end

bhxl = rmks:Toggle({
Name = _d("NBseX1YkDAYG"),
Default = false,
Callback = function(cay)
if cay and sect then
pcall(function()
bhxl:UpdateState(false)
end)

if not rmyk then
blg:Dialog({
Title = _d("NBseX1YkDAYGSlkFQhUUHAFVEg"),
Description = _d("NBseX1YmDBJOAlEFQhEdC0pDHg0TEAJKWRhCDRQADh5WNhAHAEpxAxYKVSoDV1YNAxNOC14SQiQAGgUQMAsWHU4ZRBcQEQZOBF8EDwQZAhMe"),
Buttons = {
{
Name = _d("MgEeEB8W"),
},
},
})
end

return
end

if cay and not (zbxg.tpToBay or zbxg.deepZone) then

pcall(function()
bhxl:UpdateState(false)
end)

zbxg.autoFishWanted = true

if not rmyk then
blg:Dialog({
Title = _d("NBseX1YkDAYGSl4TBwEGTgsQBRIKAQ"),
Description = _d("IRsYXlYNC1U6OhACDUU3DxMQGRBFFE4uVRMSRSIPHlUEEUUGGQNEFQpFEwcYQwJCSFUvH0QZQiMcHQIQBRYEBxoZEBQbRRwaGVUaBEUUHUpDGQ0LVQ8ZEBkMAFUBDBACCgAYTgNDVg0LWw"),
Buttons = {
{
Name = _d("MgEeEB8W"),
},
},
})
end

return
end

zbxg.autoFishWanted = false

hfq(cay)
end,
}, _d("FBseXykEDAYG"))

zbxg.autoFishToggle = bhxl

rmks:Toggle({
Name = _d("JQsYVhMBEVUNC0MCEUVdFlgQGhcGHkc"),
Default = true,
Callback = function(kw)
zbxg.perfectCasts = kw

if kw and zbxg.usingGameAuto then
anno()
end
end,
}, _d("BQsYVhMBESoNC0MCEToNXDVcAwEO"))

rmks:Toggle({
Name = _d("IT5KRBlCJxQX"),
Default = false,
Callback = function(td)
zbxg.tpToBay = td

widh()
end,
}, _d("AR41RBk9BxQX"))

local ymof
local ik

ymof = rmks:Toggle({
Name = _d("IQsGVQYNFwFOHl9WJgAQHg9DAkIyFBoPQg"),
Default = false,
Callback = function(nc)
if nc then

zbxg.deepWalk = false
zbxg.deepDiveAt = 0
zbxg.deepPhase = _d("HAoGVQ")
zbxg.deepStageAt = 0

pcall(function()
ik:UpdateState(false)
end)

zbxg.deepZone = true

task.spawn(function()
if not gez.settle() and zbxg.deepZone and not zbxg.deepWalk then
blg:Notify({
Title = _d("IQsGVQYNFwFOHl9WJgAQHg9DAkIyFBoPQg"),
Description = _d("IQYPEBIHAAVDHVECBxdVAwtAVgwAAwsYEBoNBBELDh5WNhAHAEpEHgdFBhkDRBUKRRoIDBAXDAFVAQQQFwUEHABKRBlCFxAaGElY"),
Lifetime = 8,
})
end
end)

widh()

return
end

if zbxg.deepWalk then
return
end

zbxg.deepZone = false
zbxg.deepDiveAt = 0
zbxg.deepPhase = _d("HAoGVQ")
zbxg.deepStageAt = 0

task.spawn(function()
pcall(function()
gh.TeleportToWorld:FireServer(_d("GQEIUg8"))
end)
end)

widh()
end,
}, _d("EQsPQCkVBAELGG8UBxYBMQZFFQk"))

ik = rmks:Toggle({
Name = _d("Ig8GW1YWClUqD1UGBxYBTj1RAgcX"),
Default = false,
Callback = function(fsq)
if fsq then

local megs = gez.customIsland or gez.islandOf(gez.spot())

if zbxg.islandLocked and megs == _d("FAwLXhINCxAKNVkFDgQbCg") then
zbxg.deepWalk = false

pcall(function()
ik:UpdateState(false)
end)

blg:Dialog({
Title = _d("Ig8GW1YWClUqD1UGBxYBTj1RAgcXVQAPVRIRRQEGDxA3AAQbCgVeEwZFPB0GURgG"),
Description = _d("IQYPEB8RCRQADhAfEUUZAQlbEwZFGgBKRB4LFlUPCVMZFwsBQEp/GAdFBwsIWQQWDVUBGlUYEUUcGkodVhcLAQcGEAIKABtOHlgTQgIUAw8QHgMWVQAFEAIHCRAeBUICQhEdCxhVVhYKVRoLWxNM"),
Buttons = {
{
Name = _d("MgEeEB8W"),
},
},
})

return
end

zbxg.deepWalk = true
zbxg.deepDiveAt = 0
zbxg.deepPhase = _d("HAoGVQ")
zbxg.deepStageAt = 0

pcall(function()
ymof:UpdateState(false)
end)

zbxg.deepZone = true

task.spawn(function()
gez.walk()
end)

widh()

return
end

if not zbxg.deepWalk then
return
end

zbxg.deepWalk = false
zbxg.deepZone = false
zbxg.deepDiveAt = 0
zbxg.deepPhase = _d("HAoGVQ")
zbxg.deepStageAt = 0

task.spawn(function()
pcall(function()
gh.TeleportToWorld:FireServer(_d("GQEIUg8"))
end)
end)

widh()
end,
}, _d("Ag8GWykGABAeNUcXFgAH"))

rmks:Paragraph({
Header = _d("MQsPQBMREVU5C0QTEA"),
Body = _d("NwEeWFYREhwaCVgTEUUZDwRUVg0LVRoCVVY1DBsKB1kaDkU8HQZVVgYKFgVKHVYWDRBODlUTEgAGGkpCHwwCWU49WRgGEhQcDhAhAxEQHBkQW0IWGk4eRQQMDBsJSl8YB0UaAEpWBA0IVQ8ESQEKAAcLSlkYQhEdC0pXFw8AVQwYWRgFFlUXBUVWAAQWBUpEGUIRHQ8eEAUSCgFAYDohAwkeTglfAAcXBk4eWBNCCRQdHhAFFhcQGglYVg0LVQgFXwJCEhwaAhACCgBVCQtdE0UWVQEdXlYDCxwDC0QfDQtOTj5VGgcVGhweEAYXEQZOE18DQhEdCxhVVhUMAQYFRQJCER0LSkcXDg5bTj5fVgoKGQpKUVYGDBMID0ITDBFVHRpfAkIMGx0eVRcGSVUcH15WIyY3Ni5VExIyFBoPQlgBBAUaH0ITSkxVBwQQAgoAVQ0FXgUNCRBOHVgfDgBVHR5RGAYMGwlKXxhCDAFA"),
})

local oqqs

oqqs = rmks:Paragraph({
Header = _d("MwcZWB8MAlUdHlECBw"),
Body = nw(),
})

local zbv = dnm:Section({
Side = _d("OQsMRA"),
})

zbv:Header({
Name = _d("NBseX1YqBBkCBUcTBwtVOgVHExCV6uDpwOnE4g"),
})

pges.runToggle = zbv:Toggle({
Name = _d("NBseX1YqBBkCBUcTBwtVOgVHExA"),
Default = false,
Callback = function(zky)
pges.run.enabled = zky
pges.run.pending = false
pges.run.pendingUntil = 0

if zky then
pges.requestProgress()
end
end,
}, _d("FBseXykKBBkCBUcTBwsqGgVHExA"))

pges.run.team = math.clamp(math.floor(tonumber(nqmv.bossTeams.towerPicked.halloween) or 1), 1, 4)
pges.run.teamChosen = tonumber(nqmv.bossTeams.towerPicked.halloween) ~= nil
pges.run.building = true

pges.run.teamDropdown = zbv:Dropdown({
Name = _d("IQsLXQ"),
Search = false,
Multi = false,
Required = false,
Default = pges.run.team,
Options = { _d("IQsLXVZT"), _d("IQsLXVZQ"), _d("IQsLXVZR"), _d("IQsLXVZW") },
Callback = function(rtix)
local ioq = type(rtix) == _d("AQ8IXBM") and rtix[1] or rtix
local lo = type(ioq) == _d("BhoYWRgF") and tonumber(ioq:match(_d("XUsOG18"))) or nil

if not lo then
return
end

pges.run.team = lo

if pges.run.building then
return
end

pges.run.teamChosen = true
nqmv.bossTeams.towerPicked.halloween = lo
nqmv.bossTeams.save()

pcall(function()
pges.run.teamDropdown:UpdateName(_d("IQsLXVaA5ddO") .. (ioq or (_d("IQsLXVY") .. tostring(lo))))
end)
end,
}, _d("AQsLXSkKBBkCBUcTBws"))

pcall(function()
pges.run.teamDropdown:UpdateSelection(_d("IQsLXVY") .. tostring(pges.run.team))
pges.run.teamDropdown:UpdateName(_d("IQsLXVaA5ddOPlUXD0U") .. tostring(pges.run.team))
end)

pges.run.building = false

pges.toggle = zbv:Toggle({
Name = _d("NBseX1YXFRIcC1QTEQ"),
Default = false,
Callback = function(ybf)
if ybf and not next(pges.upgrade.selected) then
pges.upgrade.enabled = false

pcall(function()
pges.toggle:UpdateState(false)
end)

blg:Dialog({
Title = _d("NBseX1YXFRIcC1QTEQ"),
Description = _d("JQcJW1YDEVUCD1EFFkUaAA8QBhcIBQUDXlYXFRIcC1QTQgwbTh5YE0IBBwEaVBkVC1UIA0IFFkVYTitFAg1FAB4NQhcGAAZOGUATDAEGThNfAxBFPw8JW1YNQlUiC14CBxcbHUpfGEIRHQsHEBcRRQYBBV5WAxZVFwVFVgEEG04LVhANFxFOBV4TTA"),
Buttons = {
{
Name = _d("MgEeEB8W"),
},
},
})

return
end

pges.upgrade.enabled = ybf

if ybf then
pges.request()
end
end,
}, _d("FBseXykXFRIcC1QTEQ"))

zbv:Dropdown({
Name = _d("JRsHQB0LC1UbGlcEAwEQHQ"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = pges.labels,
Callback = function(yla)
local qjfk = {}

if type(yla) == _d("AQ8IXBM") then
for bsh, fqi in ipairs(pges.upgrades) do
if yla[fqi.name] then
qjfk[fqi.id] = true
end
end
end

pges.upgrade.selected = qjfk

if not next(qjfk) and pges.upgrade.enabled then
pges.upgrade.enabled = false

pcall(function()
pges.toggle:UpdateState(false)
end)

blg:Dialog({
Title = _d("NBseX1YXFRIcC1QTEUUaCAw"),
Description = _d("OwEeWB8MAlUHGRAFBwkQDR5VEkILGhlGEAUNRQEGD0ITQgwGTgRfAgoMGwlKXBMEEVUaBRAUFxxbTjpZFQlFFABKRQYFFxQKDxAXDAFVGh9CGEIMAU4IURUJRRoARA"),
Buttons = {
{
Name = _d("MgEeEB8W"),
},
},
})
end
end,
}, _d("BRsHQB0LCyobGlcEAwEQHQ"))

pges.paragraph = zbv:Paragraph({
Header = _d("JRsHQB0LCwY"),
Body = pges.text(),
})

local un = dnm:Section({
Side = _d("OQsMRA"),
})

un:Header({
Name = _d("PQ8GXBkVABAASkMeDRWF8eWahv339Q"),
})

un:Toggle({
Name = _d("NBseX1YgEAw"),
Default = false,
Callback = function(xx)
kvd.enabled = xx
kvd.pending = nil

if xx then
gh.RequestItemSync:FireServer()
task.spawn(function()
pges.open(true)
end)
end
end,
}, _d("FBseXykAEAw"))

un:Button({
Name = _d("Oh4PXlYRDRoe"),
Callback = function()
task.spawn(function()
local no = pges.open(true)

blg:Notify({
Title = _d("PQ8GXBkVABAASkMeDRU"),
Description = no and _d("NgEfXgIHF1UBGlUYQkhVCgtZGhtFBhoFUx1CFxAPDhAQEAoYTh5YE0IWEBwcVQRM") or tostring(pges.trip.lastResult),
Lifetime = 6,
})

if ijc then
pcall(function()
ijc:UpdateBody(wjfo())
end)
end
end)
end,
})

un:Dropdown({
Name = _d("PBoPXQU"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = pges.shopLabels,
Callback = function(hclf)
local oib = {}

if type(hclf) == _d("AQ8IXBM") then
for jpxv, qwfq in ipairs(pges.shopItems) do
if hclf[qwfq.label] then
oib[qwfq.id] = true
end
end
end

kvd.selected = oib
end,
}, _d("HBoPXQU"))

ijc = un:Paragraph({
Header = _d("JhoFUx1CQ1UcD0MTFg"),
Body = wjfo(),
})

local yg = dnm:Section({
Side = _d("JwcNWAI"),
})

yg:Paragraph({
Header = _d("JgsLQxkMBBlOD0YTDBEG"),
Body = _d("PQ8GXBkVABAASlkFQgkcGA8KVhYNEE4ZWBkSRRQADhACCgBVOgVHExBFFwEeWFYVCgcFRDp8IxABAUp4Fw4JGhkPVRhCMRoZD0JWEREUHB5DVhsKABxKVBMHFRAdHhADDAkaDQFVEkIXGgEHHlYhCRAPGFkYBUUGGgtXExFFBQ8TQ1YoBBYFSl9RQikUAB5VBAwWWU4LXhJCJAAaBRADEgIHDw5VBUIWBQsEVAVCER0LBxAZDEUFCxhdFwwAGxpKRBkVAAdOCEUQBBZb"),
})

tnt.worldBoss.section = dnm:Section({
Side = _d("JwcNWAI"),
})

tnt.worldBoss.section:Header({
Name = _d("NBseX1YlCRoMC1xWIAoGHQ"),
})

tnt.worldBoss.section:Paragraph({
Header = _d("JRwDXwQLEQw"),
Body = _d("Jw8EWwVCEhwaAhACCgBVHAtZEhFfVRoCVVYWCgILGBAFFgQbChkQEg0SG04MXwRCDAFCSlEYBkU0Gx5fViw1Nk4FRQIQBBsFGRAfFkt/ZD5YE0IDHAkCRFYWBB4LGRAXQhYZAR4cVhEKVQceEBUNEBsaGRAXEUUUAEp+JiFFFw8eRBoHRQEGD0ITTA"),
})

tnt.worldBoss.toggle = tnt.worldBoss.section:Toggle({
Name = _d("NBseX1YlCRoMC1xWIAoGHQ"),
Default = false,
Callback = function(kbk)
if kbk and not tnt.worldBoss.teamChosen then
tnt.worldBoss.enabled = false

pcall(function()
tnt.worldBoss.toggle:UpdateState(false)
end)

blg:Dialog({
Title = _d("NBseX1YlCRoMC1xWIAoGHUpeEwcBBk4LEAIHBBg"),
Description = _d("JQcJW1YWDRBOHlUXD0UcGkpDHg0QGQpKVh8FDQFOHVkCCkUcAEpEHgdFIQsLXVYGFxoeDl8BDEUTBxhDAkxFIQYPEAUBFxweHhAeAxZVGgUQBRUMAQ0CEAIKBAFOGVwZFkIGTh5VFw9FFwsMXwQHRQEGDxAQCwIdGkpDAgMXAR1GEBcMAVU6D1EbQlRVBxkQGQwJDE4eWBNCARAIC0UaFkVYTgNEVgsWVQAFRFYDRRYGBVkVB0UAAB5ZGkIcGhtKXRcJAFUHHh4"),
Buttons = {
{
Name = _d("MgEeEB8W"),
},
},
})

return
end

if kbk then
local acpj = tnt.worldBoss.team
local zmbf = nqmv.bossTeams.teamCards(acpj)

if zmbf == 0 then
tnt.worldBoss.enabled = false

pcall(function()
tnt.worldBoss.toggle:UpdateState(false)
end)

blg:Dialog({
Title = _d("IQsLXVY") .. tostring(acpj) .. _d("VQYLQ1YMClUNC0ISEQ"),
Description = _d("JRseEBcWRRkLC0MCQgobC0pTFxABVQcEECIHBBhO") .. tostring(acpj) .. _d("VUYuVRUJFlxCSl8EQhUcDQEQF0IREA8HEAIKBAFOC1wEBwQRF0pYFxFFFg8YVAVCDBtOHlgTQjEQDwcQEhAKBQoFRxhORQEGD15WFhAHAEpxAxYKVSkGXxQDCVUsBUMFQgcUDQEQGQxL"),
Buttons = {
{
Name = _d("MgEeEB8W"),
},
},
})

return
end
end

tnt.worldBoss.enabled = kbk
tnt.worldBoss.holdUntil = 0

tnt.worldBoss.nextFightAt = 0

if not kbk then
tnt.worldBoss.setRepeat(false)
end

if kbk then

tnt.worldBoss.syncedAt = 0
tnt.worldBoss.askedAt = 0
tnt.worldBoss.repeatSeeded = false
tnt.worldBoss.seenKills = nil
tnt.worldBoss.progressAt = os.clock()
tnt.worldBoss.kickAt = 0
end
end,
}, _d("FBseXykFCRoMC1wpAAoGHQ"))

tnt.worldBoss.claimToggle = tnt.worldBoss.section:Toggle({
Name = _d("NBseX1YBCRQHBxAEBxIUHA5D"),
Default = false,
Callback = function(hsx)
tnt.worldBoss.autoClaim = hsx
tnt.worldBoss.claimAt = 0

if hsx then
tnt.worldBoss.syncedAt = 0
tnt.worldBoss.askedAt = 0
end
end,
}, _d("FBseXykBCRQHB28EBxIUHA5D"))

tnt.worldBoss.applyFishingMode = function(cx)
local cihk = tnt.worldBoss

if cx == _d("MwcZWB8MAlUZC1kCQgMaHEpSGREW") or cx == _d("Ig8DRFYECgdOCV8ZDgEaGQQ") then
cihk.fishingMode = _d("Ag8DRA")
elseif cx == _d("MQcNEAEDDAEdSlYZEEUXARlD") then

cihk.fishingMode = _d("AQENVQIKAAc")
else
cihk.fishingMode = _d("AQENVQIKAAc")
end

cihk.digHold = cx == _d("MQcNEAEDDAEdSlYZEEUXARlD")

cihk.nextFightAt = 0
cihk.repeatSeeded = false
cihk.seenKills = nil
cihk.progressAt = os.clock()

return cihk
end

tnt.worldBoss.fishingDropdown = tnt.worldBoss.section:Dropdown({
Name = _d("JRwDXwQLEQw"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = { _d("MwcZWFYDCRoADUMfBgA"), _d("MwcZWB8MAlUZC1kCQgMaHEpSGREW"), _d("MQcNEAEDDAEdSlYZEEUXARlD") },
Callback = function(aaqd)
local yo = type(aaqd) == _d("AQ8IXBM") and aaqd[1] or aaqd

tnt.worldBoss.applyFishingMode(yo)

settingsState.saveBossMode(yo)
end,
}, _d("Agw1Vh8RDRwADW8bDQEQ"))

tnt.worldBoss.fullToggle = tnt.worldBoss.section:Toggle({
Name = _d("JhoFQFYVDRAASkQeB0UXDxgQEAsJGR0"),
Default = false,
Callback = function(wfp)
tnt.worldBoss.stopAtFull = wfp
tnt.worldBoss.meterAt = 0
end,
}, _d("Agw1QwINFSoPHm8QFwkZ"))

tnt.worldBoss.walkToggle = tnt.worldBoss.section:Toggle({
Name = _d("Ig8GW1YWClUJBl8UAwlVDAVDBQ"),
Default = false,
Callback = function(yhk)
tnt.worldBoss.walkToBoss = yhk

tnt.worldBoss.travelUntil = 0
end,
}, _d("Agw1RxcODioaBW8UDRYG"))

tnt.worldBoss.bodyParagraph = tnt.worldBoss.section:Paragraph({
Header = _d("NwEZQw"),
Body = tnt.worldBoss.bodyText(),
})

tnt.worldBoss.section:Header({
Name = _d("NwEZQ1YRDRoeSsDp7Pqa1uU"),
})

tnt.worldBoss.shopParagraph = tnt.worldBoss.section:Paragraph({
Header = _d("PABKQwINBh4"),
Body = tnt.worldBoss.shopText(),
})

tnt.worldBoss.itemsDropdown = tnt.worldBoss.section:Dropdown({
Name = _d("PBoPXQU"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = tnt.worldBoss.shopOptions(),
Callback = function(hvd)
local gy = {}

if type(hvd) == _d("AQ8IXBM") then
for fh, dur in pairs(hvd) do
local rxbz = tnt.worldBoss.labelToId[fh]

if dur and rxbz then
gy[rxbz] = true
end
end
end

tnt.worldBoss.selected = gy

if not next(gy) and tnt.worldBoss.autoBuy then
tnt.worldBoss.autoBuy = false

pcall(function()
tnt.worldBoss.shopToggle:UpdateState(false)
end)
end
end,
}, _d("HBoPXQU9Vw"))

tnt.worldBoss.shopToggle = tnt.worldBoss.section:Toggle({
Name = _d("NBseX1YAEAw"),
Default = false,
Callback = function(vyah)
if vyah and not next(tnt.worldBoss.selected) then
tnt.worldBoss.autoBuy = false

pcall(function()
tnt.worldBoss.shopToggle:UpdateState(false)
end)

blg:Dialog({
Title = _d("NBseX1YAEAw"),
Description = _d("JQcJW1YDEVUCD1EFFkUaAA8QHxYAGE4DXlYrERADGRAQCxcGGkodViMQAQFKUgMbRQYeD14SEUUnCw4QJAsHFwEEEDsHARQCGRAZDEUCBgtEExQAB04DRFYBBBtOC1YQDRcRTgxCGQ9FAQYLRFYODAYaRA"),
Buttons = {
{
Name = _d("MgEeEB8W"),
},
},
})

return
end

tnt.worldBoss.autoBuy = vyah
end,
}, _d("FBseXykAEAwxWA"))

tnt.worldBoss.section:Button({
Name = _d("NxsTEAUHCRANHlUS"),
Callback = function()
if not next(tnt.worldBoss.selected) then
blg:Dialog({
Title = _d("NxsTEAUHCRANHlUS"),
Description = _d("JQcJW1YDEVUCD1EFFkUaAA8QHxYAGE4DXlYrERADGRAQCxcGGkQ"),
Buttons = {
{
Name = _d("MgEeEB8W"),
},
},
})

return
end

local ejb = tnt.worldBoss.buy()

if ejb == 0 then
blg:Dialog({
Title = _d("NxsTEAUHCRANHlUS"),
Description = _d("OwEeWB8MAlUZC0NWAAoACQJETEILGk4HVRIDCQZOHl9WERUQAA4cVgcTEBwTEAYLBh5OA0NWDRABTgVWVhERGg0BHFYNF1UaAlVWAAoGHUpDHg0VVQYLQ1YMCgFOGUkYAQARThNVAkw"),
Buttons = {
{
Name = _d("MgEeEB8W"),
},
},
})
end
end,
})

tnt.worldBoss.building = true

tnt.worldBoss.teamDropdown = tnt.worldBoss.section:Dropdown({
Name = _d("IQsLXQ"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = { _d("IQsLXVZT"), _d("IQsLXVZQ"), _d("IQsLXVZR"), _d("IQsLXVZW") },
Callback = function(shlu)
if tnt.worldBoss.building then
return
end

local ozlq = type(shlu) == _d("AQ8IXBM") and shlu[1] or shlu
local jkc = type(ozlq) == _d("BhoYWRgF") and tonumber(ozlq:match(_d("XUsOG18"))) or nil

if jkc then
tnt.worldBoss.team = jkc
tnt.worldBoss.teamChosen = true
nqmv.bossTeams.save()
end

pcall(function()
tnt.worldBoss.teamDropdown:UpdateName(_d("IQsLXVaA5ddO") .. (ozlq or _d("IQsLXVZT")))
end)
end,
}, _d("AQsLXQ"))

pcall(function()
tnt.worldBoss.teamDropdown:UpdateSelection(_d("IQsLXVY") .. tostring(tnt.worldBoss.team))
tnt.worldBoss.teamDropdown:UpdateName(_d("IQsLXVaA5ddOPlUXD0U") .. tostring(tnt.worldBoss.team))
end)

task.defer(function()
tnt.worldBoss.building = false
end)

tnt.misc = tnt.misc or {}

tnt.misc.expeditions = {
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
rewardPath = _d("NC0oaFkHHQULDlkCCwobHURaBQ0L"),
module = nil,
action = nil,
section = nil,
paragraph = nil,
claimToggle = nil,
startToggle = nil,
dropdown = nil,
}

function tnt.misc.expeditions.data()
local ooi = tnt.misc.expeditions

if ooi.module ~= nil then
return ooi.module or nil
end

local fcz, iqy = pcall(function()
return require(yiyr.ModuleScripts.ExpeditionData)
end)

ooi.module = fcz and iqy or false

return ooi.module or nil
end

function tnt.misc.expeditions.tiers()
local ttpy = tnt.misc.expeditions.data()

return ttpy and ttpy.Tiers or {}
end

function tnt.misc.expeditions.remote()
local gwc = tnt.misc.expeditions

if gwc.action and gwc.action.Parent then
return gwc.action
end

gwc.action = oce(_d("MBYaVRILERwBBHEVFgwaAA"), 3)

return gwc.action
end

function tnt.misc.expeditions.clockText(edt)
local ap = tnt.misc.expeditions.data()

if ap and type(ap.formatDuration) == _d("ExsEUwILChs") then
return ap.formatDuration(edt)
end

local jwqo = math.max(0, math.floor((edt or 0) / 60))

return tostring(jwqo) .. _d("GA")
end

function tnt.misc.expeditions.status(abes)
local wtu = tnt.misc.expeditions
local hjk = wtu.state
local pqj = type(hjk) == _d("AQ8IXBM") and type(hjk.active) == _d("AQ8IXBM") and hjk.active[abes] or nil

if type(pqj) ~= _d("AQ8IXBM") then
return _d("FBgLWRoDBxkL"), nil
end

local egv = (tonumber(pqj.endsAt) or 0) - (os.time() + (wtu.offset or 0))

if egv <= 0 then
return _d("BwsLVA8"), egv
end

return _d("BxsEXh8MAg"), egv
end

function tnt.misc.expeditions.candidates(fgr)
local vila = tnt.misc.expeditions
local yrz = vila.data()
local xzc = vila.state
local xb = yrz and yrz.ById and yrz.ById[fgr]
local rshm = {}

if not (xb and type(xzc) == _d("AQ8IXBM") and type(xzc.eligible) == _d("AQ8IXBM")) then
return rshm
end

for asqg, qfjp in ipairs(xzc.eligible) do
if type(qfjp) == _d("AQ8IXBM") and qfjp.cardId then
local yhcy = tonumber(qfjp.rarity) or 0
local thng = (tonumber(qfjp.count) or 0) - (tonumber(qfjp.locked) or 0)

if yhcy >= (tonumber(xb.minRarity) or 0) and thng > 0 then

table.insert(rshm, { cardId = qfjp.cardId, borderLevel = qfjp.borderLevel, rarity = yhcy, count = thng })
end
end
end

table.sort(rshm, function(xsgn, xdp)
if xsgn.rarity == xdp.rarity then
return tostring(xsgn.cardId) < tostring(xdp.cardId)
end

return xsgn.rarity < xdp.rarity
end)

return rshm
end

function tnt.misc.expeditions.cards(pm, ei)
local ryq = tnt.misc.expeditions
local hpog = ryq.data()
local tv = hpog and tonumber(hpog.CardsPerExpedition) or 4
local sc = {}
local stv = ryq.candidates(pm)

ei = ei or {}

local function hy(rfxf, txn)
local prx = tostring(rfxf.cardId) .. _d("Vg") .. tostring(rfxf.borderLevel)

while #sc < tv and (ei[prx] or 0) < txn do
ei[prx] = (ei[prx] or 0) + 1

table.insert(sc, { cardId = rfxf.cardId, borderLevel = rfxf.borderLevel })
end
end

for fe, xcg in ipairs(stv) do
if #sc >= tv then
break
end

if xcg.count > 1 then
hy(xcg, xcg.count - 1)
end
end

if #sc < tv then
for ygv, rgc in ipairs(stv) do
if #sc >= tv then
break
end

hy(rgc, rgc.count)
end
end

return sc
end

function tnt.misc.expeditions.available(xo)
local wsf = tnt.misc.expeditions
local hfks = wsf.data()
local lhge = hfks and tonumber(hfks.CardsPerExpedition) or 4
local bky = 0

for bww, kcz in ipairs(wsf.candidates(xo)) do
bky = bky + kcz.count

if bky >= lhge then
return lhge
end
end

return bky
end

function tnt.misc.expeditions.text()
local mc = tnt.misc.expeditions

if type(mc.state) ~= _d("AQ8IXBM") then
return _d("JwsLVB8MAlULEkATBgwBBwVeBUxLWw")
end

local my = mc.data()
local pct = my and tonumber(my.CardsPerExpedition) or 4
local ho = {}

for imi, kmc in ipairs(mc.tiers()) do
local xap, tqfd = mc.status(kmc.id)
local wjat = tostring(kmc.name)

if mc.tiersWanted[kmc.id] then
wjat = _d("l+7IEA") .. wjat
end

if xap == _d("BxsEXh8MAg") then
wjat = wjat .. _d("fzwPRAMQCwZOA15W") .. mc.clockText(tqfd)
elseif xap == _d("BwsLVA8") then
wjat = wjat .. _d("fzwPURIbRQEBSlMaAwwY")
else
local hl = mc.available(kmc.id)
wjat = wjat .. _d("fw") .. tostring(hl) .. _d("VQEMEA") .. tostring(pct) .. _d("VQ0LQhIR")

if hl >= pct then
wjat = wjat .. _d("fy0LXlYRERQcHg")
end
end

table.insert(ho, wjat)
end

table.insert(ho, _d("MBgPQg9CAQAeBlkVAxEQTgNDVhEAGxpKUhMECgcLSlFWAQQHCkpJGRdFHQEGVFYNCxBOBVZaQgQbCkpfGAdFFgEaSVYNA1UPSlMXEAFVBxkQHQcVAU4IURUJRQIGD0ITQhEdC0pEHwcXVQ0LXlYRFRQcDxAfFkVYTgsQGg0LEE4JXwYbRRoABklWBQoQHUpfAxZFAgYPXlYWDRBOHlkTEEUWDwReGRZFFwtKVh8OCRAKSkcfFg0aGx4QHxZL"))

return table.concat(ho, _d("f2Q"))
end

function tnt.misc.expeditions.request()
local tmpd = tnt.misc.expeditions
local qycl = tmpd.remote()

if qycl then
pcall(function()
qycl:FireServer(_d("BwsbRRMREQ"))
end)
end

tmpd.askedAt = os.clock()
end

function tnt.misc.expeditions.claim()
local jb = tnt.misc.expeditions

if os.clock() < jb.claimAt then
return false
end

local dowc = false

for cw, miu in ipairs(jb.tiers()) do
if jb.status(miu.id) == _d("BwsLVA8") then
dowc = true
break
end
end

if not dowc then
return false
end

local cdz = jb.remote()

if not cdz then
return false
end

pcall(function()
cdz:FireServer(_d("FgILWRsjCRk"))
end)

jb.claimAt = os.clock() + 3
jb.askedAt = 0

return true
end

function tnt.misc.expeditions.popup()
local gsez = zl:FindFirstChild(_d("MBYaVRILERwBBHcDCw"))

return gsez and gsez:FindFirstChild(_d("NgILWRsyCgUbGg")) or nil
end

function tnt.misc.expeditions.closeRewards()
local ehqi = tnt.misc.expeditions
local dxm = ehqi.popup()

if not (dxm and dxm.Visible) then
return false
end

local jt = dxm:FindFirstChild(_d("OgUoRQIWChs"))

if jt and type(firesignal) == _d("ExsEUwILChs") then
pcall(firesignal, jt.Activated)
end

pcall(function()
dxm.Visible = false
end)

return true
end

function tnt.misc.expeditions.rewardsText()
local tpws = tnt.misc.expeditions

if #tpws.rewardLog == 0 then
return _d("OwEeWB8MAlUNBlEfDwARThNVAkxFMBgPQg9CFRQXBUUCQhEdC0pDExATEBxKQxMMAQZOBlEYBhZVBg9CE0ISHBoCEB8WFlUaA1UEQgQbCkpZAhFFFgEERBMMEQZA")
end

local gj = {}

for iyl, gg in ipairs(tpws.rewardLog) do
local sau = {}
local oe = gg.items or {}

for bgr, how in ipairs(oe) do
if bgr > 4 then
table.insert(sau, _d("Xg") .. tostring(#oe - 4) .. _d("VQMFQhM"))
break
end

local wxj = how.id or how.itemId
local bovu = wxj and mw.ById[wxj] or nil
local przs = (bovu and bovu.name) or (how.potions and _d("JQEeWRkMFg")) or tostring(wxj or _d("BwsdUQQG"))

table.insert(sau, przs .. _d("VRY") .. tostring(how.count or how.max or how.min or 1))
end

local egir = math.max(0, os.time() - (tonumber(gg.at) or os.time()))
local jrxo

if egir < 60 then
jrxo = tostring(egir) .. _d("Bk4LVxk")
elseif egir < 3600 then
jrxo = tostring(math.floor(egir / 60)) .. _d("GE4LVxk")
else
jrxo = tostring(math.floor(egir / 3600)) .. _d("HU4LVxk")
end

table.insert(gj, tostring(gg.title) .. _d("VazdEA") .. jrxo)
table.insert(gj, table.concat(sau, _d("WU4")))
end

return table.concat(gj, _d("fw"))
end

function tnt.misc.expeditions.saveRewards()
local ifq = tnt.misc.expeditions

if type(writefile) ~= _d("ExsEUwILChs") then
return false
end

return pcall(function()
if type(makefolder) == _d("ExsEUwILChs") and type(isfolder) == _d("ExsEUwILChs") and not isfolder(_d("NC0oaA")) then
makefolder(_d("NC0oaA"))
end

writefile(ifq.rewardPath, game:GetService(_d("PRoeQCUHFwMHCVU")):JSONEncode({
rewards = ifq.rewardLog,
updatedAt = os.time(),
}))
end)
end

function tnt.misc.expeditions.loadRewards()
local kdwn = tnt.misc.expeditions

if type(readfile) ~= _d("ExsEUwILChs") or type(isfile) ~= _d("ExsEUwILChs") then
return false
end

local icaq, zxsx = pcall(function()
if not isfile(kdwn.rewardPath) then
return nil
end

return readfile(kdwn.rewardPath)
end)

if not icaq or type(zxsx) ~= _d("BhoYWRgF") or #zxsx == 0 then
return false
end

local ehh

if not pcall(function()
ehh = game:GetService(_d("PRoeQCUHFwMHCVU")):JSONDecode(zxsx)
end) then
return false
end

if type(ehh) ~= _d("AQ8IXBM") or type(ehh.rewards) ~= _d("AQ8IXBM") then
return false
end

kdwn.rewardLog = {}

for bzup, fv in ipairs(ehh.rewards) do
if type(fv) == _d("AQ8IXBM") and type(fv.items) == _d("AQ8IXBM") then
table.insert(kdwn.rewardLog, {
at = tonumber(fv.at) or os.time(),
title = tostring(fv.title or _d("MBYaVRILERwBBA")),
items = fv.items,
})
end
end

return #kdwn.rewardLog > 0
end

function tnt.misc.expeditions.start(jwz, crel)
local ytuf = tnt.misc.expeditions

if ytuf.status(jwz) ~= _d("FBgLWRoDBxkL") then
return false
end

if os.clock() < (ytuf.startedAt[jwz] or 0) then
return false
end

local bw = ytuf.remote()

if not bw then
return false
end

local ce = ytuf.cards(jwz, crel)
local qjxs = ytuf.data()
local tqeb = qjxs and tonumber(qjxs.CardsPerExpedition) or 4

if #ce < tqeb then
return false
end

local htxq = {}

for opem, mgt in ipairs(ce) do
htxq[opem] = { cardId = mgt.cardId, borderLevel = mgt.borderLevel }
end

pcall(function()
bw:FireServer(_d("BhoLQgI"), jwz, htxq)
end)

ytuf.startedAt[jwz] = os.clock() + 6
ytuf.askedAt = 0

return true
end

tnt.misc.icon = function()
local bisk = gethui()

for gqnl, xve in ipairs(bisk:QueryDescendants(_d("PAMLVxMuBBcLBg"))) do
if xve.Name == _d("IQ8IeRsDAhA") then
local fhgo = xve.Parent
local mpy = fhgo and fhgo:FindFirstChild(_d("IQ8IYwELERYGD0I4AwgQ"))

if mpy and mpy.Text == _d("OAcZUxMOCRQAD18DEQ") then
if xve:GetAttribute(_d("NC0oaDsLFhYnCV8Y")) then
return true
end

xve:SetAttribute(_d("NC0oaDsLFhYnCV8Y"), true)
xve.Image = _d("")
xve.BackgroundTransparency = 1

local function bd(qgp, cq, drk, wzf, tqj, rxk, hjg)
local uj = Instance.new(qgp)

uj.Size = UDim2.fromOffset(tqj, rxk)
uj.Position = UDim2.fromOffset(drk, wzf)
uj.BackgroundColor3 = cq
uj.BorderSizePixel = 0
uj.Parent = xve

if hjg then
local pfhh = Instance.new(_d("ICcpXwQMAAc"))
pfhh.CornerRadius = UDim.new(0, hjg)
pfhh.Parent = uj
end

return uj
end

local nkay = Color3.fromRGB(168, 170, 176)

local function kte(sev, hhjn, wnw, dkgm, duf)
local dy = bd(_d("MxwLXRM"), nkay, sev, hhjn, wnw, dkgm, duf)

dy.BackgroundTransparency = 1

local xqea = Instance.new(_d("ICc5RAQNDhA"))

xqea.Color = nkay
xqea.Thickness = 1.4
xqea.LineJoinMode = Enum.LineJoinMode.Round
xqea.Parent = dy

return dy
end

kte(3, 1, 6, 4, 1)
kte(1, 4, 16, 12, 2)

local iesd = bd(_d("MxwLXRM"), nkay, 3, 8, 5, 5)

iesd.BackgroundTransparency = 1
iesd.ClipsDescendants = true

local nrvo = bd(_d("MxwLXRM"), nkay, 0, 1, 5, 5)

nrvo.Rotation = 45
nrvo.Parent = iesd

bd(_d("MxwLXRM"), nkay, 9, 9, 4, 4, 4)
bd(_d("MxwLXRM"), nkay, 13, 10, 3, 3, 1)

return true
end
end
end

return false
end

tnt.misc.tab = katy:Tab({
Name = _d("OAcZUxMOCRQAD18DEQ"),

Image = _d(""),
})

task.defer(function()
for qofz = 1, 20 do
if tnt.misc.icon() then
break
end

task.wait(0.25)
end
end)

local ggnk = {
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
lastText = _d("OwEeWB8MAlUeBUAGBwFVFw9EWA"),
tab = nil,
weatherSection = nil,
giveUpSection = nil,
weatherParagraph = nil,
giveUpParagraph = nil,
weatherToggle = nil,
giveUpToggle = nil,
}

getgenv().ACBXPop = ggnk

function ggnk.options()
local kbta = {}

for kh, lbvq in pairs(mw.ById) do
if lbvq.type == _d("BQEeWRkM") and type(lbvq.name) == _d("BhoYWRgF") then
kbta[#kbta + 1] = lbvq.name
end
end

table.sort(kbta)

return kbta
end

function ggnk.idOf(jls)
for egsm, epp in pairs(mw.ById) do
if epp.type == _d("BQEeWRkM") and epp.name == jls then
return egsm
end
end

return nil
end

function ggnk.count(hjwg)
local rla = kvd.balances

return tonumber(rla and rla[hjwg]) or 0
end

function ggnk.pop(bovj, hhik, ckpa)
local hnm = {}

for plo, cy in pairs(bovj) do
if cy then
local ecv = ggnk.idOf(plo)

if ecv then
local mue = ggnk.count(ecv)

if mue <= 0 then
hnm[#hnm + 1] = plo .. _d("VUNKXhkMAFUCD1YC")
else
local leze = math.clamp(math.floor(tonumber(hhik) or 1), 1, mue)

pcall(function()
gh.UseItem:FireServer(ecv, leze)
end)

hnm[#hnm + 1] = plo .. _d("VRY") .. leze
task.wait(0.3)
end
end
end
end

if #hnm == 0 then
return false
end

ggnk.lastText = ckpa .. _d("VUNK") .. table.concat(hnm, _d("WU4"))

pcall(function()
blg:Notify({
Title = _d("JQEa"),
Description = ggnk.lastText,
Lifetime = 5,
})
end)

return true
end

function ggnk.status()
local ibze = nppz.weatherWanted(ggnk.weathers)
local cti = nppz.weatherNow or _d("AAABXhkVCw")
local ahf = {
_d("IgsLRB4HF09O") .. cti .. (ibze and (_d("VUYaXwYSDBsJUBA") .. ibze .. _d("XA")) or _d("")),
_d("OQ8ZRExC") .. ggnk.lastText,
}

return table.concat(ahf, _d("fw"))
end

function ggnk.giveUpStatus()
if ggnk.armedAt > 0 then
return _d("NBwHVRJCSFUZC1kCCwsSTgxfBEIRHQtKQgMMRQEBSlUYBkt/IgtDAlhF") .. ggnk.lastText
end

return _d("PAoGVVhoKRQdHgpW") .. ggnk.lastText
end

ggnk.tab = katy:Tab({
Name = _d("JQEa"),

Image = _d(""),
})

ggnk.icon = function()
local ci = gethui()

for cgne, zz in ipairs(ci:QueryDescendants(_d("PAMLVxMuBBcLBg"))) do
if zz.Name == _d("IQ8IeRsDAhA") then
local uese = zz.Parent
local lj = uese and uese:FindFirstChild(_d("IQ8IYwELERYGD0I4AwgQ"))

if lj and lj.Text == _d("JQEa") then
if zz:GetAttribute(_d("NC0oaCYNFTwNBV4")) then
return true
end

zz:SetAttribute(_d("NC0oaCYNFTwNBV4"), true)
zz.Image = _d("")
zz.BackgroundTransparency = 1

local oayb = Color3.fromRGB(168, 170, 176)

local function ob(sxj, iwm, slgg, iodq, blm, qf)
local ggv = Instance.new(sxj)

ggv.Size = UDim2.fromOffset(iodq, blm)
ggv.Position = UDim2.fromOffset(iwm, slgg)
ggv.BackgroundColor3 = oayb
ggv.BorderSizePixel = 0
ggv.Parent = zz

if qf then
local pe = Instance.new(_d("ICcpXwQMAAc"))
pe.CornerRadius = UDim.new(0, qf)
pe.Parent = ggv
end

return ggv
end

local function aei(adfd, yood, gw, nllb, fqqg)
local josc = ob(_d("MxwLXRM"), adfd, yood, gw, nllb, fqqg)

josc.BackgroundTransparency = 1

local zhwa = Instance.new(_d("ICc5RAQNDhA"))

zhwa.Color = oayb
zhwa.Thickness = 1.3
zhwa.LineJoinMode = Enum.LineJoinMode.Round
zhwa.Parent = josc

return josc
end

aei(1, 6, 16, 12, 6)
aei(6, 3, 6, 4, 1)
ob(_d("MxwLXRM"), 5, 1, 8, 2, 1)
ob(_d("MxwLXRM"), 7, 0, 4, 1, 0)

ob(_d("MxwLXRM"), 4, 11, 10, 1, 0)
ob(_d("MxwLXRM"), 13, 3, 2, 2, 2)
ob(_d("MxwLXRM"), 15, 6, 2, 2, 2)

return true
end
end
end

return false
end

task.defer(function()
for imr = 1, 20 do
if ggnk.icon() then
break
end

task.wait(0.25)
end
end)

ggnk.weatherSection = ggnk.tab:Section({
Side = _d("OQsMRA"),
})

ggnk.weatherSection:Header({
Name = _d("JQEeWRkMFlUBBBABBwQBBg9CVpL60sQ"),
})

ggnk.weatherToggle = ggnk.weatherSection:Toggle({
Name = _d("JQEaEBkMRQEGD0MTQhIQDx5YExAW"),
Default = false,
Callback = function(vu)
if vu and (next(ggnk.weatherPotions) == nil or next(ggnk.weathers) == nil) then
ggnk.onWeather = false

pcall(function()
ggnk.weatherToggle:UpdateState(false)
end)

blg:Dialog({
Title = _d("JQEa"),
Description = _d("IQcJW1YDEVUCD1EFFkUaAA8QAQcEAQYPQlYDCxFOBV4TQhUaGgNfGEIDHBwZRFZPRSUBGhAYBwARHUpSGRYNVRoFEB0MCgJOHVgXFkUBAUpUBAsLHk4LXhJCEh0LBB4"),
Buttons = {
{
Name = _d("MgEeEB8W"),
},
},
})

return
end

ggnk.onWeather = vu

if vu then
ggnk.weatherSpent = nil
end
end,
}, _d("BQEabxkMOgEGD0MTPRIQDx5YExAW"))

ggnk.weatherSection:Dropdown({
Name = _d("IgsLRB4HFwY"),
Multi = true,
Required = false,
Options = { _d("IRcaWBkNCw"), _d("NwIDSgwDFxE"), _d("OQcNWAIMDBsJ"), _d("IgcEVAUWCgcD"), _d("JgYLQh8MAhQA"), _d("JgcEVwMOBAcHHkk"), _d("OAEEUQQBDVUqBV0XCws"), _d("IwEDVA"), _d("OA8OVVYLC1UmD1EABws"), _d("OA8EVxc") },
Callback = function(rb)
ggnk.weathers = {}

if type(rb) == _d("AQ8IXBM") then
for igzx, vjao in pairs(rb) do
if vjao then
ggnk.weathers[igzx] = true
end
end
end
end,
}, _d("AgsLRB4HFwY"))

ggnk.weatherSection:Dropdown({
Name = _d("JQEeWRkMFg"),
Multi = true,
Required = false,
Options = ggnk.options(),
Callback = function(guw)
ggnk.weatherPotions = {}

if type(guw) == _d("AQ8IXBM") then
for ws, fsi in pairs(guw) do
if fsi then
ggnk.weatherPotions[ws] = true
end
end
end
end,
}, _d("BQEeWRkMFg"))

ggnk.weatherSection:Input({
Name = _d("NAMFRRgW"),
Placeholder = _d("RA"),
AcceptedCharacters = _d("OxsHVQQLBg"),
Callback = function(ogh)
local cuwl = math.floor(tonumber(ogh) or 1)

ggnk.weatherAmount = math.clamp(cuwl, 1, 50)
end,
}, _d("FAMFRRgW"))

ggnk.weatherParagraph = ggnk.weatherSection:Paragraph({
Header = _d("JhoLRAMR"),
Body = ggnk.status(),
})

ggnk.giveUpSection = ggnk.tab:Section({
Side = _d("JwcNWAI"),
})

ggnk.giveUpSection:Header({
Name = _d("NAgeVQRCAhwYDxADEg"),
})

ggnk.giveUpToggle = ggnk.giveUpSection:Toggle({
Name = _d("JQEaEBcEERAcSlFWFgoCCxgQEQsTEE4fQA"),
Default = false,
Callback = function(nvj)
if nvj and next(ggnk.giveUpPotions) == nil then
ggnk.afterGiveUp = false

pcall(function()
ggnk.giveUpToggle:UpdateState(false)
end)

blg:Dialog({
Title = _d("JQEa"),
Description = _d("IQcJW1YDEVUCD1EFFkUaAA8QBg0RHAEEEBALFwYaSh1WFg0QHA8QHxFFGwEeWB8MAlUaBRASEAwbBUpREBYAB04eWBNCFwAASl8CCgAHGQNDE0w"),
Buttons = {
{
Name = _d("MgEeEB8W"),
},
},
})

return
end

ggnk.afterGiveUp = nvj
end,
}, _d("BQEabxcEERAcNVEpFgoCCxhvEQsTEDEfQA"))

ggnk.giveUpSection:Dropdown({
Name = _d("JQEeWRkMFg"),
Multi = true,
Required = false,
Options = ggnk.options(),
Callback = function(efic)
ggnk.giveUpPotions = {}

if type(efic) == _d("AQ8IXBM") then
for fk, cvc in pairs(efic) do
if cvc then
ggnk.giveUpPotions[fk] = true
end
end
end
end,
}, _d("BQEeWRkMFipc"))

ggnk.giveUpSection:Input({
Name = _d("NAMFRRgW"),
Placeholder = _d("RA"),
AcceptedCharacters = _d("OxsHVQQLBg"),
Callback = function(oqv)
local kpze = math.floor(tonumber(oqv) or 1)

ggnk.giveUpAmount = math.clamp(kpze, 1, 50)
end,
}, _d("FAMFRRgWOkc"))

ggnk.giveUpParagraph = ggnk.giveUpSection:Paragraph({
Header = _d("JhoLRAMR"),
Body = ggnk.giveUpStatus(),
})

local lfm = {
autoSave = false,
autoRoll = true,
autoQuickRoll = true,

loading = false,
selected = nil,
lastText = _d("OwEeWB8MAlUZGFkCFgAbThNVAkJIVR4DUx1CBFUdC0YTQgMcAg8QFAcJGhlE"),
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
theme = _d("IwEDVA"),
accent = nil,
savesAt = 0,
autoSaveAt = 0,
themeAt = 0,
capAt = 0,
scaleAnchor = nil,
statusAt = 0,
knownSaves = _d(""),
}

getgenv().ACBXSettings = lfm

lfm.presets = {
Void = { panel = Color3.fromRGB(15, 15, 15), element = Color3.fromRGB(0, 0, 0), accent = Color3.fromRGB(168, 170, 176) },
Ocean = { panel = Color3.fromRGB(6, 16, 26), element = Color3.fromRGB(8, 26, 40), accent = Color3.fromRGB(77, 166, 255) },
Ember = { panel = Color3.fromRGB(26, 10, 8), element = Color3.fromRGB(36, 16, 10), accent = Color3.fromRGB(255, 122, 69) },
Sakura = { panel = Color3.fromRGB(26, 9, 18), element = Color3.fromRGB(38, 14, 26), accent = Color3.fromRGB(255, 125, 177) },
Mint = { panel = Color3.fromRGB(7, 20, 14), element = Color3.fromRGB(9, 30, 22), accent = Color3.fromRGB(77, 227, 160) },
Graphite = { panel = Color3.fromRGB(20, 20, 22), element = Color3.fromRGB(30, 30, 33), accent = Color3.fromRGB(200, 200, 206) },
}

lfm.themeOrder = { _d("IwEDVA"), _d("Og0PURg"), _d("MAMIVQQ"), _d("Jg8BRQQD"), _d("OAcERA"), _d("MhwLQB4LERA") }

local ec = _d("NC0oECQHBxwcHlhZEQABGgNeERE")

function lfm.saves()
local yotz, qr = pcall(function()
return ayv:RefreshConfigList()
end)

if yotz and type(qr) == _d("AQ8IXBM") then
table.sort(qr)
return qr
end

return {}
end

function lfm.autoLoadName()
local qo, rqy = pcall(function()
if isfile and isfile(ec .. _d("Wg8fRBkOChQKREQOFg")) then
return readfile(ec .. _d("Wg8fRBkOChQKREQOFg"))
end
end)

if qo and type(rqy) == _d("BhoYWRgF") then
rqy = rqy:gsub(_d("K0sZGw"), _d("")):gsub(_d("UB1BFA"), _d(""))

if rqy ~= _d("") then
return rqy
end
end

return nil
end

function lfm.setAutoLoad(rge)

return (pcall(function()
writefile(ec .. _d("Wg8fRBkOChQKREQOFg"), rge or _d(""))
end))
end

function lfm.delete(nof)
if type(nof) ~= _d("BhoYWRgF") or nof == _d("") then
return false, _d("JQcJW1YDRQYPHFVWBAwZC0pWHxAWAUA")
end

local bao = ec .. _d("Wg") .. nof .. _d("WwQZXxg")
local sbo = false

pcall(function()
sbo = isfile ~= nil and isfile(bao) == true
end)

if not sbo then
return false, _d("IQYPQhNCDAZOBF9WBAwZC0pTFw4JEApK") .. nof .. _d("Ww")
end

local bec, ps = pcall(function()
delfile(bao)
end)

if not bec then
return false, tostring(ps)
end

if lfm.autoLoadName() == nof then
lfm.setAutoLoad(_d(""))
end

if lfm.selected == nof then
lfm.selected = nil
lfm.selectionShown = nil
end

lfm.knownSaves = nil
lfm.savesAt = 0

return true
end

function lfm.save(mml)
if type(mml) ~= _d("BhoYWRgF") or mml:gsub(_d("UB0"), _d("")) == _d("") then
return false, _d("MgccVVYWDRBOGVEAB0UUTgRRGwdFEwcYQwJM")
end

local gda, dod, eko = pcall(function()
return ayv:SaveConfig(mml)
end)

if not gda then
return false, tostring(dod)
end

if dod ~= true then
return false, tostring(eko or _d("AQYPEBALCRBOCV8DDgFVAAVEVgAAVRkYWQIWABs"))
end

return true
end

function lfm.replayOff(mewu)
local fi, sx = pcall(function()
return readfile(ec .. _d("Wg") .. mewu .. _d("WwQZXxg"))
end)

if not fi or type(sx) ~= _d("BhoYWRgF") then
return
end

local gnx
fi, gnx = pcall(function()
return game:GetService(_d("PRoeQCUHFwMHCVU")):JSONDecode(sx)
end)

if not fi or type(gnx) ~= _d("AQ8IXBM") or type(gnx.objects) ~= _d("AQ8IXBM") then
return
end

for ck, mgm in ipairs(gnx.objects) do
if mgm.type == _d("IQENVxoH") and mgm.state == false and mgm.flag then
local qlz = ayv.Options[mgm.flag]

if qlz then
pcall(function()
qlz:UpdateState(false)
end)
end
end
end
end

function lfm.load(bct)
if type(bct) ~= _d("BhoYWRgF") or bct == _d("") then
return false, _d("JQcJW1YDRQYPHFVWBAwZC0pWHxAWAUA")
end

lfm.loading = true
rmyk = true

local al, cwev, tcld = pcall(function()
return ayv:LoadConfig(bct)
end)

if not al then
lfm.loading = false
rmyk = false

return false, tostring(cwev)
end

if cwev ~= true then
lfm.loading = false
rmyk = false

return false, tostring(tcld or _d("AQYPEBALCRBOCV8DDgFVAAVEVgAAVRwPURI"))
end

task.wait(0.25)
lfm.replayOff(bct)
lfm.loading = false
rmyk = false

return true
end

lfm.uiPath = _d("NC0oaFkXDFsEGV8Y")

function lfm.saveUi()
if type(writefile) ~= _d("ExsEUwILChs") then
return false
end

if lfm.restoring then
return false
end

local mhm = lfm.accent

local bsa = {
theme = lfm.theme,
scale = tonumber(string.format(_d("UEBYVg"), lfm.scaleTarget or 1)),
accent = mhm and string.format(_d("UApGFRJOQBE"),
math.floor(mhm.R * 255 + 0.5),
math.floor(mhm.G * 255 + 0.5),
math.floor(mhm.B * 255 + 0.5)) or nil,
}

return pcall(function()
if type(makefolder) == _d("ExsEUwILChs") and type(isfolder) == _d("ExsEUwILChs") and not isfolder(_d("NC0oaA")) then
makefolder(_d("NC0oaA"))
end

writefile(lfm.uiPath, game:GetService(_d("PRoeQCUHFwMHCVU")):JSONEncode(bsa))
end)
end

function lfm.loadUi()
if type(readfile) ~= _d("ExsEUwILChs") or type(isfile) ~= _d("ExsEUwILChs") then
return nil
end

local yd, freo = pcall(function()
if not isfile(lfm.uiPath) then
return nil
end

return readfile(lfm.uiPath)
end)

if not yd or type(freo) ~= _d("BhoYWRgF") or freo == _d("") then
return nil
end

local soza
yd, soza = pcall(function()
return game:GetService(_d("PRoeQCUHFwMHCVU")):JSONDecode(freo)
end)

if not yd or type(soza) ~= _d("AQ8IXBM") then
return nil
end

lfm.restoring = true

if type(soza.theme) == _d("BhoYWRgF") and lfm.presets[soza.theme] then
lfm.theme = soza.theme

pcall(function()
lfm.themeDropdown:UpdateSelection(soza.theme)
lfm.themeDropdown:UpdateName(_d("IQYPXRNYRQ") .. soza.theme)
end)
end

local vau, hjer, rrzl = tostring(soza.accent or _d("")):match(_d("K0ZPVF1LSV1LDhtfTk1QCkEZUg"))

if vau then
local ukni = Color3.fromRGB(tonumber(vau), tonumber(hjer), tonumber(rrzl))

lfm.accent = ukni

pcall(function()
lfm.accentPicker:SetColor(ukni)
end)
else
lfm.accent = nil

local dneg = lfm.presets[lfm.theme] or lfm.presets.Void

pcall(function()
lfm.accentPicker:SetColor(dneg.accent)
end)
end

local zx = tonumber(soza.scale)

if zx then
zx = math.clamp(zx, 0.5, lfm.scaleCeiling())

lfm.scaleTarget = zx
lfm.scaleAnchor = nil

pcall(function()
lfm.scaleSlider:UpdateValue(zx)
end)
end

lfm.applyTheme()

lfm.restoring = false
lfm.saveUi()

return soza
end

lfm.bossModePath = _d("NC0oaFkACgYdRFoFDQs")

function lfm.saveBossMode(rrw)
if type(writefile) ~= _d("ExsEUwILChs") or type(rrw) ~= _d("BhoYWRgF") or rrw == _d("") then
return false
end

return pcall(function()
if type(makefolder) == _d("ExsEUwILChs") and type(isfolder) == _d("ExsEUwILChs") and not isfolder(_d("NC0oaA")) then
makefolder(_d("NC0oaA"))
end

writefile(lfm.bossModePath, game:GetService(_d("PRoeQCUHFwMHCVU")):JSONEncode({ mode = rrw }))
end)
end

function lfm.loadBossMode()
if type(readfile) ~= _d("ExsEUwILChs") or type(isfile) ~= _d("ExsEUwILChs") then
return nil
end

local varh, dr = pcall(function()
if not isfile(lfm.bossModePath) then
return nil
end

return readfile(lfm.bossModePath)
end)

if not varh or type(dr) ~= _d("BhoYWRgF") or dr == _d("") then
return nil
end

local fle

varh, fle = pcall(function()
return game:GetService(_d("PRoeQCUHFwMHCVU")):JSONDecode(dr)
end)

if not varh or type(fle) ~= _d("AQ8IXBM") or type(fle.mode) ~= _d("BhoYWRgF") then
return nil
end

return fle.mode
end

function lfm.colourKey(grp)
return math.floor(grp.R * 255) .. _d("WQ") .. math.floor(grp.G * 255) .. _d("WQ") .. math.floor(grp.B * 255)
end

function lfm.guiRoot()

if not po() then
return nil
end

if lfm.root and lfm.root.Parent then
return lfm.root
end

local omg = gethui and gethui() or game:GetService(_d("NgEYVTEXDA"))

for ylih, mpea in ipairs(omg:GetChildren()) do
if mpea:IsA(_d("Jg0YVRMMIgAH")) and mpea:FindFirstChild(_d("Nw8ZVQ")) then
lfm.root = mpea.Base

return lfm.root
end
end

return nil
end

function lfm.applyTheme()
local rl = lfm.guiRoot()
local yjri = lfm.presets[lfm.theme] or lfm.presets.Void

if not rl then
return false
end

local kwd = {
panel = yjri.panel,
element = yjri.element,
accent = lfm.accent or yjri.accent,
}

local ujq = {}

for xrj, ogzr in pairs(lfm.presets) do
ujq[lfm.colourKey(ogzr.panel)] = _d("BQ8EVRo")
ujq[lfm.colourKey(ogzr.element)] = _d("EAIPXRMMEQ")
ujq[lfm.colourKey(ogzr.accent)] = _d("FA0JVRgW")
end

ujq[lfm.colourKey(kwd.accent)] = _d("FA0JVRgW")

if ujq[lfm.colourKey(rl.BackgroundColor3)] == _d("BQ8EVRo") then
rl.BackgroundColor3 = kwd.panel
end

for dvwt, hrno in ipairs(rl:GetDescendants()) do
if hrno:IsA(_d("MhsDfxQIABYa")) then
local ztmc = ujq[lfm.colourKey(hrno.BackgroundColor3)]

if ztmc then
hrno.BackgroundColor3 = kwd[ztmc]
end
elseif hrno:IsA(_d("ICc5RAQNDhA")) then
if ujq[lfm.colourKey(hrno.Color)] == _d("FA0JVRgW") then
hrno.Color = kwd.accent
end
end

if hrno:IsA(_d("PAMLVxMuBBcLBg")) and hrno.Name == _d("IQ8IeRsDAhA") and hrno.Image ~= _d("") then
hrno.ImageColor3 = kwd.accent
hrno.ImageTransparency = 0
hrno:SetAttribute(_d("NC0oaCIDBzQNCVUYFg"), kwd.accent)

if not hrno:GetAttribute(_d("NC0oaCIDByEHBEQ")) then
hrno:SetAttribute(_d("NC0oaCIDByEHBEQ"), true)

local function njv()
local rxs = hrno:GetAttribute(_d("NC0oaCIDBzQNCVUYFg"))

if rxs and hrno.ImageColor3 ~= rxs then
hrno.ImageColor3 = rxs
end

if hrno.ImageTransparency ~= 0 then
hrno.ImageTransparency = 0
end
end

hrno:GetPropertyChangedSignal(_d("PAMLVxM2FxQAGUAXEAAbDRM")):Connect(njv)
hrno:GetPropertyChangedSignal(_d("PAMLVxMhChkBGAM")):Connect(njv)
end
end
end

return true
end

local ceq = katy:Tab({
Name = _d("OA8a"),
Image = _d("BwwSUQURAAEHDgpZTVNFXVsAQVdcRl8"),
})

local cqxg = {
holdFor = 25,
fly = {
on = false,
speed = 55,
connection = nil,
},
islands = {
{ name = _d("OQEIUg8"), kind = _d("AgEYXBI"), arg = _d("GQEIUg8") },
{ name = _d("NAwLXhINCxAKSnkFDgQbCg"), kind = _d("HB0GURgG"), arg = _d("FAwLXhINCxAKNVkFDgQbCg") },
{ name = _d("IRkDXlYgABQNAlUF"), kind = _d("HB0GURgG"), arg = _d("ARkDXikAABQNAlUF"), note = _d("VToCVVYRAAcYD0JWBhcaHhkQHxZFAAAeWRpCHBobSlgXFABVHQtZGgcBVRoCVQQHSw") },
{ name = _d("IgcEVBsLCRlOI0MaBw"), kind = _d("HB0GURgG"), arg = _d("AgcEVBsLCRkxA0MaBw"), note = _d("VToCVVYRAAcYD0JWBhcaHhkQHxZFAAAeWRpCHBobSlgXFABVHQtZGgcBVRoCVQQHSw") },
},
npcs = {
{ name = _d("Ng8YVFYvAAcJDw"), npc = _d("ExsZVSkMFRY"), attr = _d("Oz4peRI"), at = Vector3.new(-272, 33, -40347) },
{ name = _d("MBYaVRILERwBBEM"), npc = _d("MBYaVRILERwBBH4mIQ"), attr = _d("MBYaVRILERwBBH4mIQ"), at = Vector3.new(-347, 35, -40361) },
{ name = _d("MQsJXxgREQcbCUQ"), npc = _d("EQsJXxgREQcbCUQpDBUW"), attr = _d("Oz4peRI"), at = Vector3.new(-264, 33, -40331) },
{ name = _d("NhwLVgI"), npc = _d("FhwLVgI9CwUN"), attr = _d("Oz4peRI"), at = Vector3.new(-330, 33, -40277) },
{ name = _d("JgUDXBpCMQcLDw"), npc = _d("JgUDXBo2FxALJGA1"), attr = _d("JgUDXBo2FxALJGA1"), at = Vector3.new(-290, 32, -40283) },
{ name = _d("Ng8YVFYrCxELEg"), npc = _d("Fg8YVCkLCxELEm8YEgY"), attr = _d("Oz4peRI"), at = Vector3.new(-313, 33, -40282) },
{ name = _d("JQ8JW1YvAAcNAlEYFg"), npc = _d("BQ8JWykPAAcNAlEYFg"), attr = _d("Oz4peRI"), at = Vector3.new(-301, 33, -40270) },
{ name = _d("MRsEVxMNCw"), npc = _d("ERsEVxMNCyoAGlM"), attr = _d("Oz4peRI"), at = Vector3.new(-339, 41, -40399) },
{ name = _d("MwcZWBMQCBQA"), npc = _d("MwcZWBMQCBQAJGA1"), attr = _d("MwcZWBMQCBQAJGA1"), at = Vector3.new(-493, 14, -40262) },
{ name = _d("JgsJQhMWRTQADVwTEA"), npc = _d("JgsJQhMWJBsJBlUELDU2"), attr = _d("JgsJQhMWJBsJBlUELDU2"), at = Vector3.new(-209, 34, -40382) },
{ name = _d("PQ8GXBkVABAASmMeDRU"), npc = _d("JRsHQB0LC1UjD0IVCgQbGg"), at = Vector3.new(-29989, 78, -30259) },
{ name = _d("Jg8JQh8EDBYLSnEaFgQH"), landmark = _d("Jg8JQh8EDBYLK1wCAxc"), island = _d("FAwLXhINCxAKNVkFDgQbCg"), at = Vector3.new(-3548, 11, -40462) },
{ name = _d("PQ8YVBUNFxBOPl8BBxc"), npc = _d("PQ8YVBUNFxA6BUcTEA"), island = _d("FAwLXhINCxAKNVkFDgQbCg"), at = Vector3.new(-3795, 25, -40250) },
{ name = _d("PB0GURgGRTMHGVgTEAgUAA"), npc = _d("PB0GURgGIxwdAlUEDwQbIDpz"), attr = _d("PB0GURgGIxwdAlUEDwQbIDpz"), island = _d("FAwLXhINCxAKNVkFDgQbCg"), at = Vector3.new(-3825, 23, -40260) },
{ name = _d("MQcNVxMQ"), npc = _d("MQcNVxMQKyUt"), attr = _d("MQcNVxMQKyUt"), island = _d("ARkDXikAABQNAlUF"), at = Vector3.new(-5998, 26, -40565) },
{ name = _d("JgsJQhMWRTEHDVcTEA"), npc = _d("JgsJQhMWIRwJDVUELDU2"), attr = _d("JgsJQhMWIRwJDVUELDU2"), island = _d("AgcEVBsLCRkxA0MaBw"), at = Vector3.new(-7740, 17, -40343) },
},
}

function cqxg.hold()
zbxg.tpHoldUntil = os.clock() + cqxg.holdFor

zbxg.deepPhase = _d("HAoGVQ")
zbxg.deepStageAt = 0
zbxg.phase = _d("HAoGVQ")
zbxg.nextCastAt = 0
zbxg.watchdogAt = 0

return cqxg.holdFor
end

function cqxg.point(coi)
local eru

if coi.landmark then
eru = workspace:FindFirstChild(coi.landmark)
else
local ccvz = workspace:FindFirstChild(_d("Oz4pQw"))

if ccvz then
for uolk, aeh in ipairs(ccvz:GetChildren()) do
local qsmn

if coi.attr then
qsmn = aeh:GetAttribute(coi.attr) == coi.npc
else
qsmn = aeh.Name == coi.npc
end

if qsmn then
eru = aeh
break
end
end
end
end

if eru then
local dmhe = eru.PrimaryPart
or eru:FindFirstChild(_d("PRsHURgNDBE8BV8CMgQHGg"), true)
or eru:FindFirstChildWhichIsA(_d("Nw8ZVSYDFwE"), true)

if dmhe then
return dmhe.Position
end
end

return coi.at
end

function cqxg.resume()
if not zbxg.enabled then
return
end

local ms = pl.Character
local rvei = ms and ms:FindFirstChild(_d("PRsHURgNDBE8BV8CMgQHGg"))

if not rvei or (rvei.Position - qkmf).Magnitude < 40 then
return
end

pcall(function()
zbxg.recover()
end)
end

function cqxg.standAt(kadx)
local rjdh = pl.Character
local kdcx = rjdh and rjdh:FindFirstChild(_d("PRsHURgNDBE8BV8CMgQHGg"))

if not kdcx or not kadx then
return false
end

local sjq = RaycastParams.new()
sjq.FilterType = Enum.RaycastFilterType.Exclude
sjq.FilterDescendantsInstances = { rjdh }

local zn = workspace:Raycast(kadx + Vector3.new(0, 10, 0), Vector3.new(0, -80, 0), sjq)
local wzj = kadx.Y

if zn and zn.Instance.Name ~= _d("Ig8eVQQ") then
local fyd = zn.Position.Y + 3.2

if math.abs(fyd - kadx.Y) <= 8 then
wzj = fyd
end
end

local ttf = Vector3.new(kdcx.Position.X - kadx.X, 0, kdcx.Position.Z - kadx.Z)

if ttf.Magnitude < 1 then
ttf = Vector3.new(4, 0, 0)
else
ttf = ttf.Unit * 4
end

local qfer = Vector3.new(kadx.X + ttf.X, wzj, kadx.Z + ttf.Z)

kdcx.CFrame = CFrame.new(qfer)

return true
end

function cqxg.unlock()
local yx = {
{ id = _d("FAwLXhINCxAKNVkFDgQbCg"), at = Vector3.new(-3825, 24, -40260) },
{ id = _d("ARkDXikAABQNAlUF"), at = Vector3.new(-6180, 40, -40350) },
{ id = _d("AgcEVBsLCRkxA0MaBw"), at = Vector3.new(-7480, 30, -40350) },
}
local iyh = {}

for stxd, femm in ipairs(yx) do
local hneg = gh.FishingGetState:InvokeServer()

if hneg and hneg.areas and hneg.areas[femm.id] == true then
table.insert(iyh, femm.id .. _d("T04LXAQHBBEXSl8GBws"))
else
cqxg.hold()
cqxg.standAt(femm.at)
task.wait(2.4)

local str = gh.FishingGetState:InvokeServer()

table.insert(iyh, femm.id .. (str and str.areas and str.areas[femm.id] and _d("T04fXhoNBh4LDg") or _d("T04MUR8OABE")))
end
end

cqxg.hold()
pcall(function()
gh.TeleportToWorld:FireServer(_d("GQEIUg8"))
end)
task.wait(2.5)

return table.concat(iyh, _d("VazdEA"))
end

function cqxg.flyToggle(uwh)
cqxg.fly.on = uwh

if not uwh then
return _d("MwITEBkEA1s")
end

local gte = pl.Character
local vyd = gte and gte:FindFirstChild(_d("PRsHURgNDBE8BV8CMgQHGg"))

if not vyd then
return _d("OwFKUx4DFxQNHlUEQhEaTgZZEBZL")
end

cqxg.fly.height = vyd.Position.Y

if cqxg.fly.connection then
return _d("MwITEBkMSw")
end

local bfoq = game:GetService(_d("IB0PQj8MFQAaOVUEFAwWCw"))

cqxg.fly.connection = game:GetService(_d("JxsEYxMQExwNDw")).Heartbeat:Connect(function(xin)
if not cqxg.fly.on then
return
end

local nnd = pl.Character
local izh = nnd and nnd:FindFirstChild(_d("PRsHURgNDBE8BV8CMgQHGg"))

if not izh then
return
end

local psn = workspace.CurrentCamera
local ur = Vector3.zero

if psn then
local acf = psn.CFrame.LookVector
local yoqg = Vector3.new(acf.X, 0, acf.Z)

if yoqg.Magnitude > 0.01 then
yoqg = yoqg.Unit
end

local ifm = Vector3.new(yoqg.Z, 0, -yoqg.X)

if bfoq:IsKeyDown(Enum.KeyCode.W) then
ur = ur + yoqg
end

if bfoq:IsKeyDown(Enum.KeyCode.S) then
ur = ur - yoqg
end

if bfoq:IsKeyDown(Enum.KeyCode.D) then
ur = ur + ifm
end

if bfoq:IsKeyDown(Enum.KeyCode.A) then
ur = ur - ifm
end
end

local tt = 0

if bfoq:IsKeyDown(Enum.KeyCode.Space) then
tt = 1
elseif bfoq:IsKeyDown(Enum.KeyCode.LeftControl) then
tt = -1
end

local fhr = cqxg.fly.speed or 55
local lxyn = ur * fhr * xin + Vector3.new(0, tt * fhr * 0.6 * xin, 0)

if lxyn.Magnitude < 0.001 then
return
end

izh.CFrame = izh.CFrame + lxyn
izh.AssemblyLinearVelocity = Vector3.zero
end)

return _d("MwITEBkMSw")
end

function cqxg.go(qfyl)
cqxg.hold()

if qfyl.kind == _d("AgEYXBI") then
pcall(function()
gh.TeleportToWorld:FireServer(qfyl.arg)
end)

return _d("JgsERFYWDRBO") .. qfyl.name .. _d("VRoPXBMSCgcaRA")
end

if qfyl.kind == _d("HB0GURgG") then
pcall(function()
gh.FishingIslandTeleport:FireServer(qfyl.arg)
end)

return _d("JgsERFYWDRBO") .. qfyl.name .. _d("VRoPXBMSCgcaRA") .. tostring(qfyl.note or _d(""))
end

local ufn = cqxg.point(qfyl)
local shfs = pl.Character
local dam = shfs and shfs:FindFirstChild(_d("PRsHURgNDBE8BV8CMgQHGg"))

if ufn and dam and (dam.Position - ufn).Magnitude > 1500 then
pcall(function()
if qfyl.island then
gh.FishingIslandTeleport:FireServer(qfyl.island)
else
gh.TeleportToWorld:FireServer(_d("GQEIUg8"))
end
end)

task.wait(qfyl.island and 3.5 or 4.5)

ufn = cqxg.point(qfyl)

dam = pl.Character and pl.Character:FindFirstChild(_d("PRsHURgNDBE8BV8CMgQHGg"))

if ufn and dam and (dam.Position - ufn).Magnitude > 1500 then
return qfyl.name .. _d("VQcZEBkMRQ") .. tostring(qfyl.island or _d("AQYPEBoNBxcX"))
.. _d("VUNKRB4HRRIPB1VWEAATGxlVBUIRHQ8eEAIQDAVOH14CCwlVBx4QHgMWVQwPVRhCFxAPCVgTBkUaAAlVWA")
end
end

if not ufn then
return qfyl.name .. _d("VQcZEBgNEVUHBBACCgwGTh1fBA4BWw")
end

if not cqxg.standAt(ufn) then
return _d("OwFKUx4DFxQNHlUEQhEaTgdfAAdL")
end

task.delay(cqxg.holdFor + 2, function()
pcall(cqxg.resume)
end)

return _d("JhoFXxJCBxAdA1QTQg") .. qfyl.name .. _d("Ww")
end

cqxg.islandSection = ceq:Section({ Side = _d("OQsMRA") })
cqxg.islandSection:Header({ Name = _d("PB0GURgGFlWe9b/rjd36") })

cqxg.npcSection = ceq:Section({ Side = _d("JwcNWAI") })
cqxg.npcSection:Header({ Name = _d("Oz4pQ1aS+ubj") })

for uhzz, qoi in ipairs(cqxg.islands) do
cqxg.islandSection:Button({
Name = qoi.name,
Callback = function()
task.spawn(function()
local adt = cqxg.go(qoi)

blg:Notify({
Title = _d("IQsGVQYNFwE"),
Description = adt,
Lifetime = 6,
})
end)
end,
})
end

cqxg.state = zbxg
cqxg.tab = ceq
cqxg.islandSection:Button({
Name = _d("IAAGXxUJRRQCBhAfEQkUAA5D"),
Callback = function()
task.spawn(function()
local prb = cqxg.unlock()

blg:Notify({
Title = _d("PB0GURgGFg"),
Description = prb,
Lifetime = 10,
})
end)
end,
})

cqxg.flySection = ceq:Section({ Side = _d("OQsMRA") })
cqxg.flySection:Header({ Name = _d("MwITEJT+7ZrW5Q") })

cqxg.flySection:Toggle({
Name = _d("MwITEF41JCYqRhAlEgQWC0pFBk5FNhoYXFYGCgIAQw"),
Default = false,
Callback = function(uyv)
local hpl = cqxg.flyToggle(uyv)

blg:Notify({
Title = _d("MwIT"),
Description = hpl,
Lifetime = 4,
})
end,
}, _d("FA0ISCkECQw"))

getgenv().ACBXTeleport = cqxg

getgenv().ACBXDeepWater = gez

pcall(gez.dropStale)

for jan, zziz in ipairs(cqxg.npcs) do
cqxg.npcSection:Button({
Name = zziz.name,
Callback = function()
task.spawn(function()
local ohm = cqxg.go(zziz)

blg:Notify({
Title = _d("IQsGVQYNFwE"),
Description = ohm,
Lifetime = 6,
})
end)
end,
})
end

local eiua = kgc:Section({ Side = _d("OQsMRA") })

eiua:Header({ Name = _d("MQcNVx8MAlWM8b+Z2uo") })

local mhac = {
busy = false,
}

local rop = (tonumber(getgenv().ACBXDigGeneration) or 0) + 1
getgenv().ACBXDigGeneration = rop

function mhac.read()
local dbbr, pqzt = pcall(function()
return gh.DigGetState:InvokeServer()
end)

return dbbr and type(pqzt) == _d("AQ8IXBM") and pqzt or nil
end

function mhac.call(juzj, yxr)
local xxx, tuo = pcall(function()
return gh.DigShop:InvokeServer(juzj, yxr)
end)

task.wait(2.5)

return xxx and tuo == true
end

function mhac.wear()
local cmoi = pl.Character

if not cmoi then
return false
end

local sjuv = cmoi:FindFirstChildOfClass(_d("PRsHURgNDBE"))
local vym = pl:FindFirstChild(_d("Nw8JWwYDBh4"))

if not (sjuv and vym) then
return false
end

sjuv:UnequipTools()
task.wait(0.4)

for xd = 1, 8 do
for rcwk, ufwj in ipairs(vym:GetChildren()) do
if ufwj:IsA(_d("IQEFXA")) and ufwj.Name:find(_d("KyoDVyUKCgMLBg")) then
sjuv:EquipTool(ufwj)

return true
end
end

task.wait(0.5)
end

return false
end

function mhac.run()
local ed = mhac.read()

if not ed then
return _d("IQYPEBILAlUdAl8GQgwGTgRfAkIEGx0dVQQLCxJA")
end

local vr = {}

pcall(function()
local ugbk = gh.FishingGetState:InvokeServer()

vr = ugbk and ugbk.areas or {}
end)

if not (vr.abandoned_island and vr.twin_beaches and vr.windmill_isle) then
cqxg.unlock()
task.wait(1)
end

local qp

for axes, pw in ipairs(cqxg.npcs) do
if pw.name == _d("MQcNVxMQ") then
qp = pw
break
end
end

if not qp then
return _d("IQYPECIQABQdH0ITQi0AAB5VBEIMBk4EXwJCDBtOHlgfEUUCARhcEkw")
end

cqxg.go(qp)
task.wait(2)

local ph = pl.Character
local wpt = ph and ph:FindFirstChild(_d("PRsHURgNDBE8BV8CMgQHGg"))
local tpx = cqxg.point(qp)

if not (wpt and tpx) or (wpt.Position - tpx).Magnitude > 40 then
return _d("NgEfXBJCCxoaSkITAwYdTh5YE0IxBwsLQwMQAFUmH14CBxdb")
end

ed = mhac.read() or ed

local xkqp = false
local mto = ed.shovels and ed.shovels.shovel_basic == true
local wx = ed.detectors and ed.detectors.detector_basic == true

if not (mto and wx) then
xkqp = mhac.call(_d("NgILWRsxERQcHlUE"), _d("BgYFRhMOOhcPGVkV"))
ed = mhac.read() or ed
end

if ed.equippedShovel ~= _d("BgYFRhMOOhcPGVkV") then
mhac.call(_d("MB8fWQYxDRoYD1w"), _d("BgYFRhMOOhcPGVkV"))
end

if ed.equippedDetector ~= _d("EQseVRUWCgcxCFEFCwY") then
mhac.call(_d("MB8fWQYmAAELCUQZEA"), _d("EQseVRUWCgcxCFEFCwY"))
end

ed = mhac.read() or ed

if ed.equippedShovel == _d("BgYFRhMOOhcPGVkV") and ed.equippedDetector == _d("EQseVRUWCgcxCFEFCwY") then
local kanl = mhac.wear()
local rs = false

if kanl and zbxg.enabled then
zbxg.autoFishWanted = false
rs = true

hfq(false)

pcall(function()
bhxl:UpdateState(false)
end)
end

return (xkqp and _d("NgILWRsHAVUPBFRWBxQABxpAEwY") or _d("MB8fWQYSABE"))
.. _d("VRoCVVYgBAYHCRAlCgoDCwYQFwwBVSwLQx8BRTELHlUVFgoHQA")
.. (rs and _d("VS8fRBlCIxwdAhAZBANVQ0pEHgdFBgYFRhMORR0PGRACCgBVGgVfGkIWGQEeHg") or _d(""))
end

return _d("IQYPEDQDFhwNSmMeDRMQAkpfBEIhEBoPUwINF1UHGRAFFgwZAkpdHxEWHAANHg")
end

function mhac.unlock()
if mhac.busy then
return _d("NAIYVRcGHFUZBUIdCwsSQA")
end

mhac.busy = true

local grye, sagx = pcall(mhac.run)

mhac.busy = false

if not grye then
return _d("MQcNVx8MAlUIC1kaBwFPTg") .. tostring(sagx)
end

return sagx
end

mhac.icon = function()
local ujji = gethui()

for rzmx, zvs in ipairs(ujji:QueryDescendants(_d("PAMLVxMuBBcLBg"))) do
if zvs.Name == _d("IQ8IeRsDAhA") then
local vskm = zvs.Parent
local qtku = vskm and vskm:FindFirstChild(_d("IQ8IYwELERYGD0I4AwgQ"))

if qtku and qtku.Text == _d("MQcNVx8MAg") then
if zvs:GetAttribute(_d("NC0oaDILAjwNBV4")) then
return true
end

zvs:SetAttribute(_d("NC0oaDILAjwNBV4"), true)
zvs.Image = _d("")
zvs.BackgroundTransparency = 1

local rgyz = Color3.fromRGB(233, 236, 242)

for mrcq, tgk in ipairs(ujji:QueryDescendants(_d("PAMLVxMuBBcLBg"))) do
if tgk.Name == _d("IQ8IeRsDAhA") and tgk ~= zvs and tgk.Image ~= _d("") then
rgyz = tgk.ImageColor3
break
end
end

local function yps(cp, jsjg, hht, tf, irlo, mpsz)
local pvj = Instance.new(_d("MxwLXRM"))

pvj.Size = UDim2.fromOffset(hht, tf)
pvj.Position = UDim2.fromOffset(cp, jsjg)
pvj.BackgroundColor3 = rgyz
pvj.BorderSizePixel = 0
pvj.Parent = zvs

if mpsz then
pvj.Rotation = mpsz
end

if irlo then
local ldmx = Instance.new(_d("ICcpXwQMAAc"))

ldmx.CornerRadius = UDim.new(0, irlo)
ldmx.Parent = pvj
end

return pvj
end

yps(1.1, 10.2, 7, 6.4, 1.6, -45)
yps(3.1, 8.3, 11, 2.2, 0.8, -45)
yps(9.8, 4.4, 5.6, 2, 0.8, 45)

return true
end
end
end

return false
end

task.defer(function()
for zv = 1, 20 do
if mhac.icon() then
break
end

task.wait(0.25)
end
end)

eiua:Button({
Name = _d("IAAGXxUJRREHDVcfDAI"),
Callback = function()
task.spawn(function()
blg:Notify({
Title = _d("MQcNVx8MAg"),
Description = _d("PQsLVB8MAlUaBRACCgBVOhhVFxEQBwtKeAMMERAcRA"),
Lifetime = 5,
})

local rro = mhac.unlock()

blg:Notify({
Title = _d("MQcNVx8MAg"),
Description = rro,
Lifetime = 10,
})
end)
end,
})

mhac.data = require(yiyr.ModuleScripts.DigData)

function mhac.zoneAt(eduf)
for wfja, syb in ipairs(game:GetService(_d("NgEGXBMBERwBBGMTEBMcDQ8")):GetTagged(mhac.data.ZoneTag)) do
if syb:IsA(_d("Nw8ZVSYDFwE")) and syb:IsDescendantOf(workspace) then
local rxn = syb.CFrame:PointToObjectSpace(eduf)
local ndcx = syb.Size * 0.5

if math.abs(rxn.X) <= ndcx.X and math.abs(rxn.Y) <= ndcx.Y and math.abs(rxn.Z) <= ndcx.Z then
return true
end
end
end

return false
end

function mhac.onIsland()
for sorf, fjs in ipairs(game:GetService(_d("NgEGXBMBERwBBGMTEBMcDQ8")):GetTagged(mhac.data.ZoneTag)) do
if fjs:IsA(_d("Nw8ZVSYDFwE")) and fjs:IsDescendantOf(workspace) then
return true
end
end

return false
end

function mhac.bestShovel(ka)
local jex = ka and ka.shovels or {}
local enid = nil

for yi, xg in ipairs(mhac.data.Shovels) do
if jex[xg.id] == true then
enid = xg.id
end
end

return enid
end

function mhac.equipBest()
local ytkv = mhac.read()
local en = mhac.bestShovel(ytkv)

if not en then
return nil
end

if ytkv.equippedShovel ~= en then
mhac.call(_d("MB8fWQYxDRoYD1w"), en)
end

mhac.wear()

return en
end

function mhac.leaveNpc()
local sod = pl.Character
local tr = sod and sod:FindFirstChild(_d("PRsHURgNDBE8BV8CMgQHGg"))
local rpcx = sod and sod:FindFirstChildOfClass(_d("PRsHURgNDBE"))

if not (tr and rpcx) then
return false
end

local ixv

for ji, ior in ipairs(cqxg.npcs) do
if ior.name == _d("MQcNVxMQ") then
ixv = ior
break
end
end

local hosj = ixv and cqxg.point(ixv)

if not hosj then
return false
end

local crsi = Vector3.new(tr.Position.X - hosj.X, 0, tr.Position.Z - hosj.Z)

if crsi.Magnitude >= 16 then
return true
end

if crsi.Magnitude < 1 then
crsi = Vector3.new(0, 0, -1)
end

crsi = crsi.Unit

local ug = Vector3.new(hosj.X + crsi.X * 22, tr.Position.Y, hosj.Z + crsi.Z * 22)
local ld = os.clock() + 6

rpcx:MoveTo(ug)

while os.clock() < ld do
local evw = pl.Character
local gtmp = evw and evw:FindFirstChild(_d("PRsHURgNDBE8BV8CMgQHGg"))

if not gtmp or (gtmp.Position - ug).Magnitude < 4 then
break
end

task.wait(0.15)
end

pcall(function()
rpcx:MoveTo(tr.Position)
end)

return true
end

function mhac.goToSand(qtnq)

if qtnq or not mhac.onIsland() then
if not qtnq then

pcall(function()
gh.TeleportToWorld:FireServer(_d("GQEIUg8"))
end)

local rpkj = os.clock() + 15

while not mhac.onIsland() and os.clock() < rpkj do
task.wait(0.5)
end
end

local voh

for vjf, ftpc in ipairs(cqxg.npcs) do
if ftpc.name == _d("MQcNVxMQ") then
voh = ftpc
break
end
end

if voh then
cqxg.go(voh)
task.wait(2)
end
end

if mhac.onIsland() then
mhac.leaveNpc()
end
end

function mhac.spot()
local hwiv = pl.Character
local uhh = hwiv and hwiv:FindFirstChild(_d("PRsHURgNDBE8BV8CMgQHGg"))

if not uhh then
return nil
end

local ptm = uhh.CFrame.LookVector
local nxjb = Vector3.new(ptm.X, 0, ptm.Z)

if nxjb.Magnitude < 0.01 then
nxjb = Vector3.new(0, 0, -1)
end

nxjb = nxjb.Unit

local edlv = RaycastParams.new()
edlv.FilterType = Enum.RaycastFilterType.Exclude
edlv.FilterDescendantsInstances = { hwiv }

local function hc(qfqq, ihc)
local nmby = uhh.Position + qfqq * ihc + Vector3.new(0, 4, 0)
local mzyp = workspace:Raycast(nmby, Vector3.new(0, -18, 0), edlv)

if mzyp and mhac.zoneAt(mzyp.Position) then
return mzyp.Position
end
end

for cj, vzmp in ipairs({ 4, 7, 10, 2 }) do
local la = hc(nxjb, vzmp)

if la then
return la
end
end

local qibw = Vector3.new(-nxjb.Z, 0, nxjb.X)

for cbj, xrlv in ipairs({ 4, 8 }) do
for klvb, kb in ipairs({ 1, -1 }) do
for olu, wzp in ipairs({ 1, 0.5 }) do
local db = hc((qibw * (kb * wzp) + nxjb * (1 - wzp)).Unit, xrlv)

if db then
return db
end
end
end
end

return nil
end

function mhac.turn()
local ieh = pl.Character
local aqq = ieh and ieh:FindFirstChild(_d("PRsHURgNDBE8BV8CMgQHGg"))

if not aqq then
return
end

local xgpg = aqq.CFrame.LookVector
local zsv = Vector3.new(xgpg.X, 0, xgpg.Z)

if zsv.Magnitude < 0.01 then
zsv = Vector3.new(0, 0, -1)
end

zsv = zsv.Unit

local whcu = Vector3.new(-zsv.Z, 0, zsv.X)

aqq.CFrame = CFrame.lookAt(aqq.Position, aqq.Position + whcu)
end

mhac.misses = 0

mhac.pending = false

pcall(function()
gh.DigUpdate.OnClientEvent:Connect(function(eyo)
if eyo == _d("MQcNYhMREBka") or eyo == _d("MQcNcxcMBhAC") then
mhac.pending = false
end
end)
end)

function mhac.autoLoop()
local rqt = false

while mhac.autoOn and po() and getgenv().ACBXDigGeneration == rop do
local crt = tnt and tnt.worldBoss
local nx = crt ~= nil
and type(crt.holdsDigging) == _d("ExsEUwILChs")
and crt.holdsDigging() == true

if nx then

rqt = true
task.wait(1)
else
if rqt then

rqt = false

if type(crt.setRepeat) == _d("ExsEUwILChs") then
crt.setRepeat(false)
end

mhac.goToSand()
end

local wxxv = mhac.spot()

if wxxv then
mhac.misses = 0
mhac.pending = true

local oup = pcall(function()
gh.DigAction:FireServer(_d("JhoLQgI"), wxxv)
end)

if not oup then
mhac.pending = false
end

local mlx = os.clock() + 6

while mhac.pending and mhac.autoOn and os.clock() < mlx
and getgenv().ACBXDigGeneration == rop and po() do
task.wait()
end

mhac.pending = false
else

mhac.misses = (mhac.misses or 0) + 1

if mhac.misses >= 4 then
mhac.misses = 0
mhac.goToSand(true)
else
mhac.turn()
task.wait(0.25)
end
end
end
end
end

function mhac.autoStart()
local myp = mhac.read()

if not (myp and mhac.bestShovel(myp)) then
return _d("OwFKQx4NExACSl8BDAARTkcQIwwJGg0BEBILAhIHBFdWBAwHHR4e")
end

local sjdp = false

if zbxg.enabled then
zbxg.autoFishWanted = false

hfq(false)
pcall(function()
bhxl:UpdateState(false)
end)

sjdp = true
end

sect = true
mhac.equipBest()

mhac.goToSand()

task.spawn(mhac.autoLoop)

return _d("MQcNVx8MAls") .. (sjdp and _d("VS8fRBlCIxwdAhAZBANVQ0pEHgdFBgYFRhMORR0PGRACCgBVGgVfGkIWGQEeHg") or _d(""))
end

eiua:Toggle({
Name = _d("NBseX1YmDBI"),
Default = false,
Callback = function(ryng)
mhac.autoOn = ryng

if not ryng then
mhac.pending = false
sect = false
return
end

task.spawn(function()
local hgg = mhac.autoStart()

blg:Notify({
Title = _d("NBseX1YmDBI"),
Description = hgg,
Lifetime = 6,
})
end)
end,
}, _d("EQcNVx8MAioPH0QZ"))

function mhac.npcRow()
for rhk, cf in ipairs(cqxg.npcs) do
if cf.name == _d("MQcNVxMQ") then
return cf
end
end
end

function mhac.shop(qb, grcy)
local rx, ry, stez, yl = pcall(function()
return gh.DigShop:InvokeServer(qb, grcy)
end)

if not rx then
return false, _d("IQYPEBILAlUdAl8GQgwGTgRfAkIEGx0dVQQLCxJA")
end

return ry == true, stez, type(yl) == _d("AQ8IXBM") and yl or nil
end

function mhac.upgrade()
local dukn = mhac.read()

if not dukn then
return nil, _d("IQYPEBILAlUdAl8GQgwGTgRfAkIEGx0dVQQLCxJA")
end

local wa = mhac.bestShovel(dukn)

if wa and dukn.equippedShovel ~= wa then
mhac.equipBest()
dukn = mhac.read() or dukn
end

local vomb = dukn.shovels or {}
local jcky = tonumber(dukn.digs) or 0
local stw

for jj, gqwc in ipairs(mhac.data.Shovels) do
if not gqwc.crafted and gqwc.id ~= _d("BgYFRhMOOhcPGVkV") and vomb[gqwc.id] ~= true then
local whg = tonumber(gqwc.cost) or math.huge

if whg <= jcky and (not stw or whg > (tonumber(stw.cost) or 0)) then
stw = gqwc
end
end
end

if not stw then
return nil, _d("OwFKRQYFFxQKDxAfEUUUCAxfBAYEFwIPEA8HEVs")
end

local sbva = mhac.npcRow()
local ppxh = sbva and cqxg.point(sbva)
local fvxx = pl.Character
local lr = fvxx and fvxx:FindFirstChild(_d("PRsHURgNDBE8BV8CMgQHGg"))

if ppxh and lr and (lr.Position - ppxh).Magnitude > 20 then
cqxg.go(sbva)
task.wait(2.2)

fvxx = pl.Character
lr = fvxx and fvxx:FindFirstChild(_d("PRsHURgNDBE8BV8CMgQHGg"))
end

local tfcj, kko = mhac.shop(_d("NxsTYx4NExAC"), stw.id)

if not tfcj then
return nil, _d("NxsTEAQHAwAdD1RMQg") .. tostring(kko)
end

mhac.equipBest()

if mhac.autoOn then
mhac.leaveNpc()
end

return stw.name
end

function mhac.buyLoop()
while mhac.buyOn do
local kps = mhac.upgrade()

if kps then
blg:Notify({
Title = _d("NBseX1YgEAxOOVgZFAAZ"),
Description = _d("NwEfVx4WRRQADhATExAcHhpVEkIRHQtK") .. kps .. _d("Ww"),
Lifetime = 6,
})

task.wait(3)
else
task.wait(10)
end
end
end

eiua:Toggle({
Name = _d("NBseX1YgEAxOKFUFFkUmBgVGEw4"),
Default = false,
Callback = function(sygs)
mhac.buyOn = sygs

if not sygs or mhac.buyRunning then
return
end

mhac.buyRunning = true

task.spawn(function()
mhac.buyLoop()

mhac.buyRunning = false
end)
end,
}, _d("EQcNVx8MAioMH0k"))

getgenv().ACBXDigging = mhac

lfm.tab = katy:Tab({
Name = _d("JgseRB8MAgY"),

Image = _d(""),
})

lfm.icon = function()
local wsr = gethui()

for rkxv, wcg in ipairs(wsr:QueryDescendants(_d("PAMLVxMuBBcLBg"))) do
if wcg.Name == _d("IQ8IeRsDAhA") then
local vhr = wcg.Parent
local xxam = vhr and vhr:FindFirstChild(_d("IQ8IYwELERYGD0I4AwgQ"))

if xxam and xxam.Text == _d("JgseRB8MAgY") then
if wcg:GetAttribute(_d("NC0oaDUNAjwNBV4")) then
return true
end

wcg:SetAttribute(_d("NC0oaDUNAjwNBV4"), true)
wcg.Image = _d("")
wcg.BackgroundTransparency = 1

local tcxi = Color3.fromRGB(168, 170, 176)

local function mxcp(jkua, vk, mlw, qsib, scha, ude)
local muof = Instance.new(_d("MxwLXRM"))

muof.Size = UDim2.fromOffset(mlw, qsib)
muof.Position = UDim2.fromOffset(jkua, vk)
muof.BackgroundColor3 = tcxi
muof.BorderSizePixel = 0
muof.Parent = wcg

if not ude then
muof.BackgroundTransparency = 1

local tfe = Instance.new(_d("ICc5RAQNDhA"))

tfe.Color = tcxi
tfe.Thickness = 1.3
tfe.LineJoinMode = Enum.LineJoinMode.Round
tfe.Parent = muof
end

if scha then
local wmme = Instance.new(_d("ICcpXwQMAAc"))

wmme.CornerRadius = UDim.new(0, scha)
wmme.Parent = muof
end

return muof
end

local jqyk = {
{ 8, 0, 2, 3 },
{ 8, 15, 2, 3 },
{ 0, 8, 3, 2 },
{ 15, 8, 3, 2 },
{ 2, 2, 3, 3 },
{ 13, 2, 3, 3 },
{ 2, 13, 3, 3 },
{ 13, 13, 3, 3 },
}

for xy, xol in ipairs(jqyk) do
mxcp(xol[1], xol[2], xol[3], xol[4], 0, true)
end

mxcp(2, 2, 14, 14, 7, false)
mxcp(7, 7, 4, 4, 2, true)

return true
end
end
end

return false
end

task.defer(function()
for yne = 1, 20 do
if lfm.icon() then
break
end

task.wait(0.25)
end
end)

lfm.configSection = lfm.tab:Section({
Side = _d("OQsMRA"),
})

lfm.configSection:Header({
Name = _d("NgEEVh8FRTgPBFERBwgQAB4"),
})

lfm.autoSaveToggle = lfm.configSection:Toggle({
Name = _d("NBseX1YRBAML"),
Default = false,
Callback = function(bqbu)
lfm.autoSave = bqbu
lfm.autoSaveAt = 0

if bqbu then
local wzao = lfm.selected or _d("EQsMUQMOEQ")
local elu, jow = lfm.save(wzao)

lfm.selected = wzao
lfm.lastText = elu and (_d("NBseX1YRBAMLSl8YQkhVGRhfAgdF") .. wzao)
or (_d("NBseX1YRBAMLSl8YTkUTBxhDAkISBwceVVYEBBwCD1RMQg") .. tostring(jow))
else
lfm.lastText = _d("NBseX1YRBAMLSl8QBEs")
end
end,
}, _d("FgEEVh8FOhQbHl8pEQQDCw"))

lfm.nameInput = lfm.configSection:Input({
Name = _d("Jg8cVVYMBBgL"),
Placeholder = _d("EEANHlYwBBwKGQ"),
AcceptedCharacters = _d("NAIG"),
Callback = function(gpln)
lfm.nameDraft = gpln
end,
})

lfm.nameInput.IgnoreConfig = true

lfm.configSection:Button({
Name = _d("NhwPUQIHRQYPHFU"),
Callback = function()
local pvrr = lfm.nameDraft or lfm.nameInput:GetInput()

pvrr = type(pvrr) == _d("BhoYWRgF") and pvrr:gsub(_d("K0sZGw"), _d("")):gsub(_d("UB1BFA"), _d("")) or _d("")

if pvrr == _d("") then
blg:Dialog({
Title = _d("NgEEVh8F"),
Description = _d("IRcaVVYDRRsPB1VWBAoHTh5YE0IWFBgPEBALFwYaSh1WCxFVDA9TGQ8ABk4eWBNCAxwCDxcFQgsUAw8e"),
Buttons = {
{
Name = _d("MgEeEB8W"),
},
},
})

return
end

local rstn, tg = lfm.save(pvrr)

if not rstn then
lfm.lastText = _d("Jg8cVVYEBBwCD1RMQg") .. tostring(tg)

return
end

lfm.selected = pvrr
lfm.lastText = _d("NhwPUQIHAVU") .. pvrr .. _d("Ww")
lfm.savesAt = 0

task.defer(function()
task.wait(0.25)

pcall(function()
lfm.fileDropdown:UpdateSelection(pvrr)
end)
end)
end,
})

lfm.fileDropdown = lfm.configSection:Dropdown({
Name = _d("Jg8cVVYEDBkL"),
Search = false,
Multi = false,
Required = false,
Options = lfm.saves(),
Callback = function(zaan)
local jta = type(zaan) == _d("AQ8IXBM") and zaan[1] or zaan

if type(jta) == _d("BhoYWRgF") and jta ~= _d("") then
lfm.selected = jta
lfm.selectionShown = jta

pcall(function()
lfm.fileDropdown:UpdateName(_d("Jg8cVVYEDBkLUBA") .. jta)
end)
end
end,
})

lfm.fileDropdown.IgnoreConfig = true

lfm.configSection:Button({
Name = _d("OQELVFYRABkLCUQTBg"),
Callback = function()
local hxe = lfm.selected or lfm.fileDropdown.Value
local uiys, veqz = lfm.load(hxe)

lfm.lastText = uiys and (_d("OQELVBMGRQ") .. hxe .. _d("Ww")) or (_d("OQELVFYEBBwCD1RMQg") .. tostring(veqz))
end,
})

lfm.configSection:Button({
Name = _d("Jg8cVVYWClUdD1wTAREQCg"),
Callback = function()
local pfg = lfm.selected or lfm.fileDropdown.Value
local ucvk, hk = lfm.save(pfg)

lfm.lastText = ucvk and (_d("IhwFRBNC") .. pfg .. _d("Ww")) or (_d("Jg8cVVYEBBwCD1RMQg") .. tostring(hk))
end,
})

lfm.configSection:Button({
Name = _d("MQsGVQIHRQYLBlUVFgARThlRAAc"),
Callback = function()
local dct = lfm.selected or lfm.fileDropdown.Value

if type(dct) ~= _d("BhoYWRgF") or dct == _d("") then
lfm.lastText = _d("JQcJW1YDRQYPHFVWBAwZC0pWHxAWAUA")

return
end

blg:Dialog({
Title = _d("MQsGVQIHRQ") .. dct .. _d("Sg"),
Description = _d("IQYPEBALCRBOA0NWEAAYARxVEkIDBwEHEBILFh5OC14SQgYUAARfAkIHEE4YVRUNExAcD1RY"),
Buttons = {
{
Name = _d("MQsGVQIH"),
Callback = function()
local ksbe, sze = lfm.delete(dct)

lfm.lastText = ksbe
and (_d("MQsGVQIHAVU") .. dct .. _d("Ww"))
or (_d("NgEfXBJCCxoaSlQTDgABC1AQ") .. tostring(sze))
end,
},
{
Name = _d("Ng8EUxMO"),
},
},
})
end,
})

lfm.configSection:Button({
Name = _d("JwsMQhMRDVUCA0MC"),
Callback = function()
lfm.savesAt = 0
lfm.lastText = _d("Jg8cVVYODAYaSkITBBcQHQJVEkw")
end,
})

lfm.configSection:Button({
Name = _d("OA8YW1YDFlUPH0QZQgkaDw4"),
Callback = function()
local wrhh = lfm.selected or lfm.fileDropdown.Value

if type(wrhh) ~= _d("BhoYWRgF") or wrhh == _d("") then
lfm.lastText = _d("JQcJW1YDRQYPHFVWBAwZC0pWHxAWAUA")

return
end

if lfm.setAutoLoad(wrhh) then
lfm.lastText = wrhh .. _d("VQIFURIRRRoASkMCAxcBQA")
else
lfm.lastText = _d("NgEfXBJCCxoaSkcECxEQTh5YE0IEABoFEBoNBBFOB1EECQAHQA")
end
end,
})

lfm.configSection:Button({
Name = _d("NgIPUQRCBAAaBRAaDQQR"),
Callback = function()
lfm.setAutoLoad(_d(""))
lfm.lastText = _d("OwEeWB8MAlUCBVESEUUaAEpDAgMXAUA")
end,
})

lfm.statusParagraph = lfm.configSection:Paragraph({
Header = _d("JhoLRAMR"),
Body = _d(""),
})

lfm.miscSection = lfm.tab:Section({
Side = _d("JwcNWAI"),
})

lfm.miscSection:Header({
Name = _d("OAcZUw"),
})

lfm.miscSection:Toggle({
Name = _d("NBseX1YBCRodDxARBwsQHAtEHw0LVTsj"),
Default = false,
Callback = function(th)
ta(th)
end,
}, _d("GAcZUykDEAEBNVMaDRYQMQ1VGAcXFBoDXxg"))

lfm.miscSection:Toggle({
Name = _d("NBseX1YwChkC"),
Default = true,
Callback = function(buv)
lfm.autoRoll = buv

if buv and lfm.setRollButton then
lfm.setRollButton(_d("NBseXyQNCRksH0QCDQs"), true)
end
end,
}, _d("GAcZUykDEAEBNUIZDgk"))

lfm.miscSection:Toggle({
Name = _d("NBseX1YzEBwNARAkDQkZ"),
Default = true,
Callback = function(qm)
lfm.autoQuickRoll = qm

if qm and lfm.setRollButton then
lfm.setRollButton(_d("JBsDUx0wChkCKEUCFgob"), true)
end
end,
}, _d("GAcZUykDEAEBNUEDCwYeMRhfGg4"))

lfm.uiSection = lfm.tab:Section({
Side = _d("JwcNWAI"),
})

lfm.uiSection:Header({
Name = _d("ICc"),
})

lfm.uiSection:Toggle({
Name = _d("Nw8JWxEQCgAADhAUDhAH"),
Default = true,
Callback = function(tkzo)
pcall(function()
blg:SetAcrylicBlurState(tkzo)
end)
end,
}, _d("AAc1UhcBDhIcBUUYBjoXAh9C"))

function lfm.widthFactor(ncza)
return 1 + math.max(0, (ncza or 1) - 1) * 0.8
end

function lfm.scaleCap()
local nbk = workspace.CurrentCamera and workspace.CurrentCamera.ViewportSize or Vector2.new(1280, 720)
local pvwm = math.min(120, math.floor(((nbk.Y - 40 - 8 - 8) / 500) * 100))

while pvwm > 50 and (lfm.baseWidth or 720) * (pvwm / 100) * lfm.widthFactor(pvwm / 100) > nbk.X - 16 do
pvwm = pvwm - 1
end

return math.max(50, pvwm)
end

function lfm.scaleCeiling()
return math.min(1.2, lfm.scaleCap() / 100)
end

function lfm.refreshScaleCap()
local poyg = lfm.scaleSlider

if not poyg then
return
end

local iey = lfm.scaleCeiling()

pcall(function()
poyg.Settings.Maximum = iey
end)

local osh = tonumber(poyg:GetValue()) or 1

if osh > iey then
lfm.scaleTarget = iey

pcall(function()
poyg:UpdateValue(iey)
end)
end
end

lfm.scaleSlider = lfm.uiSection:Slider({
Name = _d("ICdKQxUDCRA"),
Default = 1,
Minimum = 0.5,

Maximum = lfm.scaleCeiling(),
DisplayMethod = _d("Iw8GRRM"),
Precision = 2,

Callback = function(ufdc)
lfm.scalePending = tonumber(ufdc)
lfm.scalePendingAt = os.clock()
end,
onInputComplete = function(gkkn)
local vfl = lfm.scaleCeiling()

lfm.scaleTarget = math.clamp(tonumber(gkkn) or lfm.scalePending or 1, 0.5, vfl)
lfm.scalePending = nil

lfm.scaleAnchor = nil

lfm.saveUi()
end,
}, _d("AAc1QxUDCRA"))

lfm.refreshScaleCap()

lfm.themeDropdown = lfm.uiSection:Dropdown({
Name = _d("IQYPXRNYRSMBA1Q"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = lfm.themeOrder,
Callback = function(xcw)
local nwdv = type(xcw) == _d("AQ8IXBM") and xcw[1] or xcw

if type(nwdv) == _d("BhoYWRgF") and lfm.presets[nwdv] then
lfm.theme = nwdv
lfm.accent = nil
lfm.applyTheme()

pcall(function()
lfm.themeDropdown:UpdateName(_d("IQYPXRNYRQ") .. nwdv)
end)

lfm.saveUi()
end
end,
}, _d("AAc1RB4HCBA"))

lfm.accentPicker = lfm.uiSection:Colorpicker({
Name = _d("NA0JVRgWRRYBBl8DEA"),
Default = Color3.fromRGB(168, 170, 176),
Alpha = 0,
Callback = function(xgzm)
lfm.accent = xgzm
lfm.applyTheme()
lfm.saveUi()
end,
}, _d("AAc1URUBABsa"))

lfm.codesSection = lfm.tab:Section({
Side = _d("JwcNWAI"),
})

lfm.codesSection:Header({
Name = _d("NgEOVQU"),
})

lfm.codeText = _d("JwsOVRMPFlULHFUEG0UWAQ5VVhYNHB1KVxcPAFUdAlkGEUUCBx5YWkIKGwtKVQAHFwxOCV8DEgkQTgVWVhEAFgEEVAVM")

function lfm.setCodeText(alfw)
lfm.codeText = alfw

pcall(function()
lfm.codeParagraph:UpdateBody(alfw)
end)
end

function lfm.redeemCodes()
if lfm.redeeming then
return
end

local qyl = gh.RedeemCode
local qs = yiyr:FindFirstChild(_d("OAEORRoHNhYcA0ACEQ"))
local dfk = qs and qs:FindFirstChild(_d("NgEOVTIDERQ"))
local jeo, dhcd = false, nil

if qyl and dfk then
jeo, dhcd = pcall(function()
return require(dfk)
end)
end

local plwt = jeo and type(dhcd) == _d("AQ8IXBM") and dhcd.Codes or nil

if not qyl or type(plwt) ~= _d("AQ8IXBM") then
lfm.setCodeText(_d("IQYDQ1YUAAcdA18YQgoTTh5YE0ICFAMPEB4DFlUABRAVDQEQTgZZBRZFGhxKXhlCFxAKD1UbQhcQAwVEE0w"))
return
end

local fgi = {}

for exvh in pairs(plwt) do
fgi[#fgi + 1] = exvh
end

table.sort(fgi)

local mhd = #fgi

lfm.redeeming = true
lfm.setCodeText(_d("JwsOVRMPDBsJSg") .. mhd .. _d("VQ0FVBMRS1tA"))

task.spawn(function()
local pcv, ya, xbkm = 0, 0, 0
local lnle = {}

for cnyq = 1, mhd do
if not po() then
break
end

local mri = fgi[cnyq]
local zhtc, bn = pcall(function()
return qyl:InvokeServer(mri)
end)

local hb = zhtc and type(bn) == _d("AQ8IXBM") and bn.success == true
local et = zhtc and type(bn) == _d("AQ8IXBM") and tostring(bn.message or _d("")) or tostring(bn or _d(""))

if not hb and string.find(string.lower(et), _d("Ag8DRA"), 1, true) then
task.wait(3.5)

zhtc, bn = pcall(function()
return qyl:InvokeServer(mri)
end)

hb = zhtc and type(bn) == _d("AQ8IXBM") and bn.success == true
et = zhtc and type(bn) == _d("AQ8IXBM") and tostring(bn.message or _d("")) or tostring(bn or _d(""))
end

if hb then
pcv = pcv + 1
elseif string.find(string.lower(et), _d("FAIYVRcGHA"), 1, true) then
ya = ya + 1
else
xbkm = xbkm + 1

if #lnle < 6 then
lnle[#lnle + 1] = mri .. _d("T04") .. (et ~= _d("") and et or _d("GwFKURgREhAc"))
end
end

lfm.setCodeText(string.format(_d("UApKXxBCQBFORxBTBkUHCw5VEw8AEUJKFRJCBBkcD1ESG0lVSw4QBAcDAB0PVFg"), cnyq, mhd, pcv, ya, xbkm))

if cnyq < mhd and po() then
task.wait(1.8)
end
end

local bdwk = {
string.format(_d("JwsOVRMPABFOT1RaQgQZHA9REhtFHQ8OEFMGSVUcD1YDEQARTk9UVg0DVUsOHg"), pcv, ya, xbkm, mhd),
}

for zxkh, js in ipairs(lnle) do
bdwk[#bdwk + 1] = js
end

lfm.redeeming = false
lfm.setCodeText(table.concat(bdwk, _d("fw")))
end)
end

lfm.codesSection:Button({
Name = _d("JwsOVRMPRRQCBhAVDQEQHQ"),
Callback = function()
lfm.redeemCodes()
end,
})

lfm.codeParagraph = lfm.codesSection:Paragraph({
Header = _d("NgEOVQU"),
Body = lfm.codeText,
})

lfm.scriptSection = lfm.tab:Section({
Side = _d("JwcNWAI"),
})

lfm.scriptSection:Header({
Name = _d("Jg0YWQYW"),
})

lfm.scriptSection:Button({
Name = _d("IAAGXxcGRQYNGFkGFg"),
Callback = function()
pcall(function()
blg:Unload()
end)

getgenv().ACBXWindow = nil
getgenv().ACBXAllowReload = nil
end,
})

task.spawn(function()
while po() do

if os.clock() >= lfm.savesAt then
lfm.savesAt = os.clock() + 3

local eeu = lfm.saves()
local jtq = table.concat(eeu, _d("CQ"))

if jtq ~= lfm.knownSaves then
lfm.knownSaves = jtq

pcall(function()
lfm.fileDropdown:ClearOptions()
lfm.fileDropdown:InsertOptions(eeu)
end)
end

if lfm.selected and lfm.selectionShown ~= lfm.selected then
lfm.selectionShown = lfm.selected

pcall(function()
lfm.fileDropdown:UpdateSelection(lfm.selected)
end)
end
end

if lfm.autoSave and os.clock() >= lfm.autoSaveAt then
lfm.autoSaveAt = os.clock() + 60

local jzf = lfm.selected or _d("EQsMUQMOEQ")
local zw, ifga = lfm.save(jzf)

lfm.selected = jzf
lfm.lastText = zw and (_d("NBseX1YRBAMLDhA") .. jzf .. _d("VQ8eEA") .. os.date(_d("UCZQFTs")) .. _d("Ww"))
or (_d("NBseX1YRBAMLSlYXCwkQClAQ") .. tostring(ifga))
end

if os.clock() >= lfm.themeAt then
lfm.themeAt = os.clock() + 3
lfm.applyTheme()
end

if os.clock() >= lfm.capAt then
lfm.capAt = os.clock() + 2
lfm.refreshScaleCap()
end

if os.clock() >= lfm.statusAt then
lfm.statusAt = os.clock() + 2

local bzwv = lfm.autoLoadName()
local uysv = table.concat({
_d("NBseX1YOChQKUBA") .. (bzwv or _d("GwEEVQ")),
_d("Jg8cVQVYRQ") .. tostring(#lfm.saves()),
lfm.lastText,
}, _d("fw"))

if uysv ~= lfm.shownStatus then
lfm.shownStatus = uysv

pcall(function()
lfm.statusParagraph:UpdateBody(uysv)
end)
end
end

task.wait(0.25)
end
end)

task.spawn(function()
while po() do

local mf = lfm.scalePending

if mf and os.clock() - (lfm.scalePendingAt or 0) > 0.35 then
local ugjf = lfm.scaleCeiling()
local mfve = math.clamp(mf, 0.5, ugjf)

lfm.scalePending = nil

if math.abs(mfve - lfm.scaleTarget) > 0.002 then
lfm.scaleTarget = mfve
lfm.scaleAnchor = nil

lfm.saveUi()
end
end

if math.abs(lfm.scaleTarget - lfm.scale) > 0.002 then
local zjar = lfm.guiRoot()

if zjar and not lfm.baseWidth then
lfm.baseWidth = zjar.Size.X.Offset
lfm.baseHeight = zjar.Size.Y.Offset
end

local asm = lfm.baseWidth or 720
local tkzc = lfm.baseHeight or 500
local zokf = workspace.CurrentCamera and workspace.CurrentCamera.ViewportSize or Vector2.new(1280, 720)
local cso, tbhg = 8, 40

if not lfm.scaleAnchor and zjar then

local hjvt = lfm.widthFactor(lfm.scaleTarget)
local nef, em = asm * hjvt * lfm.scaleTarget, tkzc * lfm.scaleTarget
local eptm = zjar.AbsolutePosition

lfm.scaleAnchor = Vector2.new(
math.clamp(eptm.X, cso, math.max(cso, zokf.X - nef - cso)),
math.clamp(eptm.Y, tbhg, math.max(tbhg, zokf.Y - em - cso))
)
end

local lwg = lfm.scaleAnchor

lfm.scale = lfm.scale + (lfm.scaleTarget - lfm.scale) * 0.18

local lx = lfm.widthFactor(lfm.scale)

pcall(function()
blg:SetScale(lfm.scale)

if zjar then
local enbo = math.floor(asm * lx)

zjar.Size = UDim2.fromOffset(enbo, math.floor(tkzc))

local fno = zjar:FindFirstChild(_d("NgEERBMMEQ"))

if fno then
local oxnu = zjar:FindFirstChild(_d("JgcOVRQDFw"))
local fyrf = math.floor(oxnu and oxnu.Size.X.Scale * enbo or enbo * 0.325)

fno.Size = UDim2.new(0, math.max(0, enbo - fyrf), 1, 0)
end
end
end)

if zjar and lwg then
local ctn, jtwz = asm * lx * lfm.scale, tkzc * lfm.scale
local dbsv = math.clamp(lwg.X, cso, math.max(cso, zokf.X - ctn - cso))
local oavp = math.clamp(lwg.Y, tbhg, math.max(tbhg, zokf.Y - jtwz - cso))

local mx = zjar.Parent and zjar.Parent.AbsolutePosition or Vector2.zero

pcall(function()
zjar.Position = UDim2.fromOffset(math.floor(dbsv - mx.X), math.floor(oavp - mx.Y))
end)
end
else

lfm.scaleAnchor = nil
end

task.wait()
end
end)

tnt.misc.tierLabels = {}
tnt.misc.labelToTier = {}

tnt.misc.expSection = tnt.misc.tab:Section({
Side = _d("OQsMRA"),
})

tnt.misc.expSection:Header({
Name = _d("MBYaVRILERwBBENWkvri7IWI+Q"),
})

tnt.misc.claimToggle = tnt.misc.expSection:Toggle({
Name = _d("NBseX1YBCRQHBw"),
Default = false,
Callback = function(sje)
local jub = tnt.misc.expeditions

jub.enabled = sje
jub.claimAt = 0

if sje then
jub.askedAt = 0
jub.request()
end
end,
}, _d("FBseXykBCRQHBw"))

tnt.misc.rewardToggle = tnt.misc.expSection:Toggle({
Name = _d("NBseX1YBCRodDxAEBxIUHA5D"),
Default = false,
Callback = function(xdr)
local xjj = tnt.misc.expeditions

xjj.autoClose = xdr

if xdr then
xjj.closeRewards()
end
end,
}, _d("EBYabxcXERoxCVwZEQA"))

tnt.misc.startToggle = tnt.misc.expSection:Toggle({
Name = _d("NBseX1YRERQcHg"),
Default = false,
Callback = function(ctzi)
local il = tnt.misc.expeditions

if ctzi and not next(il.tiersWanted) then
il.autoStart = false

pcall(function()
tnt.misc.startToggle:UpdateState(false)
end)

blg:Dialog({
Title = _d("NBseX1YRERQcHhAYBwARHUpRVhYMEBw"),
Description = _d("JQcJW1YDEVUCD1EFFkUaAA8QAgsAB04DXlYWDRBOPlkTEEURHAVAEg0SG04MWQQREVtOL1EFG0UBDwFVBUIRHQtKUx4HBAULGURWAQQHChkcViwMEgYeXRcQAFUaAlVWEAQHCxlEWkIEGwpKURgbRRsbB1ITEEUaCEpEHgcIVQ0LXlYQEBtOC0RWDQsWC0Q"),
Buttons = {
{
Name = _d("MgEeEB8W"),
},
},
})

return
end

il.autoStart = ctzi
il.startedAt = {}

if ctzi then
il.askedAt = 0
il.request()
end
end,
}, _d("FBseXykRERQcHg"))

for wwr, kzn in ipairs(tnt.misc.expeditions.tiers()) do
table.insert(tnt.misc.tierLabels, tostring(kzn.name))
tnt.misc.labelToTier[tostring(kzn.name)] = kzn.id
end

tnt.misc.building = true

tnt.misc.tierDropdown = tnt.misc.expSection:Dropdown({
Name = _d("IQcPQg"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = tnt.misc.tierLabels,
Callback = function(aut)
local vo = tnt.misc.expeditions

if tnt.misc.building then
return
end

local lun = {}
local dftg = {}

if type(aut) == _d("AQ8IXBM") then
for ygxh, tmx in pairs(aut) do
local lnid = tnt.misc.labelToTier[tostring(ygxh)]

if tmx and lnid then
lun[lnid] = true
table.insert(dftg, tostring(ygxh))
end
end
end

table.sort(dftg)
vo.tiersWanted = lun

pcall(function()
tnt.misc.tierDropdown:UpdateName(#dftg > 0 and (_d("IQcPQlaA5ddO") .. table.concat(dftg, _d("WU4"))) or _d("IQcPQlaA5ddOBF8YBw"))
end)
end,
}, _d("AQcPQg"))

task.defer(function()
tnt.misc.building = false
end)

tnt.misc.expSection:Button({
Name = _d("NgILWRtCCxoZ"),
Callback = function()
local oom = tnt.misc.expeditions

if not oom.claim() then
blg:Notify({
Title = _d("MBYaVRILERwBBEM"),
Description = _d("OwEeWB8MAlUGC0NWAQoYC0pSFwEOVRcPRFg"),
Lifetime = 5,
})
end
end,
})

tnt.misc.expSection:Button({
Name = _d("JgsEVFYRABkLCUQTBg"),
Callback = function()
local shu = tnt.misc.expeditions

if not next(shu.tiersWanted) then
blg:Notify({
Title = _d("MBYaVRILERwBBEM"),
Description = _d("JQcJW1YDEVUCD1EFFkUaAA8QAgsAB04DXlYWDRBODkIZEgEaGQQQEAsXBhpE"),
Lifetime = 5,
})

return
end

local eocw = {}
local mtg = 0

for euqz, fwz in ipairs(shu.tiers()) do
if shu.tiersWanted[fwz.id] and shu.status(fwz.id) == _d("FBgLWRoDBxkL") then
if shu.start(fwz.id, eocw) then
mtg = mtg + 1
end
end
end

if mtg == 0 then
blg:Notify({
Title = _d("MBYaVRILERwBBEM"),
Description = _d("OwEeWB8MAlUNBUUaBkUXC0pDEwwRT04eWBNCFhACD1MCBwFVGgNVBBFFFBwPEBcOFxAPDklWDRABQkpfBEIRHQsYVVYDFxBOBF8CQgMaGxgQEw4MEgcIXBNCBhQcDkNWBAoHTh5YEw9L"),
Lifetime = 6,
})
end
end,
})

tnt.misc.expInfo = tnt.misc.tab:Section({
Side = _d("JwcNWAI"),
})

tnt.misc.expInfo:Header({
Name = _d("MBYaVRILERwBBEM"),
})

tnt.misc.expParagraph = tnt.misc.expInfo:Paragraph({
Header = _d("JhoLRAMR"),
Body = tnt.misc.expeditions.text(),
})

tnt.misc.expeditions.loadRewards()

tnt.misc.expRewardParagraph = tnt.misc.expInfo:Paragraph({
Header = _d("NgILWRsHAQ"),
Body = tnt.misc.expeditions.rewardsText(),
})

task.spawn(function()
local vejb = tnt.misc.expeditions
local ulx = oce(_d("JhcEUzMaFRAKA0QfDQsG"), 3)

if ulx then
ulx.OnClientEvent:Connect(function(laz)
if type(laz) ~= _d("AQ8IXBM") then
return
end

vejb.state = laz

vejb.offset = (tonumber(laz.now) or os.time()) - os.time()
vejb.syncedAt = os.clock()

if type(laz.rewards) == _d("AQ8IXBM") and #laz.rewards > 0 then
table.insert(vejb.rewardLog, 1, {
at = os.time(),
title = tostring(laz.rewardTitle or _d("MBYaVRILERwBBA")),
items = laz.rewards,
})

while #vejb.rewardLog > 8 do
table.remove(vejb.rewardLog)
end

vejb.saveRewards()

if vejb.autoClose then

task.delay(0.35, vejb.closeRewards)
end
end
end)
end

while po() do

if os.clock() - vejb.askedAt > 1 and os.clock() - vejb.syncedAt > 20 then
vejb.request()
end

if vejb.enabled then
vejb.claim()
end

if vejb.autoClose then
vejb.closeRewards()
end

if vejb.autoStart and next(vejb.tiersWanted) then
local hf = {}

for gbri, ddye in ipairs(vejb.tiers()) do
if vejb.tiersWanted[ddye.id] and vejb.status(ddye.id) == _d("FBgLWRoDBxkL") then
if vejb.start(ddye.id, hf) then
break
end
end
end
end

local iosl = vejb.text()

if tnt.misc.expParagraph and iosl ~= tnt.misc.expShown then
tnt.misc.expShown = iosl

pcall(function()
tnt.misc.expParagraph:UpdateBody(iosl)
end)
end

local kjv = vejb.rewardsText()

if tnt.misc.expRewardParagraph and kjv ~= vejb.rewardsShown then
vejb.rewardsShown = kjv

pcall(function()
tnt.misc.expRewardParagraph:UpdateBody(kjv)
end)
end

task.wait(0.75)
end
end)

tnt.misc.util = {
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

function tnt.misc.util.hook()
local dxa = tnt.misc.util

if dxa.hooked then
return
end

dxa.hooked = true

if gh.SyncCollection then
gh.SyncCollection.OnClientEvent:Connect(function(djdm)
if type(djdm) == _d("AQ8IXBM") then
dxa.profile = djdm
dxa.profileAt = os.clock()
end
end)
end

if gh.SyncAchievements then
gh.SyncAchievements.OnClientEvent:Connect(function(qwjh)
if type(qwjh) == _d("AQ8IXBM") then
dxa.ach = qwjh
end
end)
end

if gh.SyncQuests then
gh.SyncQuests.OnClientEvent:Connect(function(tib)
if type(tib) == _d("AQ8IXBM") and type(tib.list) == _d("AQ8IXBM") then
dxa.quests = tib
end
end)
end

if gh.SyncPeriodicQuests then
gh.SyncPeriodicQuests.OnClientEvent:Connect(function(kk, bk)
if kk == _d("AgsPWxob") and type(bk) == _d("AQ8IXBM") and type(bk.list) == _d("AQ8IXBM") then
dxa.weekly = bk
end
end)
end
end

function tnt.misc.util.askProfile()
local qq = tnt.misc.util

if os.clock() - qq.askedAt < 1.5 then
return
end

qq.askedAt = os.clock()

if gh.RequestSync then
pcall(function()
gh.RequestSync:FireServer()
end)
end
end

function tnt.misc.util.currentProfile()
local obmw = tnt.misc.util

if type(obmw.profile) ~= _d("AQ8IXBM") then
obmw.askProfile()

return nil
end

if os.clock() - obmw.profileAt > 20 then
obmw.askProfile()
end

return obmw.profile
end

function tnt.misc.util.forgetProfile()
local tvmh = tnt.misc.util

tvmh.profile = nil
tvmh.profileAt = 0
tvmh.askedAt = 0
end

function tnt.misc.util.indexedTotal(tsm)
local gmpz = 0

for ppwv, rk in pairs((tsm and tsm.cardIndex) or {}) do
if rk then
gmpz = gmpz + 1
end
end

return gmpz
end

function tnt.misc.util.indexPending(jbuj)
local yf = {}

if type(jbuj) ~= _d("AQ8IXBM") then
return yf
end

local chwl = tnt.misc.util.indexedTotal(jbuj)
local qqz = jbuj.indexMilestones or {}

for gvrl = 1, 30 do
if not qqz[gvrl] and gvrl * 5 <= chwl then
table.insert(yf, gvrl)
end
end

return yf
end

function tnt.misc.util.indexFrame()
local fka = zl:FindFirstChild(_d("Ng8YVD8MARAWLUUf"))

return fka and fka:FindFirstChild(_d("PAAOVQ4kFxQDDw"))
end

function tnt.misc.util.clickButton(nzhn)
if not nzhn then
return false
end

if firesignal then
local gtjg = pcall(firesignal, nzhn.MouseButton1Click)

if gtjg then
return true
end
end

return pcall(function()
nzhn:Activate()
end)
end

function tnt.misc.util.closeIndex()
local qcif = tnt.misc.util.indexFrame()

if not qcif or not qcif.Visible then
return false
end

pcall(function()
local ekw = yiyr:FindFirstChild(_d("OAEORRoHNhYcA0ACEQ"))
local qke = ekw and ekw:FindFirstChild(_d("OAsERTsDCxQJD0I"))

if qke then
require(qke).close(qcif)
end
end)

tnt.misc.util.clickButton(qcif:FindFirstChild(_d("NgIFQxMgEAEaBV4")))

pcall(function()
qcif.Visible = false
end)

return true
end

function tnt.misc.util.claimIndex()
local mcje = tnt.misc.util

if os.clock() < mcje.indexAt then
return false
end

local px = mcje.currentProfile()

if not px then
return false
end

local kqu = mcje.indexPending(px)
local hlox = kqu[1]

if not hlox then
return false
end

local ghed = mcje.indexedTotal(px)
local dqz = mcje.indexAsked

if type(dqz) == _d("AQ8IXBM") and dqz.milestone == hlox and dqz.total == ghed then
return false
end

mcje.indexAsked = { milestone = hlox, total = ghed }

pcall(function()
gh.ClaimIndexReward:FireServer(hlox)
end)

mcje.indexAt = os.clock() + 1.5

mcje.profile = nil
mcje.profileAt = 0

task.delay(0.4, mcje.closeIndex)

return true
end

function tnt.misc.util.achPending()
local xafb = {}
local qwjy = tnt.misc.util.ach

if type(qwjy) ~= _d("AQ8IXBM") then
return xafb
end

for sqfc, nrmt in ipairs(qwjy.chains or {}) do
for azxf, pahi in ipairs(nrmt.levels or {}) do
if pahi.reached and not pahi.claimed then
table.insert(xafb, { chain = tostring(nrmt.id), index = pahi.index, name = tostring(pahi.name or pahi.index) })
end
end
end

return xafb
end

function tnt.misc.util.claimAchievement()
local orjl = tnt.misc.util

if os.clock() < orjl.achAt then
return false
end

if type(orjl.ach) ~= _d("AQ8IXBM") then
if os.clock() - orjl.achAskedAt > 4 and gh.RequestAchievements then
orjl.achAskedAt = os.clock()

pcall(function()
gh.RequestAchievements:FireServer()
end)
end

return false
end

for wgk, fm in ipairs(orjl.achPending()) do
pcall(function()
gh.ClaimAchievement:FireServer(fm.chain, fm.index)
end)

orjl.achAt = os.clock() + 1

task.delay(1, function()
if gh.RequestAchievements then
pcall(function()
gh.RequestAchievements:FireServer()
end)
end
end)

return true
end

return false
end

function tnt.misc.util.questRows()
local uwca = tnt.misc.util
local giy = {}

for pk, lngh in ipairs({ { list = _d("EQ8DXA8"), payload = uwca.quests }, { list = _d("AgsPWxob"), payload = uwca.weekly } }) do
for duhd, oqn in ipairs((type(lngh.payload) == _d("AQ8IXBM") and lngh.payload.list) or {}) do
if type(oqn) == _d("AQ8IXBM") then
table.insert(giy, { list = lngh.list, index = duhd, quest = oqn })
end
end
end

return giy
end

function tnt.misc.util.questPending()
local kbq = {}

for rm, wnoh in ipairs(tnt.misc.util.questRows()) do
local xcap = wnoh.quest

if not xcap.claimed and (tonumber(xcap.progress) or 0) >= (tonumber(xcap.target) or math.huge) then
table.insert(kbq, wnoh)
end
end

return kbq
end

function tnt.misc.util.askQuests()
local gass = tnt.misc.util

if os.clock() - gass.questAskedAt > 4 and gh.RequestQuests then
gass.questAskedAt = os.clock()

pcall(function()
gh.RequestQuests:FireServer()
end)
end

if os.clock() - gass.weeklyAskedAt > 4 and gh.RequestPeriodicQuests then
gass.weeklyAskedAt = os.clock()

pcall(function()
gh.RequestPeriodicQuests:FireServer(_d("AgsPWxob"))
end)
end
end

function tnt.misc.util.claimQuest()
local bkny = tnt.misc.util

if os.clock() < bkny.questAt then
return false
end

if type(bkny.quests) ~= _d("AQ8IXBM") and type(bkny.weekly) ~= _d("AQ8IXBM") then
bkny.askQuests()

return false
end

for eqmw, ru in ipairs(bkny.questPending()) do
if ru.list == _d("AgsPWxob") then
if gh.ClaimPeriodicQuest then
pcall(function()
gh.ClaimPeriodicQuest:FireServer(_d("AgsPWxob"), ru.index)
end)
end
else
pcall(function()
gh.ClaimQuest:FireServer(ru.index)
end)
end

bkny.questAt = os.clock() + 1.2

task.delay(1, function()
bkny.askQuests()
end)

return true
end

return false
end

function tnt.misc.util.packCatalog()
local aoqy = tnt.misc.util

if aoqy.packs then
return aoqy.packs
end

local khy = {}
local fph, vpxq = pcall(function()
return require(yiyr.ModuleScripts.PackData)
end)

if fph and type(vpxq) == _d("AQ8IXBM") and type(vpxq.Packs) == _d("AQ8IXBM") then
for fq, qts in ipairs(vpxq.Packs) do
if qts.id then
table.insert(khy, { id = tostring(qts.id), name = tostring(qts.name or qts.id) })
end
end
end

aoqy.packs = khy

return khy
end

function tnt.misc.util.packUnlocked(qhe, tqeo)
if type(qhe) ~= _d("AQ8IXBM") then
return true
end

local toi, fu = pcall(function()
return require(yiyr.ModuleScripts.PackData)
end)
local gxus, dfi = pcall(function()
return require(yiyr.ModuleScripts.PackSlotData)
end)

if not (toi and gxus) then
return true
end

local aljx = fu.ById and fu.ById[tqeo]

if not aljx then
return false
end

local gbov, xxzo = pcall(dfi.isPackUnlocked, aljx, qhe)

return (not gbov) or xxzo == true
end

function tnt.misc.util.visit(an)
local xuw = workspace:FindFirstChild(_d("Oz4pQw"))
local am = xuw and xuw:FindFirstChild(an)
local nhny = pl.Character
local gfbk = nhny and nhny:FindFirstChild(_d("PRsHURgNDBE8BV8CMgQHGg"))
local bmg = am and (am:FindFirstChild(_d("PRsHURgNDBE8BV8CMgQHGg")) or am:FindFirstChildWhichIsA(_d("Nw8ZVSYDFwE"), true))

if not (bmg and gfbk) then
return nil
end

local rpuv = gfbk.CFrame

gfbk.CFrame = CFrame.new((bmg.CFrame * CFrame.new(0, 0, -5)).Position)

return rpuv
end

function tnt.misc.util.returnTo(ipz)
local vi = pl.Character
local kcj = vi and vi:FindFirstChild(_d("PRsHURgNDBE8BV8CMgQHGg"))

if kcj and ipz then
kcj.CFrame = ipz
end
end

function tnt.misc.util.applyPacks(uajg, zho)
local pf = tnt.misc.util

if os.clock() < pf.packAt then
return false, _d("Ig8DRFYDRRgBB1UYFks")
end

local izqv = pf.currentProfile()

if not izqv then
return false, _d("JwsLVB8MAlUXBUUEQhUHAQxZGgdFWE4eQg9CBBIPA15WCwtVD0pDEwEKGwpE")
end

if zho and (tonumber(izqv.packSlots) or 1) < 2 then
return false, _d("JgIFRFZQRRsLD1QFQhEdC0pVDhYXFE4aURUJRQYCBURWBQQYCxpRBRFL")
end

if not (gh.OpenPackShop and gh.EquipPack) then
return false, _d("IQYPEAYDBh5OGVgZEkUcHUpeGRZFHABKRB4LFlUJC10TQhMQHBlZGQxL")
end

pf.packAt = os.clock() + 8

task.spawn(function()
local isup = pf.visit(_d("OwEIXBMRFhwADUM"))

if not isup then
return
end

pcall(function()
gh.OpenPackShop:FireServer(_d("BQ8JWykPAAcNAlEYFg"))
end)

task.wait(1.2)

if uajg then
pcall(function()
gh.EquipPack:FireServer(uajg, 1)
end)
end

if zho then
task.wait(0.8)

pcall(function()
gh.EquipPack:FireServer(zho, 2)
end)
end

task.wait(0.8)
pf.returnTo(isup)
pf.forgetProfile()
end)

return true
end

function tnt.misc.util.accScore(dbc)
local kuhg = dbc.effects or {}

return (kuhg.luckBonus or 0) * 10
+ ((kuhg.luckMult or 1) - 1) * 200
+ ((kuhg.borderLuckMult or 1) - 1) * 200
- ((kuhg.rollCdMult or 1) - 1) * 30
end

function tnt.misc.util.accCatalog()
local raxv = tnt.misc.util

if raxv.accessories then
return raxv.accessories
end

local ofn = {}

for gn, ijl in ipairs({ _d("NA0JVQURCgcXLlECAw"), _d("NA0JVQURCgcXLlECA1c") }) do
local exie, xxmv = pcall(function()
return require(yiyr.ModuleScripts[ijl])
end)

if exie and type(xxmv) == _d("AQ8IXBM") and type(xxmv.Accessories) == _d("AQ8IXBM") then
for drs, cajf in ipairs(xxmv.Accessories) do
if cajf.id then
table.insert(ofn, {
id = tostring(cajf.id),
name = tostring(cajf.name or cajf.id),
shop = gn,

shopName = gn == 1 and _d("NA0JVQURCgcXSmMeDRU") or _d("OBcZRBMQDBobGRA7Aws"),
raidable = cajf.raidShopOnly == true,
hidden = cajf.hidden == true,
requirements = cajf.requirements or {},
score = tnt.misc.util.accScore(cajf),
})
end
end
end
end

raxv.accessories = ofn

return ofn
end

function tnt.misc.util.accOwned(cr)
local qwit = {}

for eb, ef in ipairs((cr and cr.accessories) or {}) do
qwit[tostring(ef)] = true
end

return qwit
end

function tnt.misc.util.accMeets(wfw, kmr)
for qqj, soyv in ipairs(kmr.requirements) do
local okqw = wfw.cards and wfw.cards[soyv.cardId]
local bhjn = type(okqw) == _d("AQ8IXBM") and (tonumber(okqw[soyv.borderLevel]) or 0) or 0

if bhjn < (tonumber(soyv.amount) or 0) then
return false
end
end

return true
end

function tnt.misc.util.accPlan(iml)
local hibs = tnt.misc.util
local gzn = hibs.accOwned(iml)
local kdca = {}

for wuwe, hyge in ipairs(hibs.accCatalog()) do
if not gzn[hyge.id] and not hyge.raidable and not hyge.hidden and hibs.accMeets(iml, hyge) then
local ravp = kdca[hyge.shop]

if not ravp or hyge.score > ravp.score then
kdca[hyge.shop] = hyge
end
end
end

return kdca
end

function tnt.misc.util.accPicks(hfn)
local cvaq = tnt.misc.util
local bqzn = cvaq.accOwned(hfn)
local gogj, iinm

for iihn, blsd in ipairs(cvaq.accCatalog()) do
if bqzn[blsd.id] then
if not gogj or blsd.score > gogj.score then
gogj = blsd
end
elseif not blsd.raidable and not blsd.hidden and cvaq.accMeets(hfn, blsd) then
if not iinm or blsd.score > iinm.score then
iinm = blsd
end
end
end

return gogj, iinm
end

function tnt.misc.util.equipBest()
local lzu = tnt.misc.util
local ohb = lzu.currentProfile()

if not ohb or not gh.EquipAccessory then
return false
end

local khg = lzu.accPicks(ohb)

if not khg or ohb.equippedAccessory == khg.id then
return khg ~= nil
end

pcall(function()
gh.EquipAccessory:FireServer(khg.id)
end)

task.delay(1.5, function()
lzu.forgetProfile()
end)

return true
end

function tnt.misc.util.buyBest()
local doh = tnt.misc.util

if os.clock() < doh.accAt then
return false, _d("Ig8DRFYDRRgBB1UYFks")
end

if ff.busy(1) or ff.busy(2) then
doh.accNote = _d("PABKUVYABAEaBlVWT0UUThlYGRJFARwDQFYVCgACDhATDAFVBx4")
return false, _d("PABKUVYABAEaBlVWT0UUThlYGRJFARwDQFYVCgACDhATDAFVBx4e")
end

local rgh = doh.currentProfile()

if not rgh then
doh.accNote = _d("JwsLVB8MAlUXBUUEQhUHAQxZGgdFWE4dWRoORQEcExAXBQQcAEpZGEIEVR0PUxkMAQ")
return false, _d("JwsLVB8MAlUXBUUEQhUHAQxZGgdFWE4eQg9CBBIPA15WCwtVD0pDEwEKGwpE")
end

local rdc = doh.accPlan(rgh)
local thec = {}

for iodk = 1, 2 do
if rdc[iodk] then
table.insert(thec, rdc[iodk].name)
end
end

if #thec == 0 then
doh.accNote = _d("OwEeWB8MAlUAD0dWFwsZAQlbEwZFDAseEFtCER0LSlMXEAEGTgxfBEIMAU4LQhNCCxoaSlkYQhEdC0pTGQ4JEA0eWRkM")
return false, _d("OwEeWB8MAlUAD0dWAQQbTghVVhcLGQEJWxMGRQwLHhBbQhEdC0pTFxABBk4MXwRCDAFOC0ITQgsaGkpZGEIRHQtKUxkOCRANHlkZDEs")
end

doh.accAt = os.clock() + 12
doh.accNote = _d("Ig8GWx8MAlUaBRACCgBVDQVFGBYAB04MXwRC") .. table.concat(thec, _d("VQ8EVFY"))

task.spawn(function()
for kbw = 1, 2 do
local mz = rdc[kbw]

if mz then
local hhrf = kbw == 1 and _d("BRsYQwMLERAKDg") or _d("Ag8MVhMOCBQAD1ECERIUCAxVGhE")
local wwzv = kbw == 1 and gh.OpenAccessoryShop or gh.OpenAccessoryShop2
local tau = kbw == 1 and gh.BuyAccessory or gh.BuyAccessory2
local ggfh = hhrf and doh.visit(hhrf) or nil

if not ggfh then
local tqq = workspace:FindFirstChild(_d("Oz4pQw"))
local yscu = tqq and tqq:FindFirstChild(hhrf)

if yscu and os.clock() - (doh.worldAskedAt or 0) > 25 then

doh.worldAskedAt = os.clock()
doh.accNote = _d("NgYLQhcBERAcSl4ZFkUHCwtUD0JIVRoYSR8MAlUPDVEfDEUGBgVCAg4c")
elseif not yscu and os.clock() - (doh.worldAskedAt or 0) > 25 then

doh.worldAskedAt = os.clock()
doh.accNote = _d("OwFKUxkXCwELGBAfDEUBBgNDVhUKBwIOEFtCERQFA14RQhEdC0pcGQAHDE4eVRoHFRocHg")

pcall(function()
gh.TeleportToWorld:FireServer(_d("GQEIUg8"))
end)

task.wait(4.5)
ggfh = doh.visit(hhrf)
end
end

if ggfh and wwzv and tau then

task.wait(0.9)

pcall(function()
wwzv:FireServer()
end)

task.wait(1.2)

pcall(function()
tau:FireServer(mz.id)
end)

task.wait(0.9)
doh.returnTo(ggfh)
doh.accNote = _d("NwEfVx4WRQ") .. tostring(mz.name)
elseif not ggfh then
doh.accNote = _d("NgEfXBJCCxoaSkITAwYdTh5YE0IGGhsERBMQRVhOHkIPQgQSDwNeVgsLVQ9KXRkPABsa")
end

task.wait(0.6)
end
end

doh.forgetProfile()

for lwfv = 1, 8 do
if type(doh.profile) == _d("AQ8IXBM") then
break
end

doh.askProfile()
task.wait(0.7)
end

doh.equipBest()
end)

return true, table.concat(thec, _d("WU4"))
end

function tnt.misc.util.indexText()
local jih = tnt.misc.util

if type(jih.profile) ~= _d("AQ8IXBM") then
return _d("JwsLVB8MAlUXBUUEQgYUHA4QHwwBEBZEHlg")
end

local iwc = jih.indexPending(jih.profile)
local pjkj = 0

for vukv, nv in pairs(jih.profile.indexMilestones or {}) do
if nv then
pjkj = pjkj + 1
end
end

local ojb = tostring(jih.indexedTotal(jih.profile)) .. _d("VQ0LQhIRRRwADlUOBwFZTg") .. tostring(pjkj) .. _d("VQEMEEVSRQcLHVEEBhZVDQZRHw8AEQ")

if #iwc > 0 then
ojb = ojb .. _d("fzwPURIbX1U") .. table.concat(iwc, _d("WU4"))
end

return ojb
end

function tnt.misc.util.achText()
local epxb = tnt.misc.util

if type(epxb.ach) ~= _d("AQ8IXBM") then
return _d("JwsLVB8MAlUPCVgfBxMQAw9eAhFLW0A")
end

local xvm = epxb.achPending()
local mlsb = 0

for req, wbf in ipairs(epxb.ach.chains or {}) do
for dmth in ipairs(wbf.levels or {}) do
mlsb = mlsb + 1
end
end

return tostring(#xvm) .. _d("VQEMEA") .. tostring(mlsb) .. _d("VQ8JWB8HExADD14CEUUHCwtUDw")
end

function tnt.misc.util.questText()
local gnmh = tnt.misc.util

if type(gnmh.quests) ~= _d("AQ8IXBM") and type(gnmh.weekly) ~= _d("AQ8IXBM") then
return _d("JwsLVB8MAlUfH1UFFhZbQEQ")
end

local pvk, sva = 0, 0

for ox, lwgc in ipairs(gnmh.questPending()) do
if lwgc.list == _d("AgsPWxob") then
sva = sva + 1
else
pvk = pvk + 1
end
end

local qymb = type(gnmh.quests) == _d("AQ8IXBM") and #(gnmh.quests.list or {}) or 0
local nxgp = type(gnmh.weekly) == _d("AQ8IXBM") and #(gnmh.weekly.list or {}) or 0

return tostring(pvk) .. _d("VQEMEA") .. tostring(qymb) .. _d("VQoLWRobRQcLC1QPaA")
.. tostring(sva) .. _d("VQEMEA") .. tostring(nxgp) .. _d("VRkPVR0OHFUcD1ESGw")
end

function tnt.misc.util.packText()
local ybjp = tnt.misc.util
local lbrw = ybjp.profile

if type(lbrw) ~= _d("AQ8IXBM") then
return _d("JwsLVB8MAlUXBUUEQhUUDQFDWExL")
end

local function grfe(okpf)
for qd, yoae in ipairs(ybjp.packCatalog()) do
if yoae.id == okpf then
return yoae.name
end
end

return tostring(okpf)
end

local zxss = _d("JgIFRFZTX1U") .. grfe(lbrw.equippedPack)

if (tonumber(lbrw.packSlots) or 1) >= 2 then
zxss = zxss .. _d("fz0GXwJCV09O") .. grfe(lbrw.equippedPack2)
else
zxss = zxss .. _d("fz0GXwJCV09ODVEbBxUUHRkQGA0RVQEdXhMG")
end

return zxss
end

function tnt.misc.util.accText()
local wdm = tnt.misc.util
local aces = wdm.profile

if type(aces) ~= _d("AQ8IXBM") then
return _d("JwsLVB8MAlUXBUUEQgQWDQ9DBQ0XHAsZHlhM")
end

local wurj = wdm.accPicks(aces)
local uqn = wdm.accPlan(aces)
local oxkh = _d("GwEEVQ")

for yol, vlib in ipairs(wdm.accCatalog()) do
if vlib.id == aces.equippedAccessory then
oxkh = vlib.name .. _d("VUY") .. vlib.shopName .. _d("XA")
end
end

local dnp = _d("MB8fWQYSABFUSg") .. oxkh

if wurj then
dnp = dnp .. _d("fywPQwJCCgIAD1RMQg") .. wurj.name
end

dnp = dnp .. _d("fy8JUxMRFhocExAlCgoFVEo") .. (uqn[1] and uqn[1].name or _d("GwEeWB8MAlUAD0c"))
dnp = dnp .. _d("fyMTQwIHFxwBH0NWLwQbVEo") .. (uqn[2] and uqn[2].name or _d("GwEeWB8MAlUAD0c"))

if wdm.accNote then
dnp = dnp .. _d("fyILQwJCEQcHGgpW") .. wdm.accNote
end

return dnp
end

tnt.misc.util.hook()
tnt.misc.util.askProfile()

tnt.misc.indexSection = tnt.misc.tab:Section({
Side = _d("OQsMRA"),
})

tnt.misc.indexSection:Header({
Name = _d("Ng8YVFYrCxELEhCG/fby"),
})

tnt.misc.indexToggle = tnt.misc.indexSection:Toggle({
Name = _d("NBseX1YBCRQHBw"),
Default = false,
Callback = function(hbzm)
tnt.misc.util.indexOn = hbzm
tnt.misc.util.indexAt = 0

tnt.misc.util.indexAsked = nil
end,
}, _d("FBseXykBCRQHB29E"))

tnt.misc.indexSection:Button({
Name = _d("NgILWRtCCxoZ"),
Callback = function()
local dve = tnt.misc.util

dve.indexAt = 0
dve.indexAsked = nil

if not dve.claimIndex() then
blg:Notify({
Title = _d("Ng8YVFYrCxELEg"),
Description = _d("OwFKXR8OAAYaBV4TQgwGThhVFwYcVRoFEBUOBBwDRA"),
Lifetime = 5,
})
end
end,
})

tnt.misc.claimSection = tnt.misc.tab:Section({
Side = _d("OQsMRA"),
})

tnt.misc.claimSection:Header({
Name = _d("NA0CWRMUABgLBEQFQkNVPx9VBRYWVZ71v/A"),
})

tnt.misc.achToggle = tnt.misc.claimSection:Toggle({
Name = _d("NBseX1YBCRQHBxAXAQ0cCxxVGwcLAR0"),
Default = false,
Callback = function(ab)
tnt.misc.util.achOn = ab
tnt.misc.util.achAt = 0

if ab and gh.RequestAchievements then
pcall(function()
gh.RequestAchievements:FireServer()
end)
end
end,
}, _d("FBseXykBCRQHB28XAQ0cCxxVGwcLAR0"))

tnt.misc.questToggle = tnt.misc.claimSection:Toggle({
Name = _d("NBseX1YBCRQHBxAHFwAGGhk"),
Default = false,
Callback = function(im)
tnt.misc.util.questOn = im
tnt.misc.util.questAt = 0
tnt.misc.util.questAskedAt = 0
tnt.misc.util.weeklyAskedAt = 0

if im then
tnt.misc.util.askQuests()
end
end,
}, _d("FBseXykBCRQHB28HFwAGGhk"))

tnt.misc.claimSection:Button({
Name = _d("NgILWRtCBBkCSl4ZFQ"),
Callback = function()
local payz = tnt.misc.util

payz.achAt = 0
payz.questAt = 0

local xzm = payz.claimAchievement()
local xwb = payz.claimQuest()

if not (xzm or xwb) then
blg:Notify({
Title = _d("NA0CWRMUABgLBEQFQkNVPx9VBRYW"),
Description = _d("OwEeWB8MAlUHGRAEBwQRF0pEGUIGGQ8DXVg"),
Lifetime = 5,
})
end
end,
})

tnt.misc.packSection = tnt.misc.tab:Section({
Side = _d("OQsMRA"),
})

tnt.misc.packSection:Header({
Name = _d("Ng8YVFYyBBYFGRCG/evB"),
})

tnt.misc.packSection:Paragraph({
Header = _d("IRkFEAUOCgEd"),
Body = _d("JQcJWwVCBAUeBklWDQsZF0pHHgcLVRcFRVYSFxAdGRA3EhUZF0pAFwEOBkJKUhMBBAAdDxACCgBVHR1ZAgENVRkLXB0RRQEBSkQeB0UYCxhTHgMLAUA"),
})

local abp = {}
local hv = {}

for mlu, fdao in ipairs(tnt.misc.util.packCatalog()) do
table.insert(abp, fdao.name)
hv[fdao.name] = fdao.id
end

tnt.misc.packSlotOne = nil
tnt.misc.packSlotTwo = nil

tnt.misc.packDropdownOne = tnt.misc.packSection:Dropdown({
Name = _d("JgIFRFZT"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = abp,
Callback = function(sz)
local je = type(sz) == _d("AQ8IXBM") and sz[1] or sz

tnt.misc.packSlotOne = hv[tostring(je)]
end,
}, _d("BgIFRClT"))

tnt.misc.packDropdownTwo = tnt.misc.packSection:Dropdown({
Name = _d("JgIFRFZQ"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = abp,
Callback = function(swn)
local sp = type(swn) == _d("AQ8IXBM") and swn[1] or swn

tnt.misc.packSlotTwo = hv[tostring(sp)]
end,
}, _d("BgIFRClQ"))

tnt.misc.packSection:Button({
Name = _d("NB4aXA9CFRQNAUM"),
Callback = function()
local qe = tnt.misc.util
local swxc = tnt.misc.packSlotOne
local eofq = tnt.misc.packSlotTwo

if not swxc then
blg:Notify({
Title = _d("Ng8YVFYyBBYFGQ"),
Description = _d("JQcJW1YDRQUPCVtWBAoHThlcGRZFRE4MWQQREVs"),
Lifetime = 5,
})

return
end

local ctqi, rumi = qe.applyPacks(swxc, eofq)

if not ctqi then
blg:Dialog({
Title = _d("Ng8YVFYyBBYFGQ"),
Description = rumi,
Buttons = {
{
Name = _d("MgEeEB8W"),
},
},
})
end
end,
})

tnt.misc.cards = {
rarityLabels = { _d("NAIG"), _d("OwEYXRcO"), _d("MgEGVA"), _d("Jw8DXhQNEg"), _d("IAADRhMQFhQC") },
borderOf = { Normal = 1, Gold = 2, Rainbow = 3, Universal = 4 },
mergeOn = false,
deconOn = false,
mergeWanted = {},
deconWanted = {},
mergeAt = 0,
deconAt = 0,
mergeDone = _d("OwEeWB8MAlUdD14CQhwQGg"),
deconDone = _d("OwEeWB8MAlUdD14CQhwQGg"),

inFlight = false,

interval = 3600,
manualGap = 20,
manualAt = 0,

protectedPrefixes = { weather = true, boss = true, raid = true, wb = true, fish = true, hw = true, event = true },

deconExceptions = { weather_sayaka = true, weather_caesar = true },

deconConfirmed = false,
burnAskedAt = 0,
}

function tnt.misc.cards.isProtected(xrpp, hjc)
local kzu = tnt.misc.cards
local ii = tostring(xrpp or _d(""))
local cwqo = ii:match(_d("K0YxUVsYVVhXNxtfPQ"))

if not (cwqo and kzu.protectedPrefixes[cwqo]) then
return false
end

return not (kzu.deconExceptions[ii] and hjc == 2)
end

function tnt.misc.cards.burnAllowed(mgu)
local dol = tnt.misc.cards
local rq = dol.wantedFor(_d("EQsJXxg1BBsaD1Q"))

if not (rq == nil or rq[3] or rq[4]) then
dol.deconConfirmed = false

return true
end

if dol.deconConfirmed then
return true
end

if mgu then
return false
end

if os.clock() < (dol.burnAskedAt or 0) then
return false
end

dol.burnAskedAt = os.clock() + 20

blg:Dialog({
Title = _d("NxsYXlYwBBwACF8BQgoHTj9eHxQABx0LXFYBBAcKGQ8"),
Description = _d("NBseX1YGABYBBEMCEBAWGkpDEwwBBk4PRhMQHFUNBUAPQgwbTh5YE0IIFBoJWB8MAlUcBUcFQgQbCkpTFwwLGhpKUhNCEBsKBV4TTEU")
.. _d("IgsLRB4HF1lOCF8FEUlVHAtZEkIHGh0ZHFYVCgcCDhAUDRYGQkpWHxENHAANHFYqBBkCBUcTBwtVDwRUVgcTEAAeEBUDFxEdSlEEB0UdCwZUVgAEFgVKVR8WDRAcSkcXG0s"),
Buttons = {
{
Name = _d("NxsYXlYWDRAD"),
Callback = function()
dol.deconConfirmed = true
dol.deconAt = 0
dol.manualAt = 0

pcall(function()
tnt.misc.deconToggle:UpdateState(true)
end)
end,
},
{
Name = _d("Ng8EUxMO"),
Callback = function()
pcall(function()
tnt.misc.deconToggle:UpdateState(false)
end)
end,
},
},
})

return false
end

function tnt.misc.cards.wantedFor(zfm)
local kxu = tnt.misc.cards[zfm] or {}

if next(kxu) == nil or kxu[0] then
return nil
end

return kxu
end

function tnt.misc.cards.npcFor(cakb)
local dkcu = workspace:FindFirstChild(_d("Oz4pQw"))

if not dkcu then
return nil
end

local fiw = cakb and _d("ExsZVSkMFRY") or _d("EQsJXxgREQcbCUQpDBUW")

for maei, scf in ipairs(dkcu:GetChildren()) do
if scf:GetAttribute(_d("Oz4peRI")) == fiw then
return scf
end
end

local ige = cakb and { _d("OgEaWBob"), _d("GgEaXA8H") } or { _d("JgYLRRoD"), _d("PQ8cVSIVCjEPDkM") }

for yrry, mfnl in ipairs(dkcu:GetChildren()) do
for qydg, zohv in ipairs(ige) do
if mfnl.Name == zohv then
return mfnl
end
end
end

local sxpo = cakb and { _d("Fg8YVFYPAAcJA14R"), _d("GgEaWBob") } or { _d("EQsJXxgREQcbCUQfDQs"), _d("BgYLRRoD") }

for ipo, he in ipairs(dkcu:GetChildren()) do
for wpwr, vjv in ipairs(he:GetDescendants()) do
if vjv:IsA(_d("IQsSRDoDBxAC")) and vjv.Text ~= _d("") then
local gnep = vjv.Text:lower()

for sifi, coz in ipairs(sxpo) do
if gnep:find(coz, 1, true) then
return he
end
end

break
end
end
end

return nil
end

function tnt.misc.cards.rarityText(pju)
local und = tnt.misc.cards.wantedFor(pju)

if not und then
return _d("NAIG")
end

local owa = {}

for yej, cut in pairs(tnt.misc.cards.borderOf) do
if und[cut] then
table.insert(owa, yej)
end
end

if #owa == 0 then
return _d("NAIG")
end

table.sort(owa)

return table.concat(owa, _d("WU4"))
end

function tnt.misc.cards.run(elsa, ecf, xdux)
local gl = tnt.misc.cards
local rvq = tnt.misc.util
local qak = elsa and _d("GAsYVxMjEQ") or _d("EQsJXxgjEQ")

if xdux then
if os.clock() < gl[qak] then
return false, _d("OwEeEBIXAFUXD0RY")
end
elseif os.clock() < gl.manualAt then
return false, _d("Ig8DRFYDRRgBB1UYFks")
end

if gl.inFlight then
return false, _d("NAAFRB4HF1UNC0ISQhEHBxoQHxFFFAIYVRcGHFUcH14YCwsSQA")
end

local vqq = ff.busy(1) and 1 or (ff.busy(2) and 2 or nil)
local kr = os.clock() - (wk.floorAt or 0) < 90
local zis = vqq ~= nil and ff.towerSlot() == vqq and kr

if vqq and not zis then
return false, _d("PABKUVYABAEaBlVWT0UBBg8QAhAMBU4dXwMOAVULBFRWCxFb")
end

if nqmv.battlePending and os.time() < (nqmv.battlePendingUntil or 0) then
return false, _d("NE4IUQIWCRBOA0NWEREUHB5ZGAVFWE4eWBNCEQcHGhABDRAZCkpTFwwGEAJKWQJM")
end

if not elsa and not gl.burnAllowed() then
return false, _d("NgEEVh8QCFU8C1kYAAoCQT9eHxQABx0LXFYEDAcdHh4")
end

local bjk = gl.npcFor(elsa)

if not bjk then
return false, elsa
and _d("OgEaWBobRRwdSl4ZFkUcAEpEHgsWVQMLQFZPRQEcC0YTDkUBAUpYHw9FFAAOEAYQAAYdSlkCQgQSDwNeWA")
or _d("IQYPEBIHBhoAGUQEFwYBTiRgNUIMBk4EXwJCDBtOHlgfEUUYDxoQW0IRBw8cVRpCERpOA0RWAwsRThpCExEWVQceEBcFBBwARA")
end

local obog = elsa and gh.OpenFuseDialog or gh.OpenDeconstructDialog
local ono = elsa and gh.FuseCards or gh.DeconstructCards

if not (obog and ono) then
return false, _d("IQYLRFYLFlUABURWCwtVGgJZBUICFAMPEAAHFwYHBV5Y")
end

local xl = elsa and _d("GAsYVxM1BBsaD1Q") or _d("EQsJXxg1BBsaD1Q")
local usp = gl.wantedFor(xl)

gl.manualAt = os.clock() + gl.manualGap

if xdux then
gl[qak] = os.clock() + gl.interval
end

gl.inFlight = true

task.spawn(function()

local aaj = nil

local function fvdm(djmd, qds)
if elsa then
gl.mergeDone = djmd
else
gl.deconDone = djmd
end

if qds and xdux then
gl[qak] = os.clock() + 120
end

gl.inFlight = false
end

local mqud = rvq.visit(bjk.Name)

if not mqud then
fvdm(_d("NgYLQhcBERAcSlkFQgsaGkpCEwMBDE5HEAQHEQcXA14RQgwbTh5HGUIIHAAfRBMRSw"), true)

return
end

task.wait(0.9)

local evkq = nil
local bq = obog.OnClientEvent:Connect(function(vyb)
if type(vyb) == _d("AQ8IXBM") then
evkq = vyb
end
end)

for htd = 1, 3 do
pcall(function()
obog:FireServer()
end)

for aaq = 1, 20 do
if evkq then
break
end

task.wait(0.3)
end

if evkq then
break
end

task.wait(1.5)
end

bq:Disconnect()
rvq.returnTo(mqud)

if type(evkq) ~= _d("AQ8IXBM") then
fvdm(_d("IQYPEBILBBkBDRASCwFVAAVEVgMLBhkPQlZPRQcLHkIPCwsSTgNeVhYSGk4HWRgXERAdRA"), true)

return
end

local fxd = {}

for sasb, inzd in ipairs(evkq) do
local zxe = tonumber(inzd.borderLevel)
local unn = inzd.cardId or inzd.id

if zxe and (not usp or usp[zxe])
and (elsa or not tnt.misc.cards.isProtected(unn, zxe)) then
table.insert(fxd, inzd)
end
end

if #fxd == 0 then

tnt.misc.cards.closeFrame(elsa)
fvdm(_d("OwEeWB8MAlUaBRAFBwsRTgxfBEI") .. tnt.misc.cards.rarityText(xl) .. _d("Ww"))

return
end

if ecf then

local xjd = {}

for zqu, bmnj in ipairs(fxd) do
if (tonumber(bmnj.count) or 0) >= ecf then
table.insert(xjd, bmnj)
end
end

if #xjd == 0 then
tnt.misc.cards.closeFrame(elsa)
fvdm(_d("OwFK") .. tnt.misc.cards.rarityText(xl) .. _d("VRwFR1YKBAZO") .. ecf .. _d("VQ0FQB8HFlUXD0RY"))

return
end

fxd = xjd

table.sort(fxd, function(tw, hw)
return (tonumber(tw.count) or 0) < (tonumber(hw.count) or 0)
end)

local rcep, tzq = {}, 0

for lcra, pwe in ipairs(fxd) do
local edc = tonumber(pwe.count) or 0

if #rcep > 0 and tzq + edc > ecf then
break
end

table.insert(rcep, pwe)
tzq = tzq + edc
end

fxd = rcep
aaj = tzq
end

local xdm = 0

tnt.misc.cards.closeFrame(elsa)

if elsa then
if not usp then

pcall(function()
ono:FireServer(_d("FAIG"), nil)
end)

xdm = #fxd
else
local fqyn = {}

for uua, zdp in ipairs(fxd) do
table.insert(fqyn, { zdp.cardId, tonumber(zdp.borderLevel) })
end

pcall(function()
ono:FireServer(_d("BgsGVRUWABExC1wa"), fqyn)
end)

xdm = #fqyn
end
else
local lap = {}

for hufs, szdb in ipairs(fxd) do
if #lap >= 25 then
break
end

table.insert(lap, { szdb.cardId, tonumber(szdb.borderLevel), _d("FAIG") })
end

pcall(function()
ono:FireServer(lap)
end)

xdm = #lap
end

fvdm(_d("JgsERFY") .. tostring(xdm) .. _d("VRwFRw") .. (xdm == 1 and _d("") or _d("Bg"))
.. _d("VUY") .. tnt.misc.cards.rarityText(xl) .. _d("XA")
.. (aaj and (_d("WU4") .. tostring(aaj) .. _d("VQ0LQhIR")) or _d("")))
end)

return true
end

function tnt.misc.cards.closeFrame(kpcv)
pcall(function()
local zur = kpcv and { _d("MxsZVTEXDA"), _d("MxsZVTAQBBgL") } or { _d("MQsJXxgREQcbCUQxFww"), _d("MQsJXxgREQcbCUQwEAQYCw") }
local wnhg = require(yiyr.ModuleScripts.MenuManager)
local byd = zl:FindFirstChild(zur[1])
local lhlf = byd and byd:FindFirstChild(zur[2])

if lhlf then
wnhg.close(lhlf)
end

if not kpcv then
local emff = byd and byd:FindFirstChild(_d("MQsJXxgREQcbCUQkAxEQHSxCFw8A"))

if emff then
wnhg.close(emff)
else
emff = zl:FindFirstChild(_d("MQsJXxgREQcbCUQkAxEQHSxCFw8A"))

if emff then
wnhg.close(emff)
end
end
end
end)
end

function tnt.misc.cards.refresh(ljie)

local wi = ljie and tnt.misc.mergeParagraph or tnt.misc.deconParagraph

if not wi then
return
end

pcall(function()
wi:UpdateBody(ljie
and tnt.misc.cards.mergeText()
or tnt.misc.cards.deconText())
end)
end

function tnt.misc.cards.mergeText()
local yh = tnt.misc.cards

return _d("Jw8YWQILAAZUSg") .. yh.rarityText(_d("GAsYVxM1BBsaD1Q")) .. _d("fw") .. yh.mergeDone
end

function tnt.misc.cards.deconText()
local qnvq = tnt.misc.cards

return _d("Jw8YWQILAAZUSg") .. qnvq.rarityText(_d("EQsJXxg1BBsaD1Q")) .. _d("fw") .. qnvq.deconDone
.. _d("fzkPUQIKAAdCSlIZERZZThhRHwZJVRkFQhoGRRcBGUNaQgMcHQJZGAVJVSYLXBoNEhALBBAXDAFVCxxVGBZFFg8YVAVCBAcLSl4TFAAHThlVGBZL")
end

tnt.misc.skill = {
on = false,
at = 0,
mainWanted = {},
raidWanted = {},

mainOrder = {},
raidOrder = {},
last = _d("OwEeWB8MAlUMBUURChFVFw9E"),
shown = _d(""),
}

function tnt.misc.skill.branchMap(biz)
local so = {}

for pfne, rf in ipairs(izj.Trees[biz].branches) do
so[rf.name] = rf
end

return so
end

function tnt.misc.skill.branchLabels(ato)
local zzb = {}

for slby, evlv in ipairs(izj.Trees[ato].branches) do
table.insert(zzb, evlv.name)
end

return zzb
end

function tnt.misc.skill.wantedFrom(cuih, wiev)
local gqju = {}
local jbab = tnt.misc.skill.branchMap(wiev)

if type(cuih) == _d("AQ8IXBM") then
for nlvk, sly in pairs(cuih) do
if sly and jbab[tostring(nlvk)] then
gqju[jbab[tostring(nlvk)].id] = true
end
end
end

return gqju
end

function tnt.misc.skill.ordered(umn, sbtz)
local pxmq = {}
local yxay = {}

for wqew, yscr in ipairs(sbtz or {}) do
if umn[yscr] then
table.insert(pxmq, yscr)
yxay[yscr] = true
end
end

for emb in pairs(umn) do
if not yxay[emb] then
table.insert(pxmq, emb)
end
end

return pxmq
end

function tnt.misc.skill.branchById(vkct)
local byt = {}

for robs, nyt in ipairs(izj.Trees[vkct].branches) do
byt[nyt.id] = nyt
end

return byt
end

function tnt.misc.skill.upgrade()
local dd = tnt.misc.skill
local gaua = tnt.misc.util
local ozax = gaua.currentProfile and gaua.currentProfile()

if type(ozax) ~= _d("AQ8IXBM") then
return false, _d("OwFKQAQNAxwCDxAPBxFb")
end

local ojx = ozax.skillTrees or {}
local lvzp = { [1] = dd.mainOrder, [2] = dd.raidOrder }
local xtd = nil

for kwi, dgf in ipairs(izj.Trees) do
local sdng = ojx[dgf.id]
local lq = tonumber(ozax[dgf.pointsField or _d("BgUDXBoyChwAHkM")]) or 0
local sm = tnt.misc.skill.branchById(kwi)

if type(sdng) == _d("AQ8IXBM") and lq > 0 then
for kt, wiui in ipairs(lvzp[kwi] or {}) do
local ynu = sm[wiui]

if ynu and not xtd then
local lryj = izj.getBranchLevel(ojx, dgf.id, ynu.id) or 0
local ovgh = lryj + 1

if ovgh <= ynu.levels then
local vyr = ynu.id .. ovgh
local rbkw = 1

if type(ynu.costs) == _d("AQ8IXBM") and tonumber(ynu.costs[ovgh]) then
rbkw = tonumber(ynu.costs[ovgh])
elseif tonumber(ynu.cost) then
rbkw = tonumber(ynu.cost)
end

if rbkw <= lq and izj.isAvailable(ojx, dgf.id, vyr) then
xtd = { tree = dgf.id, node = vyr, name = ynu.name, level = ovgh }
end
end
end
end
end
end

if not xtd then
return false, _d("OwEeWB8MAlUaBRAUFxxVFw9EWA")
end

gh.BuySkillNode:FireServer(xtd.tree, xtd.node)

if gaua.askProfile then
pcall(gaua.askProfile)
end

dd.last = _d("NwEfVx4WRQ") .. xtd.name .. _d("VQ") .. tostring(xtd.level)

return true
end

function tnt.misc.skill.text()
local fte = tnt.misc.skill
local qlpj = tnt.misc.util
local anlz = qlpj.currentProfile and qlpj.currentProfile()

if type(anlz) ~= _d("AQ8IXBM") then
return _d("JQEDXgIRX1VRYA") .. fte.last
end

local ku = anlz.skillTrees or {}
local bamy = {}

local ebkc = { [1] = fte.mainOrder, [2] = fte.raidOrder }

for oxpg, nqdm in ipairs(izj.Trees) do
local mnqp = tonumber(anlz[nqdm.pointsField or _d("BgUDXBoyChwAHkM")]) or 0
local fbz = {}
local jtf = tnt.misc.skill.branchById(oxpg)

for ay, jkq in ipairs(ebkc[oxpg] or {}) do
local gpa = jtf[jkq]

if gpa then
local lqpv = izj.getBranchLevel(ku, nqdm.id, gpa.id) or 0
table.insert(fbz, gpa.name .. _d("VQ") .. tostring(lqpv) .. _d("Wg") .. tostring(gpa.levels))
end
end

bamy[#bamy + 1] = nqdm.name .. _d("T04") .. tostring(mnqp) .. _d("VR4eQw")
.. (#fbz > 0 and (_d("VUNK") .. table.concat(fbz, _d("WU4"))) or _d("VUNKXhkWDRwADRAGCwYeCw4"))
end

bamy[#bamy + 1] = fte.last

return table.concat(bamy, _d("fw"))
end

tnt.misc.mergeSection = tnt.misc.tab:Section({
Side = _d("OQsMRA"),
})

tnt.misc.mergeSection:Header({
Name = _d("OAsYVxNClerJxg"),
})

tnt.misc.mergeToggle = tnt.misc.mergeSection:Toggle({
Name = _d("NBseX1YPAAcJDw"),
Default = false,
Callback = function(su)
local qw = tnt.misc.cards

qw.mergeOn = su

qw.mergeAt = (su and lfm.loading) and (os.clock() + qw.interval) or 0
end,
}, _d("FBseXykPAAcJDw"))

tnt.misc.mergeDropdown = tnt.misc.mergeSection:Dropdown({
Name = _d("Jw8YWQILAAY"),
Search = false,
Multi = true,
Required = false,
Default = { _d("NAIG") },
Options = tnt.misc.cards.rarityLabels,
Callback = function(ht)
local mdfd = {}

if type(ht) == _d("AQ8IXBM") then
for idjq, osvr in pairs(ht) do
if osvr then
if idjq == _d("NAIG") then
mdfd[0] = true
else
mdfd[tnt.misc.cards.borderOf[tostring(idjq)]] = true
end
end
end
end

tnt.misc.cards.mergeWanted = mdfd
tnt.misc.cards.refresh(true)
end,
}, _d("Bw8YWQILAAY"))

tnt.misc.mergeSection:Button({
Name = _d("OAsYVxNCCxoZ"),
Callback = function()
local cg, au = tnt.misc.cards.run(true)

if not cg then
blg:Notify({
Title = _d("OAsYVxM"),
Description = au,
Lifetime = 6,
})
end
end,
})

tnt.misc.mergeSection:Button({
Name = _d("OAsYVxNCXEU"),
Callback = function()

local ni, ez = tnt.misc.cards.run(true, 90)

if not ni then
blg:Notify({
Title = _d("OAsYVxNCXEU"),
Description = ez,
Lifetime = 6,
})
end
end,
})

tnt.misc.mergeParagraph = tnt.misc.mergeSection:Paragraph({
Header = _d("JhoLRAMR"),
Body = tnt.misc.cards.mergeText(),
})

tnt.misc.accSection = tnt.misc.tab:Section({
Side = _d("JwcNWAI"),
})

tnt.misc.accSection:Header({
Name = _d("NA0JVQURCgcHD0NWkvrn4A"),
})

tnt.misc.accToggle = tnt.misc.accSection:Toggle({
Name = _d("NBseX1YAAAYaSlEVAQAGHQVCDw"),
Default = false,
Callback = function(vd)
tnt.misc.util.accOn = vd
tnt.misc.util.accAt = 0
end,
}, _d("FBseXykAAAYaNVEVAQAGHQVCDw"))

tnt.misc.accBuyToggle = tnt.misc.accSection:Toggle({
Name = _d("NBseX1YAEAxOCFUFFg"),
Default = false,
Callback = function(uryf)
tnt.misc.util.accBuyOn = uryf
tnt.misc.util.accBuyAt = 0
tnt.misc.util.accAt = 0
end,
}, _d("FBseXykAEAwxCFUFFg"))

tnt.misc.accSection:Button({
Name = _d("NxsTEBQHFgE"),
Callback = function()
local mngl, hee = tnt.misc.util.buyBest()

if not mngl then
blg:Notify({
Title = _d("NA0JVQURCgcHD0M"),
Description = hee,
Lifetime = 6,
})
end
end,
})

tnt.misc.accSection:Button({
Name = _d("MB8fWQZCBxAdHg"),
Callback = function()
if not tnt.misc.util.equipBest() then
blg:Notify({
Title = _d("NA0JVQURCgcHD0M"),
Description = _d("OwEeWB8MAlUMD0QCBxdVBxkQGRULEApKSRMWSw"),
Lifetime = 5,
})
end
end,
})

tnt.misc.accParagraph = tnt.misc.accSection:Paragraph({
Header = _d("JhoLRAMR"),
Body = tnt.misc.util.accText(),
})

tnt.misc.claimInfo = tnt.misc.tab:Section({
Side = _d("JwcNWAI"),
})

tnt.misc.claimInfo:Header({
Name = _d("OAcZUxMOCRQAD18DEQ"),
})

tnt.misc.indexParagraph = tnt.misc.claimInfo:Paragraph({
Header = _d("Ng8YVFYrCxELEg"),
Body = tnt.misc.util.indexText(),
})

tnt.misc.achParagraph = tnt.misc.claimInfo:Paragraph({
Header = _d("NA0CWRMUABgLBEQF"),
Body = tnt.misc.util.achText(),
})

tnt.misc.questParagraph = tnt.misc.claimInfo:Paragraph({
Header = _d("JBsPQwIR"),
Body = tnt.misc.util.questText(),
})

tnt.misc.packParagraph = tnt.misc.claimInfo:Paragraph({
Header = _d("JQ8JWwU"),
Body = tnt.misc.util.packText(),
})

tnt.misc.skillSection = tnt.misc.tab:Section({
Side = _d("JwcNWAI"),
})

tnt.misc.skillSection:Header({
Name = _d("JgUDXBpCMQcLDxCG/enG"),
})

tnt.misc.skillToggle = tnt.misc.skillSection:Toggle({
Name = _d("NBseX1YXFRIcC1QT"),
Default = false,
Callback = function(imju)
local xlz = tnt.misc.skill

if imju and not (next(xlz.mainWanted) or next(xlz.raidWanted)) then
xlz.on = false

pcall(function()
tnt.misc.skillToggle:UpdateState(false)
end)

blg:Dialog({
Title = _d("JQcJW1YDRRccC14VCkUTBxhDAg"),
Description = _d("NgYFXwUHRRQaSlwTAxYBTgVeE0IHBw8EUx5CDBtOHlgTQigUBwQQAhAAEE4FQlYwBBwKSkQEBwBVChhfBgYKAgBKHVY")
.. _d("NBseX1YXFRIcC1QTQgobAhMQBRIAGwoZEAYNDBsaGRABCgAHC0pJGRdFBQEDXgJCDAFA"),
Buttons = {
{
Name = _d("MgEeEB8W"),
},
},
})

return
end

xlz.on = imju
xlz.at = 0
end,
}, _d("FBseXykXFRIcC1QT"))

tnt.misc.skillMainDropdown = tnt.misc.skillSection:Dropdown({
Name = _d("OA8DXlYWFxAL"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = tnt.misc.skill.branchLabels(1),
Callback = function(kof)
local hz = tnt.misc.skill
local vlov = hz.wantedFrom(kof, 1)

hz.mainWanted = vlov
hz.mainOrder = hz.ordered(vlov, hz.mainOrder)
hz.shown = _d("")
end,
}, _d("GA8DXikWFxAL"))

tnt.misc.skillRaidDropdown = tnt.misc.skillSection:Dropdown({
Name = _d("Jw8DVFYWFxAL"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = tnt.misc.skill.branchLabels(2),
Callback = function(xh)
local cwgh = tnt.misc.skill
local kfh = cwgh.wantedFrom(xh, 2)

cwgh.raidWanted = kfh
cwgh.raidOrder = cwgh.ordered(kfh, cwgh.raidOrder)
cwgh.shown = _d("")
end,
}, _d("Bw8DVCkWFxAL"))

pcall(function()
tnt.misc.skillMainDropdown:UpdateSelection({})
end)

pcall(function()
tnt.misc.skillRaidDropdown:UpdateSelection({})
end)

tnt.misc.skillParagraph = tnt.misc.skillSection:Paragraph({
Header = _d("JhoLRAMR"),
Body = tnt.misc.skill.text(),
})

task.spawn(function()
local cwkr = tnt.misc.util

while po() do
if cwkr.indexOn or cwkr.achOn or cwkr.questOn or cwkr.accOn or cwkr.accBuyOn then
cwkr.currentProfile()
end

if cwkr.indexOn then
cwkr.claimIndex()
end

if cwkr.achOn then
cwkr.claimAchievement()
end

if cwkr.questOn then

if os.clock() - cwkr.questAskedAt > 20 or os.clock() - cwkr.weeklyAskedAt > 20 then
cwkr.askQuests()
end

cwkr.claimQuest()
end

if cwkr.accOn and os.clock() >= cwkr.accAt then
cwkr.accAt = os.clock() + 3
cwkr.equipBest()
end

local ufr = tnt.misc.cards

if not ufr.inFlight then
if ufr.mergeOn and os.clock() >= ufr.mergeAt then
ufr.run(true, nil, true)
elseif ufr.deconOn and os.clock() >= ufr.deconAt then
ufr.run(false, nil, true)
end
end

if ufr.mergeDone ~= ufr.mergeShown then
ufr.mergeShown = ufr.mergeDone

pcall(function()
tnt.misc.mergeParagraph:UpdateBody(tnt.misc.cards.mergeText())
end)
end

if ufr.deconDone ~= ufr.deconShown then
ufr.deconShown = ufr.deconDone

pcall(function()
tnt.misc.deconParagraph:UpdateBody(tnt.misc.cards.deconText())
end)
end

local jqs = tnt.misc.skill

if jqs.on and os.clock() >= jqs.at then

jqs.at = os.clock() + 2
jqs.upgrade()
end

local xrv = tnt.misc.skill.text()

if jqs.shown ~= xrv then
jqs.shown = xrv

pcall(function()
tnt.misc.skillParagraph:UpdateBody(xrv)
end)
end

if cwkr.accBuyOn and os.clock() >= cwkr.accBuyAt then

local ow = cwkr.buyBest()

cwkr.accBuyAt = os.clock() + (ow and 45 or 10)
end

local gora = {
{ key = _d("HAAOVQ4"), paragraph = tnt.misc.indexParagraph, value = cwkr.indexText() },
{ key = _d("FA0C"), paragraph = tnt.misc.achParagraph, value = cwkr.achText() },
{ key = _d("BBsPQwI"), paragraph = tnt.misc.questParagraph, value = cwkr.questText() },
{ key = _d("BQ8JWw"), paragraph = tnt.misc.packParagraph, value = cwkr.packText() },
{ key = _d("FA0J"), paragraph = tnt.misc.accParagraph, value = cwkr.accText() },
}

for hlkm, uxdw in ipairs(gora) do
if uxdw.paragraph and cwkr.shown[uxdw.key] ~= uxdw.value then
cwkr.shown[uxdw.key] = uxdw.value

pcall(function()
uxdw.paragraph:UpdateBody(uxdw.value)
end)
end
end

task.wait(0.75)
end
end)

local ejwt = gmba:Section({
Side = _d("JwcNWAI"),
})

ejwt:Paragraph({
Header = _d("MwcZWB8MAg"),
Body = _d("NBseX1YkDAYGSlUHFwwFHUpJGRcXVRwFVFpCAxQND0NWFg0QTh1RAgcXVQ8EVFYBBAYaGRAZDEUcGhkQGRULWU4eWBMMRQcLD1wFQhIdCwQQBQ0IEBoCWRgFRRcHHlUFTEUhPkpEGUInFBdKQAMOCQZOE18DQgcUDQEQAg1FAQYPEBQDHFUIA0IFFklVDwRUVhYNEE4eRxlCIRALGlUFFkUiDx5VBEIWAgceUx4HFlUGBVwSQhEdC0pDBg0RVRcFRVYVAAcLSkMCAwsRBwRXVg0LVRkCVRhCHBobSlEEDwARTh5YEw9FWE4eWBNCARALGlUFFkUHBwRXVgEEBxwDVQVCER0LSlIfBQIQHR4QGhcGHk4IXxgXFltkYGQeB0UGBgVAVgAQDB1KURgGRRAfH1kGEUUHAQ5DVgMLEU4IUR8WRQIHHlhWFg0QTglRBRYWVRcFRVYKBAMLRBA0FxwcAA0QGAcAER1KRB4HRRYBH14CBxdVQ0pSGRYNVQ0FXRNCAwcBBxACCgBVKANDHgcXGA8EHnxoJhQaCVgTEUUeCw9ABUIEVRwfXhgLCxJOHlEaDhxVDBMQHxYAGE4LXhJCFhQYD0NWCxFZThlfVhYNEE4eXwIDCVUNC0IECwAGTgVGExBFFwseRxMHC1UdD0MFCwobHUQ"),
})

local lsl = gmba:Section({
Side = _d("JwcNWAI"),
})

lsl:Header({
Name = _d("Ng8eUx4HFg"),
})

local vmiu

vmiu = lsl:Paragraph({
Header = _d("IgYLRFYbCgBOCVEDBQ0B"),
Body = ai(),
})

local jsdl = gmba:Section({
Side = _d("JwcNWAI"),
})

jsdl:Header({
Name = _d("PB0GURgGRQYGBUA"),
})

jsdl:Toggle({
Name = _d("NBseX1YBFxQIHh8UFxxVBxlcFwwBVRwFVA"),
Default = false,
Callback = function(glek)
zbxg.island.autoRod = glek
zbxg.islandAt = 0
end,
}, _d("HB0GURgGOhQbHl8pEAoR"))

jsdl:Toggle({
Name = _d("MB8fWQZCDAYCC14SQhcaCg"),
Default = false,
Callback = function(usyy)
zbxg.island.equipRod = usyy
zbxg.islandAt = 0
end,
}, _d("HB0GURgGOhAfH1kGPRcaCg"))

jsdl:Toggle({
Name = _d("NBseX1YBFxQIHhAXAQYQHRlfBBs"),
Default = false,
Callback = function(bb)
zbxg.island.autoAcc = bb
zbxg.islandAt = 0
end,
}, _d("HB0GURgGOhQbHl8pAwYWCxlDGRAc"))

jsdl:Toggle({
Name = _d("MB8fWQZCBBYND0MFDRcM"),
Default = false,
Callback = function(sckc)
zbxg.island.equipAcc = sckc
zbxg.islandAt = 0
end,
}, _d("HB0GURgGOhAfH1kGPQQWDQ9DBQ0XDA"))

local zvu

zvu = jsdl:Paragraph({
Header = _d("PB0GURgGRRILC0I"),
Body = zbxg.shopIsland.text(),
})

local osdo = gmba:Section({
Side = _d("OQsMRA"),
})

osdo:Header({
Name = _d("JwsIWQQWDQ"),
})

zbxg.rebirthToggle = osdo:Toggle({
Name = _d("NBseX1YQABcHGEQe"),
Default = false,
Callback = function(xexc)
zbxg.autoRebirth = xexc
end,
}, _d("FBseXykQABcHGEQe"))

zbxg.rebirthParagraph = osdo:Paragraph({
Header = _d("JhoLRAMR"),
Body = zbxg.rebirthText(),
})

osdo:Button({
Name = _d("IT5KRBlCDAYCC14S"),
Callback = function()
if not zbxg.gotoIsland() then
blg:Notify({
Title = _d("NAwLXhINCxAKSnkFDgQbCg"),
Description = _d("NgYLQhcBERAcSlkFQgsaGkpCEwMBDE4TVQJCSFUaGElWAwIUBwQQHwxFFE4HXxsHCwFA"),
Lifetime = 5,
})
end
end,
})

local yuag

yuag = osdo:Toggle({
Name = _d("NBseX1YrFhkPBFRWKgQHCglfBAc"),
Default = false,
Callback = function(dvp)
wqo.island = dvp
wqo.pending = false
wqo.pendingUntil = 0
wqo.paused = false
wqo.gaveUp = false
wqo.stoodDown = false
wqo.manualPause = false

if not dvp then
return
end

if ff.otherTowerOn(_d("HQ8YVBUNFxA")) then
wqo.island = false

pcall(function()
yuag:UpdateState(false)
end)

pcall(function()
blg:Dialog({
Title = _d("NBseX1YrFhkPBFRWKgQHCglfBAdFGggM"),
Description = _d("IQYPED4DCRkBHVUTDEUBAR1VBEIMBk4LXAQHBBEXSkIDDAscAA0cVgMLEU4dWQIKRRoADxAFDgoBTh5YE0ICFAMPEBkMCQxOGEUYEUUaAA8QHwwDHAADRBNCFxoBBxAXFkUUTh5ZGwdLVTofQhhCER0PHhAZBANZTgVCVhYQBwBKXxhCJAAaBRAlDgoBThlfVgcEFgZKRBkVAAdODVUCEUUcGhkQGRULVR0GXwJM"),
Buttons = {
{
Name = _d("MgEeEB8W"),
},
},
})
end)

return
end

if ff.enabled and ff.hardcoreSlot() == nil then
wqo.island = false

pcall(function()
yuag:UpdateState(false)
end)

pcall(function()
blg:Dialog({
Title = _d("NBseX1YrFhkPBFRWKgQHCglfBAdFGggM"),
Description = _d("OwFKQxoNEVUHGRAFBxFVGgUQF0IRGhkPQlpCBBsKSkQeB0USDwdVVg0LGRdKQwIDFwEdSlFWFgoCCxgQBBcLVQgYXxtCBFUaBUcTEEUGAgVEWEI2EBpKXxgHRQEBSnkFDgQbCkpYFxABFgEYVVpCCgdOHkUEDEU0Gx5fVjEJGhpKXxAESw"),
Buttons = {
{
Name = _d("MgEeEB8W"),
},
},
})
end)

return
end

if not wqo.data then
wqo.island = false

pcall(function()
yuag:UpdateState(false)
end)

pcall(function()
blg:Dialog({
Title = _d("NBseX1YrFhkPBFRWKgQHCglfBAdFGggM"),
Description = _d("IQYDQ1YAEBwCDhAeAxZVAAUQPgMXEQ0FQhM2CgILGHQXFgRZThlfVhYNEE4eXwEHF1IdSkMCAwIQHUpTFwwLGhpKUhNCFxAPDhAXDAFVD0pCAwxFFg8EXhkWRRcLSkMCAxcBCw4e"),
Buttons = {
{
Name = _d("MgEeEB8W"),
},
},
})
end)

return
end

local gf = wqo.remotes.request

if gf then
pcall(function()
gf:FireServer()
end)
end
end,
}, _d("FBseXykLFhkPBFQpCgQHCglfBAc"))

wqo.islandToggle = yuag

wqo.islandParagraph = osdo:Paragraph({
Header = _d("NxsMVgU"),
Body = wqo.buffText(),
})

osdo:Button({
Name = _d("JQ8fQxNCLAYCC14SQi0UHA5TGRAA"),
Callback = function()
if wqo.pauseRun then
wqo.pauseRun()
end
end,
})

osdo:Button({
Name = _d("MgccVVY3FVUnGVwXDAFVJgtCEgEKBws"),
Callback = function()
if wqo.giveUpRun then
wqo.giveUpRun()
end
end,
})

local el = gmba:Section({
Side = _d("OQsMRA"),
})

el:Header({
Name = _d("MwcZWB8MAlUdAl8G"),
})

el:Toggle({
Name = _d("NBseX1YAEAxOCFUFFkUHAQ4"),
Default = false,
Callback = function(cqg)
zbxg.shop.autoBuyRod = cqg
zbxg.shopAt = 0
end,
}, _d("FBseXykAEAwxCFUFFjoHAQ4"))

el:Toggle({
Name = _d("NBseX1YAEAxOCFUFFkUXDwNE"),
Default = false,
Callback = function(taf)
zbxg.shop.autoBuyBait = taf
zbxg.shopAt = 0
end,
}, _d("FBseXykAEAwxCFUFFjoXDwNE"))

el:Toggle({
Name = _d("MB8fWQZCBxAdHhAEDQE"),
Default = false,
Callback = function(ujt)
zbxg.shop.equipRod = ujt
zbxg.shopAt = 0
end,
}, _d("EB8fWQY9BxAdHm8EDQE"))

el:Toggle({
Name = _d("MB8fWQZCBxAdHhAUAwwB"),
Default = false,
Callback = function(etl)
zbxg.shop.equipBait = etl
zbxg.shopAt = 0
end,
}, _d("EB8fWQY9BxAdHm8UAwwB"))

local ij

ij = el:Paragraph({
Header = _d("NwsZRFYbCgBOCVEYQgAEGwNA"),
Body = qlqn(),
})
task.spawn(function()
local bu = nw()
local qqo = ai()
local vytf = qlqn()
local vsy = zbxg.shopIsland.text()

while po() do
local sgui = nw()

if sgui ~= bu then
bu = sgui
pcall(function()
oqqs:UpdateBody(sgui)
end)
end

local zt = ai()

if zt ~= qqo then
qqo = zt
pcall(function()
vmiu:UpdateBody(zt)
end)
end

local vwxc = qlqn()

if vwxc ~= vytf then
vytf = vwxc
pcall(function()
ij:UpdateBody(vwxc)
end)
end

local xlmg = zbxg.shopIsland.text()

if xlmg ~= vsy then
vsy = xlmg
pcall(function()
zvu:UpdateBody(xlmg)
end)
end

task.wait(1)
end
end)

task.spawn(function()
while po() do

if ffjw() and os.clock() >= (zbxg.shopAt or 0)
and os.clock() >= (zbxg.islandTripUntil or 0) then
zbxg.shopAt = os.clock() + 1
pcall(sejm)
end

if zbxg.shopIsland.active() and os.clock() >= (zbxg.islandAt or 0)
and os.clock() >= math.max(zbxg.shopHoldUntil or 0, zbxg.tpHoldUntil or 0) then
zbxg.islandAt = os.clock() + 2
pcall(zbxg.shopIsland.run)
end

task.wait(1)
end
end)

xih:Select()

local qqht = xih:Section({
Side = _d("OQsMRA"),
})

local hwzi = xih:Section({
Side = _d("JwcNWAI"),
})

local ucv = qqht:Paragraph({
Header = _d("JhoLRAMR"),
Body = jcic(),
})

qqht:Divider()

nqmv.npcToggle = qqht:Toggle({
Name = _d("NBseX1YsNTY"),
Default = false,
Callback = function(gpte)

if gpte and not nqmv.story and #une() == 0 then
pcall(function()
nqmv.npcToggle:UpdateState(false)
end)

blg:Dialog({
Title = _d("NBseX1YsNTZOBFUTBhZVD0pEFxACEBo"),
Description = _d("JQcJW1YDEVUCD1EFFkUaAA8QODImVQgYXxtCER0LSkcZEAkRHUpSEw4KAkJKXwRCEQAcBBAZDEU0Gx5fViEKGB4GVQIHRSYaBUIPTEUhBg9CE0IMBk4EXwIKDBsJSkQZQgMcCQJEVhsAAUA"),
Buttons = {
{
Name = _d("MgEeEB8W"),
},
},
})

return
end

nqmv.enabled = gpte
end,
}, _d("FBseXykMFRY"))

qqht:Toggle({
Name = _d("Ig8GW1YWClUgOnM"),
Default = false,
Callback = function(psgx)
nqmv.walkToNpc = psgx
end,
}, _d("Ag8GWykWCioAGlM"))

qqht:Dropdown({
Name = _d("MQcMVh8BEBkaEw"),
Search = false,
Multi = true,
Required = false,
Default = { _d("OwEYXRcO") },
Options = quc,
Callback = function(ll)
local gv = {}

if type(ll) == _d("AQ8IXBM") then
for vzl, jp in ipairs(quc) do
if ll[jp] then
table.insert(gv, mul[jp])
end
end
end

if #gv == 0 then
gv = { _d("GwEYXRcO") }
end

nqmv.difficulties = gv
end,
}, _d("EQcMVh8BEBkaEw"))

qqht:Toggle({
Name = _d("NBseX1YwChoDGQ"),
Default = false,
Callback = function(kxb)
tal.enabled = kxb
tal.inBattle = false
tal.pending = false
end,
}, _d("FBseXykQChoDGQ"))

local jvsw = xih:Section({
Side = _d("OQsMRA"),
})

jvsw:Header({
Name = _d("JgIFRA"),
})

jvsw:Paragraph({
Header = _d("PQEdEAIKAFUdBl8CEUUCARhb"),
Body = _d("JgIFRFZTRVhOI14QCwscGhMQIg0SEBxKGBgNFxgPBhAZEEU7Bw1YAg8EBwtDEBkQRT0PBlwZFQAQAEpkGRUAB0JKQBoXFlUgOnNWAAQBGgZVBUISHQsEEAUOCgFOWBAfEUUXGxlJWGhvJgIFRFZQRVhOJGA1EUlVHAtZEhFJVRwFXxsRSVUnGVwXDAFVJgtCEgEKBwtEOnwgCgEGSkMaDREGTgVeViw1Nk4IUQIWCRAdUBACFQpVIDpzVgQAFBofQhMRRRQaSl8YAQBZTgteEkIEVRwLWRJCBxodGRATAwYdQGA6IhUKVRoFRxMQRQcbBENWCxZVGgJVVg0LGRdKQhMEEAYLDhAGAwwHTkcQPxEJFAAOED4DFxENBUITQgobTghfAgpFBgIFRAVCDAZOBV4TQhcAAEpRBQkAEU4MXwRCEQIHCVVYaG8mAgVEBUIKEwhQEBkMAFUdBl8CTkUBAR1VBBFFAQ8BVVYWEAcAGR4"),
})

ff.toggle = jvsw:Toggle({
Name = _d("NBseX1YxCRoa"),
Default = false,
Callback = function(ovh)
if ovh and ff.role[1] == ff.role[2] and ff.role[1] ~= _d("Gx4J") then
ff.enabled = false

pcall(function()
ff.toggle:UpdateState(false)
end)

blg:Dialog({
Title = _d("NBseX1YxCRoa"),
Description = _d("JgIFRFZTRRQADhAlDgoBTlgQFxAAVQwFRB5C") .. ff.roleLabel(1) .. _d("W04+WBcWRRwdSl8YB0UHGwQQFxEOEApKVhkQRQEZA1MTTkUGAUpfGAdFGghKRB4HRQEZBRAFDgoBHUpYFxFFAQFKUhNCFhoDD0QeCwsSTg9cBQdL"),
Buttons = {
{
Name = _d("MgEeEB8W"),
},
},
})

return
end

ff.enabled = ovh

if ovh then
ff.hasSlot2 = ff.detectSlot2()

if ff.hasSlot2 == false then
blg:Dialog({
Title = _d("NBseX1YxCRoa"),
Description = _d("JgIFRFZQRRkBBVsFQgkaDQFVEkJIVQceEBgHABEdSkQeB0UxGwtcViAEARoGVVYxCRoaSlcXDwAFDxlDWkIKB04jXhALCxwaDxAkDQoYTlgFRkIGGQsLQhMGSVUMD1YZEABVGgJVVhEAFgEEVFYRCRoaSlMXDEUXDx5EGgdLVTwFRQILCxJOGUQXGxZVAQQQBQ4KAU5bEAMMERwCSkQeBwtb"),
Buttons = {
{
Name = _d("MgEeEB8W"),
},
},
})
end
end
end,
}, _d("FBseXykRCRoa"))

function ff.applyRoles()
if not ff.enabled then
return
end

if ff.role[1] == ff.role[2] and ff.role[1] ~= _d("Gx4J") then
ff.enabled = false

pcall(function()
ff.toggle:UpdateState(false)
end)

pcall(function()
blg:Dialog({
Title = _d("NBseX1YxCRoaSl8QBA"),
Description = _d("JgIFRFZTRRQADhAlDgoBTlgQFxAAVQwFRB5C") .. ff.roleLabel(1) .. _d("W04+WBcWRRwdSl8YB0UHGwQQFxEOEApKVhkQRQEZA1MTTkUUAA4QHxZFFg8EXhkWRQEPAVVWFhIaThlcGRYWW045VQJCChsLSkMaDRFVGgUQBQ0IEBoCWRgFRRACGVVY"),
Buttons = {
{
Name = _d("MgEeEB8W"),
},
},
})
end)

return
end

local fffb = {}

if ff.towerSlot() ~= 1 and wk.enabled then
wk.enabled = false
table.insert(fffb, _d("NBseX1Y2CgILGA"))

pcall(function()
wk.ui:UpdateState(false)
end)
end

if ff.hardcoreSlot() == nil and wqo.island then
wqo.island = false
table.insert(fffb, _d("NBseX1YrFhkPBFRWKgQHCglfBAc"))

pcall(function()
wqo.islandToggle:UpdateState(false)
end)
end

if ff.halloweenSlot() == nil and pges.run.enabled then
pges.run.enabled = false
table.insert(fffb, _d("NBseX1YqBBkCBUcTBwtVOgVHExA"))

pcall(function()
pges.toggle:UpdateState(false)
end)
end

if #fffb > 0 then
pcall(function()
blg:Dialog({
Title = table.concat(fffb, _d("VQ8EVFY")) .. _d("VQEMVg"),
Description = _d("OwFKQxoNEVUHGRAFBxFVGgUQAgoEAU4eXwEHF1UPBElWDwoHC0YQBQ1FHBpKWBcGRRsBHVgTEABVGgUQBBcLW04tWQAHRRwaSlFWEQkaGkpREQMMG0JKXwRCEQAcBBA3FxEaTjlcGRZFGggMHg"),
Buttons = {
{
Name = _d("MgEeEB8W"),
},
},
})
end)
end
end

ff.oneDropdown = jvsw:Dropdown({
Name = _d("JgIFRFZT"),
Search = false,
Multi = false,
Required = false,

Default = 1,
Options = ff.optionsFor[1],
Callback = function(eo)
local xoo = type(eo) == _d("AQ8IXBM") and eo[1] or eo

if type(xoo) == _d("BhoYWRgF") and ff.roleIds[xoo] then
ff.role[1] = ff.roleIds[xoo]
ff.picked[1] = xoo
end

pcall(function()
ff.oneDropdown:UpdateName(_d("JgIFRFZTRZfuyBA") .. ff.roleLabel(1))
end)

if ff.applyRoles then
ff.applyRoles()
end
end,
}, _d("BgIFRClTOkc"))

ff.twoDropdown = jvsw:Dropdown({
Name = _d("JgIFRFZQ"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = ff.optionsFor[2],
Callback = function(jhek)
local veso = type(jhek) == _d("AQ8IXBM") and jhek[1] or jhek

if type(veso) == _d("BhoYWRgF") and ff.roleIds[veso] then
ff.role[2] = ff.roleIds[veso]
ff.picked[2] = veso
end

pcall(function()
ff.twoDropdown:UpdateName(_d("JgIFRFZQRZfuyBA") .. ff.roleLabel(2))
end)

if ff.applyRoles then
ff.applyRoles()
end
end,
}, _d("BgIFRClQOkc"))

pcall(function()
ff.oneDropdown:UpdateSelection(_d("IQEdVQQ"))
end)

pcall(function()
ff.twoDropdown:UpdateSelection(_d("Oz4pEBQDEQECD0M"))
end)

getgenv().ACBXSlot = ff

local ddg = xih:Section({
Side = _d("OQsMRA"),
})

ddg:Header({
Name = _d("Jw8DVFYACgYd"),
})

ddg:Toggle({
Name = _d("NBseX1YwBBwKSnIZERY"),
Default = false,
Callback = function(xas)
tnt.enabled = xas
tnt.pending = {}
tnt.pendingUntil = {}

if xas then
tnt.cleared = {}
end
end,
}, _d("FBseXykQBBwKNVIZERY"))

ddg:Toggle({
Name = _d("NBseX1Y1BBkFSkQZQjcUBw4QNA0WBg"),
Default = false,
Callback = function(yamk)
tnt.walkToBoss = yamk
end,
}, _d("FBseXykVBBkFNUQZPRcUBw5vFA0WBg"))

local imrl
imrl = ddg:Slider({
Name = _d("Ig8GW1YxFRALDg"),
Minimum = 0,
Maximum = 72,
Default = 18,
Precision = 0,
Callback = function(iko)
local ovr = math.floor(iko + 0.5)
tnt.walkSpeed = ovr

if imrl and ovr ~= iko then
imrl:UpdateValue(ovr)
end
end,
}, _d("Ag8GWykRFRALDg"))

ddg:Dropdown({
Name = _d("Jw8DVFYmDBMIA1MDDhEM"),
Search = false,
Multi = true,
Required = false,
Default = { _d("OwEYXRcO") },
Options = zstk,
Callback = function(arkh)
local iilz = {}

if type(arkh) == _d("AQ8IXBM") then
for rugx, tkt in ipairs(zstk) do
if arkh[tkt] then
table.insert(iilz, qkua[tkt])
end
end
end

if #iilz == 0 then
iilz = { _d("GwEYXRcO") }
end

tnt.difficulties = iilz
end,
}, _d("Bw8DVCkGDBMIA1MDDhEM"))

function tnt.pickedIds(nvud)
local thcx = {}

if type(nvud) == _d("AQ8IXBM") then
for uid, oabp in ipairs(pwcz) do
if nvud[oabp] and jbba[oabp] then
table.insert(thcx, jbba[oabp])
end
end
elseif type(nvud) == _d("BhoYWRgF") and jbba[nvud] then
thcx = { jbba[nvud] }
end

return thcx
end

ddg:Dropdown({
Name = _d("Jw8DVFYgCgYd"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = pwcz,
Callback = function(cqu)
tnt.picks[1] = tnt.pickedIds(cqu)
tnt.cursor[1] = 1
tnt.losses[1] = {}
end,
}, _d("Bw8DVCkACgYd"))

tnt.boss2Dropdown = ddg:Dropdown({
Name = _d("Jw8DVFYgCgYdShglDgoBTlgZ"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = pwcz,
Callback = function(oia)
tnt.picks[2] = tnt.pickedIds(oia)
tnt.cursor[2] = 1
tnt.losses[2] = {}
end,
}, _d("Bw8DVCkACgYdNUMaDREqXA"))

pcall(function()
tnt.boss2Dropdown:SetVisibility(false)
end)

task.spawn(function()
local zk = nil

while po() do
local hry = ff.splitNpc()

if hry ~= zk then
zk = hry

local loa = tnt.boss2Dropdown

if loa then
pcall(function()
loa:SetVisibility(hry)
end)
end
end

task.wait(0.5)
end
end)

hwzi:Paragraph({
Header = _d("NBseX1YkDBIGHg"),
Body = _d("JgsGVRUWRRoADxAZEEUYARhVViw1Nh1KVgQNCFUaAlVWFQoHAg5DVgAAGQEdHg"),
})

for jk, axcf in ipairs(vidg) do
hwzi:Dropdown({
Name = axcf.name,
Search = true,
Multi = true,
Required = false,
Default = {},
Options = axcf.options,
Callback = function(dk)
local iio = {}

if type(dk) == _d("AQ8IXBM") then
if dk.All then
for pxg, dh in ipairs(axcf.ids) do
table.insert(iio, dh)
end
else
for nctn, nd in ipairs(axcf.options) do
if dk[nd] and axcf.byName[nd] then
table.insert(iio, axcf.byName[nd])
end
end
end
elseif type(dk) == _d("BhoYWRgF") then
if dk == _d("NAIG") then
for mzi, jqca in ipairs(axcf.ids) do
table.insert(iio, jqca)
end
else
iio = { axcf.byName[dk] }
end
end

nqmv.selectedByWorld[axcf.name] = iio
end,
}, _d("Gx4Jbw") .. axcf.id)
end

hwzi:Toggle({
Name = _d("NBseX1YhChgeBlUCB0UmGgVCDw"),
Default = false,
Callback = function(ndyv)
nqmv.story = ndyv
nqmv.battlePending = false
nqmv.battlePendingUntil = 0
end,
}, _d("FBseXykBChgeBlUCBzoGGgVCDw"))

nqmv.storyDropdown = hwzi:Dropdown({
Name = _d("MQcMVh8BEBkaA1UF"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = quc,
Callback = function(gk)
local pz = type(gk) == _d("AQ8IXBM") and gk[1] or gk

if type(pz) == _d("BhoYWRgF") and mul[pz] then
nqmv.storyDifficulty = mul[pz]
end
end,
}, _d("EQcMVh8BEBkaA1UF"))

pcall(function()
nqmv.storyDropdown:UpdateSelection(quc[1])
end)

pcall(function()
nqmv.storyDropdown:UpdateName(_d("MQcMVh8BEBkaA1UFQof1zEo") .. quc[1])
end)

hwzi:Paragraph({
Header = _d("PQEdEDcXERpOKV8bEgkQGg8QJRYKBxdKRxkQDgY"),
Body = _d("MwcNWAIRRRAYD0IPQhYBARhJViw1Nk5HEDgDCBAFSkQeEAoACQIQPxEAHg8DEFtCChtOHlgTQgobC0pUHwQDHA0fXAIbRRQMBUYTTkUCARhbHwwCVRoCVVYDFxAPGRAfDEUaHA5VBEIEGwpKUxkPDBsJSlIXAQ5VHAVFGAZFFB1KUxkNCREBHV4FQgYZCwtCWGhvPBpKQhMSCRQND0NWFg0QTgtCEwNFERwFQBINEhsdSkceCwkQTgNEVgsWVQEEHFYDCxFOBlUXFAAGThhRHwZFFwEZQxMRRRQCBV4TTA"),
})

local iyx = alk:Section({
Side = _d("OQsMRA"),
})

iyx:Header({
Name = _d("IQEdVQQ"),
})

local skg
local ltec

local ckop = {
remotes = {},
watcher = false,
hidMenu = false,

hardWatch = {},
}

function ckop.hardPick(tya)
tya = tya == true

for ihjh, yljs in ipairs({ _d("Nw8eRBoHIgAH"), _d("Nw8eRBoHIgAHWA") }) do
local hwef = zl:FindFirstChild(yljs)

if hwef then
if hwef:GetAttribute(_d("IQEdVQQqBAcKOlkVCQ")) ~= tya then
pcall(function()
hwef:SetAttribute(_d("IQEdVQQqBAcKOlkVCQ"), tya)
end)
end

if hwef:GetAttribute(_d("IQEdVQQqBAcKOEUY")) ~= nil and hwef:GetAttribute(_d("IQEdVQQqBAcKOEUY")) ~= tya then
pcall(function()
hwef:SetAttribute(_d("IQEdVQQqBAcKOEUY"), tya)
end)
end
end
end
end

function ckop.pinMode()
if not (wk.enabled or wk.nightmare) then
return
end

local rdp = wk.nightmare == true

for atjh, yzv in ipairs({ _d("Nw8eRBoHIgAH"), _d("Nw8eRBoHIgAHWA") }) do
local mtz = zl:FindFirstChild(yzv)

if mtz then
if mtz:GetAttribute(_d("IQEdVQQqBAcKOlkVCQ")) ~= rdp then
pcall(function()
mtz:SetAttribute(_d("IQEdVQQqBAcKOlkVCQ"), rdp)
end)
end

if ckop.hardWatch[mtz] == nil then
local ivr, ckja = pcall(function()
return mtz:GetAttributeChangedSignal(_d("IQEdVQQqBAcKOlkVCQ")):Connect(function()
if not (wk.enabled or wk.nightmare) then
return
end

local hxdq = wk.nightmare == true

if mtz.Parent and mtz:GetAttribute(_d("IQEdVQQqBAcKOlkVCQ")) ~= hxdq then
pcall(function()
mtz:SetAttribute(_d("IQEdVQQqBAcKOlkVCQ"), hxdq)
end)
end
end)
end)

if ivr then
ckop.hardWatch[mtz] = ckja
end
end
end
end
end

function ckop.pauseRows()
local noi = pl:FindFirstChild(_d("JQILSRMQIgAH")) and pl.PlayerGui:FindFirstChild(_d("JgseRB8MAgYpH1k"))

if not noi then
return nil, nil
end

return noi:FindFirstChild(_d("JQ8fQxMrCxMHBFkCBywbHh9E"), true), noi:FindFirstChild(_d("JQ8fQxMrCxMHBFkCByYdCwlb"), true)
end

function ckop.pauseState()
local tj = pl:FindFirstChild(_d("JQILSRMQIgAH")) and pl.PlayerGui:FindFirstChild(_d("JgseRB8MAgYpH1k"))
local ygn = tj and tj:FindFirstChild(_d("MgseYxMWERwADUM"), true)

if not ygn then
return nil
end

local drnn, gpg = pcall(function()
return ygn:Invoke()
end)

if drnn and type(gpg) == _d("AQ8IXBM") then
return gpg.pauseInfiniteEnabled == true
end

return nil
end

function ckop.pauseAt(lxco, qaky)
qaky = math.max(1, math.floor(tonumber(qaky) or 1))

local ylgk, lf = ckop.pauseRows()

if not (ylgk and lf) then
return false
end

local zzj = pcall(function()
if tonumber(ylgk.Text) ~= qaky then
ylgk.Text = tostring(qaky)

if getconnections then
for wlxs, qtw in ipairs(getconnections(ylgk.FocusLost)) do
pcall(function()
qtw:Fire(true, Enum.UserInputType.Focus)
end)
end
end
end
end)

if lxco ~= nil then
local sppb = ckop.pauseState()

if sppb ~= nil and sppb ~= lxco and getconnections then
pcall(function()
for wkla, cpb in ipairs(getconnections(lf.MouseButton1Click)) do
pcall(function()
cpb:Fire()
end)
end
end)
end
end

return zzj
end

function ckop.restorePause()
ls.triggered = false

if ls.enabled and ls.floor > 0 then
ckop.pauseAt(true, ls.floor)

pcall(function()
gh.SaveClientData:FireServer({
pauseInfiniteEnabled = true,
pauseInfiniteAt = ls.floor,
})
end)

return
end

pcall(function()
gh.SaveClientData:FireServer({
pauseInfiniteEnabled = false,
pauseInfiniteAt = 1,
})
end)

ckop.pauseAt(false, 1)
end

function ckop.remote(jxfb)
local qeh = ckop.remotes[jxfb]

if qeh and qeh.Parent then
return qeh
end

local agi = yiyr:FindFirstChild(_d("JwsHXwIHFg"))
local cus = agi and agi:FindFirstChild(jxfb)

if cus then
ckop.remotes[jxfb] = cus
end

return cus
end

function ckop.historyOpen()
for xp, guz in ipairs({ _d("Nw8eRBoHIgAH"), _d("Nw8eRBoHIgAHWA") }) do
local ctmx = zl:FindFirstChild(guz)
local bm = ctmx and ctmx:FindFirstChild(_d("IQEdVQQqDAYaBUIPJBcUAw8"))

if bm and bm.Visible then
return true
end
end

return false
end

function ckop.generationOpen()
local butd = zl:FindFirstChild(_d("IQEdVQQwAAYbBkQxFww"))
local gly = butd and butd:FindFirstChild(_d("JwsZRRoWIwcPB1U"))

return gly ~= nil and gly.Visible
end

function ckop.standDown(xbj)
if not ckop.hidMenu then
local lwo = true

pcall(function()
lwo = blg:GetState() ~= false
end)

if lwo then
ckop.hidMenu = true

pcall(function()
blg:SetState(false)
end)
end
end

if ckop.watcher then
return
end

ckop.watcher = true

task.spawn(function()

local bcs = os.clock() + 6

while po() and os.clock() < bcs and not xbj() do
task.wait(0.2)
end

while po() and xbj() do
task.wait(0.4)
end

ckop.watcher = false

if ckop.hidMenu then
ckop.hidMenu = false

pcall(function()
blg:SetState(true)
end)
end
end)
end

wk.floorAt = 0
wk.battleAt = 0
wk.floor = nil
wk.manualPause = false

task.spawn(function()
local emzz = oce(_d("Nw8eRBoHMAUKC0QT"))
local jfg = oce(_d("JhcEUyINEhAcLFwZDRc"))
local bjs = oce(_d("Nw8eRBoHIBsK"))
local cuy = oce(_d("IQEdVQQwEBsrBFQTBg"))

if emzz then
emzz.OnClientEvent:Connect(function()
wk.battleAt = os.clock()
end)
end

if jfg then
jfg.OnClientEvent:Connect(function(asnd)
wk.floorAt = os.clock()

if type(asnd) == _d("GxsHUhMQ") and asnd > 1 then
wk.floor = asnd
else
wk.floor = nil
end
end)
end

if bjs then
bjs.OnClientEvent:Connect(function(lhgu)
if type(lhgu) == _d("AQ8IXBM") and lhgu.mode == _d("AQEdVQQ") then
wk.floorAt = os.clock()
end
end)
end

if cuy then
cuy.OnClientEvent:Connect(function()

wk.lastRunEnded = {
clock = os.clock(),
floor = wk.floor,
}

task.delay(1, function()
local zle = zl:FindFirstChild(_d("IQEdVQQwAAYbBkQxFww"))
local nuzs = zle and zle:FindFirstChild(_d("JwsZRRoWIwcPB1U"))
local ufqc = {}

if nuzs then
for cmh, dww in ipairs(nuzs:GetDescendants()) do
if dww:IsA(_d("IQsSRDoDBxAC")) and dww.Visible and dww.Text ~= _d("") and #ufqc < 12 then
ufqc[#ufqc + 1] = dww.Text
end
end
end

if wk.lastRunEnded then
wk.lastRunEnded.texts = table.concat(ufqc, _d("VRJK"))
end
end)

wk.floorAt = 0
wk.battleAt = 0
wk.floor = nil

if wk.manualPause then
ckop.restorePause()
end
end)
end

end)

local function vqh()
local btf = os.clock()

if btf - (wk.floorAt or 0) < 90 and btf - (wk.battleAt or 0) < 12 then
return true
end

for uqei, bz in ipairs({ _d("Nw8eRBoHIgAH"), _d("Nw8eRBoHIgAHWA") }) do
local vvd = zl:FindFirstChild(bz)

if vvd then

local slnr = vvd:FindFirstChild(_d("IQEdVQQkCRoBGHwXAAAZ"))

if slnr and slnr.Visible then
return true
end

local iods = vvd:FindFirstChild(_d("MwIFXwQxBgcLD14"))

if iods and iods.Visible then
return true
end

local ogy = vvd:FindFirstChild(_d("Nw8eRBoHNhYcD1UY"))

if ogy and ogy.Visible then
local itsl = ogy:FindFirstChild(_d("JBsDUx0lDAMLP0A0FxEBAQQ"))

if itsl and itsl.Visible then
return true
end
end
end
end

return false
end

function ckop.hardNow()

local jim = zl:FindFirstChild(_d("Nw8eRBoHIgAH"))
local iqcm = jim and jim:GetAttribute(_d("IQEdVQQqBAcKOlkVCQ"))

if iqcm ~= nil then
return iqcm == true
end

local uedn = tnt.misc.util.profile

return type(uedn) == _d("AQ8IXBM") and uedn.lastTowerHard == true
end

function ckop.endIfWrongMode(jjw)
if not vqh() or ckop.hardNow() == (jjw == true) then
return false
end

pcall(function()
if type(ltec) == _d("ExsEUwILChs") then
ltec()
else
gh.EndTowerRemote:FireServer(1)
end
end)

wk.floor = nil

return true
end

function ckop.hardPickNow()
for coa, clk in ipairs({ _d("Nw8eRBoHIgAH"), _d("Nw8eRBoHIgAHWA") }) do
local mfu = zl:FindFirstChild(clk)
local si = mfu and mfu:GetAttribute(_d("IQEdVQQqBAcKOlkVCQ"))

if si ~= nil then
return si == true
end
end

return nil
end

function ckop.parked()
for yta, lzrc in ipairs({ _d("Nw8eRBoHIgAH"), _d("Nw8eRBoHIgAHWA") }) do
local zrqj = zl:FindFirstChild(lzrc)

if zrqj then
local yozh = zrqj:FindFirstChild(_d("IQEdVQQkCRoBGHwXAAAZ"))
local zav = zrqj:FindFirstChild(_d("MwIFXwQxBgcLD14"))
local iqik = zrqj:FindFirstChild(_d("Nw8eRBoHNhYcD1UY"))

if yozh and yozh.Visible
and not (zav and zav.Visible)
and not (iqik and iqik.Visible) then
return true
end
end
end

return false
end

wk.ui = iyx:Toggle({
Name = _d("NBseX1Y2CgILGA"),
Default = false,
Callback = function(uvnr)

if wk.quiet then
return
end

wk.enabled = uvnr
wk.pending = false
wk.pendingUntil = 0

if uvnr then

if ff.enabled and ff.role[1] ~= _d("AQEdVQQ") then
wk.enabled = false

pcall(function()
wk.ui:UpdateState(false)
end)

pcall(function()
blg:Dialog({
Title = _d("NBseX1Y2CgILGBAZBAM"),
Description = _d("JgIFRFZTRRwdSkMTFkUBAUo") .. ff.roleName(1) .. _d("W04+WBNCLBsIA14fFhxVLQtDAg4AVQEEXA9CFgEPGEQFQgobThlcGRZFREJKQxlCFhAaSmMaDRFVX0pEGUIxGhkPQlYEDAcdHh4"),
Buttons = {
{
Name = _d("MgEeEB8W"),
},
},
})
end)

return
end

if ff.otherTowerOn(_d("AQEdVQQ")) then
wk.enabled = false

pcall(function()
wk.ui:UpdateState(false)
end)

pcall(function()
blg:Dialog({
Title = _d("NBseX1Y2CgILGBAZBAM"),
Description = _d("NAAFRB4HF1UaBUcTEEUUGx5fGwMRHAEEEB8RRRQCGFUXBhxVAQQcVgMLEU4eWB8RRRQNCV8DDBFVAQRcD0IEGQIFRwVCChsLSkQZFQAHThhFGEIEAU4LEAILCBBASmQDEAtVGgJRAkIKGwtKXxAERRMHGEMCTkUaHEpEAxALVQEEEDcXERpOOVwZFkUGAUpVFwENVR0GXwJCAhAaGRAfFhZVAR1eVhYKAgsYHg"),
Buttons = {
{
Name = _d("MgEeEB8W"),
},
},
})
end)

return
end

wk.nightmare = false

pcall(function()
wk.quiet = true
wk.nightmareToggle:UpdateState(false)
wk.quiet = false
end)

wk.manualPause = false
wk.paused = false
ckop.restorePause()
wk.pauseArmed = false

ckop.endIfWrongMode(false)
ckop.hardPick(false)

return
end

if not vqh() then
return
end

wk.paused = true
local qssn = skg()

blg:Notify({
Title = _d("NBseX1Y2CgILGBAZBAM"),
Description = qssn and _d("IQEdVQRCFwAASkAXFxYQCkQ") or _d("JxsEEB8RRRkHHFVaQgcAGkpeGUIHBwsLW1YAEAEaBV5WBAoAAA4e"),
Lifetime = 5,
})
end,
}, _d("FBseXykWCgILGA"))

wk.nightmareToggle = iyx:Toggle({
Name = _d("NBseX1YsDBIGHl0XEABVOgVHExA"),
Default = false,
Callback = function(zkwf)
if wk.quiet then
return
end

wk.nightmare = zkwf

if not zkwf then

wk.enabled = false
wk.pending = false
wk.pendingUntil = 0

ckop.hardPick(false)

pcall(function()
wk.quiet = true
wk.ui:UpdateState(false)
wk.quiet = false
end)

if vqh() then
wk.paused = true
local jqm = skg()

blg:Notify({
Title = _d("NBseX1YsDBIGHl0XEABVOgVHExBFGggM"),
Description = jqm and _d("OwcNWAIPBAcLSkIDDEUFDx9DEwZL") or _d("JxsEEB8RRRkHHFVaQgcAGkpeGUIHBwsLW1YAEAEaBV5WBAoAAA4e"),
Lifetime = 5,
})
end

return
end

if ff.enabled and ff.role[1] ~= _d("AQEdVQQ") then
wk.nightmare = false

pcall(function()
wk.quiet = true
wk.nightmareToggle:UpdateState(false)
wk.quiet = false
end)

pcall(function()
blg:Dialog({
Title = _d("NBseX1YsDBIGHl0XEABVOgVHExBFGggM"),
Description = _d("OwcNWAIPBAcLSmQZFQAHTglfAwwRBk4LQ1Y2CgILGBAfDEUGAgVEVlNJVQ8EVFYbCgAcSkMaDRFVX0pZBUIKG04") .. ff.roleName(1) .. _d("VRwDVx4WRRsBHR5WMQABThlcGRZFRE4eX1Y2CgILGBAQCxcGGkQ"),
Buttons = {
{
Name = _d("MgEeEB8W"),
},
},
})
end)

return
end

pcall(function()
wk.quiet = true
wk.ui:UpdateState(false)
wk.quiet = false
end)

wk.enabled = true
wk.manualPause = false
wk.paused = false

ckop.restorePause()
wk.pauseArmed = false

ckop.endIfWrongMode(true)
ckop.hardPick(true)

wk.pending = false
wk.pendingUntil = 0
end,
}, _d("FBseXykMDBIGHl0XEAAqGgVHExA"))

iyx:Header({
Name = _d("NBseX1YyBAAdDxAiDRIQHA"),
})

local kmrl

kmrl = iyx:Toggle({
Name = _d("NBseX1YyBAAdDxAwDgoaHA"),
Default = false,
Callback = function(hsl)
ls.triggered = false

if hsl and ls.floor <= 0 then
ls.enabled = false

pcall(function()
kmrl:UpdateState(false)
end)

pcall(function()
gh.SaveClientData:FireServer({ pauseInfiniteEnabled = false })
end)

blg:Dialog({
Title = _d("NBseX1YyBAAdDxAwDgoaHA"),
Description = _d("JgseEBdCFRQbGVVWBAkaARgQFwAKAwtKAFYEDAcdHhBbQiQAGgUQJgMQBgtKZBkVAAdOBFUTBhZVGgUQHQwKAk4dWBMQAFUaBRAFFgoFQA"),
Buttons = {
{
Name = _d("MgEeEB8W"),
},
},
})

return
end

ls.enabled = hsl

pcall(function()
gh.SaveClientData:FireServer({
pauseInfiniteEnabled = hsl,
pauseInfiniteAt = ls.floor,
})
end)
end,
}, _d("FBseXykSBAAdD28QDgoaHA"))

iyx:Input({
Name = _d("JQ8fQxNCBAFODFwZDRc"),
Placeholder = _d("EEANHlZXVQ"),
AcceptedCharacters = _d("OxsHUhMQFg"),
Callback = function(mjtg)
local uu = tonumber(mjtg) or 0

if uu < 0 then
uu = 0
end

if uu == ls.floor then
return
end

ls.floor = uu
ls.triggered = false

if uu <= 0 and ls.enabled then
ls.enabled = false

pcall(function()
kmrl:UpdateState(false)
end)
end

pcall(function()
gh.SaveClientData:FireServer({
pauseInfiniteAt = uu,
pauseInfiniteEnabled = ls.enabled,
})
end)
end,
}, _d("BQ8fQxM9BAExDFwZDRc"))

iyx:Button({
Name = _d("JQ8fQxNCMRoZD0I"),
Callback = function()
local qvg = false

pcall(function()
qvg = skg()
end)

if qvg then

wk.manualPause = true
return
end

blg:Dialog({
Title = _d("JQ8fQxNCMRoZD0I"),
Description = _d("OwFKXB8UAFUaBUcTEEUHGwQQAg1FBQ8fQxNCFxwJAkRWDAoCQA"),
Buttons = {
{
Name = _d("MgEeEB8W"),
},
},
})
end,
})

iyx:Header({
Name = _d("NBseX1YlDAMLSmUG"),
})

nppz.toggle = iyx:Toggle({
Name = _d("NBseX1YlDAMLSmUG"),
Default = false,
Callback = function(wf)
nppz.triggered = false

if wf and nppz.floor <= 0 then
nppz.enabled = false

pcall(function()
nppz.toggle:UpdateState(false)
end)

blg:Dialog({
Title = _d("NBseX1YlDAMLSmUG"),
Description = _d("JgseEBdCAhwYDxADEkUTAgVfBEIEFwEcVVZSRRMHGEMCQkhVLx9EGUIiHBgPECMSRRsLD1QFQhEaTgFeGRVFAgYPQhNCERpOGUQZEks"),
Buttons = {
{
Name = _d("MgEeEB8W"),
},
},
})

return
end

nppz.enabled = wf
end,
}, _d("FBseXykFDAMLNUUG"))

iyx:Input({
Name = _d("MgccVVYXFVUBBBAQDgoaHA"),
Placeholder = _d("EEANHlZVVQ"),
AcceptedCharacters = _d("OxsHUhMQFg"),
Callback = function(pshd)
local srz = tonumber(pshd) or 0

if srz < 0 then
srz = 0
end

if srz == nppz.floor then
return
end

nppz.floor = srz
nppz.triggered = false

if srz <= 0 and nppz.enabled then
nppz.enabled = false

pcall(function()
nppz.toggle:UpdateState(false)
end)
end
end,
}, _d("EgccVSkXFSoBBG8QDgoaHA"))

nppz.weatherToggle = iyx:Toggle({
Name = _d("NBseX1YFDAMLSkUGQgobTh1VFxYNEBw"),
Default = false,
Callback = function(phnz)
nppz.weatherTriggered = false

if phnz and next(nppz.weathers) == nil then
nppz.weatherEnabled = false

pcall(function()
nppz.weatherToggle:UpdateState(false)
end)

blg:Dialog({
Title = _d("IgsLRB4HF1UpA0YTQjAF"),
Description = _d("IQcJW1YDEVUCD1EFFkUaAA8QAQcEAQYPQlYAABkBHRAQCxcGGkodVg0RHQsYRx8RAFUaAlUEB0UcHUpeGRYNHAANEAINRRIHHFVWFxVVAQQe"),
Buttons = {
{
Name = _d("MgEeEB8W"),
},
},
})

return
end

nppz.weatherEnabled = phnz
end,
}, _d("FBseXykFDAMLNUUGPQobMR1VFxYNEBw"))

iyx:Dropdown({
Name = _d("MgccVVYXFVUZD1ECCgAHHQ"),
Multi = true,
Required = false,
Options = { _d("IRcaWBkNCw"), _d("NwIDSgwDFxE"), _d("OQcNWAIMDBsJ"), _d("IgcEVAUWCgcD"), _d("JgYLQh8MAhQA"), _d("JgcEVwMOBAcHHkk"), _d("OAEEUQQBDVUqBV0XCws"), _d("IwEDVA"), _d("OA8OVVYLC1UmD1EABws"), _d("OA8EVxc") },
Callback = function(djkz)
nppz.weathers = {}

if type(djkz) == _d("AQ8IXBM") then
for bavp, uhcg in pairs(djkz) do
if uhcg then
nppz.weathers[bavp] = true
end
end
end

nppz.weatherTriggered = false
end,
}, _d("EgccVSkXFSoZD1ECCgAHHQ"))

iyx:Input({
Name = _d("OAcEWRsXCFUIBl8ZEBY"),
Placeholder = _d("RU5XEBcMHFUIBl8ZEA"),
AcceptedCharacters = _d("OxsHVQQLBg"),
Callback = function(ljx)
local gdyd = math.floor(tonumber(ljx) or 0)

if gdyd < 0 then
gdyd = 0
end

nppz.weatherMinFloor = gdyd
nppz.weatherTriggered = false
end,
}, _d("GAcEWRsXCCoIBl8ZEBY"))

iyx:Button({
Name = _d("MgccVVY3FVU6BUcTEA"),
Callback = function()
if not vqh() then
blg:Dialog({
Title = _d("MgccVVY3FVU6BUcTEA"),
Description = _d("OwFKXB8UAFUaBUcTEEUHGwQQAg1FEgccVVYXFVUcA1ceFkUbAR0e"),
Buttons = {
{
Name = _d("MgEeEB8W"),
},
},
})

return
end

blg:Dialog({
Title = _d("MgccVVY3FVU6BUcTEA"),
Description = _d("MwEYVhMLEVUaAlVWARAHHA9eAkIRGhkPQlYQEBtRSmQeCxZVDQteGA0RVQwPEAMMARoADx4"),
Buttons = {
{
Name = _d("MgFKUhcBDg"),
},
{
Name = _d("MgccVVYXFQ"),
Callback = function()
local ihb = false

pcall(function()
ihb = ltec()
end)

if ihb then
return
end

task.defer(function()
task.wait(0.3)

blg:Dialog({
Title = _d("MgccVVY3FVU6BUcTEA"),
Description = _d("OwFKVx8UAFUbGhAUFxEBAQQQFwwWAgsYVRJCSFUaAlVWEBAbTgdRD0IEGRwPURIbRRcLSl8ABxdb"),
Buttons = {
{
Name = _d("MgEeEB8W"),
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

iyx:Button({
Name = _d("NgYPUx1CCRodGRAeCxYBARhJ"),
Callback = function()
local fvgl = ckop.remote(_d("JwsbRRMRESEBHVUEKgwGGgVCDw"))

if not fvgl then
blg:Dialog({
Title = _d("OQEZQ1YqDAYaBUIP"),
Description = _d("IQYDQ1YAEBwCDhAeAxZVAAUQAg0SEBxKWB8RERocExAEBwgaGg8e"),
Buttons = {
{
Name = _d("MgEeEB8W"),
},
},
})

return
end

ckop.standDown(ckop.historyOpen)

pcall(function()
fvgl:FireServer()
end)
end,
})

iyx:Button({
Name = _d("NgYPUx1CAhAAD0IXFgwaABk"),
Callback = function()

local eh = zl:FindFirstChild(_d("IQEdVQQwAAYbBkQxFww"))
local cvpo = eh and eh:FindFirstChild(_d("Oh4PXjEHCz0HGUQZEBw"))

if not cvpo then
blg:Dialog({
Title = _d("MgsEVQQDERwBBEM"),
Description = _d("IQYDQ1YAEBwCDhAeAxZVAAUQEQcLEBwLRB8NCwZOHVkYBgoCQA"),
Buttons = {
{
Name = _d("MgEeEB8W"),
},
},
})

return
end

ckop.standDown(ckop.generationOpen)

pcall(function()
cvpo:Fire()
end)
end,
})

nqmv.bossTeams.towerSection = alk:Section({
Side = _d("OQsMRA"),
})

nqmv.bossTeams.towerSection:Header({
Name = _d("IQEdVQRCMRAPB0M"),
})

nqmv.bossTeams.towerSection:Paragraph({
Header = _d("PQEdEAINEhAcSkQTAwgGTh1fBAk"),
Body = _d("OggMClYHBBYGSkIDDEUAHQ9DVhUNFBoPRhMQRQELC11WCxEGThlcGRZFFAIYVRcGHFUGBVwSEUt/ZCVeTEIAFA0CEAINEhAcSlITDgoCThhFGBFFAgceWFYWDRBOHlUXD0UFBwlbEwZFEwEYEB8WSw"),
})

nqmv.bossTeams.towerToggle = nqmv.bossTeams.towerSection:Toggle({
Name = _d("IQEdVQRCMRAPB0M"),
Default = false,
Callback = function(yuwv)
nqmv.bossTeams.towersOn = yuwv
end,
}, _d("AQEdVQQ9ERAPB0M"))

for vjyw, rml in ipairs({
{ kind = _d("AQEdVQQ"), name = _d("PAAMWRgLEQxOKVEFFgkQTkUQOAsCHRoHUQQH") },
{ kind = _d("HQ8YVBUNFxA"), name = _d("PB0GURgGRT0PGFQVDRcQ") },
}) do
local oaqv = math.clamp(math.floor(tonumber(nqmv.bossTeams.towerPicked[rml.kind]) or 1), 1, 4)

nqmv.bossTeams.towerPicked[rml.kind] = oaqv

nqmv.bossTeams.towerUi[rml.kind] = nqmv.bossTeams.towerSection:Dropdown({
Name = rml.name,
Search = false,
Multi = false,
Required = false,
Default = oaqv,
Options = { _d("IQsLXVZT"), _d("IQsLXVZQ"), _d("IQsLXVZR"), _d("IQsLXVZW") },
Callback = function(xw)
local nvk = type(xw) == _d("AQ8IXBM") and xw[1] or xw
local zssw = type(nvk) == _d("BhoYWRgF") and tonumber(nvk:match(_d("XUsOG18"))) or nil

if zssw then
nqmv.bossTeams.towerPicked[rml.kind] = zssw
nqmv.bossTeams.save()
end

pcall(function()
nqmv.bossTeams.towerUi[rml.kind]:UpdateName(rml.name .. _d("VYzqklY") .. (nvk or _d("IQsLXVZT")))
end)
end,
}, _d("AQsLXSkWCgILGG8") .. rml.kind)

pcall(function()
nqmv.bossTeams.towerUi[rml.kind]:UpdateSelection(_d("IQsLXVY") .. tostring(oaqv))
nqmv.bossTeams.towerUi[rml.kind]:UpdateName(rml.name .. _d("VYzqklY2ABQDSg") .. tostring(oaqv))
end)
end

nqmv.bossTeams.towerSection:Header({
Name = _d("JhkLQFYNC1UIBl8ZEA"),
})

nqmv.bossTeams.towerSection:Paragraph({
Header = _d("JhkLQFYWABQDSl8YQgRVCAZfGRA"),
Body = _d("IQYPEBEDCBBJGRAZFQtVHR1RBk5FGwEeEBdCFRQbGVVYQiAUDQIQBBcJEE4DQ1YDRRMCBV8EQgQbCkpEHgdFAQsLXVYVCgcASlYEDQhVGgJRAkIDGQEFQlYNC1lOHUIfFhEQAEpZGBYKVRoCVVYFBBgLTUNWMQABGgNeERFFWFBKcQMWClU6D1EbQjYCDxoQR0IEGwpKAlpCFhpOHlgTQgIUAw8QGwMOEB1KRB4HRQYZA0QVCkUcGhlVGgRFAgYPXlYDRQcbBBAFFgQHGhkQAgoEAU4MXBkNF1tOJF8CCgwbCUpZBUIWAQEaQBMGRRQADhACCgBVHB9eVgkAEB4ZEB8WFlUdBl8CTG9/L0pTFxERGQtKQgMMRRILHkNWFg0QThlRGwdFBhkDRBUKRRMcBV1WFg0cHUpAFwwAGUJKUhMBBAAdDxACCgBVCQtdE0UWVQEdXlYREhQeSl8YDhxVCANCExFFHAAZWRIHRTwADFkYCxEQTjhfGQ8WW2RgfBMDExBOCxAQDgoaHEpRAkJVVRoFEAIXFxtOHlgXFkUHGwZVVg0DE0A"),
})

function nqmv.bossTeams.swapStatusText()
local lqa = nqmv.bossTeams.swap
local rqjk = {}

if lqa.on then
table.insert(rqjk, _d("OgBKHVYVFxwaHlUYQhEaTh5YE0ICFAMPFwVCJAAaBRAiBwQYTjlHFxJFBwEdQ1g"))
else
table.insert(rqjk, _d("OggMEFtCER0LSlcXDwBSHUpDAQMVVQcZEBoHAwFOC1wZDABb"))
end

local zsms = {
{ index = 1, floor = lqa.floor, team = lqa.team },
{ index = 2, floor = lqa.floor2, team = lqa.team2 },
}

for bzlc, zzpf in ipairs(zsms) do
if zzpf.floor > 0 then
table.insert(rqjk, string.format(_d("JhkLQFZHAU9OPlUXD0VQCkpWBA0IVQgGXxkQRVAK"), zzpf.index, zzpf.team, zzpf.floor))
else
table.insert(rqjk, string.format(_d("JhkLQFZHAU9OBVYQQk0bAUpWGg0KB04ZVQJL"), zzpf.index))
end
end

if nqmv.bossTeams.swapMessage ~= _d("") then
table.insert(rqjk, nqmv.bossTeams.swapMessage)
end

return table.concat(rqjk, _d("fw"))
end

function nqmv.bossTeams.paintSwap()
pcall(function()
nqmv.bossTeams.swapStatus:UpdateBody(nqmv.bossTeams.swapStatusText())
end)
end

nqmv.bossTeams.swapToggle = nqmv.bossTeams.towerSection:Toggle({
Name = _d("JhkLQFYWABQDSl8YQgMZAQVC"),
Default = nqmv.bossTeams.swap.on,
Callback = function(dwie)
nqmv.bossTeams.swap.on = dwie

nqmv.bossTeams.swapReset()

nqmv.bossTeams.swapApply()
nqmv.bossTeams.save()
end,
}, _d("BhkLQCkWABQDNV8YPQMZAQVC"))

nqmv.bossTeams.swapInput = nqmv.bossTeams.towerSection:Input({
Name = _d("MwIFXwQ"),
Placeholder = _d("EEANHlZXVUVOQgBWX0UaCAwZ"),
AcceptedCharacters = _d("OxsHVQQLBg"),
Callback = function(djny)
local axln = tonumber(type(djny) == _d("BhoYWRgF") and djny:match(_d("XUsOG18")) or djny)

if axln then
nqmv.bossTeams.swap.floor = axln
nqmv.bossTeams.swapReset()
nqmv.bossTeams.swapApply()
nqmv.bossTeams.save()
end
end,
}, _d("EwIFXwQ"))

nqmv.bossTeams.swapDropdown = nqmv.bossTeams.towerSection:Dropdown({
Name = _d("JhkLQFYWCg"),
Search = false,
Multi = false,
Required = false,
Default = math.clamp(math.floor(tonumber(nqmv.bossTeams.swap.team) or 1), 1, 4),
Options = { _d("IQsLXVZT"), _d("IQsLXVZQ"), _d("IQsLXVZR"), _d("IQsLXVZW") },
Callback = function(ode)
local kah = type(ode) == _d("AQ8IXBM") and ode[1] or ode
local hnmd = type(kah) == _d("BhoYWRgF") and tonumber(kah:match(_d("XUsOG18"))) or nil

if hnmd then
nqmv.bossTeams.swap.team = hnmd
nqmv.bossTeams.swapReset()
nqmv.bossTeams.swapApply()
nqmv.bossTeams.save()
end

pcall(function()
nqmv.bossTeams.swapDropdown:UpdateName(_d("JhkLQFYWClWM6pJW") .. (kah or _d("IQsLXVZT")))
end)

nqmv.bossTeams.paintSwap()
end,
}, _d("BhkLQCkWCg"))

nqmv.bossTeams.swapInput2 = nqmv.bossTeams.towerSection:Input({
Name = _d("MwIFXwRCVw"),
Placeholder = _d("EEANHlZTVUVeShhGQlhVAQxWXw"),
AcceptedCharacters = _d("OxsHVQQLBg"),
Callback = function(vkx)
local mpt = tonumber(type(vkx) == _d("BhoYWRgF") and vkx:match(_d("XUsOG18")) or vkx)

if mpt then
nqmv.bossTeams.swap.floor2 = mpt
nqmv.bossTeams.swapReset()
nqmv.bossTeams.swapApply()
nqmv.bossTeams.save()
end
end,
}, _d("EwIFXwQ9Vw"))

nqmv.bossTeams.swapDropdown2 = nqmv.bossTeams.towerSection:Dropdown({
Name = _d("JhkLQFYWClVc"),
Search = false,
Multi = false,
Required = false,
Default = math.clamp(math.floor(tonumber(nqmv.bossTeams.swap.team2) or 1), 1, 4),
Options = { _d("IQsLXVZT"), _d("IQsLXVZQ"), _d("IQsLXVZR"), _d("IQsLXVZW") },
Callback = function(uoxp)
local jghx = type(uoxp) == _d("AQ8IXBM") and uoxp[1] or uoxp
local jilx = type(jghx) == _d("BhoYWRgF") and tonumber(jghx:match(_d("XUsOG18"))) or nil

if jilx then
nqmv.bossTeams.swap.team2 = jilx
nqmv.bossTeams.swapReset()
nqmv.bossTeams.swapApply()
nqmv.bossTeams.save()
end

pcall(function()
nqmv.bossTeams.swapDropdown2:UpdateName(_d("JhkLQFYWClVcStL2wEU") .. (jghx or _d("IQsLXVZT")))
end)

nqmv.bossTeams.paintSwap()
end,
}, _d("BhkLQCkWCipc"))

nqmv.bossTeams.swapStatus = nqmv.bossTeams.towerSection:Paragraph({
Header = _d("JhkLQFYRERQaH0M"),
Body = nqmv.bossTeams.swapStatusText(),
})

pcall(function()
local mcar = math.clamp(math.floor(tonumber(nqmv.bossTeams.swap.team) or 1), 1, 4)
local cwnn = math.clamp(math.floor(tonumber(nqmv.bossTeams.swap.team2) or 1), 1, 4)

nqmv.bossTeams.swapDropdown:UpdateSelection(_d("IQsLXVY") .. tostring(mcar))
nqmv.bossTeams.swapDropdown:UpdateName(_d("JhkLQFYWClWM6pJWNgAUA0o") .. tostring(mcar))
nqmv.bossTeams.swapDropdown2:UpdateSelection(_d("IQsLXVY") .. tostring(cwnn))
nqmv.bossTeams.swapDropdown2:UpdateName(_d("JhkLQFYWClVcStL2wEUhCwtdVg") .. tostring(cwnn))
end)

task.spawn(function()
local ad = nqmv.bossTeams.swapStatusText()

while po() do
local utnf = nqmv.bossTeams.swapStatusText()

if utnf ~= ad then
ad = utnf
nqmv.bossTeams.paintSwap()
end

task.wait(2)
end
end)

if nqmv.bossTeams.swap.on then
task.delay(2, function()
pcall(nqmv.bossTeams.swapApply)
end)
end

nqmv.bossTeams.section = alk:Section({
Side = _d("JwcNWAI"),
})

nqmv.bossTeams.section:Header({
Name = _d("NwEZQ1Y2ABQDGQ"),
})

nqmv.bossTeams.section:Paragraph({
Header = _d("PQEdEBQNFgZOHlUXDxZVGQVCHQ"),
Body = _d("OggMClYMCgEGA14RQgwGThlHHxYGHQsOEFtCAAMLGElWBAwSBh4QAxEABk4eWBNCERAPBxAPDRBVDwZCEwMBDE4CUQAHRRkHBFUSQhAFQkpHHgsGHU4DQ1YWDRBOOVwZFkVETh5VFw9FAAAGVQURRQYCBURWUEUBDwFVBUIRHQtKUhcWERkLRDp8LQtPTg9RFQpFFBwPUVYAABkBHRAQCwIdGhkQAQsRHU4eWBNCERAPBxAPDRBVHgNTHUIDGhxKWQJM"),
})

nqmv.bossTeams.toggle = nqmv.bossTeams.section:Toggle({
Name = _d("NwEZQ1Y2ABQDGQ"),
Default = false,
Callback = function(sqs)
nqmv.bossTeams.enabled = sqs
end,
}, _d("FwEZQykWABQDGQ"))

for fn, wns in ipairs(vidg) do
local rmx = nqmv.bossTeams.picked[wns.id] or 1

rmx = math.clamp(math.floor(tonumber(rmx) or 1), 1, 4)
nqmv.bossTeams.picked[wns.id] = rmx

nqmv.bossTeams.ui[wns.id] = nqmv.bossTeams.section:Dropdown({
Name = wns.name,
Search = false,
Multi = false,
Required = false,

Default = rmx,
Options = { _d("IQsLXVZT"), _d("IQsLXVZQ"), _d("IQsLXVZR"), _d("IQsLXVZW") },
Callback = function(mgl)
local divd = type(mgl) == _d("AQ8IXBM") and mgl[1] or mgl
local xdsv = type(divd) == _d("BhoYWRgF") and tonumber(divd:match(_d("XUsOG18"))) or nil

if xdsv then
nqmv.bossTeams.picked[wns.id] = xdsv

nqmv.bossTeams.save()
end

pcall(function()
nqmv.bossTeams.ui[wns.id]:UpdateName(wns.name .. _d("VYzqklY") .. (divd or _d("IQsLXVZT")))
end)
end,
}, _d("AQsLXSkVCgcCDm8") .. wns.id)

pcall(function()
nqmv.bossTeams.ui[wns.id]:UpdateSelection(_d("IQsLXVY") .. tostring(rmx))
nqmv.bossTeams.ui[wns.id]:UpdateName(wns.name .. _d("VYzqklY2ABQDSg") .. tostring(rmx))
end)
end

nqmv.bossTeams.raidSection = alk:Section({
Side = _d("JwcNWAI"),
})

nqmv.bossTeams.raidSection:Header({
Name = _d("Jw8DVFY2ABQDGQ"),
})

nqmv.bossTeams.raidSection:Paragraph({
Header = _d("PQEdEAQDDBFOHlUXDxZVGQVCHQ"),
Body = _d("OggMClYQBBwKGRADEQBVGQJRAgcTEBxKRBMDCFUaAlVWEQkaGkpRGhAAFAoTEB4NCREdRDp8LQtPTg9RFQpFBw8DVFYAABkBHRAfEUUTAR9XHhZFAgceWFYWDRBOHlUXD0UFBwlbEwZFEwEYEB8WSw"),
})

nqmv.bossTeams.raidToggle = nqmv.bossTeams.raidSection:Toggle({
Name = _d("Jw8DVFY2ABQDGQ"),
Default = false,
Callback = function(hm)
nqmv.bossTeams.raidsOn = hm
end,
}, _d("Bw8DVCkWABQDGQ"))

for tck, sbsb in ipairs(bh.Raids) do
if sbsb.BossTitle and sbsb.id then
local wzkn = nqmv.bossTeams.raidPicked[sbsb.id] or 1

wzkn = math.clamp(math.floor(tonumber(wzkn) or 1), 1, 4)
nqmv.bossTeams.raidPicked[sbsb.id] = wzkn

nqmv.bossTeams.raidUi[sbsb.id] = nqmv.bossTeams.raidSection:Dropdown({
Name = sbsb.BossTitle,
Search = false,
Multi = false,
Required = false,
Default = wzkn,
Options = { _d("IQsLXVZT"), _d("IQsLXVZQ"), _d("IQsLXVZR"), _d("IQsLXVZW") },
Callback = function(tvhc)
local vqj = type(tvhc) == _d("AQ8IXBM") and tvhc[1] or tvhc
local kx = type(vqj) == _d("BhoYWRgF") and tonumber(vqj:match(_d("XUsOG18"))) or nil

if kx then
nqmv.bossTeams.raidPicked[sbsb.id] = kx
nqmv.bossTeams.save()
end

pcall(function()
nqmv.bossTeams.raidUi[sbsb.id]:UpdateName(sbsb.BossTitle .. _d("VYzqklY") .. (vqj or _d("IQsLXVZT")))
end)
end,
}, _d("AQsLXSkQBBwKNQ") .. sbsb.id)

pcall(function()
nqmv.bossTeams.raidUi[sbsb.id]:UpdateSelection(_d("IQsLXVY") .. tostring(wzkn))
nqmv.bossTeams.raidUi[sbsb.id]:UpdateName(sbsb.BossTitle .. _d("VYzqklY2ABQDSg") .. tostring(wzkn))
end)
end
end

task.spawn(function()
local bjtu = jcic()

while po() do
local girn = jcic()

if ff.enabled and ff.statusText then
girn = ff.statusText()
end

girn = girn .. _d("f2Q5VQQUAAdOH0BW") .. mvjh()

if girn ~= bjtu then
bjtu = girn
pcall(function()
ucv:UpdateBody(girn)
end)
end
task.wait(0.5)
end
end)

task.spawn(function()
while po() do
for ha, sjj in ipairs({ _d("Nw8eRBoHIgAH"), _d("Nw8eRBoHIgAHWA") }) do
local rem = zl:FindFirstChild(sjj)
local cor = rem and rem:FindFirstChild(_d("Nw8eRBoHNhYcD1UY"))
local vzhg = rem and rem:FindFirstChild(_d("PQcOVTQDEQECD3IDFhEaAA"))

if cor and cor.Visible and vzhg and not vzhg.Visible then
vzhg.Visible = true
end
end

task.wait(0.5)
end
end)

task.spawn(function()
local ogw = false

while po() do
if xq then
local bgws = zl:FindFirstChild(_d("IQEdVQQwAAYbBkQxFww"))
local csir = bgws and bgws:FindFirstChild(_d("JwsZRRoWIwcPB1U"))
local pi = bgws and bgws:FindFirstChild(_d("MgsEVQQDERwADXYEAwgQ"))

if pi and pi.Visible then
pi.Visible = false
end

local zvrx = csir and csir.Visible or false

if zvrx and not ogw then
local tky = csir:FindFirstChild(_d("NgIFQxMgEAEaBV4"))
local ejn = false

if tky then
for qobi, cd in ipairs({ _d("OAEfQxMgEAEaBV5HIQkcDQE"), _d("NA0eWQADERAK") }) do
local zqm = tky[cd]
if zqm then
for zpo, hpxi in ipairs(getconnections(zqm)) do
pcall(function()
hpxi:Fire()
end)
ejn = true
end
end
end
end

if not ejn then
csir.Visible = false
else
task.spawn(function()
task.wait(0.3)
if csir.Parent and csir.Visible then
csir.Visible = false
end
end)
end
end

ogw = zvrx
else
ogw = false
end

task.wait(0.2)
end
end)

local cxvv = {}

function cxvv.active()
return nqmv.enabled or nqmv.story
end

function cxvv.towerHolds()
if ff.enabled then
return false
end

if pges.run.enabled then
return true
end

return wk.enabled and not wk.paused
end

function cxvv.ready(sdhw, qal, wke)
local bpw = nqmv.unlocked[sdhw]

return (not bpw or bpw[qal] ~= false) and ky(sdhw, qal) <= wke
end

function cxvv.hasReadyTarget()
local oid = os.time()

for ngeg, jlg in ipairs(une()) do
for dccn, rivr in ipairs(tll()) do
if cxvv.ready(jlg, rivr, oid) then
return true
end
end
end

return false
end

function cxvv.backOff(tfy, vvzp)
blis(tfy, vvzp, os.time() + 5)
end

function cxvv.findTarget()
for mwv, btk in ipairs(une()) do
local ddj = nb(btk)
local oueu = os.time() - (nqmv.lastFetch[btk] or 0) > 60

if oueu and ddj and not nqmv.walkToNpc then
ygt(ddj)
task.wait(0.3)
fj(btk)
end

for xgkb, vgl in ipairs(tll()) do
if cxvv.ready(btk, vgl, os.time()) then
return btk, vgl
end
end
end

return nil
end

function nqmv.bossTeams.slotForFight()
if ff.hasSlot2 == false then
return 1
end

if ff.busy(2) then
return 1
end

return 2
end

function nqmv.bossTeams.slotTeam(sbzx)
local mku = zl:FindFirstChild(_d("JgseRB8MAgYpH1k"))
local elfj = mku and mku:FindFirstChild(_d("JgIFRCIHBBg") .. sbzx .. _d("NxseRBkM"), true)
local uv = elfj and elfj.Text

return uv and tonumber(uv:match(_d("XUsOG18"))) or nil
end

function nqmv.bossTeams.applyTeam(hfz, fo)
hfz = tonumber(hfz)

if not hfz then
return false
end

fo = tonumber(fo) or nqmv.bossTeams.slotForFight()

if ff.busy(fo) then
return false
end

nqmv.bossTeams.lastSlot = fo

local dzce = nqmv.bossTeams.slotTeam(fo) or nqmv.bossTeams.applied[fo]

if dzce == hfz then
return true
end

local bdl = ckop.remote(_d("JhkDRBUKMRAPBw"))

if not bdl then
return false
end

local zydr = pcall(function()
bdl:FireServer(hfz, false, fo)
end)

nqmv.bossTeams.applied[fo] = hfz
task.wait(0.2)

return zydr
end

function nqmv.bossTeams.apply(tlcx)
if not nqmv.bossTeams.enabled then
return
end

local upp = nqmv.bossTeams.worldOf[tlcx]
local qzf = upp and nqmv.bossTeams.picked[upp]

if not qzf then
return
end

nqmv.bossTeams.applyTeam(qzf)
end

function nqmv.bossTeams.applyTower(ljxi, udc)
if not nqmv.bossTeams.towersOn then
return false
end

local ezuh = nqmv.bossTeams.towerPicked[ljxi]

local gqv = nqmv.bossTeams.swapFired[ljxi]

if nqmv.bossTeams.swap.on and type(gqv) == _d("AQ8IXBM") then
ezuh = gqv[2] or gqv[1] or ezuh
end

if not ezuh then
return false
end

return nqmv.bossTeams.applyTeam(ezuh, udc)
end

function nqmv.bossTeams.applyRaid(wxmw)
if not nqmv.bossTeams.raidsOn then
return
end

local awr = wxmw and nqmv.bossTeams.raidPicked[wxmw]

if not awr then
return
end

nqmv.bossTeams.applyTeam(awr)
end

function cxvv.fight(cky, yco)
local wfwy = nb(cky)

if not wfwy then
cxvv.backOff(cky, yco)
return false
end

local ul

if nqmv.walkToNpc then
local arua = uo[cky]

if arua then
gh.TeleportToWorld:FireServer(arua)
task.wait(2.5)

local bli = nb(cky) or wfwy
local tly = bli:GetPivot()

ul = urj(tly.Position + tly.LookVector * 6, function()
return not cxvv.active() or not nqmv.walkToNpc
end)

if ul then
fj(cky)
ul = cxvv.ready(cky, yco, os.time())
end
end
else
ul = ygt(wfwy)
end

if not ul then
cxvv.backOff(cky, yco)
return false
end

task.wait(0.4)
nqmv.bossTeams.apply(cky)
nqmv.activeDifficulty[cky] = yco
gh.SetNPCDifficulty:FireServer(cky, yco)
task.wait(0.4)

nqmv.currentBattle = {
npcId = cky,
difficulty = yco,
}
tkw = cky
ofj = yco
gh.StartNPCBattle:FireServer(cky)
blis(cky, yco, os.time() + 10)
nqmv.battlePending = true
nqmv.battlePendingUntil = os.time() + 30
task.wait(1)

return true
end

nqmv.workPending = function()

if tnt.misc and tnt.misc.cards and tnt.misc.cards.inFlight then
return true
end

if not cxvv.active() then
return false
end

if nqmv.battlePending then
return true
end

local ogi = ff.npcSlot()

if ogi and ff.busy(ogi) then
return true
end

return cxvv.hasReadyTarget()
end

task.spawn(function()
while po() do

local rll = (ff.enabled and (tnt.enabled or tal.enabled or tnt.worldBoss.enabled))
or cxvv.towerHolds()
or not ff.slotFree(ff.npcSlot())

or (tnt.misc and tnt.misc.cards and tnt.misc.cards.inFlight)
or (nqmv.battlePending and os.time() < nqmv.battlePendingUntil)

if cxvv.active() and not rll then
local seg, ade = cxvv.findTarget()

if seg then
cxvv.fight(seg, ade)
end
end

task.wait(0.5)
end
end)

task.spawn(function()
while po() do

local eka = {}

if tnt.enabled then
local utar = ff.roleSlot(_d("Gx4J"))

if utar then
table.insert(eka, utar)
end

if ff.splitNpc() and utar ~= 2 then
table.insert(eka, 2)
end
end

local ryp = yiyr:FindFirstChild(_d("Jw8DVCUWBAEbGQ"))

if #eka > 0 and ryp and (not tal.enabled or ff.splitNpc()) and (ff.enabled or not nqmv.workPending()) then
for doi, mce in ipairs(eka) do
local fgll = ryp

local ear = tnt.bossFor(mce)
local lug = fgll:GetAttribute(_d("PB0lQBMM")) == true or fgll:GetAttribute(_d("MwEYUxMG")) == true
local ccab = ear ~= nil and fgll:GetAttribute(_d("JwsLVA89") .. ear) == true
local uljf = ear and vgp(ear)

if ear and tnt.pending[ear] and os.time() >= (tnt.pendingUntil[ear] or 0) then
tnt.pending[ear] = false
tnt.cleared[ear] = nil
end

if ear and ff.slotFree(mce) and lug and ccab and tnt.cleared[ear] ~= uljf and not tnt.pending[ear] then
local ilav = gwcb[ear]
local hql = ilav and nb(ilav)
local puu = false

if hql then
if tnt.walkToBoss then
local oj = hmow[ear]
local hcf = pl.Character and pl.Character:FindFirstChild(_d("PRsHURgNDBE8BV8CMgQHGg"))
local vmj = hql:GetPivot().Position
local xcqr = hcf and (hcf.Position - vmj).Magnitude <= 15

if xcqr then
puu = true
elseif oj then
gh.TeleportToWorld:FireServer(oj)

local qflz = os.clock()
while os.clock() - qflz < 2.5 and tnt.enabled do
task.wait(0.1)
end

if tnt.enabled then
local lged = nb(ilav) or hql
local tay = lged:GetPivot()
local mkh = tay.Position + tay.LookVector * 6
puu = pyay(mkh, tnt.walkSpeed, function()
return not tnt.enabled or not tnt.walkToBoss
end)
end
end

if not puu then
puu = ygt(hql)
end
else
puu = ygt(hql)
end

if puu then
task.wait(0.5)
end
end

if puu then
tnt.inFlight[ear] = mce
tnt.pending[ear] = true
tnt.pendingUntil[ear] = os.time() + 15
tnt.cleared[ear] = uljf

local vfo = tnt.difficulties[1] or _d("GwEYXRcO")
local of = tnt.progress[ear]

if of then
local ac = of.unlocked
local cbqc = of.cooldowns

for ej, yfv in ipairs(tnt.difficulties) do
local jzjj = not ac or ac[yfv] ~= false
local rdk = cbqc and tonumber(cbqc[yfv]) or 0

if jzjj and rdk <= 0 then
vfo = yfv
break
end
end
end

nqmv.bossTeams.applyRaid(ear)
gh.SetRaidDifficulty:FireServer(vfo, ear)
task.wait(0.3)
gh.StartRaidBattle:FireServer(ear)
task.wait(2)
end
end
end
end

task.wait(1)
end
end)

task.spawn(function()
while po() do
local syp = tal.inBattle and os.time() < tal.inBattleUntil

if tal.enabled and (ff.enabled or not nqmv.workPending()) and not syp and ff.slotFree(ff.roomSlot()) and not (tal.pending and os.time() < tal.pendingUntil) then
local kyt = tal.progress

if kyt == nil then
gh.RequestInfiniteRoomProgress:FireServer()
task.wait(0.5)
else
local ang = nil

for oh, ocph in ipairs(jxv.Milestones) do
if jxv.isMilestoneUnlocked(ocph, kyt) and not jxv.isMilestoneCleared(ocph, kyt) then
ang = ocph
break
end
end

if ang then

local imij = ff.roomSlot()

tal.currentRoom = ang
tal.inBattle = true
tal.inBattleUntil = os.time() + 60
tal.pending = true
tal.pendingUntil = os.time() + 10

local dsew = zl:FindFirstChild(imij == 2 and _d("JwsZVQIgBAEaBlUwDgoaHFg") or _d("JwsZVQIgBAEaBlUwDgoaHA"))
if dsew and dsew:IsA(_d("NwcEVBcACRArHFUYFg")) then
dsew:Fire(ang, _d("HAAMWRgLERAxGF8ZDw"))
end

local twqf = zl:FindFirstChild(imij == 2 and _d("JhoLQgIrCxMHBFkCBzcaAQdyFxYRGQtY") or _d("JhoLQgIrCxMHBFkCBzcaAQdyFxYRGQs"))
if twqf and twqf:IsA(_d("NwcEVBcACRArHFUYFg")) then
twqf:Fire(ang)
end

gh.StartBattle:FireServer(_d("HAAMWRgLERAxGF8ZDw"), {
milestone = ang,
slot = imij,
})
task.wait(2)
end
end
end

task.wait(1)
end
end)

local function raje(gwwp, hi)
local uzo = zl:FindFirstChild(_d("Jg0YVRMMIgAH"))

if not uzo then
return
end

local heog = uzo:FindFirstChild(gwwp)
local kojx = heog and heog:FindFirstChild(_d("Iw8GRRMuBBcLBg"), true)
local ctce = heog and heog:FindFirstChild(_d("OQ8IVRo"), true)

if not heog then
return
end

local pxny = false

if kojx then
pxny = kojx.Text == _d("OgA")
elseif ctce then
pxny = not string.lower(ctce.Text):find(_d("GggM"), 1, true)
end

if pxny ~= hi then
for uxsg, vnde in ipairs(getconnections(heog.MouseButton1Click)) do
local jxt = vnde.Function

if type(jxt) == _d("ExsEUwILChs") then
pcall(jxt)
else
pcall(function()
vnde:Fire()
end)
end
end
end
end

getgenv().ACBXSetRollButton = raje

local function gicj(byh)
raje(_d("JBsDUx0wChkCKEUCFgob"), byh)
raje(_d("NBseXyQNCRksH0QCDQs"), byh)
end

getgenv().ACBXSetRollUi = gicj
lfm.setRollButton = raje

pcall(function()
gh.SaveClientData:FireServer({ autoHideBattle = false })
end)

task.defer(function()
task.wait(0.5)

local utzx = zl:FindFirstChild(_d("Nw8eRBoHIgAH"))
local qrl = utzx and utzx:FindFirstChild(_d("Nw8eRBoHNhYcD1UY"))
local qnxm = utzx and utzx:FindFirstChild(_d("PQcOVTQDEQECD3IDFhEaAA"))

if qnxm and qnxm.Visible and qrl and not qrl.Visible and eqde() then
for pclp, lm in ipairs(getconnections(qnxm.MouseButton1Click)) do
local yzht = lm.Function

if type(yzht) == _d("ExsEUwILChs") then
pcall(yzht)
else
pcall(function()
lm:Fire()
end)
end
end
end
end)

gicj(true)

task.spawn(function()
while po() do

if lfm.autoRoll then
raje(_d("NBseXyQNCRksH0QCDQs"), true)
end

if lfm.autoQuickRoll then
raje(_d("JBsDUx0wChkCKEUCFgob"), true)
end

task.wait(1)
end
end)

local function wzxi()

if wk.floor then
return wk.floor
end

local lfq = zl:FindFirstChild(_d("Nw8eRBoHIgAH"))

if not lfq then
return nil
end

for pnon, jusv in ipairs({ _d("IQEdVQQkCRoBGHwXAAAZ"), _d("JxsEdhoNCgciC1ITDg") }) do
local twr = lfq:FindFirstChild(jusv)

if twr and twr.Visible and twr.Text then
local ucr = tonumber(twr.Text:match(_d("XUsOG18")))

if ucr then
return ucr
end
end
end

local gkm = lfq:FindFirstChild(_d("MwIFXwQxBgcLD14"))
local dz = gkm and gkm:FindFirstChild(_d("IQEachcQ"))
local qbc = dz and dz:FindFirstChild(_d("MwIFXwQuBBcLBg"))

if qbc then
return tonumber(qbc.Text:match(_d("XUsOG18")))
end

return nil
end

function nqmv.bossTeams.swapRows(qdok)
local kuzv = zl:FindFirstChild(_d("JgseRB8MAgYpH1k"))
local ew = kuzv and kuzv:FindFirstChild(_d("NBseXyUVBAU") .. qdok .. _d("JwEd"), true)

if not ew then
return nil
end

return ew:FindFirstChild(_d("NBseXyUVBAU") .. qdok .. _d("NgYPUx0")),
ew:FindFirstChild(_d("NBseXyUVBAU") .. qdok .. _d("IQsLXQ")),
ew:FindFirstChild(_d("NBseXyUVBAU") .. qdok .. _d("MwIFXwQ"))
end

function nqmv.bossTeams.swapOn(gpcu)
local rcnu = zl:FindFirstChild(_d("JgseRB8MAgYpH1k"))
local yxms = rcnu and rcnu:FindFirstChild(_d("MgseYxMWERwADUM"), true)

if not yxms then
return nil
end

local sywm, dxh = pcall(function()
return yxms:Invoke()
end)

if sywm and type(dxh) == _d("AQ8IXBM") then
return dxh[gpcu == 1 and _d("FBseXyIHBBg9HVEGJwsUDAZVEg") or _d("FBseXyIHBBg9HVEGUCAbDwhcEwY")] == true
end

return nil
end

function nqmv.bossTeams.swapBox(jprr, mfhr)
if tonumber(jprr.Text) == mfhr then
return
end

jprr.Text = tostring(mfhr)

if getconnections then
for sskh, umk in ipairs(getconnections(jprr.FocusLost)) do
pcall(function()
umk:Fire(true, Enum.UserInputType.Focus)
end)
end
end
end

function nqmv.bossTeams.swapSet(btm, dzfw, zsja, gca)
local qbz, focf, yrsj = nqmv.bossTeams.swapRows(btm)

if not (qbz and focf and yrsj) then
return false
end

zsja = math.max(1, math.floor(tonumber(zsja) or 1))
gca = math.clamp(math.floor(tonumber(gca) or 1), 1, 4)

nqmv.bossTeams.swapBox(yrsj, zsja)
nqmv.bossTeams.swapBox(focf, gca)

local idp = nqmv.bossTeams.swapOn(btm)

if idp ~= nil and idp ~= (dzfw == true) and getconnections then
pcall(function()
for fcq, ojc in ipairs(getconnections(qbz.MouseButton1Click)) do
pcall(function()
ojc:Fire()
end)
end
end)
end

local uqs = btm == 1 and _d("") or _d("Rw")

pcall(function()
gh.SaveClientData:FireServer({
[_d("FBseXyIHBBg9HVEG") .. uqs .. _d("MAALUhoHAQ")] = dzfw == true,
[_d("FBseXyIHBBg9HVEG") .. uqs .. _d("IQsLXQ")] = gca,
[_d("FBseXyIHBBg9HVEG") .. uqs .. _d("MwIFXwQ")] = zsja,
})
end)

return true
end

function nqmv.bossTeams.swapApply()
local ewsq = nqmv.bossTeams
local iapv = ewsq.swap
local sdar = true

if iapv.on then
sdar = ewsq.swapSet(1, iapv.floor > 0, iapv.floor, iapv.team)
sdar = ewsq.swapSet(2, iapv.floor2 > 0, iapv.floor2, iapv.team2) and sdar
else
sdar = ewsq.swapSet(1, false, iapv.floor, iapv.team)
sdar = ewsq.swapSet(2, false, iapv.floor2, iapv.team2) and sdar
end

ewsq.swapMessage = _d("")

if not sdar then
ewsq.swapMessage = _d("IQYPEBEDCBBJGRA3FxEaTj5VFw9FJhkLQFYQCgIdSlEEB0UbAR4QFBcMGRpKSRMWRVhOGFUCEBwcAA0e")
end

ewsq.paintSwap()
end

function nqmv.bossTeams.swapReset(qgek)
local xbem = nqmv.bossTeams

if qgek then
xbem.swapFired[qgek] = nil
else
xbem.swapFired = {}
end
end

function nqmv.bossTeams.swapTick()
local axk = nqmv.bossTeams
local qnao = axk.swap

if not qnao.on or (qnao.floor <= 0 and qnao.floor2 <= 0) then
if next(axk.swapFired) ~= nil then
axk.swapFired = {}
end

return
end

local ut = os.clock()
local alvk = ckop.remote(_d("JhkDRBUKMRAPBw"))

if ut - (axk.swapWroteAt or 0) > 10 then
axk.swapWroteAt = ut
axk.swapApply()
end

local dfwi = {
{
kind = _d("AQEdVQQ"),
slot = ff.towerSlot(),

live = ut - (wk.floorAt or 0) < 90,
floor = wzxi(),

own = true,
},
{
kind = _d("HQ8YVBUNFxA"),
slot = ff.hardcoreSlot(),
live = wqo.active(),
floor = wqo.floorNow(),

own = false,
},
}

local kz = {
{ index = 1, floor = qnao.floor, team = qnao.team },
{ index = 2, floor = qnao.floor2, team = qnao.team2 },
}

for nk, sy in ipairs(dfwi) do
if not sy.live then

axk.swapFired[sy.kind] = nil
elseif sy.own and alvk and sy.floor then
local iuzr = axk.swapFired[sy.kind]

for oum, gp in ipairs(kz) do
local uxsn = type(iuzr) == _d("AQ8IXBM") and iuzr[gp.index]

if gp.floor > 0 and sy.floor == gp.floor and not uxsn then
local vs = pcall(function()
alvk:FireServer(math.clamp(math.floor(gp.team), 1, 4), true, sy.slot or 1)
end)

if vs then
iuzr = type(iuzr) == _d("AQ8IXBM") and iuzr or {}
iuzr[gp.index] = gp.team
axk.swapFired[sy.kind] = iuzr

axk.swapMessage = string.format(_d("Ng8ZRBoHRRMCBV8EQkARTkcQBRUMAQ0CVRJCERpOPlUXD0VQCkQ"), sy.floor, gp.team)
axk.paintSwap()
end
end
end
end
end
end

task.spawn(function()
while po() do
pcall(nqmv.bossTeams.swapTick)
task.wait(0.5)
end
end)

local function mpg()

return cxvv.active() and cxvv.hasReadyTarget()
end

function tnt.worldBoss.remote(vg)
local icsu = tnt.worldBoss

icsu.remotes = icsu.remotes or {}

local mcdo = icsu.remotes[vg]

if mcdo and mcdo.Parent then
return mcdo
end

local hawh = ckop.remote(vg)

if hawh then
icsu.remotes[vg] = hawh
end

return hawh
end

function tnt.worldBoss.setRepeat(pkil)
local utu = tnt.worldBoss
local jwe = utu.remote(_d("IgEYXBIgCgYdK1MCCwob"))

if not jwe then
return false
end

local tjz = utu.state
local jig = type(tjz) == _d("AQ8IXBM") and tjz.repeatOn == true

if jig == (pkil and true or false) then
utu.repeatIntent = nil

return true
end

if pkil then
local wyuk = workspace:FindFirstChild(_d("IgEYXBIgCgYdK0ITDAQ"))
local ct = wyuk and (wyuk:FindFirstChild(_d("NgsGXDsDHQ")) or wyuk)
local dyh = pl.Character and pl.Character:FindFirstChild(_d("PRsHURgNDBE8BV8CMgQHGg"))

if not (ct and dyh) then
return false
end

local qoq, xxj = pcall(function()
return ct:GetPivot()
end)

if not qoq or (dyh.Position - xxj.Position).Magnitude > 60 then
return false
end
end

if utu.repeatIntent == pkil and os.clock() - (utu.repeatAskedAt or 0) < 20 then
return false
end

utu.repeatIntent = pkil

pcall(function()
jwe:FireServer(_d("BwsaVRcW"))
end)

utu.repeatAskedAt = os.clock()

return true
end

function tnt.worldBoss.requestSync()
local pxue = tnt.worldBoss
local sj = pxue.remote(_d("IgEYXBIgCgYdK1MCCwob"))

if sj then
pcall(function()
sj:FireServer(_d("BhcEUw"))
end)
end

pxue.askedAt = os.clock()
end

function tnt.worldBoss.hasWork()
local mvy = tnt.worldBoss
local qjid = mvy.state

if not mvy.enabled or type(qjid) ~= _d("AQ8IXBM") then
return false
end

local guhw = mvy.isOpen()

if guhw == nil then
guhw = qjid.open == true
end

return guhw and qjid.inFight ~= true
end

tnt.worldBoss.bossUp = function()
local whhc = tnt.worldBoss

if not whhc.enabled then
return false
end

local lvf = whhc.isOpen()

if lvf ~= nil then
return lvf == true
end

local qnxk = whhc.state

return type(qnxk) == _d("AQ8IXBM") and qnxk.open == true
end

function tnt.worldBoss.meter()
local ccp = tnt.worldBoss
local pnl = os.clock()

if pnl - (ccp.meterAt or 0) < 1 then
return ccp.meterCurrent, ccp.meterMax
end

ccp.meterAt = pnl
ccp.meterCurrent = nil
ccp.meterMax = nil

local gujf = yiyr:FindFirstChild(_d("IgEYXBIgCgYdOUQXFhAG"))
local vtmf = gujf and tonumber(gujf:GetAttribute(_d("OAseVQQ")))
local xnz = gujf and tonumber(gujf:GetAttribute(_d("OAseVQQvBA0")))

if vtmf and xnz and xnz > 0 then
ccp.meterCurrent = vtmf
ccp.meterMax = xnz

return ccp.meterCurrent, ccp.meterMax
end

local function egm(wjy)
if type(wjy) ~= _d("BhoYWRgF") then
return nil
end

local kts, ksto = wjy:match(_d("XTVPVFNMOF5HT0NcSj4+IyhbGwA4Skc"))
local ukog = tonumber(kts)

if not ukog then
return nil
end

local sxtn = ({ K = 1000, M = 1000000, B = 1000000000 })[string.upper(ksto or _d(""))] or 1

return ukog * sxtn
end

local uceq = zl:FindFirstChild(_d("IgEYXBIgCgYdKFEYDAAHKR9Z"))
local bkwm = uceq and uceq:FindFirstChild(_d("Nw8EXhMQ"))
local tyk = bkwm and bkwm:FindFirstChild(_d("OAseVQQgBAc"))
local rlet = tyk

if tyk and not tyk:IsA(_d("IQsSRDoDBxAC")) then
rlet = tyk:FindFirstChild(_d("IQsSRA"))
end

local hjgv = rlet and rlet:IsA(_d("IQsSRDoDBxAC")) and rlet.Text or nil

if type(hjgv) == _d("BhoYWRgF") then
local fsm, qjpw = hjgv:match(_d("XTU0HytJTFpGRBtf"))

ccp.meterCurrent = egm(fsm)
ccp.meterMax = egm(qjpw)
end

return ccp.meterCurrent, ccp.meterMax
end

function tnt.worldBoss.meterFull()
local pt, rul = tnt.worldBoss.meter()

return pt ~= nil and rul ~= nil and rul > 0 and pt >= rul
end

tnt.worldBoss.holdsFishing = function()
local btda = tnt.worldBoss

if not btda.enabled then
return false
end

if btda.fishingMode == _d("Ag8DRA") then
return btda.bossUp()
end

return os.clock() < (btda.takingUntil or 0)
end

tnt.worldBoss.holdsDigging = function()
local oog = tnt.worldBoss

if not oog.enabled or oog.digHold ~= true then
return false
end

if not oog.bossUp() then
return false
end

return not (oog.stopAtFull and oog.meterFull())
end

tnt.worldBoss.usesGameChain = function()
local tzfy = tnt.worldBoss

return tzfy.fishingMode == _d("Ag8DRA") or tzfy.digHold == true
end

function tnt.worldBoss.travel()
local kpb = tnt.worldBoss
local lwp = pl.Character
local qu = lwp and lwp:FindFirstChild(_d("PRsHURgNDBE8BV8CMgQHGg"))

if not qu or os.clock() < kpb.travelUntil then
return
end

kpb.travelUntil = os.clock() + 6

local rhb = workspace:FindFirstChild(_d("IgEYXBIgCgYdOl8EFgQZ"))
local st = rhb and rhb:FindFirstChild(_d("JQEYRBcO"))

if not st then
return
end

if (qu.Position - st.Position).Magnitude > 150 then
local eobg = ckop.remote(_d("IQsGVQYNFwE6BWcZEAkR"))

if eobg then
pcall(function()
eobg:FireServer(_d("GQEIUg8"))
end)
end

return
end

if (qu.Position - st.Position).Magnitude > 6 then
kpb.walkLeg(st.Position + Vector3.new(0, 3, 0), 4)

if (qu.Position - st.Position).Magnitude > 9 then
return
end
end

local faeq = st:FindFirstChildOfClass(_d("JRwFSB8PDAEXOkIZDxUB"))

if not faeq then
return
end

pcall(function()
if type(fireproximityprompt) == _d("ExsEUwILChs") then
fireproximityprompt(faeq)
else
faeq:InputHoldBegin()
task.wait(0.25)
faeq:InputHoldEnd()
end
end)
end

function tnt.worldBoss.reach()
local reg = tnt.worldBoss

local sbn = workspace:FindFirstChild(_d("IgEYXBIgCgYdK0ITDAQ")) or workspace:FindFirstChild(_d("IgEYXBIgCgYdOUAXFQs"), true)
local idkk = pl.Character
local fykb = idkk and idkk:FindFirstChild(_d("PRsHURgNDBE8BV8CMgQHGg"))

if not (sbn and fykb) then
reg.travel()
return false
end

local srcd = sbn:FindFirstChild(_d("NgsGXDsDHQ")) or sbn
local nknl, ociw = pcall(function()
return srcd:GetPivot()
end)

if not nknl then
return false
end

local gvh = ociw.Position + ociw.LookVector * 6 + Vector3.new(0, 3, 0)
local stz = Vector3.new(ociw.Position.X, gvh.Y, ociw.Position.Z)

fykb.CFrame = CFrame.lookAt(gvh, stz)

return true
end

tnt.worldBoss.cityBounds = { 19100, 20900, -850, 850 }

function tnt.worldBoss.inArena()
local wp = pl.Character and pl.Character:FindFirstChild(_d("PRsHURgNDBE8BV8CMgQHGg"))
local wama = tnt.worldBoss.cityBounds

if not wp then
return false
end

local msy = wp.Position

return msy.X >= wama[1] and msy.X <= wama[2]
and msy.Z >= wama[3] and msy.Z <= wama[4]
end

function tnt.worldBoss.enterCity(gbk)
local hbl = tnt.worldBoss

local mt = os.clock() + (gbk or 30)

if hbl.inArena() then
return true
end

while os.clock() < mt do
if not hbl.enabled then
return false
end

hbl.travel()

if hbl.inArena() then
return true
end

task.wait(0.5)
end

return hbl.inArena()
end

tnt.worldBoss.walking = false
tnt.worldBoss.walkStartedAt = 0

function tnt.worldBoss.walkLeg(tme, axuv)
local oyov = tnt.worldBoss
local zci = pl.Character
local wayb = zci and zci:FindFirstChild(_d("PRsHURgNDBE8BV8CMgQHGg"))
local ovrd = zci and zci:FindFirstChildOfClass(_d("PRsHURgNDBE"))

if not (wayb and ovrd) then
return false
end

if oyov.walking and os.clock() - (oyov.walkStartedAt or 0) < 45 then
return false
end

axuv = axuv or 6

oyov.walking = true
oyov.walkStartedAt = os.clock()

local rfuz, cxuj = pcall(function()
local ozdh = os.clock() + 40
local vee = 0
local zcz = wayb.Position
local myh = os.clock()

while oyov.enabled and os.clock() < ozdh do
local sv = Vector3.new(tme.X - wayb.Position.X, 0, tme.Z - wayb.Position.Z)

if sv.Magnitude <= axuv then
return true
end

if os.clock() - vee >= 0.25 then
ovrd:MoveTo(Vector3.new(tme.X, wayb.Position.Y, tme.Z))
vee = os.clock()
end

if os.clock() - myh >= 1.2 then
if (wayb.Position - zcz).Magnitude < 2 then
ovrd.Jump = true
end

zcz = wayb.Position
myh = os.clock()
end

task.wait(0.1)
end

return Vector3.new(tme.X - wayb.Position.X, 0, tme.Z - wayb.Position.Z).Magnitude <= axuv
end)

pcall(function()
ovrd:MoveTo(wayb.Position)
end)

oyov.walking = false

return rfuz and cxuj == true
end

function tnt.worldBoss.walkIn(gbua)
local tphv = tnt.worldBoss
local oda = workspace:FindFirstChild(_d("IgEYXBIgCgYdK0ITDAQ"))
local hbov = oda and (oda:FindFirstChild(_d("NgsGXDsDHQ")) or oda) or nil
local ynuy = pl.Character and pl.Character:FindFirstChild(_d("PRsHURgNDBE8BV8CMgQHGg"))

if not (hbov and ynuy) then
return false
end

local vj, xdf = pcall(function()
return hbov:GetPivot()
end)

if not vj then
return false
end

local xzmi = xdf.Position + xdf.LookVector * 6 + Vector3.new(0, 3, 0)

if (ynuy.Position - xzmi).Magnitude <= (gbua or 10) then
return true
end

local unuy = tphv.walkLeg(xzmi, gbua or 6)

if not unuy then
unuy = (ynuy.Position - xdf.Position).Magnitude <= 25
end

return unuy
end

function tnt.worldBoss.approach()
local vjax = tnt.worldBoss

if not vjax.walkToBoss then
return vjax.reach()
end

if not vjax.enterCity() then
return false
end

return vjax.walkIn(10)
end

function tnt.worldBoss.fight()
local gkk = tnt.worldBoss
local zbmr = gkk.remote(_d("IgEYXBIgCgYdK1MCCwob"))

local function srh(muj)
gkk.nextFightAt = os.clock() + (muj or 20)

return false
end

if not zbmr then
return srh(60)
end

if gkk.stopAtFull and gkk.meterFull() then
return srh(20)
end

if zbxg.enabled
and (zbxg.tpToBay or zbxg.deepZone)
and zbxg.phase ~= _d("HAoGVQ") then
return false
end

gkk.takingUntil = os.clock() + 45

if not gkk.approach() then
gkk.takingUntil = os.clock() + 3

return srh(gkk.inArena() and 3 or 20)
end

local nlk = workspace:FindFirstChild(_d("IgEYXBIgCgYdK0ITDAQ"))
local ic = nlk and (nlk:FindFirstChild(_d("NgsGXDsDHQ")) or nlk) or nil
local wxpu = pl.Character and pl.Character:FindFirstChild(_d("PRsHURgNDBE8BV8CMgQHGg"))

if ic and wxpu then
local wn, cnw = pcall(function()
return ic:GetPivot()
end)

if not wn or (wxpu.Position - cnw.Position).Magnitude > 60 then
gkk.takingUntil = os.clock() + 2

return srh(gkk.inArena() and 2 or 10)
end
end

nqmv.bossTeams.applyTeam(gkk.team)

task.wait(gkk.walkToBoss and 0.3 or 1.4)

pcall(function()
zbmr:FireServer(_d("EwcNWAI"))
end)

gkk.fightAt = os.clock()
gkk.holdUntil = os.clock() + 4

gkk.takingUntil = os.clock() + 0.6

if zbxg.enabled and (zbxg.tpToBay or zbxg.deepZone) then
zbxg.deepPhase = _d("HAoGVQ")
zbxg.deepStageAt = 0
zbxg.nextCastAt = 0
end

gkk.killsAtFire = type(gkk.state) == _d("AQ8IXBM") and tonumber(gkk.state.kills) or nil

if not gkk.usesGameChain() and zbxg.enabled
and (zbxg.tpToBay or zbxg.deepZone) then
gkk.nextFightAt = os.clock() + 1
end

return true
end

function tnt.worldBoss.buy(dsat)
local vcfi = tnt.worldBoss
local pvwr = vcfi.remote(_d("IgEYXBIgCgYdK1MCCwob"))

dsat = dsat or 1

if not pvwr then
return 0
end

local mfal = 0

for utwh = 1, dsat do
local fqj = vcfi.state

if type(fqj) ~= _d("AQ8IXBM") or type(fqj.shop) ~= _d("AQ8IXBM") then
break
end

if os.clock() < vcfi.buyAt then
break
end

local ovp = tonumber(fqj.medals) or 0
local suvg = nil

for aqni, xzzj in ipairs(fqj.shop) do
local hkd = tonumber(xzzj.price) or 0
local azvf = xzzj.kind ~= _d("HBoPXQ") or (tonumber(xzzj.left) or 0) > 0

if vcfi.selected[xzzj.id] == true and azvf and xzzj.owned ~= true and hkd <= ovp then
suvg = xzzj
break
end
end

if not suvg then
break
end

pcall(function()
pvwr:FireServer(_d("FxsT"), suvg.id, 1)
end)

mfal = mfal + 1
vcfi.bought = vcfi.bought + 1
vcfi.buyAt = os.clock() + 1.2

vcfi.syncedAt = 0
vcfi.requestSync()
task.wait(1.1)
end

return mfal
end

tnt.worldBoss.questGroups = { _d("BQsYQxkMBBk"), _d("EgIFUhcO"), _d("EwcGXA"), _d("BwsZRAQLBgEHBV4") }

function tnt.worldBoss.questRows(nepy)
local att = tnt.worldBoss
local iny = type(nepy) == _d("AQ8IXBM") and nepy.quests or nil
local kkaa = {}

if type(iny) ~= _d("AQ8IXBM") then
return kkaa
end

for gsvs, lv in ipairs(att.questGroups) do
local mxj = iny[lv]

if type(mxj) == _d("AQ8IXBM") then
for yk, okcq in ipairs(mxj) do
if type(okcq) == _d("AQ8IXBM") then
table.insert(kkaa, okcq)
end
end
end
end

return kkaa
end

function tnt.worldBoss.claim()
local nhx = tnt.worldBoss
local hck = nhx.remote(_d("IgEYXBIgCgYdK1MCCwob"))
local vmjq = nhx.state

if not hck or type(vmjq) ~= _d("AQ8IXBM") or type(vmjq.quests) ~= _d("AQ8IXBM") then
return 0
end

if os.clock() < nhx.claimAt then
return 0
end

local ozt = nhx.questRows(vmjq)

if #ozt == 0 then
return 0
end

local uvh = {}

for gak, fqw in ipairs(ozt) do
if fqw.id ~= nil then
uvh[tostring(fqw.id)] = true
end
end

for buew, wud in pairs(nhx.claimFired) do
if not uvh[buew] or os.clock() - wud > 120 then
nhx.claimFired[buew] = nil
end
end

local zsu = nil

for ehp, ngo in ipairs(ozt) do
if ngo.complete == true and ngo.claimed ~= true and ngo.id ~= nil then
local nkdc = tostring(ngo.id)
local fjbr = nhx.claimFired[nkdc]

if not (fjbr and os.clock() - fjbr < 6) then
zsu = ngo
break
end
end
end

if not zsu then
return 0
end

nhx.claimFired[tostring(zsu.id)] = os.clock()
nhx.claimedTotal = nhx.claimedTotal + 1

pcall(function()
hck:FireServer(_d("FgILWRs"), zsu.id)
end)

nhx.claimAt = os.clock() + 2
nhx.syncedAt = 0
nhx.requestSync()

return 1
end

tnt.worldBoss.syncRemote = oce(_d("IgEYXBIgCgYdOUkYAQ"))

if tnt.worldBoss.syncRemote then
tnt.worldBoss.syncRemote.OnClientEvent:Connect(function(cqfv)
local yvhs = tnt.worldBoss

if type(cqfv) ~= _d("AQ8IXBM") then
return
end

yvhs.state = cqfv
yvhs.syncedAt = os.clock()

if cqfv.inFight == true then
yvhs.wasFighting = true
elseif yvhs.wasFighting then
yvhs.wasFighting = false

if zbxg.enabled then
pcall(zbxg.recover)
end
end
end)
end

task.spawn(function()
tnt.worldBoss.requestSync()
end)

task.spawn(function()
while po() do
local xyzc = tnt.worldBoss
local rou = xyzc.state

if xyzc.autoClaim then
if os.clock() - xyzc.syncedAt > 4 and os.clock() - xyzc.askedAt > 1 then
xyzc.requestSync()
end

xyzc.claim()
end

if xyzc.enabled then

if os.clock() - xyzc.syncedAt > (xyzc.bossUp() and 1.5 or 4) and os.clock() - xyzc.askedAt > 1 then
xyzc.requestSync()
end

if xyzc.autoBuy and next(xyzc.selected) then
xyzc.buy(1)
end

local lky = type(rou) == _d("AQ8IXBM") and rou.repeatOn == true

if xyzc.usesGameChain() then

local grh = type(rou) == _d("AQ8IXBM") and tonumber(rou.kills) or nil

if grh and grh ~= xyzc.seenKills then
xyzc.seenKills = grh
xyzc.progressAt = os.clock()
end

if xyzc.bossUp() and not lky and os.clock() - (xyzc.repeatAskedAt or 0) > 20 then
if xyzc.approach() then
xyzc.repeatSeeded = true
xyzc.progressAt = os.clock()

xyzc.setRepeat(true)
end
end

if xyzc.hasWork() and os.clock() >= xyzc.holdUntil
and os.clock() - (xyzc.progressAt or 0) > 20
and os.clock() - (xyzc.kickAt or 0) > 20 then
local bik = mpg()
local uuyw = ff.roleSlot(_d("Gx4J")) or 1
local zes = ff.enabled and ff.busy(uuyw)

if not bik and not zes then
xyzc.kickAt = os.clock()
xyzc.fight()
end
end

if not xyzc.bossUp() and lky and os.clock() - (xyzc.repeatAskedAt or 0) > 6 then
xyzc.repeatSeeded = false
xyzc.setRepeat(false)
end
elseif xyzc.isOpen() and lky and os.clock() - (xyzc.repeatAskedAt or 0) > 6 then
xyzc.setRepeat(false)
end

local kee = type(rou) == _d("AQ8IXBM") and tonumber(rou.kills) or nil

if xyzc.killsAtFire ~= nil and kee == xyzc.killsAtFire
and os.clock() - (xyzc.fightAt or 0) > (xyzc.inArena() and 2.5 or 9)
and os.clock() < (xyzc.nextFightAt or 0)
and os.clock() >= xyzc.holdUntil then
xyzc.killsAtFire = nil
xyzc.nextFightAt = os.clock()
end

if not xyzc.usesGameChain() and xyzc.hasWork() and os.clock() >= xyzc.holdUntil
and os.clock() >= (xyzc.nextFightAt or 0)
and not (xyzc.stopAtFull and xyzc.meterFull()) then

local gxj = mpg()
local lbq = ff.roleSlot(_d("Gx4J")) or 1
local srn = ff.enabled and ff.busy(lbq)

if not gxj and not srn then
xyzc.fight()
end
end
end

local cm = xyzc.bodyText()

if xyzc.bodyParagraph and cm ~= xyzc.bodyShown then
xyzc.bodyShown = cm

pcall(function()
xyzc.bodyParagraph:UpdateBody(cm)
end)
end

local uc = xyzc.shopText()

if xyzc.shopParagraph and uc ~= xyzc.shopShown then
xyzc.shopShown = uc

pcall(function()
xyzc.shopParagraph:UpdateBody(uc)
end)
end

task.wait(0.5)
end
end)

function ff.roomsHaveWork()
if not tal.enabled then
return false
end

local hue = tal.progress

if hue == nil then
return true
end

for otcd, plxb in ipairs(jxv.Milestones) do
if jxv.isMilestoneUnlocked(plxb, hue) and not jxv.isMilestoneCleared(plxb, hue) then
return true
end
end

return false
end

function ff.raidHasWork()
if not tnt.enabled then
return false
end

local qph = yiyr:FindFirstChild(_d("Jw8DVCUWBAEbGQ"))

if not qph then
return false
end

if not (qph:GetAttribute(_d("PB0lQBMM")) == true or qph:GetAttribute(_d("MwEYUxMG")) == true) then
return false
end

for bzqk, hwwg in ipairs({ 1, 2 }) do
local hnn = tnt.picks[hwwg] and tnt.bossFor(hwwg)

if hnn and tnt.cleared[hnn] ~= vgp(hnn) then
return true
end
end

return false
end

function ff.towerYields()
return mpg()
or ff.roomsHaveWork()
or ff.raidHasWork()
or tnt.worldBoss.hasWork()
end

function ff.towerOutranks()
return not ff.enabled and (wqo.active() or pges.run.enabled)
end

local function yrbb(lrep)
if not lrep then
return false
end

local dgfm = false

for br, pbil in ipairs(getconnections(lrep.MouseButton1Click)) do
local shk = pbil.Function

if type(shk) == _d("ExsEUwILChs") then
pcall(shk)
else
pcall(function()
pbil:Fire()
end)
end

dgfm = true
end

return dgfm
end

function ltec()
for jpnc, rit in ipairs({ _d("Nw8eRBoHIgAH"), _d("Nw8eRBoHIgAHWA") }) do
local ddw = zl:FindFirstChild(rit)

if ddw then
local fvzi = ddw:FindFirstChild(_d("Nw8eRBoHNhYcD1UY"))
local dwiy = fvzi and fvzi:FindFirstChild(_d("JBsDUx0lDAMLP0A0FxEBAQQ"))

if yrbb(dwiy) then
return true
end

local mzs = ddw:FindFirstChild(_d("MwIFXwQxBgcLD14"))
local pau = mzs and mzs:FindFirstChild(_d("NwEeRBkPJxQc"))
local vwv = pau and pau:FindFirstChild(_d("MgccVSMSJwAaHl8Y"))

if yrbb(vwv) then
return true
end
end
end

local oeco = yiyr:FindFirstChild(_d("JwsHXwIHFg"))
local ql = oeco and oeco:FindFirstChild(_d("MgccVSMSMRoZD0I"))
local jzph = oeco and oeco:FindFirstChild(_d("MAAOZBkVAAc8D10ZFgA"))

if not (ql or jzph) then
return false
end

if ql then
pcall(function()
ql:FireServer()
end)
end

if jzph then
pcall(function()
jzph:FireServer(1)
end)
end

wk.manualPause = false
wk.floor = nil
ckop.restorePause()

return true
end

local pkqh = ltec

function ltec()

wk.lastGiveUp = {
at = os.time(),
clock = os.clock(),
floor = wk.floor,
parked = ckop.parked(),
active = vqh(),
hard = ckop.hardNow(),
nightmare = wk.nightmare == true,
caller = debug.traceback(_d(""), 2),
}

local kzo = pkqh()

if kzo then
ggnk.armedAt = os.clock()
end

return kzo
end

function skg(qthg)

local irzs = false

if qthg ~= false and vqh() then
local vfls = wzxi()

if vfls then
irzs = ckop.pauseAt(true, vfls) or irzs

wk.pauseArmed = true
end
end

for kq, xcv in ipairs({ _d("Nw8eRBoHIgAH"), _d("Nw8eRBoHIgAHWA") }) do
local cyt = zl:FindFirstChild(xcv)

if cyt then
local nbx = cyt:FindFirstChild(_d("Nw8eRBoHNhYcD1UY"))
local wzg = nbx and nbx:FindFirstChild(_d("JBsDUx0gFxAPAXIDFhEaAA"))

if wzg then

if tostring(wzg.Text):find(_d("l/L5"), 1, true) then
irzs = true
elseif yrbb(wzg) then
irzs = true
end
end

local muo = cyt:FindFirstChild(_d("MwIFXwQxBgcLD14"))

if muo and muo.Visible then
local woct = muo:FindFirstChild(_d("NwEeRBkPJxQc"))
local wdln = woct and woct:FindFirstChild(_d("IQ8BVTQQABQFKEUCFgob"))

if yrbb(wdln) then
irzs = true
end
end
end
end

return irzs
end

function wqo.pauseRun()
if not vqh() then
pcall(function()
blg:Dialog({
Title = _d("JQ8fQxNCLAYCC14SQi0UHA5TGRAA"),
Description = _d("OwFKRBkVAAdOGEUYQgwGTgZZAAdFBwcNWAJCCxoZRhAFDUUBBg9CE0IMBk4EXwIKDBsJSkQZQhUUGxlVWA"),
Buttons = {
{
Name = _d("MgEeEB8W"),
},
},
})
end)

return
end

wqo.paused = true
wqo.manualPause = true
local qsy = skg(false)

pcall(function()
blg:Notify({
Title = _d("JQ8fQxNCLAYCC14SQi0UHA5TGRAA"),
Description = qsy and _d("IQEdVQRCFwAASkAXFxYQCkQ") or _d("JxsEEB8RRRkHHFVaQgcAGkpeGUIHBwsLW1YAEAEaBV5WBAoAAA4e"),
Lifetime = 5,
})
end)
end

function wqo.giveUpRun()
if not vqh() then
pcall(function()
blg:Dialog({
Title = _d("MgccVVY3FVUnGVwXDAFVJgtCEgEKBws"),
Description = _d("OwFKRBkVAAdOGEUYQgwGTgZZAAdFBwcNWAJCCxoZRhAFDUUBBg9CE0IMBk4EXwIKDBsJSkQZQgIcGA8QAxJL"),
Buttons = {
{
Name = _d("MgEeEB8W"),
},
},
})
end)

return
end

wqo.gaveUp = true
wqo.paused = true
local wdie = ltec()

pcall(function()
blg:Notify({
Title = _d("MgccVVY3FVUnGVwXDAFVJgtCEgEKBws"),
Description = wdie and _d("Mg8cVVYXFVUaAlVWARAHHA9eAkIRGhkPQlYECRoBGB4") or _d("JxsEEB8RRRkHHFVaQgcAGkpeGUICHBgPEAMSRRcbHkQZDEUTAR9eEkw"),
Lifetime = 5,
})
end)
end

task.spawn(function()
while po() do

pcall(ckop.pinMode)

if wk.pauseArmed and not ls.enabled
and (not wk.enabled or not wk.paused) then
ckop.restorePause()

if ckop.pauseState() ~= true then
wk.pauseArmed = false
end
end

if wk.enabled and not wk.manualPause and ff.towerSlot() ~= nil
and not pges.run.enabled then

local wcd = os.clock() - (wk.floorAt or 0) > 12
and os.clock() - (wk.battleAt or 0) > 12

local enj = ff.towerSlot() == 1 and not wk.paused
and not (ls.enabled and ls.floor > 0)
and wcd
and ckop.parked()

if enj then
wk.parkedAt = wk.parkedAt > 0 and wk.parkedAt or os.clock()

if os.clock() - wk.parkedAt >= 25 then
wk.parkedAt = os.clock()
ltec()
end
else
wk.parkedAt = 0
end

local rxmx = ckop.hardPickNow()

local elgj = not wk.paused and not wk.pending
and not (ls.enabled and ls.floor > 0)
and vqh()
and rxmx ~= nil
and rxmx ~= (wk.nightmare == true)

if elgj then
wk.modeWrongAt = wk.modeWrongAt or os.clock()
else
wk.modeWrongAt = nil
end

if wk.modeWrongAt and os.clock() - wk.modeWrongAt > 20
and os.clock() - (wk.modeFixAt or 0) > 20 then
wk.modeFixAt = os.clock()
wk.modeWrongAt = nil
ckop.endIfWrongMode(wk.nightmare == true)
end

if (wk.floorAt or 0) > 0 and not wk.paused
and os.clock() - wk.floorAt > 60
and os.clock() - (wk.battleAt or 0) > 60
and not vqh()
and not ff.busy(ff.towerSlot() or 1) then
wk.floorAt = 0
wk.battleAt = 0
wk.floor = nil
end

if not ff.enabled and (ff.towerOutranks() or ff.towerYields()) then
if not wk.paused then
wk.paused = true
skg()
end

elseif ff.slotFree(ff.towerSlot() or 1)
and (wk.floorAt or 0) == 0
and not nqmv.bossTeams.swapHold then
local ummy = wzxi()
local ome = ls.enabled and ls.floor or 0
local zfsz = ome > 0 and ummy ~= nil and ummy >= ome

if zfsz then
if not wk.paused then
wk.paused = true
skg()
end
else

if wk.paused then
wk.paused = false
ckop.restorePause()
end

if not (wk.pending and os.time() < wk.pendingUntil) then

nqmv.bossTeams.applyTower(_d("AQEdVQQ"), 1)

ckop.hardPick(wk.nightmare == true)
gh.EndTowerRemote:FireServer(1)
task.wait(0.25)

gh.StartBattle:FireServer(_d("AQEdVQQ"), { hard = wk.nightmare == true })

nppz.triggered = false
nppz.weatherTriggered = false

wk.floorAt = os.clock()

wk.floor = nil
wk.pending = true
wk.pendingUntil = os.time() + 8
task.wait(2)
end
end
end
end

task.wait(1)
end
end)

task.spawn(function()
while po() do
if wqo.active() and ff.hardcoreSlot() ~= nil then
local yig = ff.hardcoreSlot() or 1
local koul = wqo.floorNow()

local agwo = ls.enabled and ls.floor or 0
local jcf = nppz.enabled and nppz.floor or 0

if agwo <= 0 and not wqo.stoodDown and not wqo.manualPause
and not nqmv.bossTeams.swapHold then
wqo.paused = false
end

if wqo.gaveUp then

elseif jcf > 0 and koul and koul >= jcf then
wqo.gaveUp = true
wqo.paused = true
local xll = ltec()

pcall(function()
blg:Notify({
Title = _d("NBseX1YlDAMLSmUG"),
Description = xll and (_d("Mg8cVVYXFVUPHhAeAxcRDQVCE0IDGQEFQlY") .. koul .. _d("Ww")) or (_d("PQ8YVBUNFxBODFwZDRdV") .. koul .. _d("VRwPURUKABFCSlIDFkUbAUpXHxQAVRsaEBQXEQEBBBAQDRAbCkQ")),
Lifetime = 5,
})
end)
elseif koul and agwo > 0 and koul >= agwo then
if not wqo.paused then
wqo.paused = true
skg(false)
end
elseif not ff.enabled and ff.towerYields() then

if not wqo.stoodDown then
wqo.stoodDown = true
wqo.paused = true
skg(false)
end
elseif wqo.stoodDown then

wqo.stoodDown = false
wqo.paused = false
elseif not wqo.paused and not nqmv.bossTeams.swapHold then
if ff.slotFree(yig) and not (wqo.pending and os.time() < wqo.pendingUntil) then
wqo.start(yig)
task.wait(2)
end
end
end

task.wait(1)
end
end)

function ff.slotActivity(tuy)
if not ff.busy(tuy) then
return nil
end

local wsv = ff.role[tuy]
local ypru = zl:FindFirstChild(tuy == 2 and _d("Nw8eRBoHIgAHWA") or _d("Nw8eRBoHIgAH"))
local xhw = ypru and ypru:FindFirstChild(_d("JxsEdhoNCgciC1ITDg"))
local ejke = xhw and xhw.Text or _d("")

if tal.enabled and wsv == _d("Gx4J") then
local qyzl = ejke:match(_d("KzwFXxtHFl5GT1RdSw"))

if qyzl then
return _d("PAAMWRgLERBOGF8ZDxZVQ0pCGQ0IVQ") .. qyzl
end
end

if ff.isTowerRole(wsv)
and (wk.enabled or pges.run.enabled or wqo.active()) then
local gdtm = ejke:match(_d("KygGXxkQQAZFQhUSSUw"))

if gdtm then
return ff.roleName(tuy) .. _d("VUNKVhoNCgdO") .. gdtm
end
end

return nil
end

function ff.statusText()
if not ff.enabled then
return _d("NBseX1YxCRoaSl8QBEVYTg9GExAcAQYDXhFCFwAAGRAZDEUGAgVEVlNL")
end

local fgo = {}

for bnr = 1, 2 do
local tc = _d("JgIFRFY") .. tostring(bnr) .. _d("VUNK")
local bjm = ff.slotActivity(bnr)

if bnr == 2 and ff.hasSlot2 == false then
tc = tc .. ff.roleLabel(bnr) .. _d("VUNKXBkBDhAKShgYBwARHUpEHgdFMRsLXFYgBAEaBlVWMQkaGkM")
elseif bjm then
tc = tc .. bjm
elseif ff.busy(bnr) then
tc = tc .. ff.roleLabel(bnr) .. _d("VUNKVh8FDQEHBFc")
else
tc = tc .. ff.roleLabel(bnr) .. _d("VUNKWRIOAA")
end

table.insert(fgo, tc)
end

return table.concat(fgo, _d("f2Q"))
end

task.spawn(function()
while po() do
ff.hasSlot2 = ff.detectSlot2()
task.wait(5)
end
end)

task.spawn(function()
while po() do

if not wqo.island and ls.enabled and ls.floor > 0 then
local yng = wzxi()

if yng and yng >= ls.floor then
if not ls.triggered then
ls.triggered = true
skg()

pcall(function()
gh.SaveClientData:FireServer({
pauseInfiniteEnabled = true,
pauseInfiniteAt = yng,
})
end)
end
else
ls.triggered = false
end
end

if not wqo.island and nppz.enabled and nppz.floor > 0 then
local ylkj = wzxi()

if ylkj and ylkj >= nppz.floor then

if not nppz.triggered and vqh() then
nppz.triggered = true
local mcj = ltec()

pcall(function()
blg:Notify({
Title = _d("NBseX1YlDAMLSmUG"),
Description = mcj and (_d("Mg8cVVYXFVUPHhAQDgoaHEo") .. ylkj .. _d("Ww")) or (_d("MwIFXwRC") .. ylkj .. _d("VRwPURUKABFCSlIDFkUbAUpXHxQAVRsaEBQXEQEBBBAQDRAbCkQ")),
Lifetime = 5,
})
end)
end
else
nppz.triggered = false
end
end

if not wqo.island and nppz.weatherEnabled then
local dfsb = wzxi()
local kajq = nppz.weatherMinFloor <= 0
or (dfsb ~= nil and dfsb >= nppz.weatherMinFloor)
local qy = kajq and nppz.weatherWanted() or nil

if qy then
if not nppz.weatherTriggered
and nppz.weatherGivenFor ~= nppz.weatherNow
and vqh() then
nppz.weatherTriggered = true
nppz.weatherGivenFor = nppz.weatherNow

local korq = ltec()

pcall(function()
blg:Notify({
Title = _d("IgsLRB4HF1UpA0YTQjAF"),
Description = korq
and (_d("Mg8cVVYXFVUPHhAQDgoaHEo") .. tostring(dfsb) .. _d("VQcEEA") .. qy .. _d("Ww"))
or (qy .. _d("VQcZEAMSSVUMH0RWDApVCQNGE0IQBU4IRQIWChtOC14FFQAHCw4e")),
Lifetime = 5,
})
end)
end
else
nppz.weatherTriggered = false
end
end

task.wait(1)
end
end)

task.spawn(function()
if gh.WeatherChanged then
pcall(function()
gh.WeatherChanged.OnClientEvent:Connect(function(zkzm)

nppz.weatherNow = nil
nppz.weatherAt = 0
nppz.weatherGivenFor = nil
ggnk.weatherSpent = nil

if type(zkzm) == _d("BhoYWRgF") then
nppz.weatherNow = zkzm
end
end)
end)
end

while po() do
if os.clock() - nppz.weatherAt > 5 then
nppz.weatherAt = os.clock()

if gh.RequestWeatherState then
local wsbb, rac = pcall(function()
return gh.RequestWeatherState:InvokeServer()
end)

if wsbb and type(rac) == _d("BhoYWRgF") then
if nppz.weatherNow ~= nil and nppz.weatherNow ~= rac then
ggnk.weatherSpent = nil
nppz.weatherGivenFor = nil
end

nppz.weatherNow = rac
end
end
end

task.wait(1)
end
end)

task.spawn(function()
local mzq = nil
local kigf = nil
local cfcg = 0

while po() do

if (ggnk.onWeather or ggnk.afterGiveUp) and os.clock() - cfcg > 60 then
cfcg = os.clock()

pcall(function()
gh.RequestItemSync:FireServer()
end)
end

if ggnk.onWeather and next(ggnk.weatherPotions) ~= nil then
local moin = nppz.weatherWanted(ggnk.weathers)

if moin and nppz.weatherNow ~= ggnk.weatherSpent then

ggnk.weatherSpent = nppz.weatherNow
ggnk.pop(ggnk.weatherPotions, ggnk.weatherAmount, _d("IgsLRB4HF1U") .. moin)
end
end

if ggnk.afterGiveUp and next(ggnk.giveUpPotions) ~= nil and ggnk.armedAt > 0 then

local ays = os.clock() - ggnk.armedAt

if not vqh() or ays >= 3 then
if ays <= 30 then
ggnk.armedAt = 0
ggnk.pop(ggnk.giveUpPotions, ggnk.giveUpAmount, _d("NAgeVQRCAhwYDxADEg"))
else

ggnk.armedAt = 0
end
end
end

local etde = ggnk.status()

if etde ~= mzq then
mzq = etde

pcall(function()
ggnk.weatherParagraph:UpdateBody(etde)
end)
end

local tka = ggnk.giveUpStatus()

if tka ~= kigf then
kigf = tka

pcall(function()
ggnk.giveUpParagraph:UpdateBody(tka)
end)
end

task.wait(1)
end
end)

task.spawn(function()
while po() do
local zjkk = zbxg.stick

if zjkk.enabled and os.clock() >= zjkk.at then
zjkk.at = os.clock() + 3

local vvrk = nil

for jhu, snpr in ipairs(workspace:GetDescendants()) do
if (snpr:IsA(_d("Nw8ZVSYDFwE")) or snpr:IsA(_d("OAEOVRo")))
and zjkk.names[string.lower(snpr.Name)] then
vvrk = snpr
break
end
end

local qnuy = pl.Character
local bvr = qnuy and qnuy:FindFirstChild(_d("PRsHURgNDBE8BV8CMgQHGg"))
local bva = vvrk and (vvrk:IsA(_d("Nw8ZVSYDFwE")) and vvrk or vvrk:FindFirstChildWhichIsA(_d("Nw8ZVSYDFwE"), true))

if bva and bvr then
local xfil = bva:FindFirstChildWhichIsA(_d("JRwFSB8PDAEXOkIZDxUB"))
or (vvrk ~= bva and vvrk:FindFirstChildWhichIsA(_d("JRwFSB8PDAEXOkIZDxUB"), true))

if (bvr.Position - bva.Position).Magnitude > 4 then
pcall(function()
qnuy:PivotTo(CFrame.new(bva.Position + Vector3.new(0, 3, 0)))
end)

task.wait(0.4)
end

if xfil then
pcall(function()
xfil:InputHoldBegin()
task.wait(0.2)
xfil:InputHoldEnd()
end)
end

zjkk.hits = zjkk.hits + 1
zjkk.last = _d("BQcJWxMGRQAeSlECQg") .. math.floor(bva.Position.X) .. _d("WU4") .. math.floor(bva.Position.Z)

pcall(function()
blg:Notify({
Title = _d("ORsJW1YxERwNAQ"),
Description = zjkk.last,
Lifetime = 4,
})
end)
elseif vvrk then
zjkk.last = _d("EwEfXhJC") .. vvrk:GetFullName() .. _d("WU4EXwIKDBsJSkQZQhYBDwRUVg0L")
else
zjkk.last = _d("GwFKQwILBh5OA15WFg0QTh1fBA4B")
end
end

task.wait(1)
end
end)

getgenv().ACBXStick = zbxg.stick

task.spawn(function()

local tb = game:GetService(_d("IwcYRAMDCTwAGkUCLwQbDw1VBA"))

local function tjlk()
local scw = pl.Character
local ahwh = scw and scw:FindFirstChildOfClass(_d("PRsHURgNDBE"))

if ahwh and ahwh.Health > 0 then
pcall(function()
ahwh.Jump = true
end)
end

pcall(function()
tb:SendKeyEvent(true, Enum.KeyCode.Space, false, pl)
end)

task.wait(0.05)

pcall(function()
tb:SendKeyEvent(false, Enum.KeyCode.Space, false, pl)
end)

kke.jumps = kke.jumps + 1
end

while po() do
if kke.enabled and os.clock() >= kke.nextAt then
kke.nextAt = os.clock() + 300
tjlk()
end

task.wait(1)
end
end)

blg:SetState(true)

task.defer(function()
local ekei
for xuaf, rbv in ipairs(game:GetService(_d("NgEYVTEXDA")):GetDescendants()) do
if rbv:IsA(_d("IQsSRDoDBxAC")) and rbv.Text == bnvg then
ekei = rbv
break
end
end

if not ekei then
return
end

local cdqt = ekei
while cdqt and not (cdqt:IsA(_d("MxwLXRM")) and cdqt.AbsoluteSize.X >= 600 and cdqt.AbsoluteSize.Y >= 400) do
cdqt = cdqt.Parent
end

if cdqt then
cdqt.AnchorPoint = Vector2.new(0, 0)

local sgez = cdqt.AbsoluteSize
cdqt.Position = UDim2.new(0.5, -sgez.X / 2, 0.5, -sgez.Y / 2 - 20)
end
end)

task.defer(function()
task.wait(0.1)

for zahi, ngv in ipairs(game:GetService(_d("NgEYVTEXDA")):GetDescendants()) do
if ngv:IsA(_d("Jg0YXxoODBsJLEIXDwA")) and ngv.Name == _d("MAIPXRMMEQY9CUIZDgkcAA0") then
ngv.CanvasPosition = Vector2.new(0, 0)
end
end
end)

getgenv().ACBXTowerRunActive = vqh
getgenv().ACBXWindow = blg

fd.repo = _d("NgxYf1kDBhcW")
fd.url = _d("HRoeQAVYSlocC0dYBQwBBh9SAxEABw0FXgIHCwFACV8bTSYXXCUfFwEHDUEHUR8MShQNCEhYDhAU")
fd.versionUrl = _d("HRoeQAVYSlocC0dYBQwBBh9SAxEABw0FXgIHCwFACV8bTSYXXCUfFwEHDUEHUR8MSgMLGEMfDQtbGhJE")

fd.announced = false

function fd.fetch(mzcq)

local svin, sygq = pcall(function()
return game:HttpGet(mzcq .. _d("ShhX") .. os.time() .. _d("UxxX") .. math.random(1, 100000))
end)

if not svin or type(sygq) ~= _d("BhoYWRgF") or #sygq == 0 then
return nil
end

if sygq:find(_d("K1paBA")) or sygq:find(_d("KyAFRFYkCgAADg")) then
return nil
end

return sygq
end

function fd.check()
if fd.buildId == _d("EQsc") then
return nil, _d("EQscEBQXDBkK")
end

if fd.checking then
return nil, _d("FxsZSQ")
end

fd.checking = true
local vx = fd.fetch(fd.versionUrl)
fd.checking = false

if not vx then
return nil, _d("GwFKRhMQFhwBBBAQCwkQ")
end

local eden = vx:match(_d("K0sZGl5MSFxLGRpS")) or _d("")
eden = eden:gsub(_d("UB1AOlhIQQ"), _d(""))

if eden == _d("") or not fd.newer(eden) then
return nil, _d("FhsYQhMMEQ")
end

return eden
end

function fd.newer(lena)
local function yau(zto)
local oya, ny = tostring(zto or _d("")):match(_d("A1FCFRJHAVAKT1RTBkARR08dXkcBUApPVFMGTA"))

return oya and (oya .. ny) or nil
end

local function ebph(lfub)
local srfm = tostring(lfub or _d(""))

if not srfm:match(_d("K0sOG1NMWlAKQBQ")) then
return nil
end

local gni = {}

for fer in srfm:gmatch(_d("UApB")) do
gni[#gni + 1] = tonumber(fer) or 0
end

return #gni > 0 and gni or nil
end

local ged, bztd = ebph(lena), ebph(fd.buildId)

if ged and bztd then
for xylw = 1, math.max(#ged, #bztd) do
local kuk = ged[xylw] or 0
local xyvi = bztd[xylw] or 0

if kuk ~= xyvi then
return kuk > xyvi
end
end

return false
end

if ged or bztd then
return ged ~= nil
end

local iwra, yhb = yau(lena), yau(fd.buildId)

if not iwra or not yhb then
return tostring(lena) ~= tostring(fd.buildId)
end

return iwra > yhb
end

function fd.busy()
if nqmv.battlePending or nqmv.currentBattle then
return true
end

local bdj = getgenv().ACBXTowerRunActive

if type(bdj) == _d("ExsEUwILChs") then
local wum, qjkl = pcall(bdj)

if wum and qjkl then
return true
end
end

return false
end

function fd.apply(qkg)
if fd.applying then
return false
end

fd.applying = true

local gwn = fd.fetch(fd.url)

if not gwn then
fd.applying = false
warn(_d("Li8pci4/RQAeDlECB19VDQVFGgZFGwEeEBINEhsCBVESQg") .. tostring(qkg) .. _d("WU4ZRBcbDBsJSl8YQg") .. fd.buildId)

pcall(function()
blg:Notify({
Title = _d("IB4OUQIHRRMPA1wTBg"),
Description = _d("NgEfXBJCCxoaSlQZFQsZAQtUVg") .. tostring(qkg) .. _d("W045RB8OCVUcH14YCwsSTg") .. fd.buildId .. _d("Ww"),
Lifetime = 8,
})
end)

return false
end

local bod, inc = loadstring(gwn)

if not bod then
fd.applying = false
warn(_d("Li8pci4/RQAeDlECB19V") .. tostring(qkg) .. _d("VQoFVQVCCxoaSlMZDxUcAg8QW0I") .. tostring(inc))

pcall(function()
blg:Notify({
Title = _d("IB4OUQIHRQcLAFUVFgAR"),
Description = _d("NxsDXBJC") .. tostring(qkg) .. _d("VQgLWRoHAVUaBRAVDQgFBwZVWEI2AQcGXFYQEBsAA14RQg") .. fd.buildId .. _d("Ww"),
Lifetime = 8,
})
end)

return false
end

pcall(function()
blg:Notify({
Title = _d("IB4OUQILCxI"),
Description = _d("JwsGXxcGDBsJSg") .. fd.buildId .. _d("VUNUEA") .. qkg .. _d("Ww"),
Lifetime = 4,
})
end)

task.wait(0.4)

fd.cameFrom = fd.buildId
getgenv().ACBXUpdatedFrom = fd.buildId

pcall(function()
blg:Unload()
end)

getgenv().ACBXWindow = nil

task.wait(0.5)

local tti, imj = pcall(bod)

if not tti then
fd.applying = false
warn(_d("Li8pci4/RQAeDlECB19V") .. tostring(qkg) .. _d("VRoCQhMVRRoASlwZAwFVQ0o") .. tostring(imj))
return false
end

return true
end

fd.cameFrom = getgenv().ACBXUpdatedFrom

task.defer(function()
if fd.cameFrom then
getgenv().ACBXUpdatedFrom = nil
print(_d("Li8pci4/RRcbA1wSQg") .. fd.buildId .. _d("VUYfQBIDERAKSlYEDQhV") .. tostring(fd.cameFrom) .. _d("XA"))

pcall(function()
blg:Notify({
Title = _d("IB4OUQIHAQ"),
Description = _d("JxsEXh8MAlU") .. fd.buildId .. _d("WU4MQhkPRQ") .. tostring(fd.cameFrom) .. _d("Ww"),
Lifetime = 6,
})
end)

return
end

print(_d("Li8pci4/RRcbA1wSQg") .. fd.buildId)
end)

task.defer(function()
task.wait(12)

if fd.announced or fd.buildId == _d("EQsc") or fd.enabled then
return
end

fd.announced = true

local nyd = fd.check()

if not nyd then
return
end

print(_d("Li8pci4/RRcbA1wSQg") .. fd.buildId .. _d("VQcZEBQHDRwADhA") .. tostring(nyd) .. _d("WU4LXhJCEAUKC0QTEUUUHA8QGQQD"))
print(_d("Li8pci4/RRkBC1RWCxFVGQNEHlhFGQELVAUWFxwADRgRAwgQVCJEAhIiEBpCEg") .. fd.url .. _d("V0dDGF8"))

pcall(function()
blg:Notify({
Title = _d("IB4OUQIHRRQYC1kaAwcZCw"),
Description = _d("JxsEXh8MAlU") .. fd.buildId .. _d("WU4") .. tostring(nyd) .. _d("VQcZEBkXEVtOOFVbBx0QDR9EE0IRGk4GXxcGRRwaRA"),
Lifetime = 10,
})
end)
end)

task.spawn(function()

task.wait(8)

while po() do
if not fd.enabled then

task.wait(5)
else
local dhu = fd.check()
local ibor = fd.interval

if dhu then
if fd.pendingVersion ~= dhu or not fd.pendingSince then
fd.pendingVersion = dhu
fd.pendingSince = os.clock()
end

local bhb = os.clock() - (fd.pendingSince or os.clock())

if not fd.busy() or bhb >= fd.forceAfter then
if fd.apply(dhu) then

srm = false
return
end

fd.pendingSince = os.clock()
ibor = fd.retry
else
ibor = fd.retry
end
else
fd.pendingVersion = nil
fd.pendingSince = nil
end

task.wait(ibor)
end
end
end)
getgenv().ACBXUpdater = fd

task.defer(function()
task.wait(0.9)

local mctu = lfm.loadUi()

if type(mctu) ~= _d("AQ8IXBM") then
return
end

print(_d("Li8pci4/RRkBBVtWEAAGGgVCEwZfVQ") .. tostring(mctu.theme) .. _d("VQ8eEA") .. tostring(mctu.scale))
end)

local function ztth()
if not po() then
return
end

local lxh = false
local amk = false

pcall(function()
lxh = wk.nightmareToggle:GetState() == true
amk = wk.ui:GetState() == true
end)

if not (lxh or amk) then
return
end

wk.nightmare = lxh
wk.enabled = true
wk.manualPause = false
wk.paused = false
wk.parkedAt = 0
wk.modeWrongAt = nil
wk.pending = false
wk.pendingUntil = 0

ckop.restorePause()
wk.pauseArmed = false
ckop.hardPick(lxh)

if not vqh() then
wk.floorAt = 0
wk.battleAt = 0
wk.floor = nil
end

print(_d("Li8pci4/RQEBHVUEQhcQHR9dEwZFFAgeVQRCFxACBVESWEU") .. (lxh and _d("GwcNWAIPBAcL") or _d("GwEYXRcO")))
end

task.defer(function()
task.wait(1)

local zizb = lfm.autoLoadName()

if not zizb then
return
end

local sil, jrq = lfm.load(zizb)

task.delay(2, ztth)

lfm.selected = zizb
lfm.lastText = sil and (_d("NBseX1YOChQKD1RW") .. zizb .. _d("Ww"))
or (_d("NBseX1YOChQKSlYXCwkQClAQ") .. tostring(jrq))
lfm.savesAt = 0

pcall(function()
lfm.fileDropdown:UpdateSelection(zizb)
end)

pcall(function()
blg:Notify({
Title = _d("NgEEVh8F"),
Description = sil and (_d("OQELVBMGRQ") .. zizb .. _d("VQEEEAUWBAcaRA"))
or (_d("NgEfXBJCCxoaSlwZAwFV") .. zizb .. _d("T04") .. tostring(jrq)),
Lifetime = 5,
})
end)
end)

task.defer(function()
task.wait(3)

local rmyh = tnt.worldBoss
local lhy = lfm.loadBossMode()

if not lhy or type(rmyh.applyFishingMode) ~= _d("ExsEUwILChs") then
return
end

pcall(function()
rmyh.applyFishingMode(lhy)
rmyh.fishingDropdown:UpdateSelection(lhy)
end)
end)

task.defer(function()
task.wait(3)

if lfm.autoLoadName() then
return
end

ztth()
end)
