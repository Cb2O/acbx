local _d = (function()
local A = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
local M = {}
local cache = {}
for i = 1, #A do
M[string.sub(A, i, i)] = i - 1
end
local K = string.char(112, 111, 49, 101, 120, 108, 100)
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

local hrt = "ACB Rebirth v1.03"

local function jaqm(khpz)
for atv, nvc in ipairs(khpz:GetDescendants()) do
if nvc:IsA(_d("JApJETQNBhUD")) and nvc.Text == hrt then
local kyt = nvc
while kyt and not kyt:IsA(_d("IwxDAB0CIwUG")) do
kyt = kyt.Parent
end
return kyt
end
end
end

local function zbn()
local wav = game:GetService(_d("IANQHB0eFw")).LocalPlayer

for xquf, vnt in ipairs({
(gethui and gethui() or game:GetService(_d("MwBDAD8ZDQ"))),
game:GetService(_d("MwBDAD8ZDQ")),
wav and wav:FindFirstChild(_d("IANQHB0eIwUG")),
}) do
for jo, ovfb in ipairs(vnt:GetChildren()) do

if ovfb:IsA(_d("IwxDAB0CIwUG")) then
local ygch = ovfb:FindFirstChild(_d("Mg5CAA"))

if ygch and ygch:FindFirstChild(_d("IwZVABoNFg")) and ygch:FindFirstChild(_d("MwBfER0CEA")) then
return ovfb
end
end
end
end
end

if zbn() and getgenv().ACBXAllowReload ~= true then
local kpdr = getgenv().ACBXWindow
local bls = false
local gbc = false

if kpdr and kpdr.Dialog then
pcall(function()
if kpdr.GetState and kpdr:GetState() == false then
kpdr:SetState(true)
end

kpdr:Dialog({
Title = _d("MSxzRSoJBhkdRQ1YBRdQDl0XHQ0ACU9DEBYCDR4I"),
Description = _d("MU9SCggVRBkcEQQUHgERC0hFFAMFFApVRRECRAQHWBZYHwEDHFgKFkJEIgpBCRkPAVAGRUUPBRAYT0UNER9EHwFUWlg4DBVPQxAWAg0eCBEGFxwdUBxFCggfRBYGQxYMQEQDABEKFgAdUABfAFgJEhUdEQEKBRIVHBEREAlEEQxSCg0CEF4"),
Buttons = {
{
Name = _d("IgpBCRkPAQ"),
Callback = function()
gbc = true
bls = true
end,
},
{
Name = _d("OwpUFQ"),
Callback = function()
bls = true
end,
},
},
})
end)
else

gbc = true
bls = true
end

local xvi = os.clock() + 90

while not bls and os.clock() < xvi do
task.wait(0.25)
end

if not gbc then
warn(_d("Ky5yJyAxRBwAUAFYHgEWGkIAHExJUBtZAFgPCwAWEREQDRBQBkJFChkKHgZfAlgfEBEWQktYLwgZDFpFKgkUHA5SAFgYC1AcRgQITA0EQxEKCkwRAwoRMBYACxELERYbHg0AGxEMFkwNBBwRNh0YEBkBVhZYGAUSQQ"))

return
end

warn(_d("Ky5yJyAxRAIKQQkZDw0eCBEREAlEAhpfCxECA1AMXhUBTBMZG1lFDAQNA09eCx1C"))
end

getgenv().ACBXAllowReload = nil

local frq = getgenv().ACBXConnections
if type(frq) == _d("BA5TCR0") then
for baq, neu in ipairs(frq) do
pcall(function()
neu:Disconnect()
end)
end
end

local ri = {}
getgenv().ACBXConnections = ri

local function bwkv(mf, zgy)
local ests = mf:Connect(zgy)

table.insert(ri, ests)

return ests
end

local olk = getgenv().ACBXWindow
if olk then
pcall(function()
olk:Unload()
end)
end

for gx, lbv in ipairs({
game:GetService(_d("MwBDAD8ZDQ")),
game:GetService(_d("IANQHB0eFw")).LocalPlayer:FindFirstChild(_d("IANQHB0eIwUG")),
}) do
if lbv then
local kg = jaqm(lbv)
if kg then
kg:Destroy()
end
end
end

local wdzf = game:GetService(_d("IANQHB0eFw"))
local bzz = game:GetService(_d("IgpBCREPBQQKVTYMAxYRCFQ"))
local qonx = game:GetService(_d("IA5FDR4FChQGXwIrCRYGBlIA"))
local ek = game:GetService(_d("IhpfNh0eEhkMVA"))
local pl = wdzf.LocalPlayer
local kdoz = pl:WaitForChild(_d("IANQHB0eIwUG"))

local lsz = false

local function jnpx()
pcall(function()
local wsq = game:GetService(_d("JBhUABY/AQIZWAYd"))
local xukh = (gethui and gethui()) or kdoz
local yq = Color3.fromRGB(77, 166, 255)
local nxax = pl.DisplayName

local function hru(niai, xmxr, haa)
wsq:Create(
niai,
TweenInfo.new(xmxr, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
haa
):Play()
task.wait(xmxr)
end

local dagf = Instance.new(_d("IwxDAB0CIwUG"))
dagf.Name = _d("MSxzPTECEAIA")
dagf.IgnoreGuiInset = true
dagf.DisplayOrder = 1000000
dagf.ResetOnSpawn = false
dagf.Parent = xukh

local xm = Instance.new(_d("Nh1QCB0"))
xm.Size = UDim2.fromScale(1, 1)
xm.BackgroundColor3 = Color3.fromRGB(4, 6, 11)
xm.BackgroundTransparency = 1
xm.BorderSizePixel = 0
xm.Parent = dagf

local yfu = Instance.new(_d("Nh1QCB0"))
yfu.AnchorPoint = Vector2.new(0.5, 0.5)
yfu.Position = UDim2.fromScale(0.5, 0.5)
yfu.Size = UDim2.fromOffset(400, 176)
yfu.BackgroundColor3 = Color3.fromRGB(11, 16, 26)
yfu.BackgroundTransparency = 1
yfu.BorderSizePixel = 0
yfu.Parent = dagf

local amjn = Instance.new(_d("JSZyCgoCAQI"))
amjn.CornerRadius = UDim.new(0, 14)
amjn.Parent = yfu

local au = Instance.new(_d("JSZiEQoDDxU"))
au.Color = Color3.fromRGB(46, 60, 86)
au.Thickness = 1
au.Transparency = 1
au.Parent = yfu

local ribk = Instance.new(_d("Nh1QCB0"))
ribk.Size = UDim2.fromOffset(44, 2)
ribk.Position = UDim2.new(0.5, -22, 0, 34)
ribk.BackgroundColor3 = yq
ribk.BorderSizePixel = 0
ribk.BackgroundTransparency = 1
ribk.Parent = yfu

local ua = Instance.new(_d("JApJETQNBhUD"))
ua.BackgroundTransparency = 1
ua.Size = UDim2.new(1, -48, 0, 48)
ua.Position = UDim2.fromOffset(24, 42)
ua.Font = Enum.Font.GothamBold
ua.Text = _d("My0RLS0u")
ua.TextSize = 28
ua.TextYAlignment = Enum.TextYAlignment.Center
ua.TextColor3 = Color3.fromRGB(236, 242, 255)
ua.TextTransparency = 1
ua.Parent = yfu

local hw = Instance.new(_d("JApJETQNBhUD"))
hw.BackgroundTransparency = 1
hw.Size = UDim2.new(1, -48, 0, 20)
hw.Position = UDim2.fromOffset(24, 94)
hw.Font = Enum.Font.Gotham
hw.Text = _d("HABQARECAw")
hw.TextSize = 14
hw.TextColor3 = Color3.fromRGB(150, 163, 186)
hw.TextTransparency = 1
hw.Parent = yfu

local inl = Instance.new(_d("Nh1QCB0"))
inl.Size = UDim2.fromOffset(240, 3)
inl.Position = UDim2.new(0.5, -120, 0, 130)
inl.BackgroundColor3 = Color3.fromRGB(34, 44, 64)
inl.BorderSizePixel = 0
inl.BackgroundTransparency = 1
inl.Parent = yfu

local ewb = Instance.new(_d("Nh1QCB0"))
ewb.Size = UDim2.fromScale(0, 1)
ewb.BackgroundColor3 = yq
ewb.BorderSizePixel = 0
ewb.BackgroundTransparency = 1
ewb.Parent = inl

local uv = Instance.new(_d("JSZyCgoCAQI"))
uv.CornerRadius = UDim.new(0, 4)
uv.Parent = inl

local jzd = Instance.new(_d("JSZyCgoCAQI"))
jzd.CornerRadius = UDim.new(0, 4)
jzd.Parent = ewb

hru(xm, 0.35, { BackgroundTransparency = 0.15 })
task.spawn(function()
hru(yfu, 0.3, { BackgroundTransparency = 0 })
end)
task.spawn(function()
hru(au, 0.3, { Transparency = 0 })
end)
hru(ua, 0.3, { TextTransparency = 0 })
hru(ribk, 0.3, { BackgroundTransparency = 0 })
hru(hw, 0.3, { TextTransparency = 0 })
hru(inl, 0.3, { BackgroundTransparency = 0 })
hru(ewb, 0.3, { BackgroundTransparency = 0 })

local gt = { _d("HABQARECAw"), _d("HABQARECA14"), _d("HABQARECA15B"), _d("HABQARECA15BHw") }
task.spawn(function()
wsq:Create(ewb, TweenInfo.new(1.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
Size = UDim2.fromScale(1, 1),
}):Play()
for fao = 1, 6 do
hw.Text = gt[(fao - 1) % #gt + 1]
task.wait(0.2)
end
end)
task.wait(1.2)

hru(ua, 0.2, { TextTransparency = 1 })
hru(hw, 0.2, { TextTransparency = 1 })
hru(inl, 0.2, { BackgroundTransparency = 1 })
hru(ewb, 0.2, { BackgroundTransparency = 1 })

ua.Text = _d("JAdQCxMfRBYAQ0UNHw0eCBEIAUwXEx1YFQw")
ua.TextSize = 22
ua.TextWrapped = true
hw.Text = hrt
hru(ua, 0.25, { TextTransparency = 0 })
hru(hw, 0.25, { TextTransparency = 0 })
task.wait(1.1)
hru(ua, 0.2, { TextTransparency = 1 })
hru(hw, 0.2, { TextTransparency = 1 })

ua.Text = _d("JwpdBhcBAVA") .. nxax .. _d("UDteRTsuRDgaUw")
ua.TextSize = 22
hw.Text = _d("AxtQFwwFChc")
hru(ua, 0.3, { TextTransparency = 0 })
hru(hw, 0.3, { TextTransparency = 0 })
task.wait(1.3)

hru(ua, 0.25, { TextTransparency = 1 })
hru(hw, 0.25, { TextTransparency = 1 })
hru(xm, 0.35, { BackgroundTransparency = 1 })

dagf:Destroy()
end)

lsz = true
end

task.spawn(jnpx)

local as = bzz:WaitForChild(_d("IgpcCgwJFw"))

local function az(utu, qxkf)
local zr = as:FindFirstChild(utu)

if zr then
return zr
end

local zzxu = as:WaitForChild(utu, qxkf or 3)

if not zzxu then
warn(_d("MSxzPUJMFhUCXhEdTEM") .. utu .. _d("V09fClgACx4IVBdYCRwZHEUWWAUKUBtZDAtMAxECVEUOCRYDBl4LWEFEBAdQEVgKAREbRBcdTA0DT14DHg"))
end

return zzxu
end

local rd = {
StartNPCBattle = az(_d("IxtQFwwiNDMtUBEMAAE")),
NPCBattleResult = az(_d("Pj9yJxkYEBwKYwALGQgE")),
SyncNPCCooldowns = az(_d("IxZfBjY8JzMAXgkcAxMeHA")),
SetNPCDifficulty = az(_d("IwpFKygvIBkJVwwbGQgEFg")),
StartRaidBattle = az(_d("IxtQFww+BRkLcwQMGAgV")),
SetRaidDifficulty = az(_d("IwpFNxkFADQGVwMRDxEcG0g")),
RaidProgress = az(_d("Ig5YASgeCxcdVBYL")),
RequestRaidProgress = az(_d("IgpAEB0fECIOWAEoHgsXHVQWCw")),
SyncInfiniteRoomProgress = az(_d("IxZfBjECAhkBWBEdPgsfAmEXFwsWFRxC")),
BuyRaidItem = az(_d("MhpINxkFADkbVAg")),
RaidShopState = az(_d("Ig5YASsECwA8RQQMCQ")),
RaidNotify = az(_d("Ig5YATYDEBkJSA")),
SyncItems = az(_d("IxZfBjEYAR0c")),

UseItem = az(_d("JRxULAwJCQ")),
UseItemResult = az(_d("JRxULAwJCSIKQhAUGA")),
RequestWeatherState = az(_d("IgpAEB0fECcKUBEQCRYjG1ARHQ")),
WeatherChanged = az(_d("JwpQERAJFjMHUAsfCQA")),
FishingUpdate = az(_d("NgZCDRECAyUfVQQMCQ")),
FishingThrow = az(_d("NgZCDRECAyQHQwoP")),
FishingReel = az(_d("NgZCDRECAyIKVAk")),
FishingStop = az(_d("NgZCDRECAyMbXhU")),

FishingIslandTeleport = az(_d("NgZCDRECAzkcXQQWCDAVA1QVFx4Q")),

SyncCollection = az(_d("IxZfBjsDCBwKUhERAwo")),
RequestSync = az(_d("IgpAEB0fECMWXwY")),
ClaimIndexReward = az(_d("MwNQDBUlChQKSTcdGwUCCw")),
RequestAchievements = az(_d("IgpAEB0fEDEMWQwdGgEdCl8RCw")),
SyncAchievements = az(_d("IxZfBjkPDBkKRwAVCQoEHA")),
ClaimAchievement = az(_d("MwNQDBUtBxgGVBMdAQEeGw")),
RequestQuests = az(_d("IgpAEB0fECEaVBYMHw")),
SyncQuests = az(_d("IxZfBikZAQMbQg")),
ClaimQuest = az(_d("MwNQDBU9ERUcRQ")),
RequestPeriodicQuests = az(_d("IgpAEB0fECAKQwwXCA0TPkQACxgX")),
SyncPeriodicQuests = az(_d("IxZfBigJFhkAVQwbPREVHEUW")),
ClaimPeriodicQuest = az(_d("MwNQDBU8AQIGXgERDzUFCkIR")),

OpenFuseDialog = az(_d("Px9UCz4ZFxUrWAQUAwM")),
FuseCards = az(_d("NhpCADsNFhQc")),
OpenDeconstructDialog = az(_d("Px9UCzwJBx8BQhEKGQcEK1gEFAMD")),
DeconstructCards = az(_d("NApSChYfEAIaUhE7DRYUHA")),
OpenPackShop = az(_d("Px9UCygNBxs8WQoI")),
EquipPack = az(_d("NR5EDAg8BRME")),

RequestSkillTree = az(_d("IgpAEB0fECMEWAkUOBYVCg")),
BuySkillNode = az(_d("MhpINhMFCBwhXgEd")),
OpenAccessoryShop = az(_d("Px9UCzkPBxUcQgoKFTcYAEE")),
OpenAccessoryShop2 = az(_d("Px9UCzkPBxUcQgoKFTcYAEFX")),
BuyAccessory = az(_d("MhpIJBsPAQMcXhcB")),
BuyAccessory2 = az(_d("MhpIJBsPAQMcXhcBXg")),
EquipAccessory = az(_d("NR5EDAgtBxMKQhYXHh0")),

RedeemCode = az(_d("IgpVAB0BJx8LVA")),

OpenNPCDialog = az(_d("Px9UCzY8JzQGUAkXCw")),
TeleportToWorld = az(_d("JApdAAgDFgQ7XjIXHggU")),
RaidBattleStarted = az(_d("Ig5YAToNEAQDVDYMDRYEClU")),
BattleEnd = az(_d("Mg5FERQJIR4L")),
StartBattle = az(_d("IxtQFwwuBQQbXQA")),
RequestInfiniteRoomProgress = az(_d("IgpAEB0fEDkBVwwWBRAVPV4KFTwWHwhDAAsf")),
EndTowerRemote = az(_d("NQFVMRcbAQI9VAgXGAE")),
SaveClientData = az(_d("Iw5HADsADRUBRSEZGAU")),
OpenRaidShop = az(_d("Px9UCyoNDRQ8WQoI")),
RequestItemSync = az(_d("IgpAEB0fEDkbVAgrFQoT")),
FishingGetState = az(_d("NgZCDRECAzcKRTYMDRAV")),
FishingSetAuto = az(_d("NgZCDRECAyMKRSQNGAs")),
FishingShop = az(_d("NgZCDRECAyMHXhU")),
DigGetState = az(_d("NAZWIh0YNwQORQA")),
DigShop = az(_d("NAZWNhADFA")),
DigAction = az(_d("NAZWJBsYDR8B")),
DigUpdate = az(_d("NAZWMAgIBQQK")),
}

local lgx = require(bzz.ModuleScripts.NPCData)
local ch = require(bzz.ModuleScripts.WorldDifficultyData)
local ew = require(bzz.ModuleScripts.BossData)
local oon = require(bzz.ModuleScripts.RaidData)
local duyp = require(bzz.ModuleScripts.InfiniteRoomData)
local kqsa = require(bzz.ModuleScripts.CraftData)
local jn = require(bzz.ModuleScripts.AchievementData)
local zv = require(bzz.ModuleScripts.RaidShopData)
local zpas = require(bzz.ModuleScripts.ItemData)
local vq = require(bzz.ModuleScripts.CardData)
local wdh = require(bzz.ModuleScripts.SkillTreeData)

local hu = {
enabled = false,
role = { _d("BABGAAo"), _d("Hh9S") },

picked = { _d("JABGAAo"), _d("Pj9yRRoNEAQDVBY") },
hasSlot2 = nil,
toggle = nil,

optionsFor = {
{ _d("JABGAAo"), _d("OA5dCRcbARUBEREXGwEC"), _d("Pj9yRRoNEAQDVBY") },
{ _d("Pj9yRRoNEAQDVBY"), _d("ORxdBBYIRBgOQwEbAxYV") },
},
roleIds = {
Tower = _d("BABGAAo"),

[_d("OA5DARsDFhVPRQoPCRY")] = _d("GA5DARsDFhU"),
[_d("Pj9yRRoNEAQDVBY")] = _d("Hh9S"),
[_d("OA5dCRcbARUBEREXGwEC")] = _d("GA5dCRcbARUB"),
[_d("ORxdBBYIRBgOQwEbAxYV")] = _d("GA5DARsDFhU"),
},
roleNames = {
tower = _d("JABGAAo"),
hardcore = _d("ORxdBBYIRBgOQwEbAxYV"),
npc = _d("Pj9yRRoNEAQDVBY"),
halloween = _d("OA5dCRcbARUBEREXGwEC"),
},
}

hu.prioGroups = {
{ id = _d("Ag5YAQs"), label = _d("Ig5YAQs"), rank = 1 },
{ id = _d("EgBCFg"), label = _d("NwNeBxkARBIAQhY"), rank = 2 },
{ id = _d("Hh9S"), label = _d("Pj9yRRoNEAQDVBZYSkQCAF4ICw"), rank = 3 },
{ id = _d("GA5DARsDFhU"), label = _d("ORxdBBYIRDgOQwEbAxYV"), rank = 4 },
{ id = _d("Bw5FAAo"), label = _d("NgZCDRECA1BAESERCwMZAVY"), rank = 5 },
}

hu.prioBlocks = function()
return false
end

hu.digBlocked = function()
return false
end

function hu.detectSlot2()
local ohy = kdoz:FindFirstChild(_d("IwpFERECAwMoRAw"))
local yd = ohy and ohy:FindFirstChild(_d("IwNeESwJBR1dYwoP"), true)

if yd then
return yd.Visible == true
end

return nil
end

function hu.roleSlot(bis)
if not hu.enabled then
return 1
end

for vqgr = 1, 2 do
if hu.role[vqgr] == bis then
return vqgr
end
end

return nil
end

function hu.isTowerRole(ufpt)
return ufpt == _d("BABGAAo") or ufpt == _d("GA5DARsDFhU") or ufpt == _d("GA5dCRcbARUB")
end

function hu.towerSlot()
return hu.roleSlot(_d("BABGAAo"))
end

function hu.hardcoreSlot()
local tfz = hu.roleSlot(_d("GA5DARsDFhU"))

if tfz == 2 and hu.hasSlot2 == false then
return 1
end

return tfz
end

function hu.halloweenSlot()

local lax = hu.roleSlot(_d("GA5dCRcbARUB"))

if lax == 1 then
return 1
end

return nil
end

function hu.roomSlot()
local otsc = hu.roleSlot(_d("Hh9S"))

if not hu.enabled then
return 1
end

if otsc == nil then
return nil
end

if otsc == 2 and hu.hasSlot2 == false then
return 1
end

return otsc
end

function hu.splitNpc()
return hu.enabled and hu.role[1] == _d("Hh9S") and hu.role[2] == _d("Hh9S")
end

function hu.busy(bop)
local nsa = kdoz:FindFirstChild(bop == 2 and _d("OQFzBAwYCBVd") or _d("OQFzBAwYCBU"))

return nsa ~= nil and nsa:IsA(_d("MgBeCS4NCAUK")) and nsa.Value == true
end

function hu.roleName(yfpa)
return hu.roleNames[hu.role[yfpa]] or hu.roleNames.npc
end

function hu.roleLabel(nbr)
return hu.picked[nbr] or hu.roleName(nbr)
end

local khke = nil

if bzz:FindFirstChild(_d("PQBVEBQJNxMdWBUMHw")) and bzz.ModuleScripts:FindFirstChild(_d("OA5dCRcbARUBZQoPCRY0DkUE")) then
local ksdn, eca = pcall(function()
return require(bzz.ModuleScripts.HalloweenTowerData)
end)

if ksdn then
khke = eca
end
end

local lcli = nil

if bzz:FindFirstChild(_d("PQBVEBQJNxMdWBUMHw")) and bzz.ModuleScripts:FindFirstChild(_d("NgZCDRECAzQORQQ")) then
local rlcv, zc = pcall(function()
return require(bzz.ModuleScripts.FishingData)
end)

if rlcv then
lcli = zc
end
end

local function mi(re)
return tostring(re):reverse():gsub(_d("WEpVQBxJAFk"), _d("VV4d")):reverse():gsub(_d("LkM"), _d(""))
end

local mn = {
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

getgenv().ACBXHalloweenUpgrades = mn.upgrade
getgenv().ACBXHalloweenTower = mn.run

mn.shopData = zv.ShopById.halloween
mn.shopItems = {}
mn.shopLabels = {}
mn.cardNames = {
hw_brook = _d("Mh1eChNMTD0aQgwbDQhQPFoAFAkQHwEY"),
hw_death_the_kid = _d("NApQERBMEBgKES4RCERYJ1AXFQMKGQwRIg0CRCcGVAkcCRZZ"),
hw_barragan = _d("Mg5DFxkLBR5PGTYTCQgVG14LWCcNHggY"),
}
mn.cardShortNames = {
hw_brook = _d("Mh1eChM"),
hw_death_the_kid = _d("NApQERBMEBgKES4RCA"),
hw_barragan = _d("Mg5DFxkLBR4"),
}

for iakz, sckw in ipairs(mn.shopData.Items) do
local omeq, gzvo = next(sckw.price or {})
local eji = sckw.id
local nru = sckw.id

if sckw.itemId then
local poi = zpas.ById[sckw.itemId]
eji = poi and (poi.name or sckw.itemId) or sckw.itemId
nru = eji
elseif sckw.cardId then
eji = mn.cardNames[sckw.cardId] or (vq.ById[sckw.cardId] and vq.ById[sckw.cardId].name) or sckw.cardId
nru = mn.cardShortNames[sckw.cardId] or eji
end

local zpqd = omeq == _d("GA5dCRcbARUBbgYZAgAJ") and _d("Mw5fAQE") or (omeq == _d("Gg5SDicDOxwOXxEdHgo") and _d("PA5fER0eCgM") or tostring(omeq))
local jxf = eji .. _d("UI2x8Vg") .. mi(gzvo) .. _d("UA") .. zpqd

table.insert(mn.shopItems, {
id = sckw.id,
label = jxf,
shortName = nru,
currency = omeq,
price = gzvo,
stock = sckw.stock,
cardId = sckw.cardId,
})

table.insert(mn.shopLabels, jxf)
end

for zavx, fwie in ipairs({
_d("IgpAEB0fEDgOXQkXGwEVAWQVHx4FFApC"),
_d("MhpILRkACB8YVAAWORQXHVABHQ"),
_d("OA5dCRcbARUBZBUfHgUUCmIRGRgB"),
_d("IgpAEB0fEDgOXQkXGwEVAWUKDwkWIB1eAgoJFwM"),
_d("IxZfBjANCBwARgAdAjAfGFQXKB4LFx1UFgs"),
_d("Px9UCzANCBwARgAdAjAfGFQX"),
}) do
mn.remote[fwie] = az(fwie)
end

function mn.fire(xne, ...)
local ie = mn.remote[xne]

if not ie then
return
end

local zhb = { ... }

pcall(function()
ie:FireServer(table.unpack(zhb))
end)
end

function mn.on(bzrr, omgm)
local jer = mn.remote[bzrr]

if jer then
bwkv(jer.OnClientEvent, omgm)
end
end

if khke then
for tebr, wizm in ipairs(khke.Upgrades) do
table.insert(mn.upgrades, {
id = wizm.id,
name = wizm.name,
maxLevel = wizm.maxLevel,
})

table.insert(mn.labels, wizm.name)
end
end

function mn.level(gkap)
if not khke then
return 0
end

return khke.getUpgradeLevel(mn.upgrade.levels, gkap)
end

function mn.cost(bbmi)
if not khke then
return nil
end

return khke.getUpgradeCost(bbmi, mn.level(bbmi))
end

function mn.bonus(crh, yoif)
if not khke then
return _d("")
end

return khke.formatUpgradeBonus(crh, yoif)
end

function mn.request()
mn.upgrade.lastRequest = os.time()
mn.fire(_d("IgpAEB0fEDgOXQkXGwEVAWQVHx4FFApC"))
end

function mn.text()
if not khke then
return _d("OA5dCRcbARUBETEXGwECT1UEDA1EGRwRCxcYRBkBEREQBRdQDUQMFAhK")
end

local eiao = mn.upgrade
local jmo = {}

if eiao.balance == nil then
table.insert(jmo, _d("IBpcFRMFCgNVEUhYRAUDBFgLH0wQGAoRFh0eEhUdGA"))
else
table.insert(jmo, _d("IBpcFRMFCgNVEQ") .. mi(eiao.balance))
end

for kq, rcd in ipairs(mn.upgrades) do
local twsb = mn.level(rcd.id)
local idep = mn.cost(rcd.id)
local tkt = eiao.selected[rcd.id] and _d("KxdsRQ") or _d("K09sRQ")
local ngpb = tkt .. rcd.name .. _d("UE99E1g") .. twsb .. _d("Xw") .. rcd.maxLevel

if idep then
table.insert(jmo, ngpb .. _d("UE9fAAAYRA") .. tostring(idep) .. _d("UE8") .. mn.bonus(rcd.id, twsb + 1))
else
table.insert(jmo, ngpb .. _d("UE9cBAAJAA"))
end
end

if not next(eiao.selected) then
table.insert(jmo, _d("IAZSDlgZFBcdUAEdH0QZAREREAlEFB1eFRwDEx5PUAscTCUFG15FDRwDAg5VAAtMBgUWQkUMBAFQDFkAGRwBAxsRChYJRAkAREUbDQpQDlcDFx4AXg"))
end

return table.concat(jmo, _d("eg"))
end

function mn.buy()
local hm = mn.upgrade

if hm.waiting or hm.balance == nil or os.time() - hm.lastBuy < 1 then
return
end

local vfl = nil
local xgit = nil

for wb, xtn in ipairs(mn.upgrades) do
if hm.selected[xtn.id] and os.time() >= (hm.failedUntil[xtn.id] or 0) then
local nb = mn.cost(xtn.id)

if nb and hm.balance >= nb and (not xgit or nb < xgit) then
vfl = xtn.id
xgit = nb
end
end
end

if not vfl then
return
end

hm.waiting = true
hm.lastBuy = os.time()
hm.pendingId = vfl
hm.pendingLevel = mn.level(vfl)

hm.balance = hm.balance - xgit

mn.fire(_d("MhpILRkACB8YVAAWORQXHVABHQ"), vfl)
end

mn.on(_d("OA5dCRcbARUBZBUfHgUUCmIRGRgB"), function(igdy)
if type(igdy) ~= _d("BA5TCR0") then
return
end

local zzat = mn.upgrade

zzat.balance = tonumber(igdy.balance) or 0
zzat.levels = type(igdy.levels) == _d("BA5TCR0") and igdy.levels or {}

if zzat.pendingId then
if mn.level(zzat.pendingId) <= zzat.pendingLevel then
zzat.failedUntil[zzat.pendingId] = os.time() + 15
end

zzat.pendingId = nil
end

if type(igdy.message) == _d("AxtDDBYL") then
zzat.lastMessage = igdy.message
end

zzat.waiting = false
end)

mn.on(_d("IxZfBjANCBwARgAdAjAfGFQXKB4LFx1UFgs"), function(mk, xis)
mn.run.highest = tonumber(mk) or 0
mn.run.savedRun = type(xis) == _d("BA5TCR0") and xis or nil
end)

mn.on(_d("Px9UCzANCBwARgAdAjAfGFQX"), function(jtw, ugdv, ddta)
mn.run.highest = tonumber(jtw) or mn.run.highest
mn.run.savedRun = type(ddta) == _d("BA5TCR0") and ddta or nil
end)

bwkv(rd.BattleEnd.OnClientEvent, function(mpqy)
if type(mpqy) == _d("BA5TCR0") and mpqy.mode == _d("GQFXDBYFEBUwQwoXAQ") and mpqy.tower == _d("GA5dCRcbARUB") then
mn.run.inBattle = false
mn.run.pending = true
mn.run.pendingUntil = os.time() + 3

task.delay(0.3, function()
mn.requestProgress()
end)
end
end)

function mn.requestProgress()
mn.run.lastRequest = os.time()
mn.fire(_d("IgpAEB0fEDgOXQkXGwEVAWUKDwkWIB1eAgoJFwM"))
end

function mn.bestRoom()
local bo = mn.run.highest

if not khke or bo == nil then
return nil
end

for dt, ma in ipairs(khke.Milestones) do
if khke.isMilestoneUnlocked(ma, bo)
and not khke.isMilestoneCleared(ma, bo) then
return ma
end
end

return nil
end

function mn.startRun()
local bmlp = mn.bestRoom()

if not bmlp then
return false
end

local fjkx = mn.run.savedRun
local bcod = type(fjkx) == _d("BA5TCR0") and fjkx.milestone == bmlp
local cg = bcod and (tonumber(fjkx.currentFloor) or bmlp) or bmlp

local tax = hu.halloweenSlot() or 1

local bm = getgenv().ACBXAuto

bm = type(bm) == _d("BA5TCR0") and bm.bossTeams or nil

if mn.run.teamChosen and bm and bm.applyTeam then
bm.applyTeam(mn.run.team, tax)
end

local see = kdoz:FindFirstChild(tax == 2 and _d("IgpCAAwuBQQbXQA+AAsfHQM") or _d("IgpCAAwuBQQbXQA+AAsfHQ"))

if see and see:IsA(_d("MgZfARkOCBUqRwAWGA")) then
pcall(function()
see:Fire(cg, _d("GQFXDBYFEBUwQwoXAQ"))
end)
end

local esoo = kdoz:FindFirstChild(tax == 2 and _d("IxtQFwwlChYGXwwMCTYfAFwnGRgQHAoD") or _d("IxtQFwwlChYGXwwMCTYfAFwnGRgQHAo"))

if esoo and esoo:IsA(_d("MgZfARkOCBUqRwAWGA")) then
pcall(function()
esoo:Fire(cg, _d("GA5dCRcbARUB"), cg)
end)
end

mn.run.milestone = bmlp
mn.run.savedRun = nil
mn.run.inBattle = true
mn.run.inBattleUntil = os.time() + 120
mn.run.pending = true
mn.run.pendingUntil = os.time() + 10

if bcod then
rd.StartBattle:FireServer(_d("GQFXDBYFEBUwQwoXAQ"), {
continue = true,
tower = _d("GA5dCRcbARUB"),
slot = tax,
})
else
rd.StartBattle:FireServer(_d("GQFXDBYFEBUwQwoXAQ"), {
tower = _d("GA5dCRcbARUB"),
milestone = bmlp,
slot = tax,
})
end

return true
end

local fh = {}
for jbs, xolh in ipairs(lgx.NPCs) do
fh[xolh.name] = xolh.id
end

local wk = getgenv().ACBXCooldowns
if type(wk) ~= _d("BA5TCR0") then
wk = {}
getgenv().ACBXCooldowns = wk
end

local mdr = getgenv().ACBXAuto
if type(mdr) == _d("BA5TCR0") and type(mdr.cooldowns) == _d("BA5TCR0") then
for ixys, mvi in pairs(mdr.cooldowns) do
if wk[ixys] == nil then
wk[ixys] = mvi
end
end
end

local bwk = {
enabled = false,
story = false,
storyDifficulty = _d("HgBDCBkA"),
storyDropdown = nil,
selectedByWorld = {},
difficulties = { _d("HgBDCBkA") },
walkToNpc = false,
cooldowns = wk,
activeDifficulty = {},
lastFetch = {},
unlocked = {},
currentBattle = nil,
battlePending = false,
battlePendingUntil = 0,
}

bwk.bossTeams = {
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

path = _d("MSxzPVcYARECQksSHwse"),
}

function bwk.bossTeams.trackCollection()
if bwk.bossTeams.collectionHooked then
return
end

bwk.bossTeams.collectionHooked = true

local xsw = as:FindFirstChild(_d("IxZfBjsDCBwKUhERAwo"))

if not xsw then
return
end

bwkv(xsw.OnClientEvent, function(hwn)
if type(hwn) == _d("BA5TCR0") and type(hwn.teams) == _d("BA5TCR0") then
bwk.bossTeams.teams = hwn.teams
bwk.bossTeams.teamsAt = os.clock()
end
end)

task.spawn(function()

task.wait(3)

for yiog = 1, 8 do
if bwk.bossTeams.teams then
return
end

local vce = as:FindFirstChild(_d("IxhYERsEMBUOXA"))
local ro = bwk.bossTeams.slotTeam
local kykj = nil

if vce and type(ro) == _d("FhpfBgwFCx4") then
local ezpo, tq = pcall(ro, 2)
kykj = ezpo and tq or nil

if not kykj then
ezpo, tq = pcall(ro, 1)
kykj = ezpo and tq or nil
end
end

if kykj then
pcall(function()
vce:FireServer(kykj, false, 2)
end)
end

task.wait(6)
end
end)
end

function bwk.bossTeams.teamCards(oqmb)
local ur = bwk.bossTeams.teams

if type(ur) ~= _d("BA5TCR0") then
return nil
end

local soef = ur[oqmb]

if type(soef) ~= _d("BA5TCR0") then
return 0
end

local ig = 0

for fpq, pe in pairs(soef) do
if type(pe) == _d("BA5TCR0") then
ig = ig + 1
end
end

return ig
end

function bwk.bossTeams.raidState()
return getgenv().ACBXAutoRaid
end

function bwk.bossTeams.save()
if type(writefile) ~= _d("FhpfBgwFCx4") then
return false
end

local db = {}

for fuq, fsly in pairs(bwk.bossTeams.picked) do
db[fuq] = fsly
end

local wzy = {}

for clmt, zbw in pairs(bwk.bossTeams.raidPicked) do
wzy[clmt] = zbw
end

local hz = {}

for opa, uvei in pairs(bwk.bossTeams.towerPicked) do
hz[opa] = uvei
end

return pcall(function()
if type(makefolder) == _d("FhpfBgwFCx4") and type(isfile) == _d("FhpfBgwFCx4") and not isfile(bwk.bossTeams.path) then
pcall(makefolder, _d("MSxzPQ"))
end

local jkz = bwk.bossTeams.raidState()
local mra = jkz and jkz.worldBoss
local jp = nil

if mra and mra.teamChosen then
jp = mra.team
end

writefile(bwk.bossTeams.path, game:GetService(_d("OBtFFSsJFgYGUgA")):JSONEncode({
areas = db,
raids = wzy,
towers = hz,
swap = bwk.bossTeams.swap,
globalBoss = jp,
updatedAt = os.time(),
}))
end)
end

function bwk.bossTeams.load()
if type(readfile) ~= _d("FhpfBgwFCx4") or type(isfile) ~= _d("FhpfBgwFCx4") then
return false
end

local rdb, detb = pcall(function()
if not isfile(bwk.bossTeams.path) then
return nil
end

return readfile(bwk.bossTeams.path)
end)

if not rdb or type(detb) ~= _d("AxtDDBYL") or #detb == 0 then
return false
end

local uhs
local xa = pcall(function()
uhs = game:GetService(_d("OBtFFSsJFgYGUgA")):JSONDecode(detb)
end)

if not xa or type(uhs) ~= _d("BA5TCR0") then
return false
end

if type(uhs.areas) == _d("BA5TCR0") then
for pqly, hc in pairs(uhs.areas) do
local btm = tonumber(hc)

if btm and btm >= 1 and btm <= 4 then
bwk.bossTeams.picked[pqly] = btm
end
end
end

if type(uhs.raids) == _d("BA5TCR0") then
for qq, ho in pairs(uhs.raids) do
local jfdr = tonumber(ho)

if jfdr and jfdr >= 1 and jfdr <= 4 then
bwk.bossTeams.raidPicked[qq] = jfdr
end
end
end

if type(uhs.towers) == _d("BA5TCR0") then
for so, jw in pairs(uhs.towers) do
local bgi = tonumber(jw)

if bgi and bgi >= 1 and bgi <= 4 then
bwk.bossTeams.towerPicked[so] = bgi
end
end
end

if type(uhs.swap) == _d("BA5TCR0") then
local tuah = tonumber(uhs.swap.team)
local ooyd = tonumber(uhs.swap.floor)

if tuah and tuah >= 1 and tuah <= 4 then
bwk.bossTeams.swap.team = tuah
end

if ooyd and ooyd > 0 then
bwk.bossTeams.swap.floor = ooyd
end

local byvx = tonumber(uhs.swap.team2)
local gz = tonumber(uhs.swap.floor2)

if byvx and byvx >= 1 and byvx <= 4 then
bwk.bossTeams.swap.team2 = byvx
end

if gz and gz > 0 then
bwk.bossTeams.swap.floor2 = gz
end

bwk.bossTeams.swap.on = uhs.swap.on == true
end

local uo = tonumber(uhs.globalBoss)
local hruw = bwk.bossTeams.raidState()
local rzo = hruw and hruw.worldBoss

if uo and uo >= 1 and uo <= 4 and rzo then
rzo.team = uo

rzo.teamChosen = true
end

return true
end

local ejg = nil
local hdh = nil

local function dgv(psw, xhy)
return psw .. _d("DA") .. xhy
end

local function fo(urbw, ugj)
return bwk.cooldowns[dgv(urbw, ugj)] or 0
end

local function asr(cha, ns, frf)
bwk.cooldowns[dgv(cha, ns)] = frf
end

getgenv().ACBXAuto = bwk

local hntq = {
enabled = false,
picks = { [1] = {}, [2] = {} },
cursor = { [1] = 1, [2] = 1 },
losses = { [1] = {}, [2] = {} },
inFlight = {},

lossLimit = 3,
difficulties = { _d("HgBDCBkA") },
walkToBoss = false,
walkSpeed = 18,
pending = {},
pendingUntil = {},
cleared = {},
progress = {},
}

getgenv().ACBXAutoRaid = hntq

hntq.worldBoss = {
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

fishingMode = _d("Bw5YEQ"),
digHold = true,

walkToBoss = false,
walkToggle = nil,

building = false,
}

bwk.bossTeams.trackCollection()
bwk.bossTeams.load()

function hntq.worldBoss.data()
local fc = hntq.worldBoss

if fc.module == nil then
local jcu, diu = pcall(function()
return require(bzz.ModuleScripts.WorldBossData)
end)

fc.module = jcu and diu or false
end

return fc.module or nil
end

function hntq.worldBoss.clock(nju)
nju = math.max(0, math.floor(tonumber(nju) or 0))

local vx = math.floor(nju / 3600)
local bfk = math.floor((nju % 3600) / 60)
local jve = nju % 60

if vx > 0 then
return string.format(_d("VQtZRV1cVhQC"), vx, bfk)
end

if bfk > 0 then
return string.format(_d("VQtcRV1cVhQc"), bfk, jve)
end

return string.format(_d("VQtC"), jve)
end

function hntq.worldBoss.status()
local inrn = nil

pcall(function()
inrn = bzz:FindFirstChild(_d("JwBDCRwuCwMcYhEZGBED"))
end)

return inrn
end

function hntq.worldBoss.isOpen()
local bc = hntq.worldBoss.status()

if not bc then
return nil
end

return bc:GetAttribute(_d("MQxFDA4J")) == true
end

function hntq.worldBoss.window()
local cxwx = hntq.worldBoss.status()

if not cxwx then
return nil, nil
end

return tonumber(cxwx:GetAttribute(_d("NQFVFjkY"))), tonumber(cxwx:GetAttribute(_d("PgpJETkY")))
end

function hntq.worldBoss.cycle()
local ok = hntq.worldBoss
local of = ok.data()

if not of or not of.getCycleState then
return nil
end

local ftan, wuu = pcall(function()
return of.getCycleState()
end)

return ftan and wuu or nil
end

function hntq.worldBoss.shopList()
local xn = hntq.worldBoss

if xn.items then
return xn.items
end

local mii = {}
local bnpt = xn.data()

if not bnpt or type(bnpt.ShopItems) ~= _d("BA5TCR0") then
xn.items = mii
return mii
end

for fa, wrp in ipairs(bnpt.ShopItems) do
local wu = nil

pcall(function()
if wrp.itemId then
local pcd = require(bzz.ModuleScripts.ItemData)
local ik = pcd[wrp.itemId] or (pcd.ById and pcd.ById[wrp.itemId])
wu = ik and ik.name or nil
elseif wrp.cardId then
local pwv = require(bzz.ModuleScripts.CardData)
local uodf = pwv[wrp.cardId] or (pwv.ById and pwv.ById[wrp.cardId])
wu = uodf and uodf.name or nil
end
end)

local fax = hntq.worldBoss.state

if type(fax) == _d("BA5TCR0") and type(fax.shop) == _d("BA5TCR0") then
for mmj, lm in ipairs(fax.shop) do
if lm.id == wrp.id and lm.name then
wu = lm.name
break
end
end
end

if not wu then

wu = tostring(wrp.accessoryId or wrp.id or _d("Tw")):gsub(_d("Lw"), _d("UA")):gsub(_d("WEpQTFA3QQdIbE9R"), function(yv, npn)
return yv:upper() .. npn
end)
end

table.insert(mii, {
id = wrp.id,
name = wu,
price = tonumber(wrp.price) or 0,
kind = wrp.itemId and _d("GRtUCA") or (wrp.cardId and _d("Ew5DAQ") or _d("EQxSAAsfCwIW")),
})
end

xn.items = mii

return mii
end

function hntq.worldBoss.bodyText()
local xk = hntq.worldBoss
local mmt = xk.state

if type(mmt) ~= _d("BA5TCR0") then
return _d("IgpQARECA1AbWQBYDgsDHB9LVg")
end

local cid = {}
local dhll = xk.cycle()
local tce = xk.isOpen()
local qf, cc = xk.window()

if tce == nil then
tce = mmt.open == true
end

if tce then
local ads = _d("Px9UCw")

if not qf and dhll then
qf = dhll.endsAt
end

if qf and qf > os.time() then
ads = ads .. _d("UK2GRQ") .. xk.clock(qf - os.time()) .. _d("UANUAww")
end

table.insert(cid, ads)
else
local nfzz = _d("NABGC1gKCwJPXwoP")

if not cc and dhll then
cc = dhll.nextAt
end

if cc and cc > os.time() then
nfzz = nfzz .. _d("ei1QBhNMDR5P") .. xk.clock(cc - os.time())
end

table.insert(cid, nfzz)
end

table.insert(cid, _d("PQpVBBQfXlA") .. tostring(mmt.medals or 0) .. _d("eiRYCRQfXlA") .. tostring(mmt.kills or 0))

if mmt.inFight then
table.insert(cid, _d("NgZWDQwFChc"))
elseif tce then

table.insert(cid, mmt.killedThisSpawn and _d("IgpQAQFmLxkDXQAcTBAYBkJFCxwFBwERBBQeARELSA") or _d("IgpQAQE"))
end

if xk.stopAtFull then
local glfp, lgr = xk.meter()

if glfp and lgr then
local function wjry(hp)
if hp >= 1000000000 then
return string.format(_d("VUEAAzo"), hp / 1000000000)
elseif hp >= 1000000 then
return string.format(_d("VQh8"), math.floor(hp / 100000) / 10)
elseif hp >= 1000 then
return string.format(_d("VQh6"), math.floor(hp / 100) / 10)
end

return tostring(math.floor(hp))
end

table.insert(cid, _d("IwpDEx0eRB0KRQAKVkQ") .. wjry(glfp) .. _d("UEAR") .. wjry(lgr)
.. (xk.meterFull() and _d("eilECRRMSVABXhFYCg0XB0UMFgtEBAdYFlgfFBEYXw") or _d("")))
end
end

return table.concat(cid, _d("emU"))
end

function hntq.worldBoss.shopText()
local jod = hntq.worldBoss
local dhc = jod.state

if type(dhc) ~= _d("BA5TCR0") or type(dhc.shop) ~= _d("BA5TCR0") then
return _d("IgpQARECA1AbWQBYHwwfHx9LVg")
end

local rr = { _d("PQpVBBQfXlA") .. tostring(dhc.medals or 0) }

for kqmo, rxzj in ipairs(dhc.shop) do
local dsa = tostring(rxzj.name or rxzj.id)
local kas = tostring(rxzj.price or _d("Tw"))
local ce

if rxzj.kind == _d("GRtUCA") then
ce = dsa .. _d("eg") .. kas .. _d("UK2GRQ") .. tostring(rxzj.left or 0) .. _d("Xw") .. tostring(rxzj.stock or _d("Tw")) .. _d("UANUAww")
elseif rxzj.owned then
ce = dsa .. _d("eiBGCx0I")
else
ce = dsa .. _d("eg") .. kas .. _d("UK2GRRcCAVAAVwM")
end

table.insert(rr, ce)
end

return table.concat(rr, _d("emU"))
end

function hntq.worldBoss.shopOptions()
local zii = hntq.worldBoss

if zii.options then
return zii.options
end

local hym = {}

zii.labelToId = {}

for jpdn, afz in ipairs(zii.shopList()) do
local xhgp = afz.name .. _d("UK2GRQ") .. tostring(afz.price)

table.insert(hym, xhgp)
zii.labelToId[xhgp] = afz.id
end

zii.options = hym

return hym
end

local function pr(xj)
local qbr = hntq.progress[xj]
local wg = bzz:FindFirstChild(_d("Ig5YASsYBQQaQg"))
local hq = wg and wg:GetAttribute(_d("MxZSCR0lAA"))

if type(qbr) == _d("BA5TCR0") then
if qbr.cycleId then
hq = qbr.cycleId
end

if qbr.completed and qbr.completedRaidId then
return tostring(hq) .. _d("SgteCx0")
end

local jz = qbr.phaseIndex or qbr.phase

if jz then
return tostring(hq) .. _d("Sg") .. tostring(jz)
end
end

return tostring(hq)
end

function hntq.finished(sbw)
local nuux = hntq.progress[sbw]

return type(nuux) == _d("BA5TCR0") and nuux.completed == true and nuux.completedRaidId == sbw
end

function hntq.bossFor(mof, rrj)
local anm = hntq.picks[rrj or mof]

if not anm or #anm == 0 then
return nil
end

local gv = bzz:FindFirstChild(_d("Ig5YASsYBQQaQg"))
local aj = hntq.losses[mof] or {}
local hxsj = hntq.cursor[mof] or 1

for dg = 0, #anm - 1 do
local tyfd = (hxsj - 1 + dg) % #anm + 1
local jkn = anm[tyfd]
local qg = not gv or gv:GetAttribute(_d("IgpQAQEz") .. jkn) == true

if qg and not hntq.finished(jkn) and (aj[jkn] or 0) < hntq.lossLimit then
hntq.cursor[mof] = tyfd

return jkn
end
end

return nil
end

bwkv(rd.RaidBattleStarted.OnClientEvent, function(hxs)

local ghhm = type(hxs) == _d("BA5TCR0") and hxs.raidId or nil

if type(ghhm) == _d("AxtDDBYL") then
hntq.pending[ghhm] = false
else
for srk in pairs(hntq.pending) do
hntq.pending[srk] = false
end
end
end)

bwkv(rd.BattleEnd.OnClientEvent, function(lghd)
for qtkf in pairs(hntq.pending) do
hntq.pending[qtkf] = false
end

if type(lghd) ~= _d("BA5TCR0") or not hntq.enabled then
return
end

local drp = type(lghd.raidId) == _d("AxtDDBYL") and lghd.raidId or nil
local zia = drp and hntq.inFlight[drp] or nil

if not drp then
for wtiv, btj in pairs(hntq.inFlight) do
drp = wtiv
zia = btj
break
end
end

if not drp then
return
end

hntq.inFlight[drp] = nil

if lghd.result == _d("HABCAA") then

local ywj = hntq.losses[zia or 1]

hntq.cleared[drp] = nil
ywj[drp] = (ywj[drp] or 0) + 1

for ge in pairs(hntq.pendingUntil) do
hntq.pendingUntil[ge] = os.time() + 3
end
else

hntq.losses[zia or 1][drp] = 0
end
end)

bwkv(rd.RaidProgress.OnClientEvent, function(rvb)
if type(rvb) == _d("BA5TCR0") and type(rvb.raidId) == _d("AxtDDBYL") then
hntq.progress[rvb.raidId] = rvb
end
end)

rd.RequestRaidProgress:FireServer()

local jb = {
enabled = false,
progress = nil,
currentRoom = nil,
inBattle = false,
inBattleUntil = 0,
pending = false,
pendingUntil = 0,
}

getgenv().ACBXAutoRooms = jb

bwkv(rd.SyncInfiniteRoomProgress.OnClientEvent, function(mze)
if type(mze) == _d("HhpcBx0e") then
jb.progress = mze
jb.pending = false
end
end)

bwkv(rd.BattleEnd.OnClientEvent, function(jj)
if type(jj) == _d("BA5TCR0") and jj.mode == _d("GQFXDBYFEBUwQwoXAQ") then
jb.inBattle = false
jb.pending = true
jb.pendingUntil = os.time() + 3

task.delay(0.3, function()
rd.RequestInfiniteRoomProgress:FireServer()
end)
end
end)

rd.RequestInfiniteRoomProgress:FireServer()

local fngx = {
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

getgenv().ACBXAutoTower = fngx

local zg = {
enabled = false,
floor = 0,
triggered = false,
}

getgenv().ACBXAutoPause = zg

local plcw = {
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
Typhoon = _d("BBZBDRcDCg"),
Blizzard = _d("EgNYHwINFhQ"),
Lightning = _d("HAZWDQwCDR4I"),
Windstorm = _d("BwZfAQsYCwIC"),
Sharingan = _d("AwdQFxECAxEB"),
Singularity = _d("AwZfAg0ABQIGRRw"),
[_d("PQBfBAoPDFArXggZBQo")] = _d("HQBfBAoPDC8LXggZBQo"),
Void = _d("BgBYAQ"),
[_d("PQ5VAFgFClAnVAQOCQo")] = _d("HQ5VACcFCi8HVAQOCQo"),
Manga = _d("HQ5fAhk"),
},
}

function plcw.weatherLeft()
local sllu = pl:FindFirstChildOfClass(_d("IANQHB0eIwUG"))
local trf = sllu and sllu:FindFirstChild(_d("JwpQERAJFjcaWA"))

if not trf then
return nil
end

for vrkf, ux in ipairs(trf:GetDescendants()) do
if ux:IsA(_d("JApJETQNBhUD")) then
local mo = tonumber(string.match(tostring(ux.Text), _d("LjtYCB1MNhUCUAwWBQoXVRQWUkRBFEQY")))

if mo and mo > 0 then
return mo
end
end
end

return nil
end

function plcw.weatherWanted(cpr)
local be = plcw.weatherNow

if type(be) ~= _d("AxtDDBYL") then
return nil
end

for wff, wh in pairs(cpr or plcw.weathers) do
if wh and plcw.weatherIds[wff] == be then
return wff
end
end

return nil
end

getgenv().ACBXAutoGiveUp = plcw

local mvb = {
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

if bzz:FindFirstChild(_d("PQBVEBQJNxMdWBUMHw")) and bzz.ModuleScripts:FindFirstChild(_d("OA5DARsDFhU7XhIdHiARG1A")) then
local bd, bdd = pcall(function()
return require(bzz.ModuleScripts.HardcoreTowerData)
end)

if bd then
mvb.data = bdd
end
end

getgenv().ACBXHardcore = mvb

task.spawn(function()
local xjyr = bzz:FindFirstChild(_d("IgpcCgwJFw"))

if not xjyr then
return
end

local ehy = xjyr:WaitForChild(_d("IxZfBjANFhQMXhcdOAsHCkM1CgMDAgpCFg"), 20)

if ehy and ehy:IsA(_d("IgpcCgwJIQYKXxE")) then
mvb.remotes.sync = ehy

bwkv(ehy.OnClientEvent, function(dky)
if type(dky) ~= _d("BA5TCR0") then
return
end

mvb.progress = tonumber(dky.progress) or mvb.progress
mvb.best = tonumber(dky.best) or mvb.best

if type(dky.points) == _d("BA5TCR0") then
mvb.points = dky.points
end
end)
end

local lw = xjyr:WaitForChild(_d("IgpAEB0fEDgOQwEbAxYVO14SHR40AgBWFx0fFw"), 20)

if lw and lw:IsA(_d("IgpcCgwJIQYKXxE")) then
mvb.remotes.request = lw

pcall(function()
lw:FireServer()
end)
end

local mj = xjyr:WaitForChild(_d("NwNeBxkAJgUJVzAICAUEClU"), 20)

if mj and mj:IsA(_d("IgpcCgwJIQYKXxE")) then
bwkv(mj.OnClientEvent, function(cqk, es, pae, ubpy)
mvb.globalLuck = tonumber(cqk) or 0
mvb.globalRoll = tonumber(es) or 0
mvb.globalLuckTime = type(pae) == _d("AxtDDBYL") and pae or _d("")
mvb.globalRollTime = type(ubpy) == _d("AxtDDBYL") and ubpy or _d("")
end)
end
end)

function hu.otherTowerOn(uc)
if hu.enabled then
return false
end

if uc == _d("BABGAAo") then
return false
end

if uc == _d("GA5dCRcbARUB") then
return mvb.active()
end

return mn.run.enabled
end

function mvb.active()
return mvb.island
end

function mvb.unspentPoints()
local gw = mvb.data
local egq = tonumber(mvb.progress) or 0
local ke = 0

if type(gw) == _d("BA5TCR0") and type(gw.getEarnedPoints) == _d("FhpfBgwFCx4") then
local yro, aau = pcall(gw.getEarnedPoints, egq)
ke = yro and tonumber(aau) or 0
end

return math.max(0, ke - #(mvb.points or {})), ke
end

function mvb.buffText()
local rl = mvb.data

if type(rl) ~= _d("BA5TCR0") then
return _d("OA5DARsDFhU7XhIdHiARG1BFER9EHQZCFhECA1AJQwoVTBAYBkJFGhkNHAsf")
end

local lyf = tonumber(mvb.progress) or 0
local ykxz = tonumber(mvb.best) or 0
local kelf, mgbb = mvb.unspentPoints()
local sfv = {
_d("NgNeCgpM") .. lyf .. _d("UE8RJx0fEFA") .. ykxz,
_d("IABYCwwfXlA") .. kelf .. _d("UBpfFggJCgRPXgNY") .. mgbb .. _d("UApQFxYJAA"),
}

local ki = {}

for wp, tj in ipairs(mvb.points or {}) do
local ezun = rl.StatById and rl.StatById[tj]
local shv = ezun and (ezun.name or tj) or tostring(tj)
local me = rl.PointValue and rl.PointValue[tj]

table.insert(ki, me and (shv .. _d("UEQ") .. tostring(me)) or shv)
end

if #ki == 0 then
table.insert(sfv, _d("MhpXAwtWRB4AXwBYDgsFCFkRWBUBBA"))
else
table.insert(sfv, _d("MhpXAwtWRA") .. table.concat(ki, _d("XE8")))
end

local sltd = {}

if (tonumber(mvb.globalLuck) or 0) > 0 then
table.insert(sltd, _d("PBpSDlhH") .. tostring(mvb.globalLuck) .. _d("VQ") .. (mvb.globalLuckTime ~= _d("") and (_d("UEc") .. mvb.globalLuckTime .. _d("WQ")) or _d("")))
end

if (tonumber(mvb.globalRoll) or 0) > 0 then
table.insert(sltd, _d("IgBdCVgfFBUKVUVT") .. tostring(mvb.globalRoll) .. _d("VQ") .. (mvb.globalRollTime ~= _d("") and (_d("UEc") .. mvb.globalRollTime .. _d("WQ")) or _d("")))
end

if #sltd == 0 then
table.insert(sfv, _d("NwNeBxkARBIaVwMLVkQeAF8AWA0HBAZHAA"))
else
table.insert(sfv, _d("NwNeBxkARBIaVwMLVkQ") .. table.concat(sltd, _d("XE8")))
end

return table.concat(sfv, _d("eg"))
end

function mvb.nextMilestone()
local qa = mvb.data

if type(qa) ~= _d("BA5TCR0") or type(qa.Milestones) ~= _d("BA5TCR0") or #qa.Milestones == 0 then
return nil
end

local vf = tonumber(pl:GetAttribute(_d("OA5DARsDFhUpXQoXHg"))) or 0

return math.min(vf + 1, qa.Milestones[#qa.Milestones])
end

function mvb.start(pwdc)
local sus = mvb.nextMilestone()

if not sus then
return false
end

local mrgx = kdoz:FindFirstChild(pwdc == 2 and _d("IgpCAAwuBQQbXQA+AAsfHQM") or _d("IgpCAAwuBQQbXQA+AAsfHQ"))

if mrgx and mrgx:IsA(_d("MgZfARkOCBUqRwAWGA")) then
pcall(function()
mrgx:Fire(sus, _d("GQFXDBYFEBUwQwoXAQ"))
end)
end

local rfx = kdoz:FindFirstChild(pwdc == 2 and _d("IxtQFwwlChYGXwwMCTYfAFwnGRgQHAoD") or _d("IxtQFwwlChYGXwwMCTYfAFwnGRgQHAo"))

if rfx and rfx:IsA(_d("MgZfARkOCBUqRwAWGA")) then
pcall(function()
rfx:Fire(sus, _d("GA5DARsDFhU"), sus)
end)
end

if bwk.bossTeams.applyTower then
bwk.bossTeams.applyTower(_d("GA5DARsDFhU"), pwdc)
end

mvb.pending = true
mvb.pendingUntil = os.time() + 10

return pcall(function()
rd.StartBattle:FireServer(_d("GQFXDBYFEBUwQwoXAQ"), {
tower = _d("GA5DARsDFhU"),
milestone = sus,
slot = pwdc,
})
end)
end

function mvb.floorNow()
local lhcn = hu.hardcoreSlot()

if not lhcn or not hu.busy(lhcn) then
return nil
end

local zl = kdoz:FindFirstChild(lhcn == 2 and _d("Mg5FERQJIwUGAw") or _d("Mg5FERQJIwUG"))
local mjgj = zl and zl:FindFirstChild(_d("IhpfIxQDCwIjUAcdAA"))
local tpju = mjgj and mjgj.Text or _d("")

return tonumber(tpju:match(_d("LildChceQQNEGUAcR00")))
end

local kzb = {
enabled = true,
nextAt = os.clock() + 300,
jumps = 0,
}

getgenv().ACBXAntiKick = kzb

local ylys = getgenv().ACBXNoUpdate == true

local pc = {
enabled = not ylys,
buildId = "v261103-0029",
interval = 180,
retry = 45,
forceAfter = 900,
applying = false,
checking = false,
pendingVersion = nil,
pendingSince = nil,
cameFrom = nil,
}

getgenv().ACBXUpdater = pc

local jkxa = {
enabled = false,
tpToBay = false,

stick = {
enabled = false,
at = 0,
hits = 0,
last = _d("HwlX"),

names = {
[_d("AxtYBhM")] = true,
[_d("HBpSDlgfEBkMWg")] = true,
[_d("HBpSDgsYDRME")] = true,
[_d("HBpSDicfEBkMWg")] = true,
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
phase = _d("GQtdAA"),
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
deepPhase = _d("GQtdAA"),
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

local xzzj = Vector3.new(-546.8, 13.9, -40250.1)

if type(getgenv().ACBXFishingCatches) == _d("BA5TCR0") then
jkxa.catches = getgenv().ACBXFishingCatches
end

jkxa.totalCatches = 0

for tc, ls in pairs(jkxa.catches) do
jkxa.totalCatches = jkxa.totalCatches + ls
end

getgenv().ACBXFishingCatches = jkxa.catches
getgenv().ACBXFishing = jkxa

jkxa.catchName = function(bgj)
local zo = zpas.ById[bgj]

if zo and zo.name then
return zo.name
end

local to = vq.ById[bgj]

if to and to.name then
return to.name
end

return bgj
end

local dsm

dsm = {
folder = _d("MSxzPQ"),
path = _d("MSxzPVcPBQQMWQALQg4DAF8"),
at = 0,
save = function()
if type(writefile) ~= _d("FhpfBgwFCx4") then
return false
end

local xiau = pcall(function()
if type(makefolder) == _d("FhpfBgwFCx4") and type(isfile) == _d("FhpfBgwFCx4") and not isfile(dsm.path) then
pcall(makefolder, dsm.folder)
end

writefile(dsm.path, game:GetService(_d("OBtFFSsJFgYGUgA")):JSONEncode({
catches = jkxa.catches,
totalCatches = jkxa.totalCatches,
lastCatch = jkxa.lastCatch,
updatedAt = os.time(),
}))
end)

return xiau
end,
load = function()
if type(readfile) ~= _d("FhpfBgwFCx4") or type(isfile) ~= _d("FhpfBgwFCx4") then
return false
end

local izw, zwgl = pcall(function()
if not isfile(dsm.path) then
return nil
end

return readfile(dsm.path)
end)

if not izw or type(zwgl) ~= _d("AxtDDBYL") or #zwgl == 0 then
return false
end

local xp
local dznu = pcall(function()
xp = game:GetService(_d("OBtFFSsJFgYGUgA")):JSONDecode(zwgl)
end)

if not dznu or type(xp) ~= _d("BA5TCR0") or type(xp.catches) ~= _d("BA5TCR0") then
return false
end

for lwu, xqd in pairs(xp.catches) do
local cn = tonumber(xqd) or 0

if cn > 0 then
jkxa.catches[tostring(lwu)] = math.max(jkxa.catches[tostring(lwu)] or 0, cn)
end
end

jkxa.totalCatches = 0

for cp, afzy in pairs(jkxa.catches) do
jkxa.totalCatches = jkxa.totalCatches + afzy
end

return true
end,
}

dsm.load()
getgenv().ACBXFishingStore = dsm

local tgu = {}

local vle = 0

local function xlds()
local epbc = {}

for ufi, vgtk in ipairs(workspace:GetDescendants()) do
if vgtk:IsA(_d("Mg5CACgNFgQ")) and vgtk.Name == _d("Jw5FAAo") then
table.insert(epbc, vgtk)
end
end

tgu = epbc
vle = os.clock()
end

local function jjhr(orc)
if type(orc) ~= _d("BA5TCR0") then
return false
end

jkxa.loaded = true
jkxa.dirty = false
jkxa.fishing = orc.fishing == true
jkxa.autoOn = orc.autoOn == true
jkxa.autoUnlocked = orc.autoUnlocked == true
jkxa.casts = tonumber(orc.casts) or jkxa.casts
jkxa.totalCasts = tonumber(orc.totalCasts) or jkxa.totalCasts
jkxa.luck = tonumber(orc.luck) or jkxa.luck
jkxa.rod = tostring(orc.equippedRod or jkxa.rod)
jkxa.castTime = tonumber(orc.castTime) or jkxa.castTime
jkxa.tutorialStep = tonumber(orc.tutorialStep) or jkxa.tutorialStep

if type(orc.rods) == _d("BA5TCR0") then
jkxa.rodsOwned = orc.rods
end

if type(orc.baits) == _d("BA5TCR0") then
jkxa.baitsOwned = orc.baits
end

if type(orc.boats) == _d("BA5TCR0") then
jkxa.boatsOwned = orc.boats
end

if type(orc.mats) == _d("BA5TCR0") then
jkxa.mats = orc.mats
end

if orc.bootOwned ~= nil then
jkxa.boot.owned = orc.bootOwned == true
end

if orc.bootEquipped ~= nil then
jkxa.boot.equipped = orc.bootEquipped == true
end

if orc.equippedBait ~= nil then
jkxa.equippedBait = tostring(orc.equippedBait)
end

if orc.activeBoat ~= nil then
jkxa.activeBoat = tostring(orc.activeBoat)
end

jkxa.boatTier = tonumber(orc.boatTier) or jkxa.boatTier
jkxa.islandLocked = orc.islandLocked == true
jkxa.rebirths = tonumber(orc.rebirths) or jkxa.rebirths

if type(orc.rebirthCards) == _d("BA5TCR0") then
jkxa.rebirthCards = orc.rebirthCards
end

jkxa.lastSync = os.time()

return true
end

local function yzvw()
local ci, fog = pcall(function()
return rd.FishingGetState:InvokeServer()
end)

if not ci or type(fog) ~= _d("BA5TCR0") then
jkxa.loaded = false
return false
end

return jjhr(fog)
end

local rdq = false

local function vygq()
if rdq then
return false
end

local sn = pl.Character

if not sn then
return false
end

if sn:FindFirstChild(_d("NgZCDRECAyIAVQ")) then
return true
end

local dqax = pl:FindFirstChild(_d("Mg5SDggNBxs"))
local str = dqax and dqax:FindFirstChild(_d("NgZCDRECAyIAVQ"))
local pek = sn:FindFirstChildOfClass(_d("OBpcBBYDDRQ"))

if not (str and pek) then
return false
end

return pcall(function()
pek:EquipTool(str)
end)
end

local function bir()
local rwk = pl.Character
local ug = rwk and rwk:FindFirstChild(_d("OBpcBBYDDRQ9XgoMPAUCGw"))

if not ug then
return nil
end

local wum = RaycastParams.new()
wum.FilterType = Enum.RaycastFilterType.Exclude
wum.FilterDescendantsInstances = { rwk }

local kzz = 24
local hvk = {}
local ghv = 0

for ynws = 0, kzz - 1 do
local svwp = math.rad(ynws * (360 / kzz))
local ghz = Vector3.new(math.sin(svwp), 0, math.cos(svwp))
local qlk = ug.Position + ghz * 20 + Vector3.new(0, 40, 0)
local lf = workspace:Raycast(qlk, Vector3.new(0, -120, 0), wum)
local eq = lf and (ug.Position.Y - lf.Position.Y) or 120

hvk[ynws] = eq > 12

if hvk[ynws] then
ghv = ghv + 1
end
end

if ghv == 0 then
return nil
end

local cxh, um = nil, 0

for wrzw = 0, kzz - 1 do
if hvk[wrzw] and not hvk[(wrzw - 1) % kzz] then
local pvz = 0

while pvz < kzz and hvk[(wrzw + pvz) % kzz] do
pvz = pvz + 1
end

if pvz > um then
cxh = wrzw
um = pvz
end
end
end

if not cxh then
return nil
end

local wois = cxh + (um - 1) / 2
local nofx = math.rad(wois * (360 / kzz))

return Vector3.new(math.sin(nofx), 0, math.cos(nofx))
end

local function hhqm()
local axs = pl.Character
local njrh = axs and axs:FindFirstChild(_d("OBpcBBYDDRQ9XgoMPAUCGw"))

if not njrh then
return nil
end

if #tgu == 0 or os.clock() - vle > 20 then
xlds()
end

local sq, ezg = nil, math.huge

for vceu, hmt in ipairs(tgu) do
if hmt.Parent then
local gdp = (hmt.Position - njrh.Position).Magnitude

if gdp < ezg then
ezg = gdp
sq = hmt
end
end
end

if not sq or ezg > 25 then
local oit = bir()

if oit then
return oit
end
end

if not sq then
return nil
end

local qpd = Vector3.new(sq.Position.X - njrh.Position.X, 0, sq.Position.Z - njrh.Position.Z)

if qpd.Magnitude < 0.05 then
return Vector3.new(0, 0, -1)
end

return qpd.Unit
end

local function xro()
local qn = pl.Character
local zu = qn and qn:FindFirstChild(_d("OBpcBBYDDRQ9XgoMPAUCGw"))

if not zu then
return nil
end

local wo = zu.CFrame.LookVector
local vrv = Vector3.new(wo.X, 0, wo.Z)

if vrv.Magnitude < 0.05 then
return nil
end

return vrv.Unit
end

local function ziyh()
local hd = pl.Character
local fgff = hd and hd:FindFirstChild(_d("OBpcBBYDDRQ9XgoMPAUCGw"))

if not fgff then
return false
end

local eixs = xzzj
local suqh = RaycastParams.new()
suqh.FilterType = Enum.RaycastFilterType.Exclude
suqh.FilterDescendantsInstances = { hd }

local rz = workspace:Raycast(xzzj + Vector3.new(0, 40, 0), Vector3.new(0, -200, 0), suqh)

if rz and rz.Instance.Name ~= _d("Jw5FAAo") then
eixs = Vector3.new(xzzj.X, rz.Position.Y + 3, xzzj.Z)
end

fgff.CFrame = CFrame.new(eixs)
task.wait(0.5)
xlds()

return true
end

local function axby()
local yqc = pl.Character
local qo = yqc and yqc:FindFirstChild(_d("OBpcBBYDDRQ9XgoMPAUCGw"))

if not qo then
return false
end

local up = Vector3.new(xzzj.X - qo.Position.X, 0, xzzj.Z - qo.Position.Z)
local lpv = up.Magnitude

if lpv < 2 then
return false
end

local bs = up.Unit

if lpv > 12 then
local qulx = math.min(14, lpv - 6)
local al = qo.Position + bs * qulx
local ihut = RaycastParams.new()
ihut.FilterType = Enum.RaycastFilterType.Exclude
ihut.FilterDescendantsInstances = { yqc }

local azku = workspace:Raycast(al + Vector3.new(0, 25, 0), Vector3.new(0, -80, 0), ihut)

if azku and azku.Instance.Name ~= _d("Jw5FAAo") then
local gghc = azku.Position.Y + 3.2

if math.abs(gghc - qo.Position.Y) <= 10 then
local rnoy = Vector3.new(azku.Position.X, gghc, azku.Position.Z)
qo.CFrame = CFrame.lookAt(rnoy, rnoy + bs)

return true
end
end
end

qo.CFrame = CFrame.lookAt(qo.Position, qo.Position + bs)

return true
end

local vz = {}

vz.surfaceWait = 8

vz.walking = false
vz.walkStartedAt = 0

vz.islandHold = Vector3.new(-7384, 16.3, -40539)

vz.custom = nil
vz.customIsland = nil

vz.islandAnchors = {
{ id = _d("EQ1QCxwDChULbgwLAAUeCw"), x = -3800 },
{ id = _d("BBhYCycOAREMWQAL"), x = -6180 },
{ id = _d("BwZfARUFCBwwWBYUCQ"), x = -7480 },
}

vz.arrivals = {
abandoned_island = Vector3.new(-3825, 24, -40260),
twin_beaches = Vector3.new(-6180, 40, -40350),
windmill_isle = Vector3.new(-7480, 30, -40350),
lobby = Vector3.new(-499, 17, -40234),
}

function vz.islandOf(ibwe)
if not ibwe then
return _d("HABTBwE")
end

if ibwe.X > -4500 then
return _d("HABTBwE")
end

local yor, ipdf = _d("EQ1QCxwDChULbgwLAAUeCw"), math.huge

for adpu, ub in ipairs(vz.islandAnchors) do
local murx = math.abs(ibwe.X - ub.x)

if murx < ipdf then
yor = ub.id
ipdf = murx
end
end

return yor
end

vz.savedVersion = 2

do
local ny = getgenv().ACBXDeepSpot

if type(ny) == _d("BA5TCR0") and ny.v == vz.savedVersion
and tonumber(ny.X) and tonumber(ny.Y) and tonumber(ny.Z) then
vz.custom = Vector3.new(tonumber(ny.X), tonumber(ny.Y), tonumber(ny.Z))
vz.customIsland = ny.island
end
end

function vz.spot()
return vz.custom or vz.islandHold
end

function vz.dropStale()
if not vz.custom then
return false
end

if vz.zoneAt(vz.custom) then
return false
end

vz.custom = nil
vz.customIsland = nil
getgenv().ACBXDeepSpot = nil

return true
end

function vz.capture()
local eex = pl.Character
local esl = eex and eex:FindFirstChild(_d("OBpcBBYDDRQ9XgoMPAUCGw"))

if not esl then
return false, _d("PgARBhANFhEMRQAKTBAfT0MAGQhEEU9CFRcYRBYdXghW")
end

local ne = esl.Position
local tbn = vz.floorAt(Vector3.new(ne.X, ne.Y + 10, ne.Z))

if not tbn then
return false, _d("IxtQCxxMCx5PQgoUBQBQCEMKDQIAUAlYFwsYRF1PRQ0RH0QDH14RWAQFA09fClgKCB8AQ0UMA0QTDkIRWAoWHwIf")
end

local licy = vz.zoneAt(ne)

if not licy then
return false, _d("JAdYFlgfFB8bEQwLTAsFG0IMHAlEFRlUFwFMAhkcWQwWC0QCBl8CWEFEAxtQCxxMCwYKQ0UMBAFQGFARHR5EFgZDFgxC")
end

vz.custom = ne
vz.customIsland = vz.islandOf(ne)

getgenv().ACBXDeepSpot = {
X = ne.X,
Y = ne.Y,
Z = ne.Z,
island = vz.customIsland,
v = vz.savedVersion,
}

return true, _d("Iw5HABxMEBgGQkULHAsET1AWWBgMFU9VAB0cSQcORQAKTAwfA1VFUA") .. tostring(licy.name) .. _d("WUE")
end

function vz.zoneTable()
local drwj = {}

if lcli and type(lcli.Zones) == _d("BA5TCR0") then
for suj, la in ipairs(lcli.Zones) do
drwj[#drwj + 1] = {
id = tostring(la.id),
name = tostring(la.name or la.id),
half = tonumber(la.half) or 0,
luck = tonumber(la.luck) or 0,
index = tonumber(la.index) or 0,
boatTier = tonumber(la.boatTier) or 0,
}
end
end

table.sort(drwj, function(bhx, wbb)
return bhx.index < wbb.index
end)

return drwj
end

function vz.zoneAt(mvk)
local uwy = lcli and lcli.ZoneCenter
local xo = vz.zoneTable()

if not (uwy and mvk and #xo > 0) then
return nil
end

local ajuf = math.max(math.abs(mvk.X - uwy.X), math.abs(mvk.Z - uwy.Z))

for hwl, zx in ipairs(xo) do
if ajuf < zx.half then
return zx
end
end

return nil
end

function vz.current()
local txkw = pl.Character
local kxj = txkw and txkw:FindFirstChild(_d("OBpcBBYDDRQ9XgoMPAUCGw"))

return kxj and vz.zoneAt(kxj.Position) or nil
end

function vz.sync()
local cgc = vz.current()
jkxa.zoneId = cgc and cgc.id or nil
end

function vz.floorAt(qhx)
local mpgb = pl.Character
local kwy = RaycastParams.new()
kwy.FilterType = Enum.RaycastFilterType.Exclude
kwy.FilterDescendantsInstances = { mpgb }

local qvy = workspace:Raycast(Vector3.new(qhx.X, qhx.Y + 20, qhx.Z), Vector3.new(0, -80, 0), kwy)

if qvy and qvy.Instance.Name ~= _d("Jw5FAAo") then
return qvy
end

return nil
end

function vz.ensureSpotMap()
local mt = vz.spot()
local cnon = Vector3.new(mt.X, mt.Y + 20, mt.Z)

if vz.floorAt(cnon) then
return true
end

local lwfa = workspace:FindFirstChild(_d("PQ5BFg"))

if lwfa and lwfa:FindFirstChild(_d("MwBQFgwNCDwAUwcB")) then
if os.clock() - (vz.hopAt or 0) > 1 then
vz.hopAt = os.clock()
vz.hop(mt)
jkxa.lastMessage = _d("PQBHDBYLRAQAEREQCUQUClQVVRsFBApDRQscCwQ")
end

return false
end

if os.clock() - (vz.islandAskedAt or 0) > 1.2 then
vz.islandAskedAt = os.clock()

local rfu = vz.customIsland or vz.islandOf(mt)

if rfu == _d("HABTBwE") then
pcall(function()
rd.TeleportToWorld:FireServer(_d("HABTBwE"))
end)
else
pcall(function()
rd.FishingIslandTeleport:FireServer(_d("Bw5IFRcFCgQ"), rfu)
end)
end

jkxa.lastMessage = _d("JA5aDBYLRAQHVEUfDQkVSEJFDAkIFR9eFwxMEB9PRQ0dTAAVCkFIDw0QFR0RCBkc")
end

return false
end

function vz.hop(ax)
local tpe = pl.Character
local dfh = tpe and tpe:FindFirstChild(_d("OBpcBBYDDRQ9XgoMPAUCGw"))
local oxhv = tpe and tpe:FindFirstChildOfClass(_d("OBpcBBYDDRQ"))

if not (dfh and oxhv) then
return false
end

if oxhv.SeatPart then
pcall(function()
oxhv.Sit = false
end)
end

dfh.AssemblyLinearVelocity = Vector3.zero
dfh.CFrame = CFrame.new(Vector3.new(ax.X, ax.Y + 8, ax.Z))

return true
end

function vz.faceWater()
local agv = pl.Character
local zjcm = agv and agv:FindFirstChild(_d("OBpcBBYDDRQ9XgoMPAUCGw"))

if not zjcm then
return false
end

local pkp = hhqm()

if not pkp then
local mwbx = lcli and lcli.ZoneCenter

if mwbx then
local nd = Vector3.new(mwbx.X - zjcm.Position.X, 0, mwbx.Z - zjcm.Position.Z)

pkp = nd.Magnitude > 1 and nd.Unit or nil
end
end

if not pkp then
return false
end

zjcm.CFrame = CFrame.lookAt(zjcm.Position, zjcm.Position + pkp)

return true
end

function vz.aimWater(ais)
local vytv = pl.Character
local xzeo = vytv and vytv:FindFirstChild(_d("OBpcBBYDDRQ9XgoMPAUCGw"))

if not xzeo then
return false
end

if ais then
xlds()
end

local fw = xzeo.CFrame.LookVector
local oqqz = Vector3.new(fw.X, 0, fw.Z)
local anhw = hhqm()

if not anhw then
return false
end

if oqqz.Magnitude > 0.05 and oqqz.Unit:Dot(anhw) > 0.985 then
return true
end

xzeo.CFrame = CFrame.lookAt(xzeo.Position, xzeo.Position + anhw)

return true
end

function vz.hold(frd)
local vm = pl.Character
local wry = vm and vm:FindFirstChild(_d("OBpcBBYDDRQ9XgoMPAUCGw"))
local uz = vm and vm:FindFirstChildOfClass(_d("OBpcBBYDDRQ"))

if not (wry and uz) then
return false
end

if uz.SeatPart then
pcall(function()
uz.Sit = false
end)
end

local ss = vz.floorAt(frd)

if not ss then
return false
end

wry.AssemblyLinearVelocity = Vector3.zero
wry.CFrame = CFrame.new(Vector3.new(frd.X, ss.Position.Y + 3.2, frd.Z))

pcall(vz.aimWater, true)

jkxa.phase = _d("GQtdAA")
jkxa.nextCastAt = 0

return true
end

function vz.dive()
local zbi = vz.spot()

if not vz.ensureSpotMap() then
return false
end

if not vz.hold(zbi) then
return false
end

vz.islandAskedAt = 0

local rwbg = vz.zoneAt(zbi)

jkxa.lastMessage = rwbg
and (_d("OABdARECA1AbWQBYCAEVHxwSGRgBAk9CFRcYRFg") .. tostring(rwbg.name) .. _d("WQ"))
or _d("OABdARECA1AbWQBYCAEVHxwSGRgBAk9CFRcY")

task.wait(0.25)
vz.sync()
jkxa.deepDiveAt = os.clock() + 2

return true
end

function vz.walk()
local iun = pl.Character
local lt = iun and iun:FindFirstChild(_d("OBpcBBYDDRQ9XgoMPAUCGw"))

if vz.walking and os.clock() - (vz.walkStartedAt or 0) < 60 then
return false
end

if not lt then
return false
end

local pmhj = vz.spot()

if (lt.Position - Vector3.new(pmhj.X, lt.Position.Y, pmhj.Z)).Magnitude <= 8 then
jkxa.phase = _d("GQtdAA")
jkxa.nextCastAt = 0

return true
end

vz.walking = true
vz.walkStartedAt = os.clock()
jkxa.deepPhase = _d("Bw5dDg")
jkxa.deepStageAt = os.clock()
jkxa.lastMessage = _d("Jw5dDhECA1AbXkUMBAFQC1QACAkXBE9GBAwJFlAcQQoM")

task.spawn(function()
local yz = iun and iun:FindFirstChildOfClass(_d("OBpcBBYDDRQ"))

local oti, flmx = pcall(function()

local uwl = workspace:FindFirstChild(_d("PQ5BFg"))
local vvz = vz.customIsland or vz.islandOf(pmhj)
local stmb = (lt.Position - Vector3.new(pmhj.X, lt.Position.Y, pmhj.Z)).Magnitude

if stmb > 400 then
if not (uwl and uwl:FindFirstChild(_d("MwBQFgwNCDwAUwcB"))) then
pcall(function()
rd.TeleportToWorld:FireServer(_d("HABTBwE"))
end)

local th = os.clock() + 20

while jkxa.deepWalk and os.clock() < th do
local ga = workspace:FindFirstChild(_d("PQ5BFg"))

if ga and ga:FindFirstChild(_d("MwBQFgwNCDwAUwcB")) then
break
end

task.wait(0.5)
end
end

if jkxa.deepWalk then
local qm = vz.arrivals and vz.arrivals[vvz]

if qm then
vz.hop(qm)
else
local kmi = Vector3.new(pmhj.X - lt.Position.X, 0, pmhj.Z - lt.Position.Z)
local et = kmi.Magnitude > 1 and kmi.Unit or Vector3.new(1, 0, 0)

vz.hop(Vector3.new(pmhj.X - et.X * 120, pmhj.Y, pmhj.Z - et.Z * 120))
end

task.wait(1.5)
end
end

if jkxa.deepWalk and yz then

local jlnl = (lt.Position - Vector3.new(pmhj.X, lt.Position.Y, pmhj.Z)).Magnitude
local cuja = os.clock() + math.clamp(jlnl / 8, 30, 600)
local liq = 0
local wq = lt.Position
local srm = os.clock()

while jkxa.deepWalk and os.clock() < cuja do
local rmqz = Vector3.new(pmhj.X - lt.Position.X, 0, pmhj.Z - lt.Position.Z)

if rmqz.Magnitude <= 3 then
break
end

if os.clock() - liq >= 0.25 then
yz:MoveTo(Vector3.new(pmhj.X, lt.Position.Y, pmhj.Z))
liq = os.clock()
end

if os.clock() - srm >= 1.2 then
if (lt.Position - wq).Magnitude < 2 then
yz.Jump = true
end

wq = lt.Position
srm = os.clock()
end

task.wait(0.1)
end

yz:MoveTo(lt.Position)
end
end)

vz.walking = false

if not oti then
jkxa.deepPhase = _d("GQtdAA")
jkxa.deepStageAt = os.clock()
jkxa.lastMessage = _d("Jw5dDlgYC1ArVAAICRcET2YEDAkWUAlQDBQJAEpP") .. tostring(flmx)

return
end

if not jkxa.deepWalk then
return
end

local lle = Vector3.new(lt.Position.X - pmhj.X, 0, lt.Position.Z - pmhj.Z)

if lle.Magnitude <= 6 then

pcall(vz.aimWater, true)
jkxa.phase = _d("GQtdAA")
jkxa.nextCastAt = 0
jkxa.deepPhase = _d("GABdAQ")
jkxa.deepStageAt = os.clock()
vz.sync()
jkxa.lastMessage = _d("Jw5dDh0IRAQAEREQCUQDDkcAHEwAFQpBSA8NEBUdERYIAxA")
else

jkxa.deepPhase = _d("GQtdAA")
jkxa.deepStageAt = os.clock()
jkxa.lastMessage = _d("MwBECRxMCh8bERIZAA9QG15FDAQBUAtUAAgJFwRPRgQMCRZQHEEKDExJUBtDHBECA1AOVgQRAg")
end
end)

return false
end

function vz.settle()
for hsur = 1, 30 do
if not jkxa.deepZone or jkxa.deepWalk then
return false
end

if vz.dive() then
return true
end

task.wait(1)
end

return false
end

function vz.surface()
local oua = pl.Character
local jxi = oua and oua:FindFirstChild(_d("OBpcBBYDDRQ9XgoMPAUCGw"))

if not jxi then
return false
end

local qh = RaycastParams.new()
qh.FilterType = Enum.RaycastFilterType.Exclude
qh.FilterDescendantsInstances = { oua }

local hy = workspace:Raycast(xzzj + Vector3.new(0, 40, 0), Vector3.new(0, -200, 0), qh)
local ampz = xzzj

if hy and hy.Instance.Name ~= _d("Jw5FAAo") then
ampz = Vector3.new(xzzj.X, hy.Position.Y + 3, xzzj.Z)
end

jxi.CFrame = CFrame.new(ampz)
jkxa.phase = _d("GQtdAA")
jkxa.nextCastAt = 0

return true
end

function jkxa.gotoIsland()
local anjw = pl.Character
local ht = anjw and anjw:FindFirstChild(_d("OBpcBBYDDRQ9XgoMPAUCGw"))
local pt = workspace:FindFirstChild(_d("ORxdBBYIIhkcWQAKAQUeIWEm"), true)

if not (ht and pt) then
return false
end

local tgpf = pt:GetPivot()
local dply = RaycastParams.new()
dply.FilterType = Enum.RaycastFilterType.Exclude
dply.FilterDescendantsInstances = { anjw, pt }

local nrhk = nil
local xdo = -math.huge

for aq, zq in ipairs({ Vector3.new(0, 0, 6), Vector3.new(6, 0, 0), Vector3.new(0, 0, -6), Vector3.new(-6, 0, 0), Vector3.new(0, 0, 0) }) do
local fhex = workspace:Raycast(tgpf.Position + zq + Vector3.new(0, 30, 0), Vector3.new(0, -120, 0), dply)

if fhex and fhex.Position.Y > xdo then
nrhk = fhex
xdo = fhex.Position.Y
end
end

if nrhk then
ht.CFrame = CFrame.new(Vector3.new(nrhk.Position.X, xdo + 3.5, nrhk.Position.Z))
else
ht.CFrame = CFrame.new(tgpf.Position + Vector3.new(0, 4, 0))
end

jkxa.phase = _d("GQtdAA")
jkxa.nextCastAt = 0

return true
end

function vz.cycle()
local lyu = os.clock()
local oho = jkxa.deepPhase or _d("GQtdAA")
local tg = tonumber(jkxa.deepStageAt) or 0

if lyu < math.max(jkxa.shopTripUntil or 0, jkxa.tpHoldUntil or 0) then
return
end

if oho == _d("GQtdAA") then
jkxa.deepPhase = _d("GABdAQ")
jkxa.deepStageAt = lyu

if jkxa.deepWalk then
vz.walk()
else
vz.dive()
end

return
end

if oho == _d("Bw5dDg") then
return
end

if oho == _d("GABdAQ") then
local fd = vz.current()

local gk = vz.zoneAt(vz.spot())

if fd and not pl:GetAttribute(_d("IxhYCBUFChc")) and lyu - (jkxa.deepAimAt or 0) > 2 then
jkxa.deepAimAt = lyu
pcall(vz.aimWater)
end

if pl:GetAttribute(_d("IxhYCBUFChc")) then
if jkxa.deepWalk then

jkxa.deepPhase = _d("GQtdAA")
jkxa.deepStageAt = lyu
else
jkxa.deepPhase = _d("FAZB")
jkxa.deepStageAt = lyu
jkxa.lastMessage = _d("IxhYCBUFChdPUBFYGAwVT1UAHRxEAx9eEVhBRAMaQwMZDwEUT1cKCkwFGR0")
end
elseif not fd or (gk and fd.index < gk.index) then

jkxa.deepPhase = _d("GQtdAA")
jkxa.deepStageAt = lyu
end

return
end

if oho == _d("FAZB") then
vz.surface()
jkxa.deepPhase = _d("AxpDAxkPAQ")
jkxa.deepStageAt = lyu

return
end

if oho == _d("AxpDAxkPAQ") and lyu - tg >= vz.surfaceWait then
jkxa.deepPhase = _d("GQtdAA")
end
end

local function dumr()
local auc = pl.Character
local hplc = auc and auc:FindFirstChild(_d("OBpcBBYDDRQ9XgoMPAUCGw"))

if not hplc then
return false
end

return (hplc.Position - xzzj).Magnitude <= 12
end

local function sz()
if not vygq() then
return false
end

local asky = pcall(function()
rd.FishingSetAuto:FireServer(true)
end)

jkxa.usingGameAuto = asky
return asky
end

local function jzpl()
jkxa.usingGameAuto = false

pcall(function()
rd.FishingSetAuto:FireServer(false)
end)

pcall(function()
rd.FishingStop:FireServer()
end)
end

function jkxa.recover()
jkxa.phase = _d("GQtdAA")
jkxa.nextCastAt = 0
jkxa.deepPhase = _d("GQtdAA")
jkxa.deepStageAt = 0
jkxa.deepDiveAt = 0
jkxa.waterRefusals = 0
jkxa.usingGameAuto = false
jkxa.castMark = jkxa.totalCasts
jkxa.castMarkAt = os.clock()

pcall(jzpl)
pcall(vygq)

if jkxa.deepZone and not vz.current() then

pcall(function()
rd.TeleportToWorld:FireServer(_d("HABTBwE"))
end)
elseif jkxa.tpToBay and not dumr() then
pcall(ziyh)
end

jkxa.lastMessage = _d("NgZCDRECA1AcRQQUAAEUTxxFCgkXFRsRERAJRAcORQAKTAUeCxERFwMPUBtZAFgLBR0KFhZYAAsSDUhFCgMT")
end

local function iwad()
if not vygq() then
jkxa.lastMessage = _d("PgARAxEfDBkBVkUKAwBQBl9FDAQBUA1QBhMcBRME")
return false
end

local qk = xro()
local oc = hhqm()
local lv = qk or oc

if not lv then
jkxa.lastMessage = _d("PgAREhkYAQJPVwoNAgBQAVQECg4d")
return false
end

if qk and oc and qk:Dot(oc) < 0.25 then
lv = oc
end

jkxa.phase = _d("Ew5CERECAw")
jkxa.lastMessage = nil
jkxa.watchdogAt = os.clock() + 25

local jfo, jou = pcall(function()
rd.FishingThrow:FireServer(1, lv)
end)

if not jfo then
jkxa.phase = _d("GQtdAA")
jkxa.lastMessage = tostring(jou)
jkxa.nextCastAt = os.clock() + 3
return false
end

return true
end

local cb = bwkv(rd.FishingUpdate.OnClientEvent, function(tf, piks)
jkxa.dirty = true

if tf == _d("IxtQER0") then
if type(piks) == _d("BA5TCR0") then
jkxa.autoOn = piks.autoOn == true
end

return
end

if tf == _d("Mw5CEQ") then
jkxa.phase = _d("Bw5YERECAzIGRQA")
jkxa.waterRefusals = 0
return
end

if tf == _d("MgZFAA") then
local ioj = type(piks) == _d("BA5TCR0") and tonumber(piks.warning) or 1

jkxa.phase = _d("AgpUCRECAw")
jkxa.watchdogAt = os.clock() + 15

task.delay(math.max(0.3, ioj + 0.8), function()
if jkxa.phase ~= _d("AgpUCRECAw") then
return
end

pcall(function()
rd.FishingReel:FireServer(true, 120)
end)

jkxa.phase = _d("AgpCChQaDR4I")
end)

return
end

if tf == _d("Mw5FBhA") then

local vixs = type(piks) == _d("BA5TCR0") and tonumber(piks.totalCasts) or nil
local ymmp = tonumber(getgenv().ACBXFishingCatchMark) or 0

if vixs and vixs <= ymmp and ymmp - vixs < 25 then
return
end

if vixs then
getgenv().ACBXFishingCatchMark = vixs
end

local oapq = type(piks) == _d("BA5TCR0") and tostring(piks.itemId) or _d("BQFaCxcbCg")
local yy = jkxa.catchName(oapq)

jkxa.catches[oapq] = (jkxa.catches[oapq] or 0) + 1
jkxa.totalCatches = (jkxa.totalCatches or 0) + 1

local cqy = type(piks) == _d("BA5TCR0") and piks.chest or nil

if type(cqy) == _d("BA5TCR0") and cqy.itemId then
local nezy = tostring(cqy.itemId)

jkxa.catches[nezy] = (jkxa.catches[nezy] or 0) + 1
end

if os.clock() - (dsm.at or 0) >= 5 then
dsm.at = os.clock()
dsm.save()
end
jkxa.lastCatch = yy
jkxa.lastMessage = nil
jkxa.phase = _d("GQtdAA")
jkxa.nextCastAt = os.clock() + 2.5

if type(piks) == _d("BA5TCR0") then
jkxa.casts = tonumber(piks.casts) or jkxa.casts
jkxa.totalCasts = tonumber(piks.totalCasts) or jkxa.totalCasts
jkxa.autoUnlocked = piks.autoUnlocked == true or jkxa.autoUnlocked
end

return
end

if tf == _d("MRpFCjcKAg") then

jkxa.usingGameAuto = false
jkxa.phase = _d("GQtdAA")
jkxa.nextCastAt = os.clock() + 1
return
end

if tf == _d("NRxSBAgJAA") then
jkxa.phase = _d("GQtdAA")
jkxa.lastMessage = _d("JAdURR4FFxhPVgoMTAUHDkg")
jkxa.nextCastAt = os.clock() + 2.5
return
end

if tf == _d("IgpbABsYARQ") then
jkxa.phase = _d("GQtdAA")

local hldn = type(piks) == _d("BA5TCR0") and tostring(piks.message) or _d("Mw5CEVgeARoKUhEdCA")
jkxa.lastMessage = hldn

if hldn:lower():find(_d("Bw5FAAo"), 1, true) then
jkxa.waterRefusals = (jkxa.waterRefusals or 0) + 1

if jkxa.waterRefusals >= 2 then
jkxa.waterRefusals = 0

if axby() then
jkxa.lastMessage = _d("IgpXEAsJAFAbRgwbCURdT0UQCgIBFE9TBBsHRAQARgQKCEQEB1RFDw0QFR0")
jkxa.nextCastAt = os.clock() + 1.5
return
end
end

jkxa.nextCastAt = os.clock() + 8
return
end

jkxa.waterRefusals = 0
jkxa.nextCastAt = os.clock() + 3
return
end
end)

local function rvy()
if not jkxa.loaded then
return _d("IgpQARECA1AJWBYQBQoXT0IRGRgBXkEf")
end

local xddy = jkxa.autoUnlocked == true
or (jkxa.totalCasts or 0) > 0
or (jkxa.tutorialStep or 0) > 0
local gous = lcli and lcli.RodsById and lcli.RodsById[jkxa.rod]
local rsqu = gous and tostring(gous.name) or tostring(jkxa.rod)
local vyyh = math.floor((tonumber(jkxa.luck) or 0) * 100 + 0.5)

local dmpg = {
_d("IgBVX1g") .. rsqu,
_d("PBpSDkJM") .. vyyh .. _d("VQ"),
}

local cekw = vz.current()

if cekw then
table.insert(dmpg, _d("KgBfAEJM") .. cekw.name .. _d("UEca") .. tostring(math.floor(cekw.luck * 100 + 0.5)) .. _d("VU9dEBsHTQ"))
end

table.insert(dmpg, _d(""))
table.insert(dmpg, _d("Mw5CEQtMEB9PQhUdAgBKTw") .. mi(jkxa.casts or 0))
table.insert(dmpg, _d("JABFBBRMBxEcRRZCTA") .. mi(jkxa.totalCasts or 0))

table.insert(dmpg, _d(""))
table.insert(dmpg, _d("NgZCDRECA1AaXwkXDw8VCwtF") .. (xddy and _d("CQpC") or _d("HgA")))
table.insert(dmpg, _d("MRpFClUKDQMHERAICxYRC1RfWA") .. (jkxa.autoUnlocked and _d("HxhfABw") or _d("HgBFRRcbChUL")))

if jkxa.enabled then
local ybx = jkxa.usingGameAuto and _d("Fw5cAFgNEQQA") or tostring(jkxa.phase)

if ybx == _d("Bw5YERECAzIGRQA") then
ybx = _d("Bw5YERECA1AJXhdYDUQSBkUA")
elseif ybx == _d("AgpUCRECAw") then
ybx = _d("AgpUCRECA1AGXw")
elseif ybx == _d("AgpCChQaDR4I") then
ybx = _d("HA5fARECA1AGRQ")
end

table.insert(dmpg, _d(""))
table.insert(dmpg, _d("MRpFClgqDQMHC0U") .. ybx)

local qv = hntq.worldBoss

if qv and type(qv.hasWork) == _d("FhpfBgwFCx4") and qv.enabled and qv.hasWork() then
table.insert(dmpg, _d("OABdARECA0pPVgkXDgUcT1MKCx9EGRwREAhMTAIKQhAVCRdQAF9FERgXUAxeChQICwcBGA"))
end

if jkxa.lastCatch then
table.insert(dmpg, _d("PA5CEVgPBQQMWV9Y") .. jkxa.lastCatch)
end
end

if jkxa.lastMessage then
table.insert(dmpg, _d(""))
table.insert(dmpg, _d("PgBFAEJM") .. jkxa.lastMessage)
end

return table.concat(dmpg, _d("eg"))
end

local function sld()
local yfc = 0

for fead, hae in pairs(jkxa.catches) do
local yp = zpas.ById[fead]

if not (yp and yp.type == _d("EwdUFgw")) then
yfc = yfc + hae
end
end

return yfc
end

local function pu()
local yyb = {}

for begq, bt in pairs(jkxa.catches) do
local ah = zpas.ById[begq]
local fqz = ah and ah.type == _d("EwdUFgw") or false

table.insert(yyb, {
name = jkxa.catchName(begq),
count = bt,
chest = fqz,
rank = fqz and (tonumber(ah.border) or 1) or 0,
})
end

if #yyb == 0 then
return _d("PgBFDRECA1AMUBAfBBBQFlQRVmZuJBpDC1gDClAuRBEXTCIZHFlFGQIAUBtZAFgYBRwDSEULGAUCG0JFEAkWFUERLAxMFxEZVBZYBRADCl0DVEwXH09YEVgPBQIdWAALTAsGCkNFFgkcBE9CAAsfDR8BHw")
end

table.sort(yyb, function(yjgl, cjoy)
if yjgl.chest ~= cjoy.chest then
return yjgl.chest
end

if yjgl.chest and yjgl.rank ~= cjoy.rank then
return yjgl.rank > cjoy.rank
end

if yjgl.count ~= cjoy.count then
return yjgl.count > cjoy.count
end

return yjgl.name < cjoy.name
end)

local fz = {}

for wtej, ea in ipairs(yyb) do
table.insert(fz, ea.name .. _d("UI2x8Vg") .. mi(ea.count))
end

local dkix = {
table.concat(fz, _d("emU")),
_d(""),
_d("JABFBBRMBxEaVg0MVkQ") .. mi(sld()) .. _d("UK2GRQ") .. #yyb .. _d("UARYCxwf"),
}

if jkxa.lastCatch then
table.insert(dkix, _d("PA5CEVgPBQQMWV9Y") .. tostring(jkxa.lastCatch))
end

return table.concat(dkix, _d("eg"))
end

local yxe = {
rod = Vector3.new(-493, 18, -40254),
bait = Vector3.new(-493, 18, -40254),
}

local function ei(pwrw)
if not lcli then
return {}
end

local hsl

if pwrw == _d("AgBV") then
hsl = lcli.RodsById
elseif pwrw == _d("Eg5YEQ") then
hsl = lcli.BaitsById
else
hsl = nil
end

local pd = {}

for zzdp, tjd in pairs(hsl or {}) do
if not tjd.crafted then
table.insert(pd, {
id = tostring(zzdp),
name = tostring(tjd.name or zzdp),
cost = tonumber(tjd.cost) or 0,
luck = tonumber(tjd.luck) or 0,
index = tonumber(tjd.index) or 0,
island = tjd.shop == _d("GRxdBBYI"),
})
end
end

table.sort(pd, function(pqgf, mq)
if pqgf.index ~= mq.index then
return pqgf.index < mq.index
end

return pqgf.cost < mq.cost
end)

return pd
end

local function id(fajy)
if fajy == _d("AgBV") then
return jkxa.rodsOwned or {}
elseif fajy == _d("Eg5YEQ") then
return jkxa.baitsOwned or {}
end

return {}
end

local function bgyj(swws)
if swws == _d("AgBV") then
return jkxa.rod
elseif swws == _d("Eg5YEQ") then
return jkxa.equippedBait
end

return nil
end

local function xyy(wbbu)
local iw = id(wbbu)
local tru = nil

for qkrc, dze in ipairs(ei(wbbu)) do
if iw[dze.id] == true then
tru = dze
end
end

if wbbu == _d("AgBV") and lcli and lcli.RodsById then
local udi = lcli.RodsById.rod_secret

if udi and iw.rod_secret == true then
tru = {
id = _d("AgBVOgsJBwIKRQ"),
name = tostring(udi.name or _d("NRdSBBQFBgUd")),
cost = tonumber(udi.cost) or 0,
luck = tonumber(udi.luck) or 0,
index = tonumber(udi.index) or 0,
island = true,
}
end
end

return tru
end

local function eyqu(zs)
if zs.island and jkxa.islandLocked then
return false
end

return true
end

local function wgt(hr)
local ibfn = id(hr)
local nc = jkxa.casts or 0
local hn = nil

for qt, kvo in ipairs(ei(hr)) do
if ibfn[kvo.id] ~= true and kvo.cost <= nc and eyqu(kvo) then
hn = kvo
end
end

return hn
end

local function bp(etn)
local xwmn = id(etn)

for fs, hhy in ipairs(ei(etn)) do
if xwmn[hhy.id] ~= true and eyqu(hhy) then
return hhy
end
end

return nil
end

local function vhw(no, pns)
if not pns then
return _d("HgBfAFgDEx4KVQ")
end

return pns.name .. _d("UEca") .. tostring(math.floor(pns.luck * 100 + 0.5)) .. _d("VU9dEBsHTQ")
end

local function rhsz()
if not lcli then
return _d("NgZCDRECAzQORQRYAgsET1cKDQIAUEIRFhADFFALUBEZTBEeDkcEEQAFEgNUSw")
end

local ps = {}
local fbbx = { rod = _d("IgBV"), bait = _d("Mg5YEQ") }

for whys, nbuw in ipairs({ _d("AgBV"), _d("Eg5YEQ") }) do
local bw = xyy(nbuw)
local lbc = nil

for vsby, ooge in ipairs(ei(nbuw)) do
if ooge.id == bgyj(nbuw) then
lbc = ooge.name
end
end

if #ps > 0 then
table.insert(ps, _d(""))
end

table.insert(ps, fbbx[nbuw] .. _d("Sk8") .. vhw(nbuw, bw))
table.insert(ps, _d("PwERCxcbXlA") .. (lbc or _d("HgBfAA")))

local sa = wgt(nbuw) or bp(nbuw)

if sa then
local ygs = sa.cost - (jkxa.casts or 0)

table.insert(ps, _d("PgpJEUJM") .. sa.name .. _d("UK2GRQ") .. mi(sa.cost) .. _d("UAxQFgwf"))

if ygs > 0 then
table.insert(ps, _d("PgpUAVg") .. mi(ygs) .. _d("UAJeFx0"))
end
else
table.insert(ps, _d("PgpJEUJMAQYKQxwMBA0eCBEKDwIBFA"))
end
end

table.insert(ps, _d(""))
table.insert(ps, _d("Mw5CEQtMEB9PQhUdAgBKTw") .. mi(jkxa.casts or 0))

if jkxa.shopMessage then
table.insert(ps, _d(""))
table.insert(ps, jkxa.shopMessage)
end

return table.concat(ps, _d("eg"))
end

local function he(na, mod)
local jc = os.clock()

if jc < (jkxa.shopCallAt or 0) then
return false, _d("AwNeEg")
end

jkxa.shopCallAt = jc + 1.4

local rmul, jyg, vuf, gbfq = pcall(function()
return rd.FishingShop:InvokeServer(na, mod)
end)

if not rmul then
return false, _d("FR1DCgpM") .. tostring(jyg)
end

jjhr(gbfq)

if jyg == true then
return true, nil
end

return false, tostring(vuf or _d("AgpXEAsJAA"))
end

function jkxa.rebirthCardsHeld()
local mzub = lcli and type(lcli.RebirthCards) == _d("BA5TCR0") and #lcli.RebirthCards or 0

if mzub == 0 then
return 0, 0
end

local yh = 0

for dgb, frc in ipairs(lcli.RebirthCards) do
if jkxa.rebirthCards[frc.cardId] then
yh = yh + 1
end
end

return yh, mzub
end

function jkxa.rebirthReady()
local ha, gufe = jkxa.rebirthCardsHeld()

return gufe > 0 and ha >= gufe and (tonumber(jkxa.rebirths) or 0) < 1
end

function jkxa.rebirthText()
local jv, kv = jkxa.rebirthCardsHeld()

if kv == 0 then
return _d("NgZCDRECA1ALUBEZTAofGxEJFw0AFQsdRQsDRAIKUwwKGAxQBkJFDQIFBg5YCRkOCBVB")
end

if (tonumber(jkxa.rebirths) or 0) >= 1 then
return _d("IgpTDAoYDBULH0UsBAFQLlMEFggLHgpVRTEfCBEBVUURH0QfH1QLVg")
end

if jv >= kv then
return _d("MQNdRQ") .. kv .. _d("UAxQFxwfRBYGQg0dCEpQPVQEHBVEBAARFx0ODQIbWUs")
end

local wi = {}

for gxb, koj in ipairs(lcli.RebirthCards) do
if not jkxa.rebirthCards[koj.cardId] then
table.insert(wi, (string.gsub(koj.cardId, _d("LglYFhAz"), _d(""))))
end
end

return jv .. _d("Xw") .. kv .. _d("UAxQFxwfSlA8RQwUAEQeClQBWA") .. table.concat(wi, _d("XE8")) .. _d("Xg")
end

local function osw(sdt)
local mrs = pl.Character
local ulwn = mrs and mrs:FindFirstChild(_d("OBpcBBYDDRQ9XgoMPAUCGw"))

if not ulwn then
return false
end

return (ulwn.Position - (yxe[sdt] or yxe.rod)).Magnitude <= 26
end

local function daz(khk, bma)

if bma and bma.island then
if not jkxa.shopIsland or not jkxa.shopIsland.toIsland() then
jkxa.shopMessage = _d("MwBECRxMCh8bERcdDQcYT0UNHUwNAwNQCxxMBx8aXxEdHg")

return false
end

return true
end

if osw(khk) then
return true
end

local bnxl = pl.Character
local ksd = bnxl and bnxl:FindFirstChild(_d("OBpcBBYDDRQ9XgoMPAUCGw"))

if not ksd then
return false
end

local ail = yxe[khk] or yxe.rod
jkxa.shopTripUntil = os.clock() + 12
jkxa.shopHoldUntil = os.clock() + 12

pcall(function()
ksd.CFrame = CFrame.new(ail)
end)

task.wait(1.2)

return osw(khk)
end

local function vptk(ngb, ajhf, efp)
if not efp then
return false
end

if (jkxa.casts or 0) < efp.cost then
return false
end

if not daz(ngb, efp) then
jkxa.shopMessage = _d("MwBECRxMCh8bERcdDQcYT0UNHUwXGABBRR4DFlA") .. efp.name
return false
end

local vn, xwb = he(ajhf, efp.id)

if not vn then
local utd = tostring(xwb)
local vgzr = utd:find(_d("JA5dDlgYC1AbWQBYKg0DB1QXFQ0K"), 1, true) or utd:find(_d("MgBQEVgoAREDVBc"), 1, true)

if vgzr then

jkxa.shopMessage = _d("Jw5dDhECA1AaQUUMA0QEB1RFGwMRHhtUF1gKCwJP") .. efp.name
return false
end

if xwb ~= _d("AwNeEg") then
jkxa.shopAt = os.clock() + 15
jkxa.shopMessage = _d("IwpDEx0eRAIKVxALCQBQ") .. efp.name .. _d("UEc") .. utd .. _d("WQ")
end

return false
end

jkxa.shopMessage = _d("MgBEAhAYRA") .. efp.name

return true
end

local function fur(adcv)
local meym = xyy(adcv)

if not meym or bgyj(adcv) == meym.id then
return false
end

local nqbs

if adcv == _d("AgBV") then
nqbs = _d("NR5EDAg+CxQ")
elseif adcv == _d("Eg5YEQ") then
nqbs = _d("NR5EDAguBRkb")
else
return false
end

local fnn, wgu = he(nqbs, meym.id)

if not fnn then
if wgu ~= _d("AwNeEg") then
jkxa.shopMessage = _d("MwBECRxMCh8bEQAJGQ0ATw") .. meym.name .. _d("UEc") .. tostring(wgu) .. _d("WQ")
end

return false
end

if adcv == _d("AgBV") then
jkxa.rod = meym.id
elseif adcv == _d("Eg5YEQ") then
jkxa.equippedBait = meym.id
else
return false
end

jkxa.shopMessage = _d("NR5EDAgcARRP") .. meym.name

return true
end

local function mef()
local qni = jkxa.shop

if os.time() - (jkxa.lastSync or 0) >= 5 then
yzvw()
end

if qni.equipRod then
fur(_d("AgBV"))
end

if qni.equipBait then
fur(_d("Eg5YEQ"))
end

if qni.autoBuyRod then
vptk(_d("AgBV"), _d("MhpINxcI"), wgt(_d("AgBV")))
end

if qni.autoBuyBait then
vptk(_d("Eg5YEQ"), _d("MhpIJxkFEA"), wgt(_d("Eg5YEQ")))
end
end

local function fi()
local aphy = jkxa.shop

return aphy.autoBuyRod or aphy.autoBuyBait or aphy.equipRod or aphy.equipBait
end

jkxa.shopIsland = {
rods = function()
local te = lcli and lcli.RodsById or {}
local rdpy = {}

for vwha, zoc in pairs(te) do
if tostring(zoc.shop) == _d("GRxdBBYI") then
table.insert(rdpy, {
id = tostring(vwha),
name = tostring(zoc.name or vwha),
cost = tonumber(zoc.cost) or 0,
luck = tonumber(zoc.luck) or 0,
index = tonumber(zoc.index) or 0,
crafted = zoc.crafted == true,
})
end
end

table.sort(rdpy, function(pirv, ary)
return pirv.index < ary.index
end)

return rdpy
end,

angler = function()
local jck = workspace:FindFirstChild(_d("Pj9yFg"), true)

if not jck then
return nil
end

for qto, pfv in ipairs(jck:GetChildren()) do
if pfv:GetAttribute(_d("IwpSFx0YJR4IXQAKIjQz")) then
return pfv
end
end

return nil
end,
held = function(mh)
return (jkxa.rodsOwned or {})[mh] == true
end,
recipeHeld = function(yig)
for xqkb, tsw in ipairs(yig or {}) do
local px = tonumber((jkxa.mats or {})[tsw.id]) or 0

if px < (tonumber(tsw.count) or 0) then
return false
end
end

return true
end,
recipeText = function(jt)
local xdn = {}

for fx, mpq in ipairs(jt or {}) do
local kdrm = tonumber((jkxa.mats or {})[mpq.id]) or 0
local edri = (zpas.ById[mpq.id] and zpas.ById[mpq.id].name) or tostring(mpq.id)

table.insert(xdn, edri .. _d("UA") .. mi(kdrm) .. _d("Xw") .. mi(tonumber(mpq.count) or 0))
end

return table.concat(xdn, _d("UK2GRQ"))
end,

stand = function(gqs)
local ibjf = pl.Character
local hfsb = ibjf and ibjf:FindFirstChild(_d("OBpcBBYDDRQ9XgoMPAUCGw"))

if not (hfsb and gqs) then
return false
end

local qqve = gqs:GetPivot()
local vqon = gqs:FindFirstChild(_d("OBpcBBYDDRQ9XgoMPAUCGw")) or gqs:FindFirstChildWhichIsA(_d("Mg5CACgNFgQ"), true)
local mqjf = vqon and (vqon.CFrame * CFrame.new(0, 0, -5)).Position or nil

if not mqjf then
local zwu = RaycastParams.new()
zwu.FilterType = Enum.RaycastFilterType.Exclude
zwu.FilterDescendantsInstances = { ibjf, gqs }

local uf = nil
local lozc = math.huge

for ktq, ai in ipairs({ Vector3.new(0, 0, 6), Vector3.new(6, 0, 0), Vector3.new(0, 0, -6), Vector3.new(-6, 0, 0), Vector3.new(0, 0, 0) }) do
local xe = workspace:Raycast(qqve.Position + ai + Vector3.new(0, 30, 0), Vector3.new(0, -140, 0), zwu)

if xe and tostring(xe.Instance.Name) ~= _d("Jw5FAAo") and xe.Position.Y <= qqve.Position.Y + 10 then
local rhjh = math.abs(xe.Position.Y - qqve.Position.Y)

if rhjh < lozc then
uf = xe
lozc = rhjh
end
end
end

mqjf = uf and Vector3.new(uf.Position.X, uf.Position.Y + 3.5, uf.Position.Z) or (qqve.Position + Vector3.new(0, 4, 0))
end

jkxa.shopTripUntil = os.clock() + 12

jkxa.islandTripUntil = os.clock() + 12

pcall(function()
hfsb.CFrame = CFrame.new(mqjf)
end)

task.wait(1.2)

return true
end,
atIsland = function()
local maeb = workspace:FindFirstChild(_d("ORxdBBYIIhkcWQAKAQUeIWEm"), true)
local zt = pl.Character
local lcjk = zt and zt:FindFirstChild(_d("OBpcBBYDDRQ9XgoMPAUCGw"))

if not (maeb and lcjk) then
return false
end

return (lcjk.Position - maeb:GetPivot().Position).Magnitude <= 45
end,
toIsland = function()
if jkxa.shopIsland.atIsland() then
return true
end

jkxa.shopTripUntil = os.clock() + 12

if not jkxa.gotoIsland() then
return false
end

task.wait(1.2)

return jkxa.shopIsland.atIsland()
end,

craftExcalibur = function()
local bgq = jkxa.shopIsland.angler()

if not bgq or jkxa.shopIsland.held(_d("AgBVOgsJBwIKRQ")) then
return false
end

if not jkxa.shopIsland.recipeHeld(lcli and lcli.SecretRecipe) then
return false
end

jkxa.shopIsland.stand(bgq)

local dmf, vto = he(_d("Mx1QAww+CxQ"), _d("AgBVOgsJBwIKRQ"))

if dmf then
jkxa.rod = _d("AgBVOgsJBwIKRQ")
jkxa.islandMessage = _d("Mx1QAwwJAFAbWQBYKRwTDl0MGhkWUB1eAVgNEFAbWQBYJA0UC1QLWC0KFwNUFw")
elseif vto ~= _d("AwNeEg") then
jkxa.islandMessage = _d("OAZVAR0CRDEBVgkdHkQCClcQCwkAUBtZAFgpHBMOXQwaGRZQRw") .. tostring(vto) .. _d("WQ")
end

return dmf
end,
craftBoot = function()
if jkxa.boot.owned or jkxa.islandLocked then
return false
end

if not jkxa.shopIsland.recipeHeld(lcli and lcli.BootRecipe) then
return false
end

if not jkxa.shopIsland.toIsland() then
jkxa.islandMessage = _d("MwBECRxMCh8bERcdDQcYT0UNHUwNAwNQCxxMBx8aXxEdHg")
return false
end

local xvt, mpkv = he(_d("Mx1QAwwuCx8b"))

if xvt then
jkxa.boot.owned = true
jkxa.islandMessage = _d("Mx1QAwwJAFAbWQBYIAEXCl8BGR4dUC1eCgw")
elseif mpkv ~= _d("AwNeEg") then
jkxa.islandMessage = _d("ORxdBBYIRDYGQg0dHgkRAREXHQoRAwpVRQwEAVANXgoMTEw") .. tostring(mpkv) .. _d("WQ")
end

return xvt
end,
best = function()
local otqn = jkxa.rodsOwned or {}
local js = nil

for kk, habs in ipairs(jkxa.shopIsland.rods()) do
if otqn[habs.id] == true and (js == nil or habs.luck > js.luck) then
js = habs
end
end

return js
end,

equipBoot = function()
if not jkxa.boot.owned or jkxa.boot.equipped then
return false
end

local rbs, ckb = he(_d("NR5EDAguCx8b"), true)

if rbs then
jkxa.boot.equipped = true
jkxa.islandMessage = _d("NR5EDAgcARRPRQ0dTCgVCFQLHA0WCU9zChcY")
elseif ckb ~= _d("AwNeEg") then
jkxa.islandMessage = _d("MwBECRxMCh8bEQAJGQ0AT0UNHUwGHwBFRVA") .. tostring(ckb) .. _d("WQ")
end

return rbs
end,
active = function()
local tu = jkxa.island

return tu.autoRod or tu.autoAcc or tu.equipAcc
end,
run = function()
local yl = jkxa.island

if os.time() - (jkxa.lastSync or 0) >= 8 then
yzvw()
end

if yl.autoRod then
jkxa.shopIsland.craftExcalibur()
end

if yl.autoAcc then
jkxa.shopIsland.craftBoot()
end

if yl.equipAcc then
jkxa.shopIsland.equipBoot()
end
end,
text = function()
if not lcli then
return _d("NgZCDRECAzQORQRYAgsET1cKDQIAUEIRERAJRBkcXQQWCEQDB14VWAUXUBpfBA4NDRwOUwkdQg")
end

local zz = {}
local alrj = jkxa.rodsOwned or {}

table.insert(zz, jkxa.islandLocked and _d("MQ1QCxwDChULESwLAAUeCxEMC0wIHwxaABxMSVAdVAcRHhAYT1cMCh8QXg") or _d("MQ1QCxwDChULESwLAAUeCxEMC0wLAApfSw"))

for slmx, ep in ipairs(jkxa.shopIsland.rods()) do
local br

if alrj[ep.id] == true then
br = jkxa.rod == ep.id and _d("HxhfABxMpsdPXgtYAgsH") or _d("HxhfABw")
elseif ep.crafted then
br = _d("OAZVAR0CRDEBVgkdHkQCClIMCAk")
else
br = mi(ep.cost) .. _d("UAxQFgwf")
end

table.insert(zz, ep.name .. _d("UI2x8Vg") .. br)
end

table.insert(zz, _d(""))

if alrj.rod_secret then
table.insert(zz, _d("NRdSBBQFBgUdC0UXGwoVCw"))
else
local lph = jkxa.shopIsland.recipeHeld(lcli.SecretRecipe)

table.insert(zz, _d("NRdSBBQFBgUdC0U") .. (lph and _d("AgpSDAgJRAIKUAEB") or _d("AgpSDAgJRAMHXhcM")))
table.insert(zz, jkxa.shopIsland.recipeText(lcli.SecretRecipe))
end

table.insert(zz, _d("OAZVAR0CRDEBVgkdHl5Q") .. (jkxa.shopIsland.angler() and _d("BR8RCxcb") or _d("HgBFRRAJFhU")))
table.insert(zz, _d(""))

local ix = jkxa.boot
local nwo

if ix.equipped then
nwo = _d("PApWABYIBQIWEScXAxBKT1QUDQUUAApV")
elseif ix.owned then
nwo = _d("PApWABYIBQIWEScXAxBKT14SFgkA")
elseif jkxa.shopIsland.recipeHeld(lcli.BootRecipe) then
nwo = _d("PApWABYIBQIWEScXAxBKT0MAGwUUFU9DABkIHQ")
else
nwo = _d("PApWABYIBQIWEScXAxBKTw") .. jkxa.shopIsland.recipeText(lcli.BootRecipe)
end

table.insert(zz, nwo)
table.insert(zz, _d("Mw5CEQtMEB9PQhUdAgBKTw") .. mi(jkxa.casts or 0))

if jkxa.islandMessage then
table.insert(zz, _d(""))
table.insert(zz, jkxa.islandMessage)
end

return table.concat(zz, _d("eg"))
end,
}

task.spawn(function()
yzvw()
end)

local najo = {
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

getgenv().ACBXAutoBuyHalloween = najo

bwkv(rd.SyncItems.OnClientEvent, function(xahz)
if type(xahz) == _d("BA5TCR0") then
najo.balances = xahz
najo.lastSync = os.time()
end
end)

rd.RequestItemSync:FireServer()

bwkv(rd.RaidShopState.OnClientEvent, function(tqg)
if type(tqg) == _d("BA5TCR0") and tqg.shopId == _d("GA5dCRcbARUB") then
najo.shopState = tqg
najo.stateAt = os.clock()
end
end)

bwkv(rd.RaidNotify.OnClientEvent, function(hf)
local zp = najo.pending

if not zp or type(hf) ~= _d("AxtDDBYL") then
return
end

if hf:sub(1, 9) == _d("IDpjJjAtNzUr") then
najo.purchased[zp.id] = (najo.purchased[zp.id] or 0) + 1
najo.pending = nil
else
if najo.balances[zp.currency] then
najo.balances[zp.currency] = najo.balances[zp.currency] + zp.price
end

najo.failedUntil[zp.id] = os.time() + 5
najo.pending = nil
end
end)

mn.trip = {
untilAt = 0,
lastTry = 0,
lastResult = nil,
spot = nil,
}

function mn.merchant()
local mv = workspace:FindFirstChild(_d("Pj9yFg"))
local rs = mn.shopData and mn.shopData.NpcName or _d("IBpcFRMFClAiVBcbBAUeGw")

return mv and mv:FindFirstChild(rs) or nil
end

function mn.stand()
local hcgo = mn.merchant()
local nid = hcgo and (hcgo:FindFirstChild(_d("OBpcBBYDDRQ9XgoMPAUCGw")) or hcgo:FindFirstChildWhichIsA(_d("Mg5CACgNFgQ")))
local evn = pl.Character
local yo = evn and evn:FindFirstChild(_d("OBpcBBYDDRQ9XgoMPAUCGw"))

if not (nid and yo) then
return false
end

mn.trip.spot = nid.Position + Vector3.new(0, 3, 4)
yo.AssemblyLinearVelocity = Vector3.zero
yo.CFrame = CFrame.new(mn.trip.spot)

return true
end

function mn.fresh()
return najo.shopState ~= nil and os.clock() - najo.stateAt < 30
end

function mn.guiOpen()
local rh = kdoz:FindFirstChild(_d("OA5dCRcbARUBYg0XHCMFBg"))
local ypf = rh and rh:FindFirstChild(_d("IwdeFT4eBR0K"))

if ypf then
return ypf.Visible == true
end

for unz, thd in ipairs(kdoz:GetChildren()) do
if thd:IsA(_d("IwxDAB0CIwUG")) and thd.Name:lower():find(_d("GA5dCRcbARUB"), 1, true) and thd.Enabled then
return true
end
end

return false
end

function mn.close()
local ll = kdoz:FindFirstChild(_d("OA5dCRcbARUBYg0XHCMFBg"))
local sbia = ll and ll:FindFirstChild(_d("IwdeFT4eBR0K"))

if not (sbia and sbia.Visible) then
return false
end

local nn = sbia:FindFirstChild(_d("MwNeFh0uEQQbXgs"))

if not nn then
for dla, eaqs in ipairs(sbia:GetDescendants()) do
if eaqs:IsA(_d("NxpYJw0YEB8B")) and tostring(eaqs.Name):lower():find(_d("EwNeFh0"), 1, true) then
nn = eaqs
break
end
end
end

if nn and type(firesignal) == _d("FhpfBgwFCx4") then
pcall(function()
firesignal(nn.MouseButton1Click)
end)

task.wait(0.3)

if not sbia.Visible then
return true
end
end

pcall(function()
sbia.Visible = false
end)

return true
end

function mn.spend()
if najo.pending or os.time() - (najo.lastAttempt or 0) < 1 then
return nil
end

local dhra = najo.shopState

for cws, gn in ipairs(mn.shopItems) do
if najo.selected[gn.id] and os.time() >= (najo.failedUntil[gn.id] or 0) then
local qz = gn.stock
local hfm = najo.purchased[gn.id] or 0

if dhra and dhra.stocks and dhra.stocks[gn.id] then
qz = dhra.stocks[gn.id]
end

if dhra and dhra.bought then
hfm = math.max(hfm, dhra.bought[gn.id] or 0)
end

local im = qz and (qz - hfm) or 1
local esgv = najo.balances[gn.currency] or 0

if im > 0 and esgv >= gn.price then
najo.pending = {
id = gn.id,
price = gn.price,
currency = gn.currency,
at = os.time(),
}
najo.lastAttempt = os.time()
najo.balances[gn.currency] = esgv - gn.price

pcall(function()
rd.BuyRaidItem:FireServer(gn.id, 1)
end)

return gn.id
end
end
end

return nil
end

function mn.open(xyo)
if not xyo and mn.fresh() then
return true
end

if not xyo and os.clock() < (mn.trip.lastTry or 0) + 8 then
return false
end

mn.trip.lastTry = os.clock()
mn.trip.untilAt = os.clock() + 12

jkxa.shopTripUntil = os.clock() + 12
jkxa.shopHoldUntil = os.clock() + 12
jkxa.phase = _d("GQtdAA")

local cjx = mn.merchant()
local lhir = cjx and cjx:FindFirstChild(_d("IB1eHREBDQQWYRcXARQE"))

if not (cjx and lhir) then
jkxa.deepPhase = _d("GQtdAA")
mn.trip.untilAt = os.clock() + 60
mn.trip.lastResult = _d("JAdURSgZCQAEWAtYIQECDFkEFhhEGRwRCxcYRBkBEREQBRdQDUQMFAhK")

return false
end

local hjb = os.clock() + 3
local dknp = 0

while os.clock() < hjb do

mn.stand()

if os.clock() >= dknp then
dknp = os.clock() + 0.8

if type(fireproximityprompt) == _d("FhpfBgwFCx4") then
pcall(function()
fireproximityprompt(lhir)
end)
end

pcall(function()
rd.OpenRaidShop:FireServer(_d("GA5dCRcbARUB"))
end)
end

if mn.guiOpen() or mn.fresh() then
break
end

task.wait(0.1)
end

if not (mn.guiOpen() or mn.fresh()) then

jkxa.deepPhase = _d("GQtdAA")
mn.trip.untilAt = os.clock() + 60
mn.trip.lastResult = _d("JAdURRsDER4bVBdYCA0UT18KDEwFHhxGAApMSVAGRUUXAggJT14VHQIXUAZfRQwEAVAcVAQLAwoRAxEECgkFXg")

return false
end

mn.trip.lastResult = _d("MwBECwwJFlAAQQAWQg")

for zky = 1, 3 do
mn.stand()

if not mn.spend() then
break
end

task.wait(1.2)
end

pcall(mn.close)

jkxa.deepPhase = _d("GQtdAA")

return true
end

local function jg(fe)
fe = math.max(0, math.floor(fe))
local fj = math.floor(fe / 3600)
local ru = math.floor((fe % 3600) / 60)
local tuwn = fe % 60

if fj > 0 then
return string.format(_d("VQtZRV1cVhQC"), fj, ru)
elseif ru > 0 then
return string.format(_d("VQtcRV1cVhQc"), ru, tuwn)
end

return string.format(_d("VQtC"), tuwn)
end

local function aznj()
local jl = kdoz:FindFirstChild(_d("OA5dCRcbARUBYg0XHCMFBg"))
local dp = jl and jl:FindFirstChild(_d("IwdeFT4eBR0K"))
local dpdx = dp and dp:FindFirstChild(_d("ORtUCDQFFwQ"))
local zdxr = {}
local vkgq = nil

if dpdx then
for mmy, zulc in ipairs(mn.shopItems) do
local xku = dpdx:FindFirstChild(zulc.id)
local otq = xku and xku:FindFirstChild(_d("MgBJ"))
local rx = otq and otq:FindFirstChild(_d("IxteBhM"))

if rx and rx:IsA(_d("JApJETQNBhUD")) then
local rgij, lrt = rx.Text:match(_d("WEpVTlFJF1pAFBZSREEURBg"))

if rgij and lrt then
zdxr[zulc.id] = {
remaining = tonumber(rgij),
total = tonumber(lrt),
}
end
end
end
end

if dp then
for ph, qpp in ipairs(dp:GetDescendants()) do
if qpp:IsA(_d("JApJETQNBhUD")) and qpp.Text:find(_d("AgpCAAwfRBkB"), 1, true) then
vkgq = qpp.Text:match(_d("AgpCAAwfRBkBFBZSREpbRhU"))
break
end
end
end

return zdxr, vkgq
end

local function nxbm(wwqw)
if type(wwqw) ~= _d("AxtDDBYL") then
return 0
end

local zmno = tonumber(wwqw:match(_d("WEpVTlEE"))) or 0
local hjoi = tonumber(wwqw:match(_d("WEpVTlEB"))) or 0
local apcq = tonumber(wwqw:match(_d("WEpVTlEf"))) or 0
return zmno * 3600 + hjoi * 60 + apcq
end

local function zh()
local gie = najo.shopState
local kgdp, ubbk = aznj()
local yosk = {}
local xywr = {}
local piwg = {}

for kjai, mqj in ipairs(mn.shopItems) do
local xizi = mqj.stock
local inb = nil

if gie and gie.stocks and gie.stocks[mqj.id] then
xizi = gie.stocks[mqj.id]
end

local ff = najo.purchased[mqj.id] or 0

if gie and gie.bought then
ff = math.max(ff, gie.bought[mqj.id] or 0)
end

if xizi then
inb = math.max(0, xizi - ff)
end

if (not gie or not gie.bought) and kgdp[mqj.id] then
inb = kgdp[mqj.id].remaining
xizi = kgdp[mqj.id].total
end

local us = mqj.currency == _d("Gg5SDicDOxwOXxEdHgo") and _d("PA5fER0eCgM") or _d("Mw5fAQE")
local xlww

if inb == nil then
xlww = mqj.shortName
elseif inb <= 0 then
xlww = mqj.shortName .. _d("UK2GRQsDCBRPXhAM")
else
xlww = mqj.shortName .. _d("UK2GRQ") .. tostring(inb) .. _d("Xw") .. tostring(xizi or _d("Tw"))
end

if not xywr[us] then
xywr[us] = {}
table.insert(piwg, us)
end

table.insert(xywr[us], xlww)
end

local pys = {}

for omw, zb in ipairs(piwg) do
table.insert(pys, zb)

for ewt, idf in ipairs(xywr[zb]) do
table.insert(pys, idf)
end
end

table.insert(yosk, table.concat(pys, _d("emU")))
table.insert(yosk, _d(""))

if gie and type(gie.resetsIn) == _d("HhpcBx0e") then
local oadz = gie.resetsIn - (os.clock() - najo.stateAt)
table.insert(yosk, _d("IgpCERcPDwNPWAtY") .. jg(oadz))
elseif ubbk then
if najo.uiTimerText ~= ubbk then
najo.uiTimerText = ubbk
najo.uiTimerSeconds = nxbm(ubbk)
najo.uiTimerAt = os.clock()
end

local rzb = najo.uiTimerSeconds - (os.clock() - najo.uiTimerAt)
table.insert(yosk, _d("IgpCERcPDwNPWAtY") .. jg(rzb))
else
table.insert(yosk, _d("IgpCERcPDwNPVQQRAB1QrYZFDgUXGRsRERAJRAMHXhU"))
end

if not mn.fresh() then
table.insert(yosk, mn.trip.lastResult or _d("JAdURRsDER4bVBdYBRdQDF0KCwkAUEIRKggJClAcWQoITBMRA1oWWBgMFU9SDRkeBRMbVBdYGRRQG15FERhK"))
end

return table.concat(yosk, _d("eg"))
end

bwkv(rd.NPCBattleResult.OnClientEvent, function(mffh)
if type(mffh) ~= _d("BA5TCR0") then
return
end

bwk.battlePending = false

if mffh.result == _d("EwBeCRwDEx4") and type(mffh.remaining) == _d("HhpcBx0e") and ejg and hdh then
asr(ejg, hdh, os.time() + mffh.remaining)
return
end

if type(mffh.npcId) == _d("AxtDDBYL") then
local qu = type(mffh.difficulty) == _d("AxtDDBYL") and mffh.difficulty or bwk.activeDifficulty[mffh.npcId] or _d("HgBDCBkA")
local dbj = lgx.ById[mffh.npcId]
local mbo = tonumber(mffh.cooldown) or (dbj and dbj.cooldown) or 300
asr(mffh.npcId, qu, os.time() + mbo)
end
end)

bwkv(rd.SyncNPCCooldowns.OnClientEvent, function(hst)
if type(hst) ~= _d("BA5TCR0") then
return
end

for wf, ruvh in pairs(hst) do
if type(wf) == _d("AxtDDBYL") and type(ruvh) == _d("HhpcBx0e") then
local bkr = bwk.activeDifficulty[wf] or _d("HgBDCBkA")
asr(wf, bkr, ruvh)
end
end
end)

local dnq = {}
local ad = {}

for qpso, ohgw in ipairs(ch.Worlds) do

local xf = { _d("MQNd") }
local nmw = {}
local rrlh = {}
local ylin = nil

for nv, ir in ipairs(ohgw.npcs or {}) do
local gd = lgx.ById[ir]
if gd then
table.insert(xf, gd.name)
table.insert(rrlh, ir)
nmw[gd.name] = ir
if gd.type == _d("Eg5FERQJ") then
ylin = ir
end
end
end

local anfh = ohgw.id
if ylin and ew.ById[ylin] then
anfh = ew.ById[ylin].worldId or anfh
end

for jsv, bk in ipairs(ohgw.npcs or {}) do
ad[bk] = anfh

bwk.bossTeams.worldOf[bk] = ohgw.id
end

table.insert(dnq, {
id = ohgw.id,
teleportWorldId = anfh,
name = ohgw.name,
options = xf,
ids = rrlh,
byName = nmw,
npcs = ohgw.npcs,
})
end

local lnyg = {}
local ccry = {}
local otg = {}

for fea, ymv in ipairs(ch.Difficulties) do
table.insert(lnyg, ymv.name)
ccry[ymv.name] = ymv.id
otg[ymv.id] = ymv.name
end

local jjrx = {}
local yee = {}

for giaf, gjph in ipairs(oon.Difficulties) do
table.insert(jjrx, gjph.name)
yee[gjph.name] = gjph.id
end

local vzd = {}
local edm = {}
local yzkv = {}
local vgd = {
soul_king = _d("Ig5YAS8DFhwL"),
beerus = _d("Ig5YAS8DFhwLbicdCRYFHA"),
reid = _d("Ig5YAS8DFhwLbjcdBQA"),
}

for esv, ipo in ipairs(oon.Raids) do
if ipo.BossTitle and ipo.id then
table.insert(vzd, ipo.BossTitle)
edm[ipo.BossTitle] = ipo.id
yzkv[ipo.id] = ipo.NpcId
end
end

local function sxwz()
for ivel, zlnd in ipairs({ _d("Mg5FERQJIwUG"), _d("Mg5FERQJIwUGAw") }) do
local nez = kdoz:FindFirstChild(zlnd)
local bq = nez and nez:FindFirstChild(_d("Mg5FERQJNxMdVAAW"))
if bq and bq.Visible then
return bq
end
end
end

local function vfyz()
for eric, ycu in ipairs({ _d("Mg5FERQJIwUG"), _d("Mg5FERQJIwUGAw") }) do
local asl = kdoz:FindFirstChild(ycu)
local iiu = asl and asl:FindFirstChild(_d("Mg5FERQJNxMdVAAW"))
if iiu then
return iiu
end
end
end

local function cdmi()
if sxwz() then
return true
end

for pnzb, xfx in ipairs({ _d("Mg5FERQJIwUG"), _d("Mg5FERQJIwUGAw") }) do
local qco = kdoz:FindFirstChild(xfx)
local dr = qco and qco:FindFirstChild(_d("OAZVADoNEAQDVCcNGBAfAQ"))
if dr and dr.Visible then
return true
end
end

for bg, ctpy in ipairs({ _d("OQFzBAwYCBU"), _d("OQFzBAwYCBVd") }) do
local tpm = kdoz:FindFirstChild(ctpy)
if tpm and tpm:IsA(_d("MgBeCS4NCAUK")) and tpm.Value then
return true
end
end

return false
end

function hu.slotFree(zk)

if zk == nil then
return false
end

if not hu.enabled then
return not cdmi()
end

return not hu.busy(zk)
end

function hu.npcSlot()
return hu.roleSlot(_d("Hh9S"))
end

local ptw

local function cnik(qmhn)
qmhn = math.max(0, math.floor(qmhn))
if qmhn <= 0 then
return _d("AgpQAQE")
end

local sibl = math.floor(qmhn / 60)
local pear = qmhn % 60

if sibl > 0 then
return string.format(_d("VQtcRV1cVhQc"), sibl, pear)
end

return string.format(_d("VQtC"), pear)
end

local function hxb()
for dbb, rxm in ipairs({ _d("Mg5FERQJIwUG"), _d("Mg5FERQJIwUGAw") }) do
local lq = kdoz:FindFirstChild(rxm)
if lq then
local tot = lq:FindFirstChild(_d("IhpfIxQDCwIjUAcdAA"))
local ugq = lq:FindFirstChild(_d("JABGAAoqCB8AQykZDgEc"))
if (tot and tot.Visible) or (ugq and ugq.Visible) then
return _d("OQERMRcbAQI")
end
end
end

if jb.currentRoom and (jb.inBattle or cdmi()) then
local ztkz = nil

for toe, ctx in ipairs({ _d("Mg5FERQJIwUG"), _d("Mg5FERQJIwUGAw") }) do
local ydm = kdoz:FindFirstChild(ctx)
local qjo = ydm and ydm:FindFirstChild(_d("Mg5FERQJNxMdVAAW"))
local yafk = qjo and qjo:FindFirstChild(_d("NQFUCAEtBwQGRwA7DRYU"))
local mstk = yafk and yafk:FindFirstChild(_d("Pg5cADQNBhUD"))

if mstk and mstk.Text ~= _d("") then
ztkz = mstk.Text
break
end
end

if ztkz then
return _d("Mg5FERQFChdP") .. ztkz .. _d("UDRjChcBRA") .. jb.currentRoom .. _d("LQ")
end

return _d("Mg5FERQFChdPajcXAwlQ") .. jb.currentRoom .. _d("LQ")
end

local sf = vfyz()
if cdmi() and sf then
local ydbb = sf:FindFirstChild(_d("NQFUCAEtBwQGRwA7DRYU"))
local dyg = ydbb and ydbb:FindFirstChild(_d("Pg5cADQNBhUD"))
local qufc = dyg and dyg.Text

local jq = nil
if bwk.currentBattle then
jq = bwk.currentBattle.difficulty
elseif qufc then
local ni = fh[qufc]
if ni then
jq = bwk.activeDifficulty[ni]
end
end

local siy = _d("")
if jq then
siy = _d("UDQ") .. (otg[jq] or jq) .. _d("LQ")
end

local wr = qufc
if bwk.currentBattle and bwk.currentBattle.npcId then
local xb = lgx.ById[bwk.currentBattle.npcId]
if xb then
wr = xb.name
end
end

if wr and wr ~= _d("") then
return _d("Mg5FERQFChdP") .. wr .. siy
end

return _d("Mg5FERQFChc") .. siy
end

bwk.currentBattle = nil

local kqq = hntq.enabled and (hntq.bossFor(1) or hntq.bossFor(2))

if kqq then
local hdu = bzz:FindFirstChild(_d("Ig5YASsYBQQaQg"))

if hdu then
local todz = kqq
local txgv = oon.ById[todz]
local mtl = txgv and txgv.BossTitle or todz
local vsg = hdu:GetAttribute(_d("ORx+FR0C")) == true or hdu:GetAttribute(_d("NgBDBh0I")) == true
local qri = hdu:GetAttribute(_d("IgpQAQEz") .. todz) == true
local bta = hntq.progress[todz]
local wyz = bta and bta.locked == true

if not vsg then
local od = tonumber(hdu:GetAttribute(_d("MwdQCx8JFzEb"))) or 0
return _d("OQtdAFhBRA") .. mtl .. _d("UD1QDBxWRA") .. cnik(od - os.time())
end

if bta and bta.cooldowns then
local fkky = tonumber(bta.cooldowns.normal)

if fkky and fkky > 0 then
return _d("OQtdAFhBRA") .. mtl .. _d("UD1QDBxWRA") .. cnik(fkky)
end
end

if not qri or wyz then
return _d("OQtdAFhBRA") .. mtl .. _d("UD1QDBxWRBwAUg4dCA")
end

return _d("OQtdAFhBRA") .. mtl .. _d("UD1QDBxWRAIKUAEB")
end
end

if jkxa.enabled then
if jkxa.usingGameAuto then
return _d("NgZCDRECA1BCEQIZAQFQDkQRF0xM") .. mi(sld()) .. _d("UAxQEB8EEFk")
end

if jkxa.phase == _d("Ew5CERECAw") then
return _d("NgZCDRECA1BCEQYZHxAZAVY")
end

if jkxa.phase == _d("Bw5YERECAzIGRQA") then
return _d("NgZCDRECA1BCERIZBRAZAVZFHgMWUA4RBxEYAQ")
end

if jkxa.phase == _d("AgpUCRECAw") or jkxa.phase == _d("AgpCChQaDR4I") then
return _d("NgZCDRECA1BCERcdCQgZAVZFFwIBUAZf")
end

return _d("NgZCDRECA1BCEQwcAAFQRw") .. mi(sld()) .. _d("UAxQEB8EEFk")
end

if not bwk.enabled and not bwk.story then
return _d("OQtdAA")
end

local fcw, ngdi, dhkg = ptw()

if fcw then
local cs = lgx.ById[fcw]
local hmp = cs and cs.name or fcw
local nzhc = (ngdi or 0) - os.time()
local qx = otg[dhkg] or dhkg or _d("PgBDCBkA")

return _d("OQtdAFhBRD4KSRFCTA") .. hmp .. _d("UDQ") .. qx .. _d("LU8Z") .. cnik(nzhc) .. _d("WQ")
end

return _d("OQtdAA")
end

local function akxa(ill)
local owt = workspace:FindFirstChild(_d("Pj9yFg"))
if not owt then
return nil
end

for cdod, tm in ipairs(owt:GetChildren()) do
if tm:GetAttribute(_d("Pj9yLBw")) == ill then
return tm
end
end

return nil
end

local function nl(ytd)
local adt = pl.Character
local qd = adt and adt:FindFirstChild(_d("OBpcBBYDDRQ9XgoMPAUCGw"))
if not (qd and ytd) then
return false
end

local oeh, ebt = pcall(function()
return ytd:GetPivot()
end)
if not oeh then
return false
end

local rtc = ebt.Position + ebt.LookVector * 6 + Vector3.new(0, 3, 0)
local wqt = Vector3.new(ebt.Position.X, rtc.Y, ebt.Position.Z)

qd.CFrame = CFrame.lookAt(rtc, wqt)
return true
end

local function lxuz()
local tjj = pl:FindFirstChild(_d("IANQHB0eNxMdWBUMHw"))
local bbed = tjj and tjj:FindFirstChild(_d("IANQHB0eKR8LRAkd"))

if not bbed then
return nil
end

local fudi, qsm = pcall(require, bbed)
if not fudi then
return nil
end

local zic, yzye = pcall(function()
return qsm:GetControls()
end)

if zic then
return yzye
end
end

local function xmox(vk, gjpw, ztbf, rv, kb)
rv = rv or 8

local function uzup()
return gjpw and gjpw()
end

local ws = os.clock()

while os.clock() - ws < 5 do
if uzup() then
return false
end

if pl.Character and pl.Character:FindFirstChild(_d("OBpcBBYDDRQ9XgoMPAUCGw")) then
break
end
task.wait(0.2)
end

local ofr = pl.Character
local wwxc = ofr and ofr:FindFirstChildOfClass(_d("OBpcBBYDDRQ"))
local nij = ofr and ofr:FindFirstChild(_d("OBpcBBYDDRQ9XgoMPAUCGw"))

if not (wwxc and nij) then
return false
end

if (nij.Position - vk).Magnitude <= rv then
return true
end

local dvds = ztbf or wwxc.WalkSpeed
local sdbr = lxuz()
local hgsg = wwxc.JumpPower
local dq = wwxc.UseJumpPower

if kb then
pcall(function()
wwxc.UseJumpPower = true
wwxc.JumpPower = math.max(hgsg, 60)
end)
end

if sdbr then
pcall(function()
sdbr:Disable()
end)
end

local dm = wwxc:FindFirstChildOfClass(_d("MQFYCBkYCwI"))
local yso = nil
local rqa = ofr:FindFirstChild(_d("MQFYCBkYAQ"))
local dui = rqa and (rqa:FindFirstChild(_d("Jw5dDjkCDR0"), true) or rqa:FindFirstChild(_d("IhpfJBYFCQ"), true))

if dm and dui then
local wdgh, vc = pcall(function()
return dm:LoadAnimation(dui)
end)

if wdgh and vc then
yso = vc
yso.Looped = true
yso.Priority = Enum.AnimationPriority.Movement
pcall(function()
yso:Play()
end)
end
end

local function ol(ui)
nij.AssemblyLinearVelocity = Vector3.new(0, nij.AssemblyLinearVelocity.Y, 0)

if yso then
pcall(function()
yso:Stop(0.1)
end)
end

if sdbr then
pcall(function()
sdbr:Enable()
end)
end

if kb then
pcall(function()
wwxc.JumpPower = hgsg
wwxc.UseJumpPower = dq
end)
end

return ui
end

local function lhh(ptvp, jkuu)
local bmpx = os.clock()
local noor = os.clock()
local qxf = 0
local dxjs = nij.Position

while os.clock() - bmpx < jkuu do
if uzup() then
return false
end

local ze = ptvp - nij.Position
ze = Vector3.new(ze.X, 0, ze.Z)

if ze.Magnitude <= 3 then
return true
end

local gwg = ze.Unit
nij.AssemblyLinearVelocity = Vector3.new(
gwg.X * dvds,
nij.AssemblyLinearVelocity.Y,
gwg.Z * dvds
)

if kb and os.clock() - noor >= 0.5 then
local exwz = (nij.Position - dxjs).Magnitude
local jy = wwxc:GetState()
local txxx = jy ~= Enum.HumanoidStateType.Jumping and jy ~= Enum.HumanoidStateType.Freefall

if exwz < 1.5 and txxx and os.clock() - qxf >= 0.8 then
wwxc.Jump = true
qxf = os.clock()
end

dxjs = nij.Position
noor = os.clock()
end

task.wait()
end

return false
end

local nob = qonx:CreatePath({
AgentRadius = 2.5,
AgentHeight = 5,
AgentCanJump = true,
WaypointSpacing = 8,
})

local mkhj = pcall(function()
nob:ComputeAsync(nij.Position, vk)
end)

if mkhj and nob.Status == Enum.PathStatus.Success then
for ykc, obz in ipairs(nob:GetWaypoints()) do
if uzup() then
return ol(false)
end

if (nij.Position - vk).Magnitude <= rv then
break
end

if not lhh(obz.Position, 10) and uzup() then
return ol(false)
end
end
end

if uzup() then
return ol(false)
end

local ynli = lhh(vk, 15)
return ol(ynli)
end

local function efjd(kvq, ln, qwrq)
return xmox(kvq, qwrq, ln)
end
getgenv().ACBXWalkCancel = false
getgenv().ACBXWalkToPositionWithSpeed = function(lexo, qb)
return efjd(lexo, qb, function()
return getgenv().ACBXWalkCancel == true
end)
end

local function bz()
if bwk.story then
return { bwk.storyDifficulty }
end

return bwk.difficulties
end

local function byzr()
local jyf = {}

if bwk.story then
for bzbw, cwuk in ipairs(dnq) do
for dws, yxt in ipairs(cwuk.ids) do
table.insert(jyf, yxt)
end

if cwuk.id == _d("GRxUDhkF") then
break
end
end

return jyf
end

local bjlc = {}

for vbua, gh in ipairs(dnq) do
local fsve = bwk.selectedByWorld[gh.name]

if fsve then
for oz, ppvz in ipairs(fsve) do
if not bjlc[ppvz] then
bjlc[ppvz] = true
table.insert(jyf, ppvz)
end
end
end
end

return jyf
end

ptw = function()
local pzku = nil
local gdb = nil
local lsd = nil

for xzs, bmau in ipairs(byzr()) do
local jpc = bwk.unlocked[bmau]

for xea, ptgh in ipairs(bz()) do
if not jpc or jpc[ptgh] ~= false then
local yj = fo(bmau, ptgh)

if not lsd or yj < lsd then
pzku = bmau
gdb = ptgh
lsd = yj
end
end
end
end

return pzku, lsd, gdb
end

local function klw(dy)
if type(dy) ~= _d("AxtDDBYL") then
return nil
end

local jmli = tonumber(dy:match(_d("WEpVTlEE")))
local eew = tonumber(dy:match(_d("WEpVTlEB")))
local tv = tonumber(dy:match(_d("WEpVTlEf")))

if not jmli and not eew and not tv then
return nil
end

return (jmli or 0) * 3600 + (eew or 0) * 60 + (tv or 0)
end

local function vw()
local acnp = workspace:FindFirstChild(_d("Pj9yFg"))
if not acnp then
return
end

for labn, sfsu in ipairs(acnp:GetChildren()) do
local tn = sfsu:GetAttribute(_d("Pj9yLBw"))
if type(tn) == _d("AxtDDBYL") then
local stsp = sfsu:FindFirstChild(_d("OBpcBBYDDRQ9XgoMPAUCGw"))
local hned = stsp and stsp:FindFirstChild(_d("Pj9yJhcDCBQARgs6BQgcDV4ECgg"))
local grep = hned and hned:FindFirstChild(_d("JAZcAAogBRIKXQ"))

local sl = bwk.activeDifficulty[tn] or _d("HgBDCBkA")

if hned and grep then
local lif = klw(grep.Text)
if lif and lif > 0 then
local ibur = os.time() + lif
if ibur > fo(tn, sl) then
asr(tn, sl, ibur)
end
end
else
asr(tn, sl, 0)
end
end
end
end

local function pm(etez)
local aht = {}

for xga, il in ipairs(getconnections(rd.OpenNPCDialog.OnClientEvent)) do
if il.Enabled then
il:Disable()
table.insert(aht, il)
end
end

local zrik = false
local jdq
jdq = bwkv(rd.OpenNPCDialog.OnClientEvent, function(yhmv, gcij, unb, tt)
if yhmv ~= etez or type(tt) ~= _d("BA5TCR0") or type(tt.cooldowns) ~= _d("BA5TCR0") then
return
end

for hi, izsv in pairs(tt.cooldowns) do
if type(hi) == _d("AxtDDBYL") and type(izsv) == _d("HhpcBx0e") then
asr(etez, hi, izsv > 0 and (os.time() + izsv) or 0)
end
end

if type(tt.unlocked) == _d("BA5TCR0") then
bwk.unlocked[etez] = tt.unlocked
end

zrik = true
end)

rd.OpenNPCDialog:FireServer(etez)

local gj = os.clock()
while not zrik and os.clock() - gj < 1.5 do
task.wait(0.05)
end

jdq:Disconnect()

for si, py in ipairs(aht) do
py:Enable()
end

if zrik then
bwk.lastFetch[etez] = os.time()
end

return zrik
end

vw()

local ajq = false
local ler = {}

local function gy(vekt)
ajq = vekt

local hh = kdoz:FindFirstChild(_d("Mw5DATccAR4"))
if not hh then
return
end

local cf = hh:FindFirstChild(_d("Mw5DATccAR4"))

if vekt then
if cf then
ler = getconnections(cf.Event)
for fl, pei in ipairs(ler) do
if pei.Enabled then
pei:Disable()
end
end
end

hh.Enabled = false

local ttma = kdoz:FindFirstChild(_d("JABGAAo+AQMaXRE/GQ0"))
if ttma then
local akkn = ttma:FindFirstChild(_d("IgpCEBQYIgIOXAA"))
if akkn then
akkn.Visible = false
end

local vnc = ttma:FindFirstChild(_d("NwpfAAoNEBkBViMKDQkV"))
if vnc then
vnc.Visible = false
end
end
else
for ibq, pidt in ipairs(ler) do
if not pidt.Enabled then
pidt:Enable()
end
end

ler = {}
hh.Enabled = true
end
end

getgenv().ACBXSetAutoCloseGeneration = gy

local bde

for oouh = 1, 3 do
local pafr, xz = pcall(function()
return game:HttpGet(_d("GBtFFQtWS18IWBEQGQZeDF4IVw4NFwhQBxcVVkFdHigZDwgZDR4XHQABERxUFlcABQQKQhFXCAsHAV0KGQhLHQ5SCREOSgQXRQ"))
end)

if pafr and type(xz) == _d("AxtDDBYL") and #xz > 20000 then
bde = xz
break
end

warn(_d("Ky5yJyAxRD0OUikRDkQWCkUGEEwFBBtUCAgYRA") .. oouh .. _d("UAlQDBQJAEpP") .. tostring(xz))
task.wait(2)
end

if not bde then
warn(_d("Ky5yJyAxRD0OUikRDkQTAEQJHEwKHxsRBx1MCB8OVQAcTElQHEUKCBwNHggRFhdMEBgKEQsdFBBQCkkAGxkQFU9CERkeEANPUgkdDQpe"))
return
end

local yhkt, elz = bde:gsub(
_d("MwBfER0CECAdXhMRCAECVWEXHQALEQtwFgECB1VHUBYLCRA8BkIRXUU"),
_d("BA5CDlYfFBEYX00eGQoTG1gKFkRNUCxeCwwJCgQ/QwoOBQAVHQs1CgkIHw5VJAsVChNHUBYLCRA8BkIRUUwBHgsY"),
1
)

local pi = loadstring(yhkt)()

getgenv().ACBXMacLibPreloadPatch = elz > 0

if type(pi) ~= _d("BA5TCR0") then
warn(_d("Ky5yJyAxRD0OUikRDkQUBlVFFgMQUB1UEQ0eClAOEQkRDhYRHUhFVUwXBABBFRECA1AcXkUMBAFQAVQdDEwBCApSEAwJRAMbUBcMH0QTA1QEFkI"))
return
end

do
local neoz = gethui and gethui() or game:GetService(_d("MwBDAD8ZDQ"))

for jfsf, hawi in ipairs(neoz:GetChildren()) do
local raje = hawi:IsA(_d("IwxDAB0CIwUG")) and hawi:FindFirstChild(_d("Mg5CAA"))

if raje and raje:FindFirstChild(_d("IwZVABoNFg")) and raje:FindFirstChild(_d("MwBfER0CEA")) then
pcall(function()
hawi:Destroy()
end)
end
end
end

do
local fjo = os.clock() + 20

while not lsz and os.clock() < fjo do
task.wait(0.05)
end
end

local ww = pi:Window({
Title = hrt,

Subtitle = _d("My0RLQ0ORFgZ") .. tostring(game.PlaceVersion) .. _d("WQ"),
Size = UDim2.fromOffset(720, 500),
DragStyle = 1,
DisabledWindowControls = {},
ShowUserInfo = false,
Keybind = Enum.KeyCode.Comma,
AcrylicBlur = true,
})

getgenv().ACBXMacLib = pi

do
local oum = _d("MSxzRSoJBhkdRQ0")

pcall(function()
pi.Folder = oum
end)

pcall(function()
if isfolder and makefolder and not isfolder(oum) then
makefolder(oum)
end

if isfolder and makefolder and not isfolder(oum .. _d("XxxUEQwFChcc")) then
makefolder(oum .. _d("XxxUEQwFChcc"))
end
end)

pcall(function()
if pi.SetFolder then
pi:SetFolder(oum)
end
end)
end

ww:GlobalSetting({
Name = _d("PgBFDB4FBxEbWAoWHw"),
Default = true,
Callback = function(yht)
ww:SetNotificationsState(yht)
end,
})

ww:GlobalSetting({
Name = _d("IwdeElg5FxUdESwWCgs"),
Default = false,
Callback = function(idkq)
ww:SetUserInfoState(idkq)
end,
})

ww:GlobalSetting({
Name = _d("MQFFDFgnDRME"),
Default = true,
Callback = function(oug)
kzb.enabled = oug
kzb.nextAt = os.clock() + 300
end,
})

ww:GlobalSetting({
Name = _d("MRpFClg8DRMEETAITDcEBlIO"),
Default = false,
Callback = function(uqa)
jkxa.stick.enabled = uqa
jkxa.stick.at = 0
jkxa.stick.last = uqa and _d("HABeDhECA1AJXhdYDUQDG1gGEw") or _d("HwlX")
end,
})

ww:GlobalSetting({
Name = _d("MRpFClg5FBQORQA"),
Default = true,
Callback = function(nzd)
pc.enabled = nzd

if not nzd then
pc.pendingVersion = nil
pc.pendingSince = nil
end
end,
})

ww:SetAcrylicBlurState(true)
ww:SetNotificationsState(true)
ww:SetUserInfoState(false)

do
local dz = game:GetService(_d("MwBDAD8ZDQ"))

pcall(function()
if type(gethui) == _d("FhpfBgwFCx4") then
dz = gethui()
end
end)

local npzo = dz:FindFirstChild(_d("My15EBouBRQIVA"))

if npzo then
npzo:Destroy()
end

local kxnv = Instance.new(_d("IwxDAB0CIwUG"))
kxnv.Name = _d("My15EBouBRQIVA")
kxnv.ResetOnSpawn = false
kxnv.IgnoreGuiInset = true
kxnv.DisplayOrder = 2147483647
kxnv.Parent = dz

local yhln = Instance.new(_d("JApJEToZEAQAXw"))
yhln.Name = _d("MhpFERcC")
yhln.Size = UDim2.fromOffset(56, 56)

yhln.AnchorPoint = Vector2.new(0, 0.5)
yhln.Position = UDim2.new(1, -64, 0.5, 58)
yhln.BackgroundColor3 = Color3.fromRGB(30, 92, 235)
yhln.BorderSizePixel = 0
yhln.AutoButtonColor = false
yhln.Text = _d("")
yhln.Parent = kxnv

local xxvc = Instance.new(_d("JSZyCgoCAQI"))
xxvc.CornerRadius = UDim.new(0, 14)
xxvc.Parent = yhln

local edf = Instance.new(_d("JSZiEQoDDxU"))
edf.Color = Color3.fromRGB(255, 255, 255)
edf.Thickness = 3
edf.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
edf.Parent = yhln

local uwv = Instance.new(_d("JApJETQNBhUD"))
uwv.Size = UDim2.fromScale(1, 1)
uwv.BackgroundTransparency = 1
uwv.Font = Enum.Font.GothamBlack
uwv.TextSize = 16
uwv.TextColor3 = Color3.fromRGB(255, 255, 255)
uwv.Text = _d("My07LS0u")
uwv.TextStrokeTransparency = 0.5
uwv.Parent = yhln

local function ij()
local kquz = kxnv.AbsoluteSize
local bbfs = kxnv.AbsolutePosition

return UDim2.fromOffset(
kquz.X - bbfs.X - yhln.Size.X.Offset - 8,
(kquz.Y / 2) - bbfs.Y
)
end

task.defer(function()
yhln.Position = ij()

local ji = workspace.CurrentCamera

if ji then
bwkv(ji:GetPropertyChangedSignal(_d("JgZUEggDFgQ8WB8d")), function()
yhln.Position = ij()
end)
end
end)

getgenv().ACBXBadge = kxnv

local hhgb = false
local rdad = false
local sjp = nil
local rfg = nil

bwkv(yhln.InputBegan, function(lqn)
if lqn.UserInputType ~= Enum.UserInputType.MouseButton1 and lqn.UserInputType ~= Enum.UserInputType.Touch then
return
end

hhgb = true
rdad = false
sjp = lqn.Position
rfg = yhln.Position
end)

bwkv(yhln.InputEnded, function(pvm)
if pvm.UserInputType ~= Enum.UserInputType.MouseButton1 and pvm.UserInputType ~= Enum.UserInputType.Touch then
return
end

hhgb = false
end)

bwkv(yhln.MouseButton1Click, function()
if rdad then
rdad = false
return
end

ww:SetState(not ww:GetState())
end)

bwkv(game:GetService(_d("JRxUFzECFAUbYgAKGg0TCg")).InputChanged, function(enng)
if not hhgb then
return
end

if enng.UserInputType ~= Enum.UserInputType.MouseMovement and enng.UserInputType ~= Enum.UserInputType.Touch then
return
end

local dwat = enng.Position - sjp

if math.abs(dwat.X) > 6 or math.abs(dwat.Y) > 6 then
rdad = true
end

yhln.Position = UDim2.new(
rfg.X.Scale,
rfg.X.Offset + dwat.X,
rfg.Y.Scale,
rfg.Y.Offset + dwat.Y
)
end)
end

local xgq = true

local kx = (getgenv().ACBXRunId or 0) + 1
getgenv().ACBXRunId = kx

local function mbys()
return xgq and getgenv().ACBXRunId == kx
end

local function zcq()
local ly = math.max(0, math.floor(tonumber(workspace.DistributedGameTime) or 0))
local yyw = math.floor(ly / 3600)
local una = math.floor((ly % 3600) / 60)

if yyw > 0 then
return yyw .. _d("GE8") .. string.format(_d("VV8DARU"), una)
end

return una .. _d("HQ")
end

do
local ailb = _d("My0RLQ0ORFgZ") .. tostring(game.PlaceVersion) .. _d("WQ")

task.spawn(function()
local dc = nil

while mbys() do
local ereh = ailb .. _d("UK2GRQ0cRA") .. zcq()

if ereh ~= dc then
dc = ereh

pcall(function()
ww:UpdateSubtitle(ereh)
end)
end

task.wait(5)
end
end)
end

ww.onUnloaded(function()
xgq = false
dsm.save()

local ncu = getgenv().ACBXBadge

if ncu then
pcall(function()
ncu:Destroy()
end)
getgenv().ACBXBadge = nil
end

if jkxa.enabled then
jzpl()
end

if cb then
pcall(function()
cb:Disconnect()
end)
end
end)

task.spawn(function()
while mbys() do
vw()
task.wait(2)
end
end)

task.spawn(function()
while mbys() do

local rm = jkxa.enabled
and (jkxa.deepZone or jkxa.tpToBay)
and hntq.worldBoss ~= nil
and type(hntq.worldBoss.holdsFishing) == _d("FhpfBgwFCx4")
and hntq.worldBoss.holdsFishing() == true

local jpd = rm
or (bwk.workPending and bwk.workPending())
or hu.prioBlocks(_d("Bw5FAAo"))

if jkxa.enabled and jkxa.deepZone and not jpd then
vz.cycle()
end

if jkxa.enabled then
if jkxa.phase ~= _d("GQtdAA") and os.clock() >= jkxa.watchdogAt then
jkxa.phase = _d("GQtdAA")
jkxa.nextCastAt = os.clock() + 1
end

if jkxa.autoUnlocked and not jkxa.usingGameAuto and not jkxa.perfectCasts then
sz()
end

if jkxa.phase ~= _d("GQtdAA") and (jkxa.watchdogAt or 0) > 0
and os.clock() > jkxa.watchdogAt then
jkxa.phase = _d("GQtdAA")
jkxa.nextCastAt = 0
jkxa.lastMessage = _d("Mw5CEVgYDR0KVUUXGRBQQhERChUNHggRBB8NDR4")
end

if jkxa.phase == _d("GQtdAA") and os.clock() >= jkxa.nextCastAt
and os.clock() >= math.max(jkxa.shopTripUntil or 0, jkxa.tpHoldUntil or 0)
and not jkxa.usingGameAuto
and not vz.walking
and (not jkxa.deepZone or vz.current() ~= nil)
and not jpd then
if not jkxa.deepZone and jkxa.tpToBay and not dumr() then
ziyh()
end

if not iwad() then
task.wait(4)
end
end

if not jpd and os.clock() >= math.max(jkxa.shopTripUntil or 0, jkxa.tpHoldUntil or 0) then
if (jkxa.totalCasts or 0) ~= (jkxa.castMark or 0) then
jkxa.castMark = jkxa.totalCasts
jkxa.castMarkAt = os.clock()
elseif (jkxa.castMarkAt or 0) > 0
and os.clock() - (jkxa.castMarkAt or 0) > 45 then
pcall(jkxa.recover)
end
else
jkxa.castMark = jkxa.totalCasts
jkxa.castMarkAt = os.clock()
end

if os.time() - jkxa.lastSync >= 20 then
yzvw()
end
end

task.wait(0.5)
end
end)

local tx

task.spawn(function()
local sbvy = zh()

while mbys() do
local po = zh()

if po ~= sbvy then
sbvy = po
pcall(function()
tx:UpdateBody(po)
end)
end

task.wait(1)
end
end)

task.spawn(function()
while mbys() do
if najo.enabled then

if os.clock() >= (mn.trip.untilAt or 0) then
mn.open()
end

local ojmx = najo.pending

if ojmx and os.time() - ojmx.at > 5 then

najo.failedUntil[ojmx.id] = os.time() + 30
najo.pending = nil
rd.RequestItemSync:FireServer()
end

if os.time() - najo.lastSync >= 20 then
najo.lastSync = os.time()
rd.RequestItemSync:FireServer()
end

task.wait(0.5)
else
task.wait(1)
end
end
end)

task.spawn(function()
local efy = mn.text()

while mbys() do
local vayp = mn.text()

if vayp ~= efy and mn.paragraph then
efy = vayp

pcall(function()
mn.paragraph:UpdateBody(vayp)
end)
end

task.wait(1)
end
end)

task.spawn(function()
while mbys() do

if mn.upgrade.balance == nil or os.time() - mn.upgrade.lastRequest >= 20 then
mn.request()
end

if mn.run.highest == nil and os.time() - mn.run.lastRequest >= 5 then
mn.requestProgress()
end

if mn.upgrade.enabled then
mn.buy()

if mn.upgrade.waiting and os.time() - mn.upgrade.lastBuy >= 5 then

mn.upgrade.waiting = false
mn.request()
end

task.wait(0.5)
else
task.wait(1)
end
end
end)

task.spawn(function()
while mbys() do
local aw = mn.run

if aw.enabled then
if aw.highest == nil or os.time() - aw.lastRequest >= 20 then
mn.requestProgress()
end

local dth = aw.inBattle and os.time() < aw.inBattleUntil

if not dth and hu.halloweenSlot() ~= nil
and hu.slotFree(hu.halloweenSlot() or 1)

and (not fngx.enabled or hu.towerSlot() ~= 1)
and (not mvb.island or hu.enabled)
and (not jb.enabled or hu.enabled)
and not (aw.pending and os.time() < aw.pendingUntil) then
if mn.bestRoom() then
mn.startRun()
elseif aw.highest ~= nil then

aw.enabled = false

pcall(function()
mn.runToggle:UpdateState(false)
end)

pcall(function()
ww:Dialog({
Title = _d("MRpFClgkBRwDXhIdCQpQO14SHR4"),
Description = _d("NRlUFwFMLBEDXQoPCQEeT2UKDwkWUBxFBB8JRBkcEQYUCQUCClVFGQAWFQ5VHFRMFx9PRQ0dHgFQBkJFFgMQGAZfAlgAARYbEREXTBYFAR8"),
Buttons = {
{
Name = _d("NwBFRREY"),
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

local xhb = ww:TabGroup()

local qqu = xhb:Tab({
Name = _d("PQ5YCw"),
Image = _d("Ag1JBAsfAQQGVV9XQ1VCVwdWSFhcRVcAUUBbXA"),
})

local zdl = xhb:Tab({
Name = _d("JABGAApMQlA7VAQV"),
Image = _d("Ag1JBAsfAQQGVV9XQ1VAWQRVQVVdQ1oEU0lbVQ"),
})

task.spawn(function()
local shq = 0
local sd = 0

local uhfw = 0

while mbys() do
local gtv = jkxa.rebirthText()

if jkxa.rebirthParagraph and gtv ~= jkxa.rebirthShown then
jkxa.rebirthShown = gtv

pcall(function()
jkxa.rebirthParagraph:UpdateBody(gtv)
end)
end

if os.clock() >= uhfw then
uhfw = os.clock() + 20

local ryz = mvb.remotes and mvb.remotes.request

if ryz then
pcall(function()
ryz:FireServer()
end)
end
end

local vukw = mvb.buffText()

if mvb.islandParagraph and vukw ~= mvb.buffShown then
mvb.buffShown = vukw

pcall(function()
mvb.islandParagraph:UpdateBody(vukw)
end)
end

if jkxa.autoRebirth then
if os.clock() - shq > 15 then
shq = os.clock()
yzvw()
end

if jkxa.rebirthReady() and os.clock() >= sd then
local apww = workspace:FindFirstChild(_d("PQ5WDBsNCFAtXgoT"), true)

if apww then
nl(apww)
task.wait(0.8)
end

local hslw, fyi = he(_d("IgpTDAoYDA"))

if hslw then
jkxa.autoRebirth = false

pcall(function()
jkxa.rebirthToggle:UpdateState(false)
end)

ww:Notify({
Title = _d("IgpTDAoYDA"),
Description = _d("IgpTDAoYDBULH0UsBAFQLlMEFggLHgpVRTEfCBEBVUURH0QfH1QLVg"),
Lifetime = 6,
})
elseif fyi ~= _d("AwNeEg") then
sd = os.clock() + 20

ww:Notify({
Title = _d("IgpTDAoYDA"),
Description = _d("IgpTDAoYDFAdVAMNHwEUVRE") .. tostring(fyi),
Lifetime = 6,
})
end
end
end

task.wait(3)
end
end)

local eu = xhb:Tab({
Name = _d("NgZCDRECAw"),
Image = _d("Ag1JBAsfAQQGVV9XQ1VBWwRQTV1QQloHU0xfVQ"),
})

local maod = xhb:Tab({
Name = _d("NAZWAhECAw"),
Image = _d(""),
})

local kgsq = xhb:Tab({
Name = _d("NRlUCwwf"),
Image = _d("Ag1JBAsfAQQGVV9XQ1VCWgFUSlpRQFsIUkBUVw"),
})

local ee = eu:Section({
Side = _d("PApXEQ"),
})

ee:Header({
Name = _d("NgZCDRECA1Cfruvb"),
})

local ou

local function nay(fsm)
jkxa.enabled = fsm
jkxa.phase = _d("GQtdAA")
jkxa.nextCastAt = 0
jkxa.castMark = jkxa.totalCasts
jkxa.castMarkAt = os.clock()

if not fsm then
jzpl()
return
end

task.spawn(function()
if not vygq() then
ww:Notify({
Title = _d("MRpFClgqDQMH"),
Description = _d("PgARAxEfDBkBVkUKAwBQBl9FDAQBUA1QBhMcBRMEHw"),
Lifetime = 5,
})
end

if jkxa.tpToBay and not dumr() then
ziyh()
end

yzvw()

if jkxa.autoUnlocked and not jkxa.perfectCasts then
sz()
end
end)
end

local ciy = false

local function euy()
if jkxa.tpToBay or jkxa.deepZone then
if jkxa.autoFishWanted then

jkxa.autoFishWanted = false

pcall(function()
ou:UpdateState(true)
end)

if not jkxa.enabled then
nay(true)
end
end

return true
end

if jkxa.enabled then

jkxa.autoFishWanted = true

nay(false)

if not ciy then
ww:Dialog({
Title = _d("MRpFClgqDQMHEQoeCg"),
Description = _d("ORsRCx0JAANPUEULHAsET0UKWAoNAwcRBAxMSVAbRBcWTAseT2U1WBgLUC1QHFgDFlAOESEdCRRQOFARHR4XUBxGDAwPDF4"),
Buttons = {
{
Name = _d("NwBFRREY"),
},
},
})
end
end

return false
end

ou = ee:Toggle({
Name = _d("MRpFClgqDQMH"),
Default = false,
Callback = function(njq)
if njq and rdq then
pcall(function()
ou:UpdateState(false)
end)

if not ciy then
ww:Dialog({
Title = _d("MRpFClgqDQMHEQwLTBQRHVoAHA"),
Description = _d("MRpFClgoDRdPWQQLTBAYChEWEAMSFQMRDBZMDBEBVUtYOBECAREkDRgLUCtYAlgDAhZPUAscTCUFG15FPgUXGE9CERkeEANPXwoKAQUcA0hL"),
Buttons = {
{
Name = _d("NwBFRREY"),
},
},
})
end

return
end

if njq and not (jkxa.tpToBay or jkxa.deepZone) then

pcall(function()
ou:UpdateState(false)
end)

jkxa.autoFishWanted = true

if not ciy then
ww:Dialog({
Title = _d("MRpFClgqDQMHEQsdCQADT1BFCxwLBA"),
Description = _d("JBpDC1gDClA7YUUMA0QyDkhFFx5EEU91AB0cRCcORQAKH0QDGFgRGwREFgZDFgxMSVAuRBEXTCIZHFlFCxgFAhtCRRoVRBkbQgAUCkQRHBEWFwMKUA5CRRcCAVAAV0UMBAEdT1gWWAMKXg"),
Buttons = {
{
Name = _d("NwBFRREY"),
},
},
})
end

return
end

jkxa.autoFishWanted = false

nay(njq)
end,
}, _d("ERpFCicKDQMH"))

jkxa.autoFishToggle = ou

ee:Toggle({
Name = _d("IApDAx0PEFAMUBYMH0RYFwNFFBkHG0Y"),
Default = true,
Callback = function(kptg)
jkxa.perfectCasts = kptg

if kptg and jkxa.usingGameAuto then
jzpl()
end
end,
}, _d("AApDAx0PEC8MUBYMHzsIXW4JDQ8P"))

ee:Toggle({
Name = _d("JD8RERdMJhEW"),
Default = false,
Callback = function(oaoj)
jkxa.tpToBay = oaoj

euy()
end,
}, _d("BB9uERczBhEW"))

local mfo
local zvn

mfo = ee:Toggle({
Name = _d("JApdAAgDFgRPRQpYKAEVH1QWDEwzERtUFw"),
Default = false,
Callback = function(qjtb)
if qjtb then

jkxa.deepWalk = false
jkxa.deepDiveAt = 0
jkxa.deepPhase = _d("GQtdAA")
jkxa.deepStageAt = 0

pcall(function()
zvn:UpdateState(false)
end)

jkxa.deepZone = true

task.spawn(function()
if not vz.settle() and jkxa.deepZone and not jkxa.deepWalk then
ww:Notify({
Title = _d("JApdAAgDFgRPRQpYKAEVH1QWDEwzERtUFw"),
Description = _d("JAdURRwJAQBCRgQMCRZQAlAVWAIBBgpDRRQDBRQKVUtYOBECAREREAlEAxhYERsERB8JV0UZAgBQAF9FGQsFGQERERdMFhUbQxxW"),
Lifetime = 8,
})
end
end)

euy()

return
end

if jkxa.deepWalk then
return
end

jkxa.deepZone = false
jkxa.deepDiveAt = 0
jkxa.deepPhase = _d("GQtdAA")
jkxa.deepStageAt = 0

task.spawn(function()
pcall(function()
rd.TeleportToWorld:FireServer(_d("HABTBwE"))
end)
end)

euy()
end,
}, _d("FApUFScbBQQKQzoaCRcEMF0QGwc"))

zvn = ee:Toggle({
Name = _d("Jw5dDlgYC1ArVAAICRcET2YEDAkW"),
Default = false,
Callback = function(xv)
if xv then

local bube = vz.customIsland or vz.islandOf(vz.spot())

if jkxa.islandLocked and bube == _d("EQ1QCxwDChULbgwLAAUeCw") then
jkxa.deepWalk = false

pcall(function()
zvn:UpdateState(false)
end)

ww:Dialog({
Title = _d("Jw5dDlgYC1ArVAAICRcET2YEDAkWUAFUABwfRAQHVEU5DgUeC14LHQhEORxdBBYI"),
Description = _d("JAdURREfCBEBVUURH0QcAFIOHQhEHwERERAFF1AOUgYXGQoEQREqFglEAgpTDAoYDFAAQQAWH0QZGxFIWBkKBAZdRQwEAR5PRQ0dTAMRAlRFEA0XUAFeRQwJCBUfXhcMTBAYCkMAWBgLUBtQDh1C"),
Buttons = {
{
Name = _d("NwBFRREY"),
},
},
})

return
end

jkxa.deepWalk = true
jkxa.deepDiveAt = 0
jkxa.deepPhase = _d("GQtdAA")
jkxa.deepStageAt = 0

pcall(function()
mfo:UpdateState(false)
end)

jkxa.deepZone = true

task.spawn(function()
vz.walk()
end)

euy()

return
end

if not jkxa.deepWalk then
return
end

jkxa.deepWalk = false
jkxa.deepZone = false
jkxa.deepDiveAt = 0
jkxa.deepPhase = _d("GQtdAA")
jkxa.deepStageAt = 0

task.spawn(function()
pcall(function()
rd.TeleportToWorld:FireServer(_d("HABTBwE"))
end)
end)

euy()
end,
}, _d("Bw5dDicIARUfbhIZGAEC"))

ee:Paragraph({
Header = _d("NApUFR0fEFA4UBEdHg"),
Body = _d("MgBFDVgfExkbUg0dH0QcDl8BWAMKUBtZAFg7DR4LXAwUAEQ5HF0AWAgLEwQRSFgYDBVPVQAdHAEDGxEXEQIDXE9mDBYIExEdVUUvDRAVHUJFVUwXH09FEAoCDR4IEQoWCUQfAREDCgMJUA5fHA8EAQIKEQwWTBAYChECGQEBUA1DDBYLF1AWXhBYDgUTBBERF0wQGA5FRQscCwRBO28vDQgbT1IKDgkWA09FDR1MCBEcRUULGBYVG1INWAMKUAleCgxMExkbWUUMBAFQCFAIHUsXUABGC1gNChkCUBERAwpLT2UAFAkUHx1FRQgZEANPSAoNTBAYCkMAWBsNBAdeEAxMEBgKERIZAA9eT2UKWAQLHAsRBFgIDRYJVBcdAhBQHEEKDEwNHhxFABkISFAdRAtYLScyN3UAHRwzERtUF1YPBQAbRBcdRE1QBl9FDAQBUAxeCwsDCBVPRg0RAAFQHEUEFggNHggRChZMDQRB"),
})

local qhmm

qhmm = ee:Paragraph({
Header = _d("NgZCDRECA1AcRQQMCQ"),
Body = rvy(),
})

local mks = kgsq:Section({
Side = _d("PApXEQ"),
})

mks:Header({
Name = _d("MRpFClgkBRwDXhIdCQpQO14SHR6U7+GylefK4w"),
})

mn.runToggle = mks:Toggle({
Name = _d("MRpFClgkBRwDXhIdCQpQO14SHR4"),
Default = false,
Callback = function(vwqr)
mn.run.enabled = vwqr
mn.run.pending = false
mn.run.pendingUntil = 0

if vwqr then
mn.requestProgress()
end
end,
}, _d("ERpFCicEBRwDXhIdCQovG14SHR4"))

mn.run.team = math.clamp(math.floor(tonumber(bwk.bossTeams.towerPicked.halloween) or 1), 1, 4)
mn.run.teamChosen = tonumber(bwk.bossTeams.towerPicked.halloween) ~= nil
mn.run.building = true

mn.run.teamDropdown = mks:Dropdown({
Name = _d("JApQCA"),
Search = false,
Multi = false,
Required = false,
Default = mn.run.team,
Options = { _d("JApQCFhd"), _d("JApQCFhe"), _d("JApQCFhf"), _d("JApQCFhY") },
Callback = function(ydti)
local rtf = type(ydti) == _d("BA5TCR0") and ydti[1] or ydti
local cyu = type(rtf) == _d("AxtDDBYL") and tonumber(rtf:match(_d("WEpVTlE"))) or nil

if not cyu then
return
end

mn.run.team = cyu

if mn.run.building then
return
end

mn.run.teamChosen = true
bwk.bossTeams.towerPicked.halloween = cyu
bwk.bossTeams.save()

pcall(function()
mn.run.teamDropdown:UpdateName(_d("JApQCFiO5NJP") .. (rtf or (_d("JApQCFg") .. tostring(cyu))))
end)
end,
}, _d("BApQCCcEBRwDXhIdCQo"))

pcall(function()
mn.run.teamDropdown:UpdateSelection(_d("JApQCFg") .. tostring(mn.run.team))
mn.run.teamDropdown:UpdateName(_d("JApQCFiO5NJPZQAZAUQ") .. tostring(mn.run.team))
end)

mn.run.building = false

mn.toggle = mks:Toggle({
Name = _d("MRpFClgZFBcdUAEdHw"),
Default = false,
Callback = function(plw)
if plw and not next(mn.upgrade.selected) then
mn.upgrade.enabled = false

pcall(function()
mn.toggle:UpdateState(false)
end)

ww:Dialog({
Title = _d("MRpFClgZFBcdUAEdHw"),
Description = _d("IAZSDlgNEFADVAQLGEQfAVRFCBkJAARYC1gZFBcdUAEdTA0eT0UNHUwAAgBBARcbClAJWBcLGERdT3AQDANEBR9WFxkIAQNPQhUdAgADT0gKDR5EOg5SDlgDQ1AjUAsMCRYeHBEKFkwQGApcRRkfRAMAXgtYDRdQFl4QWA8FHk9QAx4DFhRPXgsdQg"),
Buttons = {
{
Name = _d("NwBFRREY"),
},
},
})

return
end

mn.upgrade.enabled = plw

if plw then
mn.request()
end
end,
}, _d("ERpFCicZFBcdUAEdHw"))

mks:Dropdown({
Name = _d("IBpcFRMFClAaQQIKDQAVHA"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = mn.labels,
Callback = function(ac)
local qjlz = {}

if type(ac) == _d("BA5TCR0") then
for ox, hwo in ipairs(mn.upgrades) do
if ac[hwo.name] then
qjlz[hwo.id] = true
end
end
end

mn.upgrade.selected = qjlz

if not next(qjlz) and mn.upgrade.enabled then
mn.upgrade.enabled = false

pcall(function()
mn.toggle:UpdateState(false)
end)

ww:Dialog({
Title = _d("MRpFClgZFBcdUAEdH0QfCVc"),
Description = _d("PgBFDRECA1AGQkULCQgVDEUAHEwKHxgdRQsDRAQHVBcdTA0DT18KDAQNHggRCR0KEFAbXkUaGR1eT2EMGwdEEQEREAgLFhELVEUZAgBQG0QXFkwNBE9TBBsHRB8BHw"),
Buttons = {
{
Name = _d("NwBFRREY"),
},
},
})
end
end,
}, _d("ABpcFRMFCi8aQQIKDQAVHA"))

mn.paragraph = mks:Paragraph({
Header = _d("IBpcFRMFCgM"),
Body = mn.text(),
})

local oqj = kgsq:Section({
Side = _d("PApXEQ"),
})

oqj:Header({
Name = _d("OA5dCRcbARUBERYQAxSA8L7PiPP28A"),
})

oqj:Toggle({
Name = _d("MRpFClguEQk"),
Default = false,
Callback = function(nt)
najo.enabled = nt
najo.pending = nil

if nt then
rd.RequestItemSync:FireServer()
task.spawn(function()
mn.open(true)
end)
end
end,
}, _d("ERpFCicOEQk"))

oqj:Button({
Name = _d("Px9UC1gfDB8f"),
Callback = function()
task.spawn(function()
local cko = mn.open(true)

ww:Notify({
Title = _d("OA5dCRcbARUBERYQAxQ"),
Description = cko and _d("MwBECwwJFlAAQQAWTElQC1AMFBVEAxteBhNMFhUOVUUeHgsdT0UNHUwXFR1HAApC") or tostring(mn.trip.lastResult),
Lifetime = 6,
})

if tx then
pcall(function()
tx:UpdateBody(zh())
end)
end
end)
end,
})

oqj:Dropdown({
Name = _d("ORtUCAs"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = mn.shopLabels,
Callback = function(kc)
local ty = {}

if type(kc) == _d("BA5TCR0") then
for gted, hrk in ipairs(mn.shopItems) do
if kc[hrk.label] then
ty[hrk.id] = true
end
end
end

najo.selected = ty
end,
}, _d("GRtUCAs"))

tx = oqj:Paragraph({
Header = _d("IxteBhNMQlAdVBYdGA"),
Body = zh(),
})

local xmc = kgsq:Section({
Side = _d("IgZWDQw"),
})

xmc:Paragraph({
Header = _d("IwpQFhcCBRxPVBMdAhAD"),
Body = _d("OA5dCRcbARUBEQwLTAgZGVRfWBgMFU9CDRccRBEBVUUMBAFQO14SHR5EEgBFDVgbCwIEH29yLREEABEtGQAIHxhUABZMMB8YVBdYHxARHUUWWBULBR0RAR0JFBUcRUUNAggfDFoAHEwWHwBcS1gvCBUOQwwWC0QDG1ACHR9EAA5IFlgmBRMEEQpfTCgRAUUACgIXXE9QCxxMJQUbXkUNHAMCDlUAC0wXAApfAQtMEBgKXEUXAkQACkMIGQIBHhsRERcbAQJPUxAeChde"),
})

hntq.worldBoss.section = kgsq:Section({
Side = _d("IgZWDQw"),
})

hntq.worldBoss.section:Header({
Name = _d("MRpFClgrCB8NUAlYLgsDHA"),
})

hntq.worldBoss.section:Paragraph({
Header = _d("IB1YCgoFEAk"),
Body = _d("Ig5fDgtMExkbWUUMBAFQHVAMHB9eUBtZAFgYCwcKQ0ULGAUeC0JFHAMTHk9XCgpMDQRDEQQWCEQxGkUKWCI0M09eEAweBR4EQkURGEp6ZWUNHUwCGQhZEVgYBRsKQkUZTBccAEVJWB8LUAZFRRsDER4bQkUZH0QRARErKC9EEg5FERQJRAQHVBcdQg"),
})

hntq.worldBoss.toggle = hntq.worldBoss.section:Toggle({
Name = _d("MRpFClgrCB8NUAlYLgsDHA"),
Default = false,
Callback = function(gyu)
if gyu and not hntq.worldBoss.teamChosen then
hntq.worldBoss.enabled = false

pcall(function()
hntq.worldBoss.toggle:UpdateState(false)
end)

ww:Dialog({
Title = _d("MRpFClgrCB8NUAlYLgsDHBELHQkAA09QRQwJBR0"),
Description = _d("IAZSDlgYDBVPRQAZAUQZGxEWEAMRHAsRAxELDARPRgwMBEQZAREREAlEJApQCFgIFh8fVQoPAkQWBkMWDEJEJAdURQsPFhkfRUUQDRdQG15FCxsNBAxZRQwEBQRPQgkXGEMDT0UAGQFEEgpXCgoJRAQHVEUeBQMYGxEWDA0WBBwdRRkCAFA7VAQVTFVQBkJFFwIICU9FDR1MABUJUBAUGERdT1gRWAUXUAFeEVgNRBMHXgwbCUQFAUUMFEwdHxoRCBkHAVAGRUs"),
Buttons = {
{
Name = _d("NwBFRREY"),
},
},
})

return
end

if gyu then
local ubao = hntq.worldBoss.team
local wqm = bwk.bossTeams.teamCards(ubao)

if wqm == 0 then
hntq.worldBoss.enabled = false

pcall(function()
hntq.worldBoss.toggle:UpdateState(false)
end)

ww:Dialog({
Title = _d("JApQCFg") .. tostring(ubao) .. _d("UAdQFlgCC1AMUBccHw"),
Description = _d("IBpFRRkYRBwKUBYMTAseChEGGR4AUAZfRSwJBR1P") .. tostring(ubao) .. _d("UEd1ABsHF1lDEQoKTBQZDFpFGUwQFQ5cRQwEBQRPUAkKCQUUFhENGR9EEw5DAQtMDR5PRQ0dTDAVDlxFHB4LAAteEhZARAQHVAtYGBECAREkDRgLUChdChoNCFAtXhYLTAYRDFpFFwJK"),
Buttons = {
{
Name = _d("NwBFRREY"),
},
},
})

return
end
end

hntq.worldBoss.enabled = gyu
hntq.worldBoss.holdUntil = 0

hntq.worldBoss.nextFightAt = 0

if not gyu then
hntq.worldBoss.setRepeat(false)
end

if gyu then

hntq.worldBoss.syncedAt = 0
hntq.worldBoss.askedAt = 0
hntq.worldBoss.chainWaitAt = nil
hntq.worldBoss.repeatSeeded = false
hntq.worldBoss.seenKills = nil
hntq.worldBoss.progressAt = os.clock()
hntq.worldBoss.kickAt = 0
end
end,
}, _d("ERpFCicLCB8NUAknDgsDHA"))

hntq.worldBoss.claimToggle = hntq.worldBoss.section:Toggle({
Name = _d("MRpFClgPCBEGXEUKCRMRHVUW"),
Default = false,
Callback = function(ca)
hntq.worldBoss.autoClaim = ca
hntq.worldBoss.claimAt = 0

if ca then
hntq.worldBoss.syncedAt = 0
hntq.worldBoss.askedAt = 0
hntq.worldBoss.chainWaitAt = nil
end
end,
}, _d("ERpFCicPCBEGXDoKCRMRHVUW"))

hntq.worldBoss.fullToggle = hntq.worldBoss.section:Toggle({
Name = _d("IxteFVgbDBUBEREQCUQSDkNFHgUIHBw"),
Default = false,
Callback = function(kjas)
hntq.worldBoss.stopAtFull = kjas
hntq.worldBoss.meterAt = 0
end,
}, _d("Bw1uFgwDFC8ORToeGQgc"))

hntq.worldBoss.walkToggle = hntq.worldBoss.section:Toggle({
Name = _d("Jw5dDlgYC1AIXQoaDQhQDV4WCw"),
Default = false,
Callback = function(dfi)
hntq.worldBoss.walkToBoss = dfi

hntq.worldBoss.travelUntil = 0
end,
}, _d("Bw1uEhkADy8bXjoaAxcD"))

hntq.worldBoss.bodyParagraph = hntq.worldBoss.section:Paragraph({
Header = _d("MgBCFg"),
Body = hntq.worldBoss.bodyText(),
})

hntq.worldBoss.section:Header({
Name = _d("MgBCFlgfDB8fEZXn4vuf174"),
})

hntq.worldBoss.shopParagraph = hntq.worldBoss.section:Paragraph({
Header = _d("OQERFgwDBxs"),
Body = hntq.worldBoss.shopText(),
})

hntq.worldBoss.itemsDropdown = hntq.worldBoss.section:Dropdown({
Name = _d("ORtUCAs"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = hntq.worldBoss.shopOptions(),
Callback = function(wijr)
local xs = {}

if type(wijr) == _d("BA5TCR0") then
for vguz, pmnb in pairs(wijr) do
local chz = hntq.worldBoss.labelToId[vguz]

if pmnb and chz then
xs[chz] = true
end
end
end

hntq.worldBoss.selected = xs

if not next(xs) and hntq.worldBoss.autoBuy then
hntq.worldBoss.autoBuy = false

pcall(function()
hntq.worldBoss.shopToggle:UpdateState(false)
end)
end
end,
}, _d("GRtUCAszVg"))

hntq.worldBoss.shopToggle = hntq.worldBoss.section:Toggle({
Name = _d("MRpFClgOEQk"),
Default = false,
Callback = function(ufp)
if ufp and not next(hntq.worldBoss.selected) then
hntq.worldBoss.autoBuy = false

pcall(function()
hntq.worldBoss.shopToggle:UpdateState(false)
end)

ww:Dialog({
Title = _d("MRpFClgOEQk"),
Description = _d("IAZSDlgNEFADVAQLGEQfAVRFERgBHU9YC1glEBUCQkUeBRYDGxFIWC0RBAARBw0VRAMfVAscH0QiClVFKgUGEgBfRTUJABEDQkUXAkQHB1ARHRoBAk9YEVgPBR5PUAMeAxYUT1cXFwFEBAdQEVgADQMbHw"),
Buttons = {
{
Name = _d("NwBFRREY"),
},
},
})

return
end

hntq.worldBoss.autoBuy = ufp
end,
}, _d("ERpFCicOEQkwAw"))

hntq.worldBoss.section:Button({
Name = _d("MhpIRQsJCBUMRQAc"),
Callback = function()
if not next(hntq.worldBoss.selected) then
ww:Dialog({
Title = _d("MhpIRQsJCBUMRQAc"),
Description = _d("IAZSDlgNEFADVAQLGEQfAVRFERgBHU9YC1glEBUCQkUeBRYDGx8"),
Buttons = {
{
Name = _d("NwBFRREY"),
},
},
})

return
end

local xbix = hntq.worldBoss.buy()

if xbix == 0 then
ww:Dialog({
Title = _d("MhpIRQsJCBUMRQAc"),
Description = _d("PgBFDRECA1AYUBZYDgsFCFkRQkwKH09cABwNCANPRQpYHxQVAVVJWAkSFR1IRQgFBxtPWBZYAxEET14DWB8QHwxaSVgDFlAbWQBYDgsDHBEWEAMUUAdQFlgCCwRPQhwWDwEUT0gADEI"),
Buttons = {
{
Name = _d("NwBFRREY"),
},
},
})
end
end,
})

hntq.worldBoss.building = true

hntq.worldBoss.teamDropdown = hntq.worldBoss.section:Dropdown({
Name = _d("JApQCA"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = { _d("JApQCFhd"), _d("JApQCFhe"), _d("JApQCFhf"), _d("JApQCFhY") },
Callback = function(czp)
if hntq.worldBoss.building then
return
end

local dl = type(czp) == _d("BA5TCR0") and czp[1] or czp
local wsp = type(dl) == _d("AxtDDBYL") and tonumber(dl:match(_d("WEpVTlE"))) or nil

if wsp then
hntq.worldBoss.team = wsp
hntq.worldBoss.teamChosen = true
bwk.bossTeams.save()
end

pcall(function()
hntq.worldBoss.teamDropdown:UpdateName(_d("JApQCFiO5NJP") .. (dl or _d("JApQCFhd")))
end)
end,
}, _d("BApQCA"))

pcall(function()
hntq.worldBoss.teamDropdown:UpdateSelection(_d("JApQCFg") .. tostring(hntq.worldBoss.team))
hntq.worldBoss.teamDropdown:UpdateName(_d("JApQCFiO5NJPZQAZAUQ") .. tostring(hntq.worldBoss.team))
end)

task.defer(function()
hntq.worldBoss.building = false
end)

hntq.misc = hntq.misc or {}

hntq.misc.expeditions = {
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
rewardPath = _d("MSxzPVcJHAAKVQwMBQseHB8PCwMK"),
module = nil,
action = nil,
section = nil,
paragraph = nil,
claimToggle = nil,
startToggle = nil,
dropdown = nil,
}

function hntq.misc.expeditions.data()
local at = hntq.misc.expeditions

if at.module ~= nil then
return at.module or nil
end

local tyv, ap = pcall(function()
return require(bzz.ModuleScripts.ExpeditionData)
end)

at.module = tyv and ap or false

return at.module or nil
end

function hntq.misc.expeditions.tiers()
local sv = hntq.misc.expeditions.data()

return sv and sv.Tiers or {}
end

function hntq.misc.expeditions.remote()
local pee = hntq.misc.expeditions

if pee.action and pee.action.Parent then
return pee.action
end

pee.action = az(_d("NRdBABwFEBkAXyQbGA0fAQ"), 3)

return pee.action
end

function hntq.misc.expeditions.clockText(ffpz)
local uou = hntq.misc.expeditions.data()

if uou and type(uou.formatDuration) == _d("FhpfBgwFCx4") then
return uou.formatDuration(ffpz)
end

local dbnj = math.max(0, math.floor((ffpz or 0) / 60))

return tostring(dbnj) .. _d("HQ")
end

function hntq.misc.expeditions.status(pcf)
local kn = hntq.misc.expeditions
local gxmx = kn.state
local bpx = type(gxmx) == _d("BA5TCR0") and type(gxmx.active) == _d("BA5TCR0") and gxmx.active[pcf] or nil

if type(bpx) ~= _d("BA5TCR0") then
return _d("ERlQDBQNBhwK"), nil
end

local tzcu = (tonumber(bpx.endsAt) or 0) - (os.time() + (kn.offset or 0))

if tzcu <= 0 then
return _d("AgpQAQE"), tzcu
end

return _d("AhpfCxECAw"), tzcu
end

function hntq.misc.expeditions.candidates(fgk)
local ueep = hntq.misc.expeditions
local ixxg = ueep.data()
local wdu = ueep.state
local tz = ixxg and ixxg.ById and ixxg.ById[fgk]
local rcc = {}

if not (tz and type(wdu) == _d("BA5TCR0") and type(wdu.eligible) == _d("BA5TCR0")) then
return rcc
end

for kr, rwl in ipairs(wdu.eligible) do
if type(rwl) == _d("BA5TCR0") and rwl.cardId then
local ot = tonumber(rwl.rarity) or 0
local sibw = (tonumber(rwl.count) or 0) - (tonumber(rwl.locked) or 0)

if ot >= (tonumber(tz.minRarity) or 0) and sibw > 0 then

table.insert(rcc, { cardId = rwl.cardId, borderLevel = rwl.borderLevel, rarity = ot, count = sibw })
end
end
end

table.sort(rcc, function(dv, kh)
if dv.rarity == kh.rarity then
return tostring(dv.cardId) < tostring(kh.cardId)
end

return dv.rarity < kh.rarity
end)

return rcc
end

function hntq.misc.expeditions.cards(wgmw, fg)
local nnrk = hntq.misc.expeditions
local rxir = nnrk.data()
local dcq = rxir and tonumber(rxir.CardsPerExpedition) or 4
local lo = {}
local nrr = nnrk.candidates(wgmw)

fg = fg or {}

local function uvup(ufs, qy)
local rpmy = tostring(ufs.cardId) .. _d("Uw") .. tostring(ufs.borderLevel)

while #lo < dcq and (fg[rpmy] or 0) < qy do
fg[rpmy] = (fg[rpmy] or 0) + 1

table.insert(lo, { cardId = ufs.cardId, borderLevel = ufs.borderLevel })
end
end

for pj, jylc in ipairs(nrr) do
if #lo >= dcq then
break
end

if jylc.count > 1 then
uvup(jylc, jylc.count - 1)
end
end

if #lo < dcq then
for mdhz, eyh in ipairs(nrr) do
if #lo >= dcq then
break
end

uvup(eyh, eyh.count)
end
end

return lo
end

function hntq.misc.expeditions.available(cnb)
local ukj = hntq.misc.expeditions
local lsw = ukj.data()
local io = lsw and tonumber(lsw.CardsPerExpedition) or 4
local lh = 0

for qoaq, ghkz in ipairs(ukj.candidates(cnb)) do
lh = lh + ghkz.count

if lh >= io then
return io
end
end

return lh
end

function hntq.misc.expeditions.text()
local bi = hntq.misc.expeditions

if type(bi.state) ~= _d("BA5TCR0") then
return _d("IgpQARECA1AKSRUdCA0EBl4LC0JKXg")
end

local qjn = bi.data()
local zjg = qjn and tonumber(qjn.CardsPerExpedition) or 4
local wqk = {}

for cpxz, wwz in ipairs(bi.tiers()) do
local yidu, bddw = bi.status(wwz.id)
local je = tostring(wwz.name)

if bi.tiersWanted[wwz.id] then
je = _d("ku+TRQ") .. je
end

if yidu == _d("AhpfCxECAw") then
je = je .. _d("ej1UEQ0eCgNPWAtY") .. bi.clockText(bddw)
elseif yidu == _d("AgpQAQE") then
je = je .. _d("ej1UBBwVRAQAEQYUDQ0d")
else
local gnx = bi.available(wwz.id)
je = je .. _d("eg") .. tostring(gnx) .. _d("UABXRQ") .. tostring(zjg) .. _d("UAxQFxwf")

if gnx >= zjg then
je = je .. _d("eixQC1gfEBEdRQ")
end
end

table.insert(wqk, je)
end

table.insert(wqk, _d("NRlUFwFMAAUfXQwbDRAVT1gWWB8BHhsRBx0KCwIKEQRYDwUCCxEcFxlEGABdAVgDChVPXgNUTAUeCxEKFglEEwBBHFgDAlAOEQYZHgBQBkJFEwkUBE9TBBsHRAcHVBcdTBAYChEREQkWUAxQC1gfFBEdVEURGERdT1BFFAMKFU9SCggVRB8BXRxYCwsVHBEKDRhEBwdUC1gYDBVPRQwdHkQTDl8LFxhEEgoRAxEACBULERIRGAwfGkVFERhK"))

return table.concat(wqk, _d("emU"))
end

function hntq.misc.expeditions.request()
local zije = hntq.misc.expeditions
local clv = zije.remote()

if clv then
pcall(function()
clv:FireServer(_d("AgpAEB0fEA"))
end)
end

zije.askedAt = os.clock()
end

function hntq.misc.expeditions.claim()
local dvhh = hntq.misc.expeditions

if os.clock() < dvhh.claimAt then
return false
end

local by = false

for flp, filt in ipairs(dvhh.tiers()) do
if dvhh.status(filt.id) == _d("AgpQAQE") then
by = true
break
end
end

if not by then
return false
end

local hlan = dvhh.remote()

if not hlan then
return false
end

pcall(function()
hlan:FireServer(_d("EwNQDBUtCBw"))
end)

dvhh.claimAt = os.clock() + 3
dvhh.askedAt = 0

return true
end

function hntq.misc.expeditions.popup()
local vysh = kdoz:FindFirstChild(_d("NRdBABwFEBkAXyINBQ"))

return vysh and vysh:FindFirstChild(_d("MwNQDBU8CwAaQQ")) or nil
end

function hntq.misc.expeditions.closeRewards()
local ky = hntq.misc.expeditions
local rygm = ky.popup()

if not (rygm and rygm.Visible) then
return false
end

local pqbk = rygm:FindFirstChild(_d("PwRzEAwYCx4"))

if pqbk and type(firesignal) == _d("FhpfBgwFCx4") then
pcall(firesignal, pqbk.Activated)
end

pcall(function()
rygm.Visible = false
end)

return true
end

function hntq.misc.expeditions.rewardsText()
local qfwd = hntq.misc.expeditions

if #qfwd.rewardLog == 0 then
return _d("PgBFDRECA1AMXQQRAQEUT0gADEJENRlUFwFMFBEWXhAMTBAYChEWHR4SFR0RFh0CAANPXQQWCBdQB1QXHUwTGRtZRREYF1AbWAAKTAUeCxEMDB9EEwBfER0CEANB")
end

local fv = {}

for ywvr, bfn in ipairs(qfwd.rewardLog) do
local hql = {}
local vkp = bfn.items or {}

for dhd, wm in ipairs(vkp) do
if dhd > 4 then
table.insert(hql, _d("Ww") .. tostring(#vkp - 4) .. _d("UAJeFx0"))
break
end

local jhan = wm.id or wm.itemId
local gmjp = jhan and zpas.ById[jhan] or nil
local qaq = (gmjp and gmjp.name) or (wm.potions and _d("IABFDBcCFw")) or tostring(jhan or _d("AgpGBAoI"))

table.insert(hql, qaq .. _d("UBc") .. tostring(wm.count or wm.max or wm.min or 1))
end

local xrn = math.max(0, os.time() - (tonumber(bfn.at) or os.time()))
local ounv

if xrn < 60 then
ounv = tostring(xrn) .. _d("A09QAhc")
elseif xrn < 3600 then
ounv = tostring(math.floor(xrn / 60)) .. _d("HU9QAhc")
else
ounv = tostring(math.floor(xrn / 3600)) .. _d("GE9QAhc")
end

table.insert(fv, tostring(bfn.title) .. _d("UK2GRQ") .. ounv)
table.insert(fv, table.concat(hql, _d("XE8")))
end

return table.concat(fv, _d("eg"))
end

function hntq.misc.expeditions.saveRewards()
local eiw = hntq.misc.expeditions

if type(writefile) ~= _d("FhpfBgwFCx4") then
return false
end

return pcall(function()
if type(makefolder) == _d("FhpfBgwFCx4") and type(isfolder) == _d("FhpfBgwFCx4") and not isfolder(_d("MSxzPQ")) then
makefolder(_d("MSxzPQ"))
end

writefile(eiw.rewardPath, game:GetService(_d("OBtFFSsJFgYGUgA")):JSONEncode({
rewards = eiw.rewardLog,
updatedAt = os.time(),
}))
end)
end

function hntq.misc.expeditions.loadRewards()
local fde = hntq.misc.expeditions

if type(readfile) ~= _d("FhpfBgwFCx4") or type(isfile) ~= _d("FhpfBgwFCx4") then
return false
end

local nsct, bszq = pcall(function()
if not isfile(fde.rewardPath) then
return nil
end

return readfile(fde.rewardPath)
end)

if not nsct or type(bszq) ~= _d("AxtDDBYL") or #bszq == 0 then
return false
end

local pyay

if not pcall(function()
pyay = game:GetService(_d("OBtFFSsJFgYGUgA")):JSONDecode(bszq)
end) then
return false
end

if type(pyay) ~= _d("BA5TCR0") or type(pyay.rewards) ~= _d("BA5TCR0") then
return false
end

fde.rewardLog = {}

for slca, mr in ipairs(pyay.rewards) do
if type(mr) == _d("BA5TCR0") and type(mr.items) == _d("BA5TCR0") then
table.insert(fde.rewardLog, {
at = tonumber(mr.at) or os.time(),
title = tostring(mr.title or _d("NRdBABwFEBkAXw")),
items = mr.items,
})
end
end

return #fde.rewardLog > 0
end

function hntq.misc.expeditions.start(byf, spcb)
local lu = hntq.misc.expeditions

if lu.status(byf) ~= _d("ERlQDBQNBhwK") then
return false
end

if os.clock() < (lu.startedAt[byf] or 0) then
return false
end

local hkg = lu.remote()

if not hkg then
return false
end

local uubw = lu.cards(byf, spcb)
local tvx = lu.data()
local uhos = tvx and tonumber(tvx.CardsPerExpedition) or 4

if #uubw < uhos then
return false
end

local nq = {}

for wvo, tkfg in ipairs(uubw) do
nq[wvo] = { cardId = tkfg.cardId, borderLevel = tkfg.borderLevel }
end

pcall(function()
hkg:FireServer(_d("AxtQFww"), byf, nq)
end)

lu.startedAt[byf] = os.clock() + 6
lu.askedAt = 0

return true
end

hntq.misc.icon = function()
local jjwc = gethui()

for iy, vl in ipairs(jjwc:QueryDescendants(_d("OQJQAh0gBRIKXQ"))) do
if vl.Name == _d("JA5TLBUNAxU") then
local dtak = vl.Parent
local mfdi = dtak and dtak:FindFirstChild(_d("JA5TNg8FEBMHVBc2DQkV"))

if mfdi and mfdi.Text == _d("PQZCBh0ACBEBVAoNHw") then
if vl:GetAttribute(_d("MSxzPTUFFxMmUgoW")) then
return true
end

vl:SetAttribute(_d("MSxzPTUFFxMmUgoW"), true)
vl.Image = _d("")
vl.BackgroundTransparency = 1

local function dyf(swvd, wqo, fxib, mml, ponm, rqc, gi)
local xtsn = Instance.new(swvd)

xtsn.Size = UDim2.fromOffset(ponm, rqc)
xtsn.Position = UDim2.fromOffset(fxib, mml)
xtsn.BackgroundColor3 = wqo
xtsn.BorderSizePixel = 0
xtsn.Parent = vl

if gi then
local psut = Instance.new(_d("JSZyCgoCAQI"))
psut.CornerRadius = UDim.new(0, gi)
psut.Parent = xtsn
end

return xtsn
end

local sh = Color3.fromRGB(168, 170, 176)

local function mfy(jmhf, dxi, hdez, tfk, mopt)
local qxjq = dyf(_d("Nh1QCB0"), sh, jmhf, dxi, hdez, tfk, mopt)

qxjq.BackgroundTransparency = 1

local opb = Instance.new(_d("JSZiEQoDDxU"))

opb.Color = sh
opb.Thickness = 1.4
opb.LineJoinMode = Enum.LineJoinMode.Round
opb.Parent = qxjq

return qxjq
end

mfy(3, 1, 6, 4, 1)
mfy(1, 4, 16, 12, 2)

local wal = dyf(_d("Nh1QCB0"), sh, 3, 8, 5, 5)

wal.BackgroundTransparency = 1
wal.ClipsDescendants = true

local rn = dyf(_d("Nh1QCB0"), sh, 0, 1, 5, 5)

rn.Rotation = 45
rn.Parent = wal

dyf(_d("Nh1QCB0"), sh, 9, 9, 4, 4, 4)
dyf(_d("Nh1QCB0"), sh, 13, 10, 3, 3, 1)

return true
end
end
end

return false
end

hntq.misc.tab = xhb:Tab({
Name = _d("PQZCBh0ACBEBVAoNHw"),

Image = _d(""),
})

task.defer(function()
for bdgi = 1, 20 do
if hntq.misc.icon() then
break
end

task.wait(0.25)
end
end)

local em = {
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
lastText = _d("PgBFDRECA1AfXhUICQBQFlQRVg"),
tab = nil,
weatherSection = nil,
giveUpSection = nil,
weatherParagraph = nil,
giveUpParagraph = nil,
weatherToggle = nil,
manualSection = nil,
giveUpToggle = nil,
}

getgenv().ACBXPop = em

function em.options()
local mqzc = {}

for rk, hyz in pairs(zpas.ById) do
if hyz.type == _d("AABFDBcC") and type(hyz.name) == _d("AxtDDBYL") then
mqzc[#mqzc + 1] = hyz.name
end
end

table.sort(mqzc)

return mqzc
end

function em.idOf(gkgi)
for lzwx, ulf in pairs(zpas.ById) do
if ulf.type == _d("AABFDBcC") and ulf.name == gkgi then
return lzwx
end
end

return nil
end

function em.count(clyj)
local cog = najo.balances

return tonumber(cog and cog[clyj]) or 0
end

bwkv(rd.UseItemResult.OnClientEvent, function(wrz)
em.lastResult = tostring(wrz)
em.lastResultAt = os.clock()
end)

function em.pop(vwgo, kujs, kvgb)
local ydgy = os.clock()
local dw = {}

for xwp, ohv in pairs(vwgo) do
if ohv then
local ii = em.idOf(xwp)

if ii then
local ugeo = em.count(ii)

if ugeo <= 0 then
dw[#dw + 1] = xwp .. _d("UEIRCxcCAVADVAMM")
else
local gxn = math.clamp(math.floor(tonumber(kujs) or 1), 1, ugeo)

pcall(function()
rd.UseItem:FireServer(ii, gxn)
end)

dw[#dw + 1] = xwp .. _d("UBc") .. gxn
task.wait(0.3)
end
end
end
end

if #dw == 0 then
em.lastText = kvgb .. _d("UEIRCxcYDBkBVkULCQgVDEUAHA")

return false
end

task.wait(0.4)

em.lastText = kvgb .. _d("UEIR") .. table.concat(dw, _d("XE8"))

if (em.lastResultAt or 0) >= ydgy and em.lastResult then
em.lastText = em.lastText .. _d("UEc") .. em.lastResult .. _d("WQ")
end

pcall(function()
ww:Notify({
Title = _d("IABB"),
Description = em.lastText,
Lifetime = 5,
})
end)

return true
end

function em.status()
local ow = plcw.weatherWanted(em.weathers)
local du = plcw.weatherNow or _d("BQFaCxcbCg")
local cv = {
_d("JwpQERAJFkpP") .. du .. (ow and (_d("UEdBCggcDR4IC0U") .. ow .. _d("WQ")) or _d("")),
}

table.insert(cv, _d("PA5CEUJM") .. em.lastText)

return table.concat(cv, _d("eg"))
end

function em.giveUpStatus()
if em.armedAt > 0 then
return _d("MR1cABxMSVAYUAwMBQoXT1cKCkwQGAoRFw0CRAQAEQAWCEp6I1AWDFZE") .. em.lastText
end

return _d("OQtdAFZmKBEcRV9Y") .. em.lastText
end

em.tab = xhb:Tab({
Name = _d("IABB"),

Image = _d(""),
})

em.icon = function()
local lbyp = gethui()

for yyeb, nr in ipairs(lbyp:QueryDescendants(_d("OQJQAh0gBRIKXQ"))) do
if nr.Name == _d("JA5TLBUNAxU") then
local ukdt = nr.Parent
local ufbs = ukdt and ukdt:FindFirstChild(_d("JA5TNg8FEBMHVBc2DQkV"))

if ufbs and ufbs.Text == _d("IABB") then
if nr:GetAttribute(_d("MSxzPSgDFDkMXgs")) then
return true
end

nr:SetAttribute(_d("MSxzPSgDFDkMXgs"), true)
nr.Image = _d("")
nr.BackgroundTransparency = 1

local hcpz = Color3.fromRGB(168, 170, 176)

local function poo(ry, xr, mwa, hjw, fp, hvrk)
local yde = Instance.new(ry)

yde.Size = UDim2.fromOffset(hjw, fp)
yde.Position = UDim2.fromOffset(xr, mwa)
yde.BackgroundColor3 = hcpz
yde.BorderSizePixel = 0
yde.Parent = nr

if hvrk then
local ccgn = Instance.new(_d("JSZyCgoCAQI"))
ccgn.CornerRadius = UDim.new(0, hvrk)
ccgn.Parent = yde
end

return yde
end

local function sb(kmzy, jzxo, lz, koaf, pa)
local ej = poo(_d("Nh1QCB0"), kmzy, jzxo, lz, koaf, pa)

ej.BackgroundTransparency = 1

local sdi = Instance.new(_d("JSZiEQoDDxU"))

sdi.Color = hcpz
sdi.Thickness = 1.3
sdi.LineJoinMode = Enum.LineJoinMode.Round
sdi.Parent = ej

return ej
end

sb(1, 6, 16, 12, 6)
sb(6, 3, 6, 4, 1)
poo(_d("Nh1QCB0"), 5, 1, 8, 2, 1)
poo(_d("Nh1QCB0"), 7, 0, 4, 1, 0)

poo(_d("Nh1QCB0"), 4, 11, 10, 1, 0)
poo(_d("Nh1QCB0"), 13, 3, 2, 2, 2)
poo(_d("Nh1QCB0"), 15, 6, 2, 2, 2)

return true
end
end
end

return false
end

task.defer(function()
for zrpw = 1, 20 do
if em.icon() then
break
end

task.wait(0.25)
end
end)

em.weatherSection = em.tab:Section({
Side = _d("PApXEQ"),
})

em.weatherSection:Header({
Name = _d("IABFDBcCF1AAX0UPCQUEB1QXWJz718U"),
})

em.weatherToggle = em.weatherSection:Toggle({
Name = _d("IABBRRcCRAQHVBYdTBMVDkUNHR4X"),
Default = false,
Callback = function(cgp)
if cgp and (next(em.weatherPotions) == nil or next(em.weathers) == nil) then
em.onWeather = false

pcall(function()
em.weatherToggle:UpdateState(false)
end)

ww:Dialog({
Title = _d("IABB"),
Description = _d("JAZSDlgNEFADVAQLGEQfAVRFDwkFBAdUF1gNChRPXgsdTBQfG1gKFkwCGR1CEVhBRCAAQUUWCQEUHBEHFxgMUBteRRMCCwdPRg0ZGEQEABEBCgUKG09QCxxMExgKX0s"),
Buttons = {
{
Name = _d("NwBFRREY"),
},
},
})

return
end

em.onWeather = cgp

if cgp then
em.weatherSpent = nil
end
end,
}, _d("AABBOhcCOwQHVBYdMxMVDkUNHR4X"))

em.weatherSection:Dropdown({
Name = _d("JwpQERAJFgM"),
Multi = true,
Required = false,
Options = { _d("JBZBDRcDCg"), _d("MgNYHwINFhQ"), _d("PAZWDQwCDR4I"), _d("JwZfAQsYCwIC"), _d("IwdQFxECAxEB"), _d("IwZfAg0ABQIGRRw"), _d("PQBfBAoPDFArXggZBQo"), _d("JgBYAQ"), _d("PQ5VAFgFClAnVAQOCQo"), _d("PQ5fAhk") },
Callback = function(ftv)
em.weathers = {}

if type(ftv) == _d("BA5TCR0") then
for lpl, afyx in pairs(ftv) do
if afyx then
em.weathers[lpl] = true
end
end
end
end,
}, _d("BwpQERAJFgM"))

em.weatherSection:Dropdown({
Name = _d("IABFDBcCFw"),
Multi = true,
Required = false,
Options = em.options(),
Callback = function(fxt)
em.weatherPotions = {}

if type(fxt) == _d("BA5TCR0") then
for uva, fzg in pairs(fxt) do
if fzg then
em.weatherPotions[uva] = true
end
end
end
end,
}, _d("AABFDBcCFw"))

em.weatherSection:Input({
Name = _d("MQJeEBYY"),
Placeholder = _d("QQ"),
AcceptedCharacters = _d("PhpcAAoFBw"),
Callback = function(prag)
local ogl = math.floor(tonumber(prag) or 1)

em.weatherAmount = math.clamp(ogl, 1, 50)
end,
}, _d("EQJeEBYY"))

em.weatherParagraph = em.weatherSection:Paragraph({
Header = _d("IxtQEQ0f"),
Body = em.status(),
})

em.manualSection = em.tab:Section({
Side = _d("PApXEQ"),
})

em.manualSection:Header({
Name = _d("JRxURQgDEBkAXxZYAgsHT8H638Y"),
})

em.manualSection:Dropdown({
Name = _d("IABFDBcCFw"),
Multi = true,
Required = false,
Options = em.options(),
Callback = function(ipwm)
em.manualPotions = {}

if type(ipwm) == _d("BA5TCR0") then
for dwdj, ywns in pairs(ipwm) do
if ywns then
em.manualPotions[dwdj] = true
end
end
end
end,
}, _d("HQ5fEBkAOwAARQwXAhc"))

em.manualSection:Input({
Name = _d("MQJeEBYY"),
Placeholder = _d("QQ"),
AcceptedCharacters = _d("PhpcAAoFBw"),
Callback = function(epw)
local pxfi = math.floor(tonumber(epw) or 1)

em.manualAmount = math.clamp(pxfi, 1, 50)
end,
}, _d("HQ5fEBkAOxECXhAWGA"))

em.manualSection:Button({
Name = _d("JRxURQgDEBkAXxY"),
Callback = function()
if next(em.manualPotions) == nil then
ww:Notify({
Title = _d("JRxURQgDEBkAXxY"),
Description = _d("IAZSDlgNEFADVAQLGEQfAVRFCAMQGQBfRRECRAQHVEUcHgsAC14SFkwCGR1CEVY"),
Lifetime = 6,
})

return
end

task.spawn(function()
em.pop(em.manualPotions, em.manualAmount, _d("PQ5fEBkA"))
end)
end,
})

em.giveUpSection = em.tab:Section({
Side = _d("IgZWDQw"),
})

em.giveUpSection:Header({
Name = _d("MQlFAApMAxkZVEUNHA"),
})

em.giveUpToggle = em.giveUpSection:Toggle({
Name = _d("IABBRRkKEBUdEQRYGAsHCkNFHwUSFU9EFQ"),
Default = false,
Callback = function(uqk)
if uqk and next(em.giveUpPotions) == nil then
em.afterGiveUp = false

pcall(function()
em.giveUpToggle:UpdateState(false)
end)

ww:Dialog({
Title = _d("IABB"),
Description = _d("JAZSDlgNEFADVAQLGEQfAVRFCAMQGQBfRR4FFgMbEUhYGAwVHVRFER9EHgBFDRECA1AbXkUcHg0eBBEEHhgBAk9FDR1MFgUBEQoMBAECGFgWHUI"),
Buttons = {
{
Name = _d("NwBFRREY"),
},
},
})

return
end

em.afterGiveUp = uqk
end,
}, _d("AABBOhkKEBUdbgQnGAsHCkM6HwUSFTBEFQ"))

em.giveUpSection:Dropdown({
Name = _d("IABFDBcCFw"),
Multi = true,
Required = false,
Options = em.options(),
Callback = function(fzq)
em.giveUpPotions = {}

if type(fzq) == _d("BA5TCR0") then
for eid, bcm in pairs(fzq) do
if bcm then
em.giveUpPotions[eid] = true
end
end
end
end,
}, _d("AABFDBcCFy9d"))

em.giveUpSection:Input({
Name = _d("MQJeEBYY"),
Placeholder = _d("QQ"),
AcceptedCharacters = _d("PhpcAAoFBw"),
Callback = function(bu)
local utl = math.floor(tonumber(bu) or 1)

em.giveUpAmount = math.clamp(utl, 1, 50)
end,
}, _d("EQJeEBYYO0I"))

em.giveUpParagraph = em.giveUpSection:Paragraph({
Header = _d("IxtQEQ0f"),
Body = em.giveUpStatus(),
})

local kku = {
autoSave = false,
autoRoll = true,
autoQuickRoll = true,

loading = false,
selected = nil,
lastText = _d("PgBFDRECA1AYQwwMGAEeT0gADExJUB9YBhNMBVAcUBMdTAIZA1RFGgkIHxgf"),
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
theme = _d("JgBYAQ"),
accent = nil,
savesAt = 0,
autoSaveAt = 0,
themeAt = 0,
capAt = 0,
scaleAnchor = nil,
statusAt = 0,
knownSaves = _d(""),
}

getgenv().ACBXSettings = kku

kku.presets = {
Void = { panel = Color3.fromRGB(15, 15, 15), element = Color3.fromRGB(0, 0, 0), accent = Color3.fromRGB(168, 170, 176) },
Ocean = { panel = Color3.fromRGB(6, 16, 26), element = Color3.fromRGB(8, 26, 40), accent = Color3.fromRGB(77, 166, 255) },
Ember = { panel = Color3.fromRGB(26, 10, 8), element = Color3.fromRGB(36, 16, 10), accent = Color3.fromRGB(255, 122, 69) },
Sakura = { panel = Color3.fromRGB(26, 9, 18), element = Color3.fromRGB(38, 14, 26), accent = Color3.fromRGB(255, 125, 177) },
Mint = { panel = Color3.fromRGB(7, 20, 14), element = Color3.fromRGB(9, 30, 22), accent = Color3.fromRGB(77, 227, 160) },
Graphite = { panel = Color3.fromRGB(20, 20, 22), element = Color3.fromRGB(30, 30, 33), accent = Color3.fromRGB(200, 200, 206) },
}

kku.themeOrder = { _d("JgBYAQ"), _d("PwxUBBY"), _d("NQJTAAo"), _d("Iw5aEAoN"), _d("PQZfEQ"), _d("Nx1QFRAFEBU") }

local hji = _d("MSxzRSoJBhkdRQ1XHwEEG1gLHx8")

function kku.saves()
local xwzc, jjgj = pcall(function()
return pi:RefreshConfigList()
end)

if xwzc and type(jjgj) == _d("BA5TCR0") then
table.sort(jjgj)
return jjgj
end

return {}
end

function kku.autoLoadName()
local ebwk, yri = pcall(function()
if isfile and isfile(hji .. _d("Xw5EERcACxELHxEAGA")) then
return readfile(hji .. _d("Xw5EERcACxELHxEAGA"))
end
end)

if ebwk and type(yri) == _d("AxtDDBYL") then
yri = yri:gsub(_d("LkpCTg"), _d("")):gsub(_d("VRwaQQ"), _d(""))

if yri ~= _d("") then
return yri
end
end

return nil
end

function kku.setAutoLoad(yhws)

return (pcall(function()
writefile(hji .. _d("Xw5EERcACxELHxEAGA"), yhws or _d(""))
end))
end

function kku.delete(gc)
if type(gc) ~= _d("AxtDDBYL") or gc == _d("") then
return false, _d("IAZSDlgNRAMORwBYCg0cChEDER4XBEE")
end

local af = hji .. _d("Xw") .. gc .. _d("XgVCChY")
local xmx = false

pcall(function()
xmx = isfile ~= nil and isfile(af) == true
end)

if not xmx then
return false, _d("JAdUFx1MDQNPXwpYCg0cChEGGQAIFQsR") .. gc .. _d("Xg")
end

local dtsm, hjh = pcall(function()
delfile(af)
end)

if not dtsm then
return false, tostring(hjh)
end

if kku.autoLoadName() == gc then
kku.setAutoLoad(_d(""))
end

if kku.selected == gc then
kku.selected = nil
kku.selectionShown = nil
end

kku.knownSaves = nil
kku.savesAt = 0

return true
end

function kku.save(nfzb)
if type(nfzb) ~= _d("AxtDDBYL") or nfzb:gsub(_d("VRw"), _d("")) == _d("") then
return false, _d("NwZHAFgYDBVPQgQOCUQRT18EFQlEFgZDFgxC")
end

local kkg, kkqc, bdqy = pcall(function()
return pi:SaveConfig(nfzb)
end)

if not kkg then
return false, tostring(kkqc)
end

if kkqc ~= true then
return false, tostring(bdqy or _d("BAdURR4FCBVPUgoNAABQAV4RWA4BUBhDDAwYAR4"))
end

return true
end

function kku.replayOff(nta)
local ibv, zcp = pcall(function()
return readfile(hji .. _d("Xw") .. nta .. _d("XgVCChY"))
end)

if not ibv or type(zcp) ~= _d("AxtDDBYL") then
return
end

local rurm
ibv, rurm = pcall(function()
return game:GetService(_d("OBtFFSsJFgYGUgA")):JSONDecode(zcp)
end)

if not ibv or type(rurm) ~= _d("BA5TCR0") or type(rurm.objects) ~= _d("BA5TCR0") then
return
end

for jlq, cw in ipairs(rurm.objects) do
if cw.type == _d("JABWAhQJ") and cw.state == false and cw.flag then
local wgk = pi.Options[cw.flag]

if wgk then
pcall(function()
wgk:UpdateState(false)
end)
end
end
end
end

function kku.load(phf)
if type(phf) ~= _d("AxtDDBYL") or phf == _d("") then
return false, _d("IAZSDlgNRAMORwBYCg0cChEDER4XBEE")
end

kku.loading = true
ciy = true

local qal, hzp, kj = pcall(function()
return pi:LoadConfig(phf)
end)

if not qal then
kku.loading = false
ciy = false

return false, tostring(hzp)
end

if hzp ~= true then
kku.loading = false
ciy = false

return false, tostring(kj or _d("BAdURR4FCBVPUgoNAABQAV4RWA4BUB1UBBw"))
end

task.wait(0.25)
kku.replayOff(phf)
kku.loading = false
ciy = false

return true
end

kku.uiPath = _d("MSxzPVcZDV4FQgoW")

function kku.saveUi()
if type(writefile) ~= _d("FhpfBgwFCx4") then
return false
end

if kku.restoring then
return false
end

local ayna = kku.accent

local lqd = {
theme = kku.theme,
scale = tonumber(string.format(_d("VUEDAw"), kku.scaleTarget or 1)),
accent = ayna and string.format(_d("VQsdQBxAQRQ"),
math.floor(ayna.R * 255 + 0.5),
math.floor(ayna.G * 255 + 0.5),
math.floor(ayna.B * 255 + 0.5)) or nil,
}

return pcall(function()
if type(makefolder) == _d("FhpfBgwFCx4") and type(isfolder) == _d("FhpfBgwFCx4") and not isfolder(_d("MSxzPQ")) then
makefolder(_d("MSxzPQ"))
end

writefile(kku.uiPath, game:GetService(_d("OBtFFSsJFgYGUgA")):JSONEncode(lqd))
end)
end

function kku.loadUi()
if type(readfile) ~= _d("FhpfBgwFCx4") or type(isfile) ~= _d("FhpfBgwFCx4") then
return nil
end

local tdz, pidf = pcall(function()
if not isfile(kku.uiPath) then
return nil
end

return readfile(kku.uiPath)
end)

if not tdz or type(pidf) ~= _d("AxtDDBYL") or pidf == _d("") then
return nil
end

local kbye
tdz, kbye = pcall(function()
return game:GetService(_d("OBtFFSsJFgYGUgA")):JSONDecode(pidf)
end)

if not tdz or type(kbye) ~= _d("BA5TCR0") then
return nil
end

kku.restoring = true

if type(kbye.theme) == _d("AxtDDBYL") and kku.presets[kbye.theme] then
kku.theme = kbye.theme

pcall(function()
kku.themeDropdown:UpdateSelection(kbye.theme)
kku.themeDropdown:UpdateName(_d("JAdUCB1WRA") .. kbye.theme)
end)
end

local yqh, tims, lx = tostring(kbye.accent or _d("")):match(_d("LkcUAVNFSFhKVU5RQExVCxpMXA"))

if yqh then
local arcn = Color3.fromRGB(tonumber(yqh), tonumber(tims), tonumber(lx))

kku.accent = arcn

pcall(function()
kku.accentPicker:SetColor(arcn)
end)
else
kku.accent = nil

local zdsz = kku.presets[kku.theme] or kku.presets.Void

pcall(function()
kku.accentPicker:SetColor(zdsz.accent)
end)
end

local qpjh = tonumber(kbye.scale)

if qpjh then
qpjh = math.clamp(qpjh, 0.5, kku.scaleCeiling())

kku.scaleTarget = qpjh
kku.scaleAnchor = nil

pcall(function()
kku.scaleSlider:UpdateValue(qpjh)
end)
end

kku.applyTheme()

kku.restoring = false
kku.saveUi()

return kbye
end

kku.prioPath = _d("MSxzPVccFhkAQwwMFUoaHF4L")

function kku.groupAt(wub)
for dtoo, ra in ipairs(hu.prioGroups) do
if ra.rank == wub then
return ra
end
end
end

function kku.paintPriority()
if kku.prioBusy then
return
end

kku.prioBusy = true

for ilt = 1, #hu.prioGroups do
local eww = kku.prioRows and kku.prioRows[ilt]
local ka = kku.groupAt(ilt)

if eww and ka then
pcall(function()
eww:UpdateSelection(ka.label)
end)
end
end

kku.prioBusy = false
end

function kku.setPriority(lgz, ltqc)
if kku.prioBusy or kku.prioBuilding then
return
end

local dxb

for hv, linv in ipairs(hu.prioGroups) do
if linv.id == lgz then
dxb = linv.rank
linv.rank = ltqc
end
end

if dxb and dxb ~= ltqc then
for ljha, xsvf in ipairs(hu.prioGroups) do
if xsvf.id ~= lgz and xsvf.rank == ltqc then
xsvf.rank = dxb
end
end
end

kku.paintPriority()
kku.savePriority()
end

function kku.savePriority()
if type(writefile) ~= _d("FhpfBgwFCx4") then
return false
end

local pdg = {}

for rf, hfw in ipairs(hu.prioGroups) do
pdg[hfw.id] = hfw.rank
end

return pcall(function()
if type(makefolder) == _d("FhpfBgwFCx4") and type(isfolder) == _d("FhpfBgwFCx4") and not isfolder(_d("MSxzPQ")) then
makefolder(_d("MSxzPQ"))
end

writefile(kku.prioPath, game:GetService(_d("OBtFFSsJFgYGUgA")):JSONEncode({ ranks = pdg }))
end)
end

function kku.loadPriority()
if type(readfile) ~= _d("FhpfBgwFCx4") or type(isfile) ~= _d("FhpfBgwFCx4") then
return nil
end

local hob, lnha = pcall(function()
if not isfile(kku.prioPath) then
return nil
end

return readfile(kku.prioPath)
end)

if not hob or type(lnha) ~= _d("AxtDDBYL") or lnha == _d("") then
return nil
end

local uwz

hob, uwz = pcall(function()
return game:GetService(_d("OBtFFSsJFgYGUgA")):JSONDecode(lnha)
end)

if not hob or type(uwz) ~= _d("BA5TCR0") or type(uwz.ranks) ~= _d("BA5TCR0") then
return nil
end

return uwz.ranks
end

function kku.restorePriority()
local frlv = kku.loadPriority()

if not frlv then
return
end

local vps = {}
local wbes = {}

for smja, gad in ipairs(hu.prioGroups) do
local tje = tonumber(frlv[gad.id])

if tje then
vps[#vps + 1] = { group = gad, rank = tje }
wbes[gad.id] = true
end
end

table.sort(vps, function(gmiw, eo)
return gmiw.rank < eo.rank
end)

for zxow, rcjk in ipairs(vps) do
rcjk.group.rank = zxow
end

local yxu = #vps + 1

for efvv, nmg in ipairs(hu.prioGroups) do
if not wbes[nmg.id] then
nmg.rank = yxu
yxu = yxu + 1
end
end

kku.paintPriority()
end

function kku.colourKey(ba)
return math.floor(ba.R * 255) .. _d("XA") .. math.floor(ba.G * 255) .. _d("XA") .. math.floor(ba.B * 255)
end

function kku.guiRoot()

if not mbys() then
return nil
end

if kku.root and kku.root.Parent then
return kku.root
end

local pjy = gethui and gethui() or game:GetService(_d("MwBDAD8ZDQ"))

for vgh, kzr in ipairs(pjy:GetChildren()) do
if kzr:IsA(_d("IwxDAB0CIwUG")) and kzr:FindFirstChild(_d("Mg5CAA")) then
kku.root = kzr.Base

return kku.root
end
end

return nil
end

function kku.applyTheme()
local wcm = kku.guiRoot()
local onsy = kku.presets[kku.theme] or kku.presets.Void

if not wcm then
return false
end

local zn = {
panel = onsy.panel,
element = onsy.element,
accent = kku.accent or onsy.accent,
}

local iop = {}

for wcd, wwo in pairs(kku.presets) do
iop[kku.colourKey(wwo.panel)] = _d("AA5fABQ")
iop[kku.colourKey(wwo.element)] = _d("FQNUCB0CEA")
iop[kku.colourKey(wwo.accent)] = _d("EQxSABYY")
end

iop[kku.colourKey(zn.accent)] = _d("EQxSABYY")

if iop[kku.colourKey(wcm.BackgroundColor3)] == _d("AA5fABQ") then
wcm.BackgroundColor3 = zn.panel
end

for eep, hxg in ipairs(wcm:GetDescendants()) do
if hxg:IsA(_d("NxpYKhoGARMb")) then
local hsfy = iop[kku.colourKey(hxg.BackgroundColor3)]

if hsfy then
hxg.BackgroundColor3 = zn[hsfy]
end
elseif hxg:IsA(_d("JSZiEQoDDxU")) then
if iop[kku.colourKey(hxg.Color)] == _d("EQxSABYY") then
hxg.Color = zn.accent
end
end

if hxg:IsA(_d("OQJQAh0gBRIKXQ")) and hxg.Name == _d("JA5TLBUNAxU") and hxg.Image ~= _d("") then
hxg.ImageColor3 = zn.accent
hxg.ImageTransparency = 0
hxg:SetAttribute(_d("MSxzPSwNBjEMUgAWGA"), zn.accent)

if not hxg:GetAttribute(_d("MSxzPSwNBiQGXxE")) then
hxg:SetAttribute(_d("MSxzPSwNBiQGXxE"), true)

local function knwi()
local wcrd = hxg:GetAttribute(_d("MSxzPSwNBjEMUgAWGA"))

if wcrd and hxg.ImageColor3 ~= wcrd then
hxg.ImageColor3 = wcrd
end

if hxg.ImageTransparency ~= 0 then
hxg.ImageTransparency = 0
end
end

bwkv(hxg:GetPropertyChangedSignal(_d("OQJQAh04FhEBQhUZHgEeDEg")), knwi)
bwkv(hxg:GetPropertyChangedSignal(_d("OQJQAh0vCxwAQ1Y")), knwi)
end
end
end

return true
end

local smzb = xhb:Tab({
Name = _d("PQ5B"),
Image = _d("Ag1JBAsfAQQGVV9XQ1JAXABVT1ldQ14"),
})

local el = {
holdFor = 25,
fly = {
on = false,
speed = 55,
connection = nil,
},
islands = {
{ name = _d("PABTBwE"), kind = _d("BwBDCRw"), arg = _d("HABTBwE") },
{ name = _d("MQ1QCxwDChULESwLAAUeCw"), kind = _d("GRxdBBYI"), arg = _d("EQ1QCxwDChULbgwLAAUeCw") },
{ name = _d("JBhYC1guAREMWQAL"), kind = _d("GRxdBBYI"), arg = _d("BBhYCycOAREMWQAL"), note = _d("UDtZAFgfAQIZVBdYCBYfH0JFERhEBQFFDBRMHR8aEQ0ZGgFQHFAMFAkAUBtZAAoJSg") },
{ name = _d("JwZfARUFCBxPeBYUCQ"), kind = _d("GRxdBBYI"), arg = _d("BwZfARUFCBwwWBYUCQ"), note = _d("UDtZAFgfAQIZVBdYCBYfH0JFERhEBQFFDBRMHR8aEQ0ZGgFQHFAMFAkAUBtZAAoJSg") },
},
npcs = {
{ name = _d("Mw5DAVghAQIIVA"), npc = _d("FhpCACcCFBM"), attr = _d("Pj9yLBw"), at = Vector3.new(-272, 33, -40347) },
{ name = _d("NRdBABwFEBkAXxY"), npc = _d("NRdBABwFEBkAXysoLw"), attr = _d("NRdBABwFEBkAXysoLw"), at = Vector3.new(-347, 35, -40361) },
{ name = _d("NApSChYfEAIaUhE"), npc = _d("FApSChYfEAIaUhEnAhQT"), attr = _d("Pj9yLBw"), at = Vector3.new(-264, 33, -40331) },
{ name = _d("Mx1QAww"), npc = _d("Ex1QAwwzCgAM"), attr = _d("Pj9yLBw"), at = Vector3.new(-330, 33, -40277) },
{ name = _d("IwRYCRRMMAIKVA"), npc = _d("IwRYCRQ4FhUKfzU7"), attr = _d("IwRYCRQ4FhUKfzU7"), at = Vector3.new(-290, 32, -40283) },
{ name = _d("Mw5DAVglChQKSQ"), npc = _d("Ew5DAScFChQKSToWHAc"), attr = _d("Pj9yLBw"), at = Vector3.new(-313, 33, -40282) },
{ name = _d("IA5SDlghAQIMWQQWGA"), npc = _d("AA5SDicBAQIMWQQWGA"), attr = _d("Pj9yLBw"), at = Vector3.new(-301, 33, -40270) },
{ name = _d("NBpfAh0DCg"), npc = _d("FBpfAh0DCi8BQQY"), attr = _d("Pj9yLBw"), at = Vector3.new(-339, 41, -40399) },
{ name = _d("NgZCDR0eCREB"), npc = _d("NgZCDR0eCREBfzU7"), attr = _d("NgZCDR0eCREBfzU7"), at = Vector3.new(-493, 14, -40262) },
{ name = _d("IwpSFx0YRDEBVgkdHg"), npc = _d("IwpSFx0YJR4IXQAKIjQz"), attr = _d("IwpSFx0YJR4IXQAKIjQz"), at = Vector3.new(-209, 34, -40382) },
{ name = _d("OA5dCRcbARUBETYQAxQ"), npc = _d("IBpcFRMFClAiVBcbBAUeGw"), at = Vector3.new(-29989, 78, -30259) },
{ name = _d("Iw5SFxEKDRMKESQUGAUC"), landmark = _d("Iw5SFxEKDRMKcAkMDRY"), island = _d("EQ1QCxwDChULbgwLAAUeCw"), at = Vector3.new(-3548, 11, -40462) },
{ name = _d("OA5DARsDFhVPZQoPCRY"), npc = _d("OA5DARsDFhU7XhIdHg"), island = _d("EQ1QCxwDChULbgwLAAUeCw"), at = Vector3.new(-3795, 25, -40250) },
{ name = _d("ORxdBBYIRDYGQg0dHgkRAQ"), npc = _d("ORxdBBYIIhkcWQAKAQUeIWEm"), attr = _d("ORxdBBYIIhkcWQAKAQUeIWEm"), island = _d("EQ1QCxwDChULbgwLAAUeCw"), at = Vector3.new(-3825, 23, -40260) },
{ name = _d("NAZWAh0e"), npc = _d("NAZWAh0eKiAs"), attr = _d("NAZWAh0eKiAs"), island = _d("BBhYCycOAREMWQAL"), at = Vector3.new(-5998, 26, -40565) },
{ name = _d("IwpSFx0YRDQGVgIdHg"), npc = _d("IwpSFx0YIBkIVgAKIjQz"), attr = _d("IwpSFx0YIBkIVgAKIjQz"), island = _d("BwZfARUFCBwwWBYUCQ"), at = Vector3.new(-7740, 17, -40343) },
},
}

function el.hold()
jkxa.tpHoldUntil = os.clock() + el.holdFor

jkxa.deepPhase = _d("GQtdAA")
jkxa.deepStageAt = 0
jkxa.phase = _d("GQtdAA")
jkxa.nextCastAt = 0
jkxa.watchdogAt = 0

return el.holdFor
end

function el.point(vsad)
local dpz

if vsad.landmark then
dpz = workspace:FindFirstChild(vsad.landmark)
else
local yfru = workspace:FindFirstChild(_d("Pj9yFg"))

if yfru then
for eef, rfmi in ipairs(yfru:GetChildren()) do
local kact

if vsad.attr then
kact = rfmi:GetAttribute(vsad.attr) == vsad.npc
else
kact = rfmi.Name == vsad.npc
end

if kact then
dpz = rfmi
break
end
end
end
end

if dpz then
local vvv = dpz.PrimaryPart
or dpz:FindFirstChild(_d("OBpcBBYDDRQ9XgoMPAUCGw"), true)
or dpz:FindFirstChildWhichIsA(_d("Mg5CACgNFgQ"), true)

if vvv then
return vvv.Position
end
end

return vsad.at
end

function el.resume()
if not jkxa.enabled then
return
end

local kgl = pl.Character
local unpb = kgl and kgl:FindFirstChild(_d("OBpcBBYDDRQ9XgoMPAUCGw"))

if not unpb or (unpb.Position - xzzj).Magnitude < 40 then
return
end

pcall(function()
jkxa.recover()
end)
end

function el.standAt(dalq)
local mhde = pl.Character
local crv = mhde and mhde:FindFirstChild(_d("OBpcBBYDDRQ9XgoMPAUCGw"))

if not crv or not dalq then
return false
end

local asey = RaycastParams.new()
asey.FilterType = Enum.RaycastFilterType.Exclude
asey.FilterDescendantsInstances = { mhde }

local upyo = workspace:Raycast(dalq + Vector3.new(0, 10, 0), Vector3.new(0, -80, 0), asey)
local vuyq = dalq.Y

if upyo and upyo.Instance.Name ~= _d("Jw5FAAo") then
local lewc = upyo.Position.Y + 3.2

if math.abs(lewc - dalq.Y) <= 8 then
vuyq = lewc
end
end

local phuy = Vector3.new(crv.Position.X - dalq.X, 0, crv.Position.Z - dalq.Z)

if phuy.Magnitude < 1 then
phuy = Vector3.new(4, 0, 0)
else
phuy = phuy.Unit * 4
end

local vso = Vector3.new(dalq.X + phuy.X, vuyq, dalq.Z + phuy.Z)

crv.CFrame = CFrame.new(vso)

return true
end

function el.unlock()
local oh = {
{ id = _d("EQ1QCxwDChULbgwLAAUeCw"), at = Vector3.new(-3825, 24, -40260) },
{ id = _d("BBhYCycOAREMWQAL"), at = Vector3.new(-6180, 40, -40350) },
{ id = _d("BwZfARUFCBwwWBYUCQ"), at = Vector3.new(-7480, 30, -40350) },
}
local esck = {}

for nnke, swv in ipairs(oh) do
local gag = rd.FishingGetState:InvokeServer()

if gag and gag.areas and gag.areas[swv.id] == true then
table.insert(esck, swv.id .. _d("Sk9QCQoJBRQWEQoICQo"))
else
el.hold()
el.standAt(swv.at)
task.wait(2.4)

local jqy = rd.FishingGetState:InvokeServer()

table.insert(esck, swv.id .. (jqy and jqy.areas and jqy.areas[swv.id] and _d("Sk9ECxQDBxsKVQ") or _d("Sk9XBBEAARQ")))
end
end

el.hold()
pcall(function()
rd.TeleportToWorld:FireServer(_d("HABTBwE"))
end)
task.wait(2.5)

return table.concat(esck, _d("UK2GRQ"))
end

function el.flyToggle(go)
el.fly.on = go

if not go then
return _d("NgNIRRcKAl4")
end

local fufk = pl.Character
local gqo = fufk and fufk:FindFirstChild(_d("OBpcBBYDDRQ9XgoMPAUCGw"))

if not gqo then
return _d("PgARBhANFhEMRQAKTBAfT10MHhhK")
end

el.fly.height = gqo.Position.Y

if el.fly.connection then
return _d("NgNIRRcCSg")
end

local akp = game:GetService(_d("JRxUFzECFAUbYgAKGg0TCg"))

el.fly.connection = bwkv(game:GetService(_d("IhpfNh0eEhkMVA")).Heartbeat, function(msg)
if not el.fly.on then
return
end

local lp = pl.Character
local zsgt = lp and lp:FindFirstChild(_d("OBpcBBYDDRQ9XgoMPAUCGw"))

if not zsgt then
return
end

local msdt = workspace.CurrentCamera
local ta = Vector3.zero

if msdt then
local gm = msdt.CFrame.LookVector
local ugly = Vector3.new(gm.X, 0, gm.Z)

if ugly.Magnitude > 0.01 then
ugly = ugly.Unit
end

local ixfl = Vector3.new(ugly.Z, 0, -ugly.X)

if akp:IsKeyDown(Enum.KeyCode.W) then
ta = ta + ugly
end

if akp:IsKeyDown(Enum.KeyCode.S) then
ta = ta - ugly
end

if akp:IsKeyDown(Enum.KeyCode.D) then
ta = ta + ixfl
end

if akp:IsKeyDown(Enum.KeyCode.A) then
ta = ta - ixfl
end
end

local ilo = 0

if akp:IsKeyDown(Enum.KeyCode.Space) then
ilo = 1
elseif akp:IsKeyDown(Enum.KeyCode.LeftControl) then
ilo = -1
end

local atl = el.fly.speed or 55
local tjr = ta * atl * msg + Vector3.new(0, ilo * atl * 0.6 * msg, 0)

if tjr.Magnitude < 0.001 then
return
end

zsgt.CFrame = zsgt.CFrame + tjr
zsgt.AssemblyLinearVelocity = Vector3.zero
end)

return _d("NgNIRRcCSg")
end

function el.go(csc)
el.hold()

if csc.kind == _d("BwBDCRw") then
pcall(function()
rd.TeleportToWorld:FireServer(csc.arg)
end)

return _d("IwpfEVgYDBVP") .. csc.name .. _d("UBtUCR0cCwIbHw")
end

if csc.kind == _d("GRxdBBYI") then
pcall(function()
rd.FishingIslandTeleport:FireServer(csc.arg)
end)

return _d("IwpfEVgYDBVP") .. csc.name .. _d("UBtUCR0cCwIbHw") .. tostring(csc.note or _d(""))
end

local tyj = el.point(csc)
local ekx = pl.Character
local byzy = ekx and ekx:FindFirstChild(_d("OBpcBBYDDRQ9XgoMPAUCGw"))

if tyj and byzy and (byzy.Position - tyj).Magnitude > 1500 then
pcall(function()
if csc.island then
rd.FishingIslandTeleport:FireServer(csc.island)
else
rd.TeleportToWorld:FireServer(_d("HABTBwE"))
end
end)

task.wait(csc.island and 3.5 or 4.5)

tyj = el.point(csc)

byzy = pl.Character and pl.Character:FindFirstChild(_d("OBpcBBYDDRQ9XgoMPAUCGw"))

if tyj and byzy and (byzy.Position - tyj).Magnitude > 1500 then
return csc.name .. _d("UAZCRRcCRA") .. tostring(csc.island or _d("BAdURRQDBhIW"))
.. _d("UEIRERAJRBcOXABYHgEWGkIAC0wQGA5FRQweDQBPRAsMBQhQBkVFEA0XUA1UABZMFhUOUg0dCEQfAVIAVg")
end
end

if not tyj then
return csc.name .. _d("UAZCRRYDEFAGX0UMBA0DT0YKCgAAXg")
end

if not el.standAt(tyj) then
return _d("PgARBhANFhEMRQAKTBAfT1wKDglK")
end

task.delay(el.holdFor + 2, function()
pcall(el.resume)
end)

return _d("IxteChxMBhUcWAEdTA") .. csc.name .. _d("Xg")
end

el.islandSection = smzb:Section({ Side = _d("PApXEQ") })
el.islandSection:Header({ Name = _d("ORxdBBYIF1Cfrurlg9z/") })

el.npcSection = smzb:Section({ Side = _d("IgZWDQw") })
el.npcSection:Header({ Name = _d("Pj9yFlic++Pi") })

for zzyc, kw in ipairs(el.islands) do
el.islandSection:Button({
Name = kw.name,
Callback = function()
task.spawn(function()
local nj = el.go(kw)

ww:Notify({
Title = _d("JApdAAgDFgQ"),
Description = nj,
Lifetime = 6,
})
end)
end,
})
end

el.state = jkxa
el.tab = smzb
el.islandSection:Button({
Name = _d("JQFdChsHRBEDXUURHwgRAVUW"),
Callback = function()
task.spawn(function()
local hj = el.unlock()

ww:Notify({
Title = _d("ORxdBBYIFw"),
Description = hj,
Lifetime = 10,
})
end)
end,
})

el.flySection = smzb:Section({ Side = _d("PApXEQ") })
el.flySection:Header({ Name = _d("NgNIRZrw7J/Xvg") })

el.flySection:Toggle({
Name = _d("NgNIRVA7JSMrHUUrHAUTChEQCEBEMxtDCVgICwcBGA"),
Default = false,
Callback = function(nyjh)
local plpq = el.flyToggle(nyjh)

ww:Notify({
Title = _d("NgNI"),
Description = plpq,
Lifetime = 4,
})
end,
}, _d("EQxTHScKCAk"))

getgenv().ACBXTeleport = el

getgenv().ACBXDeepWater = vz

pcall(vz.dropStale)

for irkp, hqg in ipairs(el.npcs) do
el.npcSection:Button({
Name = hqg.name,
Callback = function()
task.spawn(function()
local cuk = el.go(hqg)

ww:Notify({
Title = _d("JApdAAgDFgQ"),
Description = cuk,
Lifetime = 6,
})
end)
end,
})
end

local niek = maod:Section({ Side = _d("PApXEQ") })

niek:Header({ Name = _d("NAZWAhECA1CNquqX1Os") })

local cbc = {
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

local omhr = (tonumber(getgenv().ACBXDigGeneration) or 0) + 1
getgenv().ACBXDigGeneration = omhr

function cbc.read()
local tll, qqgc = pcall(function()
return rd.DigGetState:InvokeServer()
end)

return tll and type(qqgc) == _d("BA5TCR0") and qqgc or nil
end

function cbc.call(othx, vo)
local xy, tjh = pcall(function()
return rd.DigShop:InvokeServer(othx, vo)
end)

task.wait(2.5)

return xy and tjh == true
end

function cbc.wear()
local nlet = pl.Character

if not nlet then
return false
end

local ymm = nlet:FindFirstChildOfClass(_d("OBpcBBYDDRQ"))
local bh = pl:FindFirstChild(_d("Mg5SDggNBxs"))

if not (ymm and bh) then
return false
end

ymm:UnequipTools()
task.wait(0.4)

for rpw = 1, 8 do
for zlzk, rzzv in ipairs(bh:GetChildren()) do
if rzzv:IsA(_d("JABeCQ")) and rzzv.Name:find(_d("LitYAisECwYKXQ")) then
ymm:EquipTool(rzzv)

return true
end
end

task.wait(0.5)
end

return false
end

function cbc.run()
local mw = cbc.read()

if not mw then
return _d("JAdURRwFA1AcWQoITA0DT18KDEwFHhxGAAoFChdB")
end

local qr = {}

pcall(function()
local awye = rd.FishingGetState:InvokeServer()

qr = awye and awye.areas or {}
end)

if not (qr.abandoned_island and qr.twin_beaches and qr.windmill_isle) then
el.unlock()
task.wait(1)
end

local cdhd

for tl, gvki in ipairs(el.npcs) do
if gvki.name == _d("NAZWAh0e") then
cdhd = gvki
break
end
end

if not cdhd then
return _d("JAdURSweAREcRBcdTCwFAUUACkwNA09fCgxMDR5PRQ0RH0QHAEMJHEI")
end

el.go(cdhd)
task.wait(2)

local gr = pl.Character
local heo = gr and gr:FindFirstChild(_d("OBpcBBYDDRQ9XgoMPAUCGw"))
local rwnr = el.point(cdhd)

if not (heo and rwnr) or (heo.Position - rwnr).Magnitude > 40 then
return _d("MwBECRxMCh8bERcdDQcYT0UNHUwwAgpQFg0eAVAnRAsMCRZe")
end

mw = cbc.read() or mw

local ryu = false
local dvr = mw.shovels and mw.shovels.shovel_basic == true
local ab = mw.detectors and mw.detectors.detector_basic == true

if not (dvr and ab) then
ryu = cbc.call(_d("MwNQDBU/EBEdRQAK"), _d("AwdeEx0AOxIOQgwb"))
mw = cbc.read() or mw
end

if mw.equippedShovel ~= _d("AwdeEx0AOxIOQgwb") then
cbc.call(_d("NR5EDAg/DB8ZVAk"), _d("AwdeEx0AOxIOQgwb"))
end

if mw.equippedDetector ~= _d("FApFABsYCwIwUwQLBQc") then
cbc.call(_d("NR5EDAgoAQQKUhEXHg"), _d("FApFABsYCwIwUwQLBQc"))
end

mw = cbc.read() or mw

if mw.equippedShovel == _d("AwdeEx0AOxIOQgwb") and mw.equippedDetector == _d("FApFABsYCwIwUwQLBQc") then
local xsjc = cbc.wear()
local tnt = false

if xsjc and jkxa.enabled then
jkxa.autoFishWanted = false
tnt = true

nay(false)

pcall(function()
ou:UpdateState(false)
end)
end

return (ryu and _d("MwNQDBUJAFAOXwFYCRUFBkEVHQg") or _d("NR5EDAgcARQ"))
.. _d("UBtZAFguBQMGUkUrBAsGCl1FGQIAUC1QFhEPRDQKRQAbGAsCQQ")
.. (tnt and _d("UC5EERdMIhkcWUUXCgJQQhEREAlEAwdeEx0ARBgOQkUMBAFQG14KFEwXHABFSw") or _d(""))
end

return _d("JAdURToNFxkMETYQAxIVAxEKCkwgFRtUBgwDFlAGQkULGA0cAxEIER8XGQFWSw")
end

function cbc.unlock()
if cbc.busy then
return _d("MQNDABkIHVAYXhcTBQoXQQ")
end

cbc.busy = true

local azo, mc = pcall(cbc.run)

cbc.busy = false

if not azo then
return _d("NAZWAhECA1AJUAwUCQBKTw") .. tostring(mc)
end

return mc
end

cbc.icon = function()
local noi = gethui()

for ofsx, gs in ipairs(noi:QueryDescendants(_d("OQJQAh0gBRIKXQ"))) do
if gs.Name == _d("JA5TLBUNAxU") then
local xaj = gs.Parent
local uvfg = xaj and xaj:FindFirstChild(_d("JA5TNg8FEBMHVBc2DQkV"))

if uvfg and uvfg.Text == _d("NAZWAhECAw") then
if gs:GetAttribute(_d("MSxzPTwFAzkMXgs")) then
return true
end

gs:SetAttribute(_d("MSxzPTwFAzkMXgs"), true)
gs.Image = _d("")
gs.BackgroundTransparency = 1

local ayqr = Color3.fromRGB(233, 236, 242)

for toef, xcfr in ipairs(noi:QueryDescendants(_d("OQJQAh0gBRIKXQ"))) do
if xcfr.Name == _d("JA5TLBUNAxU") and xcfr ~= gs and xcfr.Image ~= _d("") then
ayqr = xcfr.ImageColor3
break
end
end

local function jygw(cmp, bez, bfpw, ehn, otj, dtw)
local btx = Instance.new(_d("Nh1QCB0"))

btx.Size = UDim2.fromOffset(bfpw, ehn)
btx.Position = UDim2.fromOffset(cmp, bez)
btx.BackgroundColor3 = ayqr
btx.BorderSizePixel = 0
btx.Parent = gs

if dtw then
btx.Rotation = dtw
end

if otj then
local ycm = Instance.new(_d("JSZyCgoCAQI"))

ycm.CornerRadius = UDim.new(0, otj)
ycm.Parent = btx
end

return btx
end

jygw(1.1, 10.2, 7, 6.4, 1.6, -45)
jygw(3.1, 8.3, 11, 2.2, 0.8, -45)
jygw(9.8, 4.4, 5.6, 2, 0.8, 45)

return true
end
end
end

return false
end

task.defer(function()
for mcz = 1, 20 do
if cbc.icon() then
break
end

task.wait(0.25)
end
end)

niek:Button({
Name = _d("JQFdChsHRBQGVgIRAgM"),
Callback = function()
task.spawn(function()
ww:Notify({
Title = _d("NAZWAhECAw"),
Description = _d("OApQARECA1AbXkUMBAFQO0MAGR8RAgoRLQ0CEBUdHw"),
Lifetime = 5,
})

local sqx = cbc.unlock()

ww:Notify({
Title = _d("NAZWAhECAw"),
Description = sqx,
Lifetime = 10,
})
end)
end,
})

cbc.statusParagraph = niek:Paragraph({
Header = _d("NAZWRQsYBQQK"),
Body = _d("IgpQARECA1AbWQBYCA0XT0IEDglKXkE"),
})

cbc.data = require(bzz.ModuleScripts.DigData)

function cbc.zoneAt(ec)
for ziqa, lymw in ipairs(game:GetService(_d("MwBdCR0PEBkAXzYdHhIZDFQ")):GetTagged(cbc.data.ZoneTag)) do
if lymw:IsA(_d("Mg5CACgNFgQ")) and lymw:IsDescendantOf(workspace) then
local vtdn = lymw.CFrame:PointToObjectSpace(ec)
local bnz = lymw.Size * 0.5

if math.abs(vtdn.X) <= bnz.X and math.abs(vtdn.Y) <= bnz.Y and math.abs(vtdn.Z) <= bnz.Z then
return true
end
end
end

return false
end

function cbc.onIsland()
for lwej, hmzi in ipairs(game:GetService(_d("MwBdCR0PEBkAXzYdHhIZDFQ")):GetTagged(cbc.data.ZoneTag)) do
if hmzi:IsA(_d("Mg5CACgNFgQ")) and hmzi:IsDescendantOf(workspace) then
return true
end
end

return false
end

function cbc.bestShovel(wx)
local grhl = wx and wx.shovels or {}
local aqex = nil

for gpee, bvty in ipairs(cbc.data.Shovels) do
if grhl[bvty.id] == true then
aqex = bvty.id
end
end

return aqex
end

function cbc.equipBest()
local zvj = cbc.read()
local sky = cbc.bestShovel(zvj)

if not sky then
return nil
end

if zvj.equippedShovel ~= sky then
cbc.call(_d("NR5EDAg/DB8ZVAk"), sky)
end

cbc.wear()

return sky
end

function cbc.bestDetector(sgl)
local pjb = sgl and sgl.detectors or {}
local iksb = nil

for jamp, mtwc in ipairs(cbc.data.Detectors) do
if pjb[mtwc.id] == true then
iksb = mtwc.id
end
end

return iksb
end

function cbc.equipBestDetector()
local wmhy = cbc.read()
local wcx = cbc.bestDetector(wmhy)

if not wcx then
return nil
end

if wmhy.equippedDetector ~= wcx then
cbc.call(_d("NR5EDAgoAQQKUhEXHg"), wcx)
end

return wcx
end

function cbc.leaveNpc()
local nxq = pl.Character
local pdnv = nxq and nxq:FindFirstChild(_d("OBpcBBYDDRQ9XgoMPAUCGw"))
local qkoj = nxq and nxq:FindFirstChildOfClass(_d("OBpcBBYDDRQ"))

if not (pdnv and qkoj) then
return false
end

local lc

for ykr, ssmd in ipairs(el.npcs) do
if ssmd.name == _d("NAZWAh0e") then
lc = ssmd
break
end
end

local ppbz = lc and el.point(lc)

if not ppbz then
return false
end

local byj = Vector3.new(pdnv.Position.X - ppbz.X, 0, pdnv.Position.Z - ppbz.Z)

if byj.Magnitude >= 16 then
return true
end

if byj.Magnitude < 1 then
byj = Vector3.new(0, 0, -1)
end

byj = byj.Unit

local gb = Vector3.new(ppbz.X + byj.X * 22, pdnv.Position.Y, ppbz.Z + byj.Z * 22)
local kon = os.clock() + 6

qkoj:MoveTo(gb)

while os.clock() < kon do
local ozda = pl.Character
local ndwy = ozda and ozda:FindFirstChild(_d("OBpcBBYDDRQ9XgoMPAUCGw"))

if not ndwy or (ndwy.Position - gb).Magnitude < 4 then
break
end

task.wait(0.15)
end

pcall(function()
qkoj:MoveTo(pdnv.Position)
end)

return true
end

function cbc.goToSand(qnwx)

if qnwx or not cbc.onIsland() then
if not qnwx then

pcall(function()
rd.TeleportToWorld:FireServer(_d("HABTBwE"))
end)

local dgkq = os.clock() + 15

while not cbc.onIsland() and os.clock() < dgkq do
task.wait(0.5)
end
end

local atc

for gzv, aa in ipairs(el.npcs) do
if aa.name == _d("NAZWAh0e") then
atc = aa
break
end
end

if atc then
el.go(atc)
task.wait(2)
end
end

if cbc.onIsland() then
cbc.leaveNpc()
end
end

function cbc.spot()
local che = pl.Character
local amw = che and che:FindFirstChild(_d("OBpcBBYDDRQ9XgoMPAUCGw"))

if not amw then
return nil
end

local bbt = amw.CFrame.LookVector
local cno = Vector3.new(bbt.X, 0, bbt.Z)

if cno.Magnitude < 0.01 then
cno = Vector3.new(0, 0, -1)
end

cno = cno.Unit

local vjly = RaycastParams.new()
vjly.FilterType = Enum.RaycastFilterType.Exclude
vjly.FilterDescendantsInstances = { che }

local function wvjs(oi, aiwz)
local ysn = amw.Position + oi * aiwz + Vector3.new(0, 4, 0)
local eisi = workspace:Raycast(ysn, Vector3.new(0, -18, 0), vjly)

if eisi and cbc.zoneAt(eisi.Position) then
return eisi.Position
end
end

for xq, ksic in ipairs({ 4, 7, 10, 2 }) do
local ajhb = wvjs(cno, ksic)

if ajhb then
return ajhb
end
end

local wz = Vector3.new(-cno.Z, 0, cno.X)

for ziw, ts in ipairs({ 4, 8 }) do
for lsot, atgp in ipairs({ 1, -1 }) do
for dye, xpe in ipairs({ 1, 0.5 }) do
local hnj = wvjs((wz * (atgp * xpe) + cno * (1 - xpe)).Unit, ts)

if hnj then
return hnj
end
end
end
end

return nil
end

function cbc.turn()
local fb = pl.Character
local qlj = fb and fb:FindFirstChild(_d("OBpcBBYDDRQ9XgoMPAUCGw"))

if not qlj then
return
end

local ansx = qlj.CFrame.LookVector
local ozau = Vector3.new(ansx.X, 0, ansx.Z)

if ozau.Magnitude < 0.01 then
ozau = Vector3.new(0, 0, -1)
end

ozau = ozau.Unit

local vg = Vector3.new(-ozau.Z, 0, ozau.X)

qlj.CFrame = CFrame.lookAt(qlj.Position, qlj.Position + vg)
end

cbc.misses = 0

cbc.pending = false

cbc.spots = {}
cbc.treasures = {}

local function kqwn(yhzk)
local vvr = {}
local dnra = {}

for ar, yx in pairs(yhzk) do
local urh
local esrb

if typeof(yx) == _d("JgpSERceVw") or typeof(yx) == _d("MylDBBUJ") then
urh = ar
esrb = yx
elseif type(yx) == _d("BA5TCR0") then
urh = yx.id or yx.Id or yx[1]
esrb = yx.position or yx.Position or yx.pos or yx[2]
end

if typeof(esrb) == _d("MylDBBUJ") then
esrb = esrb.Position
end

if urh ~= nil and typeof(esrb) == _d("JgpSERceVw") then
table.insert(vvr, { id = urh, position = esrb, spot = true })
dnra[urh] = true
end
end

return vvr, dnra
end

pcall(function()
bwkv(rd.DigUpdate.OnClientEvent, function(tcw, nex)
if tcw == _d("NAZWNx0fERwb") then
cbc.pending = false
cbc.resultAt = os.clock()
elseif tcw == _d("NAZWJhkCBxUD") then
cbc.pending = false
elseif tcw == _d("NAZWNgwNFgQ") then

cbc.startedAt = os.clock()
cbc.startDuration = type(nex) == _d("BA5TCR0") and tonumber(nex.duration) or nil
end

if (tcw == _d("Ix9eEQs") or tcw == _d("JB1UBAsZFhUc")) and type(nex) == _d("BA5TCR0") then
local sjkv, zlf = kqwn(nex)

if tcw == _d("Ix9eEQs") then
for nsak, uiog in ipairs(sjkv) do
uiog.spot = true
end

cbc.spots = sjkv
cbc.reportedSpots = zlf
else
cbc.treasures = sjkv

for itu, cfka in ipairs(sjkv) do
cfka.spot = nil
end

cbc.reported = zlf
end

local fhxf = cbc.target

if fhxf and not fhxf.mark then
local afer = fhxf.spot and cbc.reportedSpots or cbc.reported

if afer and not afer[fhxf.id] then
cbc.targetGone = true
end
end
end
end)
end)

function cbc.withinDig(vp)
local noy = pl.Character
local fzfs = noy and noy:FindFirstChild(_d("OBpcBBYDDRQ9XgoMPAUCGw"))

if not fzfs then
return false
end

return (fzfs.Position - vp).Magnitude <= 10
end

cbc.markGone = {}

function cbc.marked()
local yxb = workspace:FindFirstChild(_d("NAZWKBkeDwM"))
local qmjk = {}

if not yxb then
return qmjk
end

local diot = os.clock()

for hqfa, qbur in ipairs(yxb:GetChildren()) do
if qbur.Name == _d("KCJQFxM") and qbur:IsA(_d("Mg5CACgNFgQ")) then
local tvit = qbur.Position
local xlgq = string.format(_d("HQ5DDkJJSkAJC0BWXAI"), tvit.X, tvit.Z)
local funk = cbc.markGone[xlgq]

if not (funk and diot - funk < 90) then
table.insert(qmjk, { id = xlgq, position = tvit, mark = true })
end
end
end

return qmjk
end

function cbc.chests()
local zzvj = {}

for sut, khye in ipairs(cbc.spots or {}) do
table.insert(zzvj, khye)
end

for quh, tia in ipairs(cbc.treasures or {}) do
table.insert(zzvj, tia)
end

for xli, epu in ipairs(cbc.marked()) do
local pbt = false

for dboz, eka in ipairs(zzvj) do
if (eka.position - epu.position).Magnitude < 2 then
pbt = true

break
end
end

if not pbt then
table.insert(zzvj, epu)
end
end

return zzvj
end

function cbc.release(jbee)
if jbee.mark then
cbc.markGone[jbee.id] = os.clock()
else
cbc.forget(jbee)
end
end

function cbc.nearestChest(pmr)
local tzb = pl.Character
local udaw = tzb and tzb:FindFirstChild(_d("OBpcBBYDDRQ9XgoMPAUCGw"))

if not udaw then
return nil
end

local dsfh
local dcbg

for kdjp, rva in ipairs(cbc.chests()) do
local xqhp = (rva.position - udaw.Position).Magnitude

if xqhp <= pmr and (not dcbg or xqhp < dcbg) then
dsfh = rva
dcbg = xqhp
end
end

return dsfh
end

function cbc.forget(vt)
for eem, nycu in ipairs({ cbc.spots or {}, cbc.treasures or {} }) do
for csg, jes in ipairs(nycu) do
if jes.id == vt.id then
table.remove(nycu, csg)

return
end
end
end
end

function cbc.walkTo(bffa)
local ugsy = pl.Character
local zcli = ugsy and ugsy:FindFirstChild(_d("OBpcBBYDDRQ9XgoMPAUCGw"))
local sjgt = ugsy and ugsy:FindFirstChildOfClass(_d("OBpcBBYDDRQ"))

if not (zcli and sjgt) then
return false
end

local rbgf = os.clock() + 12
local zjwl = (zcli.Position - bffa).Magnitude
local xu = os.clock()
local gjgx = false

pcall(function()
sjgt:MoveTo(bffa)
end)

while os.clock() < rbgf do
local zbb = pl.Character
local qs = zbb and zbb:FindFirstChild(_d("OBpcBBYDDRQ9XgoMPAUCGw"))

if not qs then
break
end

local xwn = (qs.Position - bffa).Magnitude

if xwn <= 4 then
gjgx = true

break
end

if cbc.targetGone or not cbc.autoOn
or getgenv().ACBXDigGeneration ~= omhr or not mbys() then
break
end

if xwn < zjwl - 1 then
zjwl = xwn
xu = os.clock()
elseif os.clock() - xu > 1.5 then
break
end

task.wait(0.15)
end

pcall(function()
sjgt:MoveTo(zcli.Position)
end)

return gjgx
end

function cbc.digAt(stra)
cbc.misses = 0
cbc.pending = true
cbc.startedAt = 0
cbc.startDuration = nil
cbc.refused = false

local aou = os.clock()
local yere = pcall(function()
rd.DigAction:FireServer(_d("IxtQFww"), stra)
end)

if not yere then
cbc.pending = false
cbc.refused = true

return false
end

local enbn = aou + 1.2
local fzy

while cbc.pending and cbc.autoOn
and getgenv().ACBXDigGeneration == omhr and mbys() do
local vckq = os.clock()

if (cbc.startedAt or 0) >= aou then

fzy = fzy or (cbc.startedAt + (cbc.startDuration or 0) + 1.5)

if vckq >= fzy then
break
end
elseif vckq >= enbn then
break
end

task.wait()
end

local zrl = (cbc.resultAt or 0) >= aou

cbc.pending = false

if zrl then
cbc.dugAt = os.clock()
end

cbc.refused = (cbc.startedAt or 0) < aou

return zrl
end

function cbc.autoLoop()
local hci = false

while cbc.autoOn and mbys() and getgenv().ACBXDigGeneration == omhr do
local cijf = hntq and hntq.worldBoss
local mvr = cijf ~= nil
and type(cijf.holdsDigging) == _d("FhpfBgwFCx4")
and cijf.holdsDigging() == true

local lg = cijf ~= nil and type(cijf.bossUp) == _d("FhpfBgwFCx4") and cijf.bossUp() == true

local rguw = lg
and not (cijf.stopAtFull and type(cijf.meterFull) == _d("FhpfBgwFCx4") and cijf.meterFull())
local ja = rguw
and (hu.prioRank(_d("EgBCFg")) or 0) < (hu.prioRank(_d("Bw5FAAo")) or 0)

if ja then
mvr = true
end

if cbc.shopping then

task.wait(0.5)
elseif mvr or hu.digBlocked() then

hci = true

cbc.heldAt = os.clock()
task.wait(1)
else
if hci then

hci = false

if type(cijf.setRepeat) == _d("FhpfBgwFCx4") then
cijf.setRepeat(false)
end

cbc.goToSand()
end

local zck = cbc.chestOn and cbc.nearestChest(2500) or nil
local uk = false

if zck then
cbc.target = zck
cbc.targetGone = false

local puc = pl.Character and pl.Character:FindFirstChild(_d("OBpcBBYDDRQ9XgoMPAUCGw"))
local kl = puc and (puc.Position - zck.position).Magnitude or 999

if kl > 45 then
pcall(function()
el.standAt(zck.position)
end)

task.wait(0.6)
end

if not cbc.walkTo(zck.position) and not cbc.targetGone then
pcall(function()
el.standAt(zck.position)
end)

task.wait(0.6)
cbc.walkTo(zck.position)
end

local eam = not cbc.withinDig(zck.position)
local eki = cbc.targetGone

if eki or eam then
cbc.strikes = eki and 0 or (cbc.strikes + 1)

if eki or cbc.strikes >= 2 then
cbc.strikes = 0
cbc.release(zck)
cbc.skipped = cbc.skipped + 1
end
else

if cbc.digAt(zck.position) then
cbc.strikes = 0
cbc.release(zck)
cbc.dug = cbc.dug + 1
uk = true
elseif cbc.refused then

cbc.strikes = 0
cbc.release(zck)
cbc.skipped = cbc.skipped + 1
else

cbc.strikes = cbc.strikes + 1

if cbc.strikes >= 3 then
cbc.strikes = 0
cbc.release(zck)
cbc.skipped = cbc.skipped + 1
end
end
end

cbc.target = nil
cbc.targetGone = false
end

if not uk then
local dcor = cbc.spot()

if dcor then
cbc.digAt(dcor)
else

cbc.misses = (cbc.misses or 0) + 1

if cbc.misses >= 4 then
cbc.misses = 0
cbc.goToSand(true)
else
cbc.turn()
task.wait(0.25)
end
end
end
end
end
end

function cbc.autoStart()
local xg = cbc.read()

if not (xg and cbc.bestShovel(xg)) then
return _d("PgARFhADEhUDEQoPAgEUTxxFLQIIHwxaRRwFAxcGXwJYCg0CHEVL")
end

local fk = false

if jkxa.enabled then
jkxa.autoFishWanted = false

nay(false)
pcall(function()
ou:UpdateState(false)
end)

fk = true
end

rdq = true
cbc.equipBest()

if cbc.chestOn then
pcall(cbc.equipBestDetector)
end

cbc.goToSand()
cbc.dugAt = os.clock()

task.spawn(cbc.runAuto)

return _d("NAZWAhECA14") .. (fk and _d("UC5EERdMIhkcWUUXCgJQQhEREAlEAwdeEx0ARBgOQkUMBAFQG14KFEwXHABFSw") or _d(""))
end

function cbc.runAuto()
if cbc.loopLive then
return
end

cbc.loopLive = true

local xsi, ove = pcall(cbc.autoLoop)

cbc.loopLive = false

if not xsi then
cbc.loopError = tostring(ove)
end
end

task.spawn(function()
while mbys() and xgq do
task.wait(5)

if cbc.autoOn and not cbc.shopping then
local we = os.clock()

if not cbc.loopLive then
task.spawn(cbc.runAuto)
elseif we - (cbc.dugAt or we) > 25
and we - (cbc.heldAt or 0) > 25
and we - (cbc.watchdogAt or 0) > 20 then
cbc.watchdogAt = we
cbc.pending = false
cbc.strikes = 0
cbc.misses = 0
cbc.target = nil
cbc.targetGone = false

pcall(function()
cbc.goToSand(true)
cbc.equipBest()
end)
end
end
end
end)

function cbc.toggleAuto(dxo, fxxg)
if dxo then
local kju = cbc.autoOn == true

cbc.chestOn = fxxg == true
cbc.switching = true

pcall(function()
local kme = fxxg and cbc.autoToggle or cbc.chestToggle

if kme then
kme:UpdateState(false)
end
end)

cbc.switching = false

if kju then
return
end

cbc.autoOn = true

task.spawn(function()
local jjd = cbc.autoStart()

ww:Notify({
Title = fxxg and _d("MRpFClgoDRdPcg0dHxAD") or _d("MRpFClgoDRc"),
Description = jjd,
Lifetime = 6,
})
end)
else

if cbc.switching then
return
end

cbc.autoOn = false
cbc.pending = false
rdq = false
end
end

cbc.autoToggle = niek:Toggle({
Name = _d("MRpFClgoDRc"),
Default = false,
Callback = function(bgxj)
cbc.toggleAuto(bgxj, false)
end,
}, _d("FAZWAhECAy8ORBEX"))

cbc.chestToggle = niek:Toggle({
Name = _d("MRpFClgoDRdPcg0dHxAD"),
Default = false,
Callback = function(njiz)
cbc.toggleAuto(njiz, true)
end,
}, _d("FAZWAhECAy8ORBEXMwcYCkIR"))

cbc.chestParagraph = niek:Paragraph({
Header = _d("MwdUFgwf"),
Body = _d("JB1QBhMJAEpPAUVVTCAFCAtFSExJUDxaDAgcARRVEVU"),
})

task.spawn(function()
local tdrz

while mbys() and xgq do
local yg = #cbc.chests()
local bfdf = _d("JB1QBhMJAEpP") .. yg .. _d("UEIRIQ0LXlA") .. cbc.dug .. _d("UEIRNhMFFAAKVV9Y") .. cbc.skipped

if cbc.chestOn and yg > 0 then
local muui = cbc.nearestChest(2500)
local sr = pl.Character
local frk = sr and sr:FindFirstChild(_d("OBpcBBYDDRQ9XgoMPAUCGw"))

if muui and frk then
local ql = math.floor((muui.position - frk.Position).Magnitude)
bfdf = bfdf .. _d("eiFUBAoJFwRVEQ") .. ql .. (ql > 45 and _d("UBxFEBwfRFgHXhVR") or _d("UBxFEBwf"))
end
end

if bfdf ~= tdrz then
tdrz = bfdf

pcall(function()
cbc.chestParagraph:UpdateBody(bfdf)
end)
end

task.wait(0.5)
end
end)

function cbc.npcRow()
for vfor, vzpp in ipairs(el.npcs) do
if vzpp.name == _d("NAZWAh0e") then
return vzpp
end
end
end

function cbc.shop(bizj, seb)
local mcw, dgo, gmjd, ypul = pcall(function()
return rd.DigShop:InvokeServer(bizj, seb)
end)

if not mcw then
return false, _d("JAdURRwFA1AcWQoITA0DT18KDEwFHhxGAAoFChdB")
end

return dgo == true, gmjd, type(ypul) == _d("BA5TCR0") and ypul or nil
end

function cbc.pickShovel(dkof)
local an = dkof.shovels or {}
local oln = tonumber(dkof.digs) or 0
local ulwt

for wd, sp in ipairs(cbc.data.Shovels) do
if not sp.crafted and sp.id ~= _d("AwdeEx0AOxIOQgwb") and an[sp.id] ~= true then
local spr = tonumber(sp.cost) or math.huge

if spr <= oln and (not ulwt or spr > (tonumber(ulwt.cost) or 0)) then
ulwt = sp
end
end
end

return ulwt
end

function cbc.pickDetector(enk)
local qnnw = enk.detectors or {}
local rofx = tonumber(enk.digs) or 0
local vex

for bocn, gu in ipairs(cbc.data.Detectors) do
if not gu.crafted and gu.id ~= _d("FApFABsYCwIwUwQLBQc") and qnnw[gu.id] ~= true then
local yupl = tonumber(gu.cost) or math.huge

if yupl <= rofx and (not vex or yupl > (tonumber(vex.cost) or 0)) then
vex = gu
end
end
end

return vex
end

function cbc.nextDef(uav, rkpg)
local yn

for qc, bx in ipairs(uav) do
local epdu = tonumber(bx.cost)

if not bx.crafted and epdu and rkpg[bx.id] ~= true then
if not yn or epdu < (tonumber(yn.cost) or math.huge) then
yn = bx
end
end
end

return yn
end

function cbc.toCounter()
local vae = cbc.npcRow()
local aixm = vae and el.point(vae)
local cibc = pl.Character
local ybsu = cibc and cibc:FindFirstChild(_d("OBpcBBYDDRQ9XgoMPAUCGw"))

if not (aixm and ybsu) then
return false
end

if (ybsu.Position - aixm).Magnitude <= 20 then
return true
end

el.go(vae)
task.wait(2.2)

cibc = pl.Character
ybsu = cibc and cibc:FindFirstChild(_d("OBpcBBYDDRQ9XgoMPAUCGw"))

return ybsu ~= nil and (ybsu.Position - aixm).Magnitude <= 20
end

function cbc.secretRow()
for rvcx, mjbz in ipairs(el.npcs) do
if mjbz.name == _d("IwpSFx0YRDQGVgIdHg") then
return mjbz
end
end
end

function cbc.secretDef(ezb)
for zop, ufzu in ipairs(ezb or {}) do
if ufzu.crafted then
return ufzu
end
end
end

function cbc.recipeHeld(cqj)
local yjpz = cbc.data and cbc.data.SecretRecipe
local kvxs = cqj and cqj.mats

if type(yjpz) ~= _d("BA5TCR0") or type(kvxs) ~= _d("BA5TCR0") then
return false
end

for ljz, ohn in ipairs(yjpz) do
if (tonumber(kvxs[ohn.id]) or 0) < (tonumber(ohn.count) or 0) then
return false
end
end

return true
end

function cbc.toSecret()
local wjtm = cbc.secretRow()

if not wjtm then
return false
end

local tckn = workspace:FindFirstChild(_d("Pj9yFg"))
local ugvw = tckn and tckn:FindFirstChild(_d("IwpSFx0YIBkIVgAKIjQz"))
local rftz = ugvw and ugvw:GetPivot().Position or el.point(wjtm)

if not rftz then
return false
end

el.hold()

for gih = 1, 3 do
local jbeu = pl.Character
local vpx = jbeu and jbeu:FindFirstChild(_d("OBpcBBYDDRQ9XgoMPAUCGw"))

if not vpx then
return false
end

local yao = (vpx.Position - rftz).Magnitude

if yao <= 20 then
return true
end

if yao > 1500 and wjtm.island then
pcall(function()
rd.FishingIslandTeleport:FireServer(wjtm.island)
end)

task.wait(4.5)
else
pcall(function()
el.standAt(rftz)
end)
task.wait(0.9)
end
end

local igu = pl.Character
local zxn = igu and igu:FindFirstChild(_d("OBpcBBYDDRQ9XgoMPAUCGw"))

return zxn ~= nil and (zxn.Position - rftz).Magnitude <= 20
end

function cbc.craftSecret(hzli, dlj, yk)
local ahru = {}
local hzzj = hzli and cbc.secretDef(cbc.data.Shovels) or nil
local it = dlj and cbc.secretDef(cbc.data.Detectors) or nil

local kvs = hzzj and (yk.shovels or {})[hzzj.id] ~= true
local ajzf = it and (yk.detectors or {})[it.id] ~= true

if not (kvs or ajzf) then
return ahru, nil, yk
end

if not cbc.recipeHeld(yk) then
return ahru, nil, yk
end

cbc.shopping = true

local vb = cbc.toSecret()
local oktn

if vb then
local function wxb(ds, afin)
if not afin or not cbc.recipeHeld(yk) then
return
end

local fyn, wpl = cbc.shop(ds, afin.id)

if fyn then
table.insert(ahru, afin.name)
elseif not oktn then
oktn = tostring(wpl)
end

yk = cbc.read() or yk
end

wxb(_d("Mx1QAww/DB8ZVAk"), kvs and hzzj or nil)
wxb(_d("Mx1QAwwoAQQKUhEXHg"), ajzf and it or nil)
end

cbc.shopping = false

return ahru, oktn, yk
end

function cbc.upgradeAll()
local bpg = cbc.buyOn == true
local xw = cbc.detBuyOn == true

if not (bpg or xw) then
return nil, _d("PwlXSw")
end

local nh = cbc.read()

if not nh then
return nil, _d("JAdURRwFA1AcWQoITA0DT18KDEwFHhxGAAoFChdB")
end

local rmg, zi, qrun = cbc.craftSecret(bpg, xw, nh)

if qrun then
nh = qrun
end

if bpg then
local qaap = cbc.bestShovel(nh)

if qaap and nh.equippedShovel ~= qaap then
cbc.equipBest()
end
end

if xw then
local qi = cbc.bestDetector(nh)

if qi and nh.equippedDetector ~= qi then
cbc.equipBestDetector()
end
end

local cdyc = bpg and cbc.pickShovel(nh) or nil
local dyiu = xw and cbc.pickDetector(nh) or nil

if not (cdyc or dyiu) then

if #rmg > 0 then
if cbc.autoOn then
cbc.leaveNpc()
end

return table.concat(rmg, _d("UEQR"))
end

return nil, zi and (_d("Mx1QAwxMFhUJRBYdCF5Q") .. tostring(zi))
or _d("PgAREAgLFhELVEURH0QRCVcKCggFEgNURQEJEF4")
end

cbc.shopping = true
cbc.toCounter()

local tbto = {}
local aidb

for ih, vdo in ipairs(rmg) do
tbto[#tbto + 1] = vdo
end

local function bggh(eqwr, xbh)
if not xbh then
return
end

local hyth, jpj = cbc.shop(eqwr, xbh.id)

if hyth then
table.insert(tbto, xbh.name)
elseif not aidb then
aidb = tostring(jpj)
end
end

bggh(_d("MhpINhADEhUD"), cdyc)
bggh(_d("MhpIIR0YARMbXhc"), dyiu)

if #tbto == 0 then
cbc.shopping = false

return nil, _d("MhpIRQoJAgUcVAFCTA") .. (aidb or _d("HgARBBYfExUd"))
end

if bpg then
cbc.equipBest()
end

if xw then
cbc.equipBestDetector()
end

if cbc.autoOn then
cbc.leaveNpc()
end

cbc.shopping = false

return table.concat(tbto, _d("UEQR"))
end

function cbc.buyLoop()
while cbc.buyOn or cbc.detBuyOn do
local df, bvgy, adm = pcall(cbc.upgradeAll)

cbc.shopping = false

if not df then
task.wait(10)
elseif bvgy then
ww:Notify({
Title = _d("MRpFClguEQlPdQwfCw0eCBEiHQ0W"),
Description = _d("NR5EDAgcARRPRQ0dTA") .. bvgy .. _d("Xg"),
Lifetime = 6,
})

task.wait(3)
else
task.wait(adm == _d("PwlXSw") and 0.5 or 10)
end
end
end

function cbc.syncBuyLoop()
if not (cbc.buyOn or cbc.detBuyOn) or cbc.buyRunning then
return
end

cbc.buyRunning = true

task.spawn(function()
cbc.buyLoop()

cbc.buyRunning = false
end)
end

niek:Toggle({
Name = _d("MRpFClguEQlPcwALGEQjB14THQA"),
Default = false,
Callback = function(ltcg)
cbc.buyOn = ltcg
cbc.syncBuyLoop()
end,
}, _d("FAZWAhECAy8NRBw"))

niek:Toggle({
Name = _d("MRpFClguEQlPcwALGEQ0CkUAGxgLAg"),
Default = false,
Callback = function(jmu)
cbc.detBuyOn = jmu
cbc.syncBuyLoop()
end,
}, _d("FAZWAhECAy8NRBwnCAEEClIRFx4"))

function cbc.statusText()
local tw = cbc.read()

if not tw then
return _d("JAdURRwFA1AcWQoITA0DT18KDEwFHhxGAAoFChdB")
end

local mey = tonumber(tw.digs) or 0
local gwb = { _d("NAZWFkJM") .. mey }

local function cbs(ilmd, vciw)
if not vciw then
return ilmd .. _d("Sk9UEx0eHQQHWAsfTAsHAVQBVg")
end

local qyp = tonumber(vciw.cost) or 0
local lgjs = qyp - mey

return ilmd .. _d("Sk8") .. tostring(vciw.name) .. _d("UEIR") .. qyp
.. (lgjs <= 0 and _d("UEdDABkIHVk") or (_d("UEc") .. lgjs .. _d("UBteRR8DTQ")))
end

table.insert(gwb, cbs(_d("PgpJEVgfDB8ZVAk"), cbc.nextDef(cbc.data.Shovels, tw.shovels or {})))
table.insert(gwb, cbs(_d("PgpJEVgIAQQKUhEXHg"), cbc.nextDef(cbc.data.Detectors, tw.detectors or {})))

return table.concat(gwb, _d("eg"))
end

task.spawn(function()
while mbys() and xgq do
local eoof, oo = pcall(cbc.statusText)

if eoof and cbc.statusParagraph then
pcall(function()
cbc.statusParagraph:UpdateBody(oo)
end)
end

task.wait(6)
end
end)

getgenv().ACBXDigging = cbc

kku.tab = xhb:Tab({
Name = _d("IwpFERECAwM"),

Image = _d(""),
})

kku.icon = function()
local qduv = gethui()

for otu, bry in ipairs(qduv:QueryDescendants(_d("OQJQAh0gBRIKXQ"))) do
if bry.Name == _d("JA5TLBUNAxU") then
local mubk = bry.Parent
local oudu = mubk and mubk:FindFirstChild(_d("JA5TNg8FEBMHVBc2DQkV"))

if oudu and oudu.Text == _d("IwpFERECAwM") then
if bry:GetAttribute(_d("MSxzPTsDAzkMXgs")) then
return true
end

bry:SetAttribute(_d("MSxzPTsDAzkMXgs"), true)
bry.Image = _d("")
bry.BackgroundTransparency = 1

local hri = Color3.fromRGB(168, 170, 176)

local function jjo(lmit, nizu, iul, yxvs, xmr, pbib)
local ko = Instance.new(_d("Nh1QCB0"))

ko.Size = UDim2.fromOffset(iul, yxvs)
ko.Position = UDim2.fromOffset(lmit, nizu)
ko.BackgroundColor3 = hri
ko.BorderSizePixel = 0
ko.Parent = bry

if not pbib then
ko.BackgroundTransparency = 1

local bdzs = Instance.new(_d("JSZiEQoDDxU"))

bdzs.Color = hri
bdzs.Thickness = 1.3
bdzs.LineJoinMode = Enum.LineJoinMode.Round
bdzs.Parent = ko
end

if xmr then
local yrl = Instance.new(_d("JSZyCgoCAQI"))

yrl.CornerRadius = UDim.new(0, xmr)
yrl.Parent = ko
end

return ko
end

local ud = {
{ 8, 0, 2, 3 },
{ 8, 15, 2, 3 },
{ 0, 8, 3, 2 },
{ 15, 8, 3, 2 },
{ 2, 2, 3, 3 },
{ 13, 2, 3, 3 },
{ 2, 13, 3, 3 },
{ 13, 13, 3, 3 },
}

for oa, pn in ipairs(ud) do
jjo(pn[1], pn[2], pn[3], pn[4], 0, true)
end

jjo(2, 2, 14, 14, 7, false)
jjo(7, 7, 4, 4, 2, true)

return true
end
end
end

return false
end

task.defer(function()
for qleo = 1, 20 do
if kku.icon() then
break
end

task.wait(0.25)
end
end)

kku.prioSection = kku.tab:Section({
Side = _d("PApXEQ"),
})

kku.prioSection:Header({
Name = _d("IB1YCgoFEAk"),
})

kku.prioSection:Paragraph({
Header = _d("JwdeRR8DAQNPVwwKHxA"),
Body = _d("QU9FBBMJF1AbWQBYDQcTAEQLDEwCGR1CEVRMUVAYUAwMH0QWAENFHRoBAhZTChwVSlAqUAYQTBYfGBEMC0wFUAFECBoJFlAOXwFYGAwVT1UXFxwAHxhfRQ0CABUdEQwMTA0DT0YNGRhEAxtQCxwfRAQHVBcdTElQH1gGE0wFUAFQCB1MEBgORUUZABYVDlUcWAQLHAtCRRkCCwQHVBdYAhEdDVQXWA0KFE9FDR1MEAcAERYPDRReT3BFCgMTUAZCRRAJCBRPUwQbB0QfAV0cWA4dUA4RCxkBAVAOUwoOCUQZGxEREA0QUAdQFlgfCx0KRQ0RAgNQG15FHANEAgZWDQxMCh8YH29yOAsHCkMWWA0WFU9fCgxMCx5PRQ0RH0QcBkIRQkwFUBteEh0eRBYGVg0MH0QfAREREAlEAwpDEx0eRBEBVUUUCQUGCkJFDAQBUAxZBAoNBwQKQ0UeHgEVQxEWF0wNBE9DEBYfRBEDXgsfHw0UChEADgkWCRtZDBYLRBgKQwBYDQoUT14LFBVEAxtQCxwfRBEcWAEdTAIfHREXGQUAA0MRERAJRBcDXgcZAEQSAEIWWA0KFE9/NTtMBhEbRQkdH0p6ZWINFxwXXE9cAAoLDR4IHUUdFBQVC1gREQMKA09QCxxMEBgKERcdHxBQAFdFDAQBUABfAFUfDB8bEREKBRQDT1AXHUwKHxsRDR0eAVAAX0UIGRYAAEIAQkwQGApIRRkAFhUOVRxYHxARAVVFDAQBUB1ECxYFChdPUBAMAwkRG1gKFkwAHxhfRQ8EDRwKEREQCR1QC15FDAQBGR0RDxcOSg"),
})

kku.prioRows = {}

kku.prioBuilding = true

local km = {}

for dzje, wjcf in ipairs(hu.prioGroups) do
km[#km + 1] = wjcf.label
end

for kxv = 1, #hu.prioGroups do
local lrud = nil

pcall(function()
lrud = kku.prioSection:Dropdown({
Name = _d("IB1YCgoFEAlP") .. kxv,
Search = false,
Multi = false,
Required = false,
Default = kxv,
Options = km,
Callback = function(myl)
local imc = type(myl) == _d("BA5TCR0") and myl[1] or myl
local wy

for vsx, afmw in ipairs(hu.prioGroups) do
if afmw.label == imc then
wy = afmw

break
end
end

if wy then
kku.setPriority(wy.id, kxv)
end
end,
}, _d("AB1YCiceBR4Ebg") .. kxv)
end)

kku.prioRows[kxv] = lrud
end

kku.prioBuilding = false

kku.configSection = kku.tab:Section({
Side = _d("PApXEQ"),
})

kku.configSection:Header({
Name = _d("MwBfAxELRD0OXwQfCQkVAUU"),
})

kku.autoSaveToggle = kku.configSection:Toggle({
Name = _d("MRpFClgfBQYK"),
Default = false,
Callback = function(lpg)
kku.autoSave = lpg
kku.autoSaveAt = 0

if lpg then
local fcel = kku.selected or _d("FApXBA0AEA")
local qmxk, ijlf = kku.save(fcel)

kku.selected = fcel
kku.lastText = qmxk and (_d("MRpFClgfBQYKEQoWTElQGEMKDAlE") .. fcel)
or (_d("MRpFClgfBQYKEQoWQEQWBkMWDEwTAgZFAFgKBRkDVAFCTA") .. tostring(ijlf))
else
kku.lastText = _d("MRpFClgfBQYKEQoeCko")
end
end,
}, _d("EwBfAxELOxEaRQonHwUGCg"))

kku.nameInput = kku.configSection:Input({
Name = _d("Iw5HAFgCBR0K"),
Placeholder = _d("FUFWS1g+BRkLQg"),
AcceptedCharacters = _d("MQNd"),
Callback = function(tyg)
kku.nameDraft = tyg
end,
})

kku.nameInput.IgnoreConfig = true

kku.configSection:Button({
Name = _d("Mx1UBAwJRAMORwA"),
Callback = function()
local gfm = kku.nameDraft or kku.nameInput:GetInput()

gfm = type(gfm) == _d("AxtDDBYL") and gfm:gsub(_d("LkpCTg"), _d("")):gsub(_d("VRwaQQ"), _d("")) or _d("")

if gfm == _d("") then
ww:Dialog({
Title = _d("MwBfAxEL"),
Description = _d("JBZBAFgNRB4OXABYCgsCT0UNHUwXERlURR4FFgMbEUhYBRBQDVQGFwEBA09FDR1MAhkDVEILTAoRAlRL"),
Buttons = {
{
Name = _d("NwBFRREY"),
},
},
})

return
end

local zhk, omz = kku.save(gfm)

if not zhk then
kku.lastText = _d("Iw5HAFgKBRkDVAFCTA") .. tostring(omz)

return
end

kku.selected = gfm
kku.lastText = _d("Mx1UBAwJAFA") .. gfm .. _d("Xg")
kku.savesAt = 0

task.defer(function()
task.wait(0.25)

pcall(function()
kku.fileDropdown:UpdateSelection(gfm)
end)
end)
end,
})

kku.fileDropdown = kku.configSection:Dropdown({
Name = _d("Iw5HAFgKDRwK"),
Search = false,
Multi = false,
Required = false,
Options = kku.saves(),
Callback = function(iotf)
local csn = type(iotf) == _d("BA5TCR0") and iotf[1] or iotf

if type(csn) == _d("AxtDDBYL") and csn ~= _d("") then
kku.selected = csn
kku.selectionShown = csn

pcall(function()
kku.fileDropdown:UpdateName(_d("Iw5HAFgKDRwKC0U") .. csn)
end)
end
end,
})

kku.fileDropdown.IgnoreConfig = true

kku.configSection:Button({
Name = _d("PABQAVgfARwKUhEdCA"),
Callback = function()
local dvq = kku.selected or kku.fileDropdown.Value
local foo, shef = kku.load(dvq)

kku.lastText = foo and (_d("PABQAR0IRA") .. dvq .. _d("Xg")) or (_d("PABQAVgKBRkDVAFCTA") .. tostring(shef))
end,
})

kku.configSection:Button({
Name = _d("Iw5HAFgYC1AcVAkdDxAVCw"),
Callback = function()
local gns = kku.selected or kku.fileDropdown.Value
local itl, tsum = kku.save(gns)

kku.lastText = itl and (_d("Jx1eER1M") .. gns .. _d("Xg")) or (_d("Iw5HAFgKBRkDVAFCTA") .. tostring(tsum))
end,
})

kku.configSection:Button({
Name = _d("NApdAAwJRAMKXQAbGAEUT0IEDgk"),
Callback = function()
local jnc = kku.selected or kku.fileDropdown.Value

if type(jnc) ~= _d("AxtDDBYL") or jnc == _d("") then
kku.lastText = _d("IAZSDlgNRAMORwBYCg0cChEDER4XBEE")

return
end

ww:Dialog({
Title = _d("NApdAAwJRA") .. jnc .. _d("Tw"),
Description = _d("JAdURR4FCBVPWBZYHgEdAEcAHEwCAgBcRRwFFxtPUAscTAcRAV8KDEwGFU9DABsDEhUdVAFW"),
Buttons = {
{
Name = _d("NApdAAwJ"),
Callback = function()
local lap, ago = kku.delete(jnc)

kku.lastText = lap
and (_d("NApdAAwJAFA") .. jnc .. _d("Xg"))
or (_d("MwBECRxMCh8bEQEdAAEECgtF") .. tostring(ago))
end,
},
{
Name = _d("Mw5fBh0A"),
},
},
})
end,
})

kku.configSection:Button({
Name = _d("IgpXFx0fDFADWBYM"),
Callback = function()
kku.savesAt = 0
kku.lastText = _d("Iw5HAFgADQMbERcdChYVHFkAHEI")
end,
})

kku.configSection:Button({
Name = _d("PQ5DDlgNF1AORBEXTAgfDlU"),
Callback = function()
local kmhb = kku.selected or kku.fileDropdown.Value

if type(kmhb) ~= _d("AxtDDBYL") or kmhb == _d("") then
kku.lastText = _d("IAZSDlgNRAMORwBYCg0cChEDER4XBEE")

return
end

if kku.setAutoLoad(kmhb) then
kku.lastText = kmhb .. _d("UANeBBwfRB8BERYMDRYEQQ")
else
kku.lastText = _d("MwBECRxMCh8bERIKBRAVT0UNHUwFBRteRRQDBRRPXAQKBwECQQ")
end
end,
})

kku.configSection:Button({
Name = _d("MwNUBApMBQUbXkUUAwUU"),
Callback = function()
kku.setAutoLoad(_d(""))
kku.lastText = _d("PgBFDRECA1ADXgQcH0QfAREWDA0WBEE")
end,
})

kku.statusParagraph = kku.configSection:Paragraph({
Header = _d("IxtQEQ0f"),
Body = _d(""),
})

kku.miscSection = kku.tab:Section({
Side = _d("IgZWDQw"),
})

kku.miscSection:Header({
Name = _d("PQZCBg"),
})

kku.miscSection:Toggle({
Name = _d("MRpFClgPCB8cVEUfCQoVHVAREQMKUDp4"),
Default = false,
Callback = function(acl)
gy(acl)
end,
}, _d("HQZCBicNEQQAbgYUAxcVMFYAFgkWERtYChY"))

kku.miscSection:Toggle({
Name = _d("MRpFClg+CxwD"),
Default = true,
Callback = function(qqk)
kku.autoRoll = qqk

if qqk and kku.setRollButton then
kku.setRollButton(_d("MRpFCioDCBwtRBEMAwo"), true)
end
end,
}, _d("HQZCBicNEQQAbhcXAAg"))

kku.miscSection:Toggle({
Name = _d("MRpFClg9ERkMWkUqAwgc"),
Default = true,
Callback = function(fuj)
kku.autoQuickRoll = fuj

if fuj and kku.setRollButton then
kku.setRollButton(_d("IRpYBhM+CxwDcxAMGAse"), true)
end
end,
}, _d("HQZCBicNEQQAbhQNBQcbMEMKFAA"))

kku.uiSection = kku.tab:Section({
Side = _d("IgZWDQw"),
})

kku.uiSection:Header({
Name = _d("JSY"),
})

kku.uiSection:Toggle({
Name = _d("Mg5SDh8eCwUBVUUaABEC"),
Default = true,
Callback = function(nghp)
pcall(function()
ww:SetAcrylicBlurState(nghp)
end)
end,
}, _d("BQZuBxkPDxcdXhAWCDsSA0QX"))

function kku.widthFactor(vpxm)
return 1 + math.max(0, (vpxm or 1) - 1) * 0.8
end

function kku.scaleCap()
local tofq = workspace.CurrentCamera and workspace.CurrentCamera.ViewportSize or Vector2.new(1280, 720)
local frx = math.min(120, math.floor(((tofq.Y - 40 - 8 - 8) / 500) * 100))

while frx > 50 and (kku.baseWidth or 720) * (frx / 100) * kku.widthFactor(frx / 100) > tofq.X - 16 do
frx = frx - 1
end

return math.max(50, frx)
end

function kku.scaleCeiling()
return math.min(1.2, kku.scaleCap() / 100)
end

function kku.refreshScaleCap()
local mltx = kku.scaleSlider

if not mltx then
return
end

local omfm = kku.scaleCeiling()

pcall(function()
mltx.Settings.Maximum = omfm
end)

local gca = tonumber(mltx:GetValue()) or 1

if gca > omfm then
kku.scaleTarget = omfm

pcall(function()
mltx:UpdateValue(omfm)
end)
end
end

kku.scaleSlider = kku.uiSection:Slider({
Name = _d("JSYRFhsNCBU"),
Default = 1,
Minimum = 0.5,

Maximum = kku.scaleCeiling(),
DisplayMethod = _d("Jg5dEB0"),
Precision = 2,

Callback = function(doko)
kku.scalePending = tonumber(doko)
kku.scalePendingAt = os.clock()
end,
onInputComplete = function(yha)
local yvs = kku.scaleCeiling()

kku.scaleTarget = math.clamp(tonumber(yha) or kku.scalePending or 1, 0.5, yvs)
kku.scalePending = nil

kku.scaleAnchor = nil

kku.saveUi()
end,
}, _d("BQZuFhsNCBU"))

kku.refreshScaleCap()

kku.themeDropdown = kku.uiSection:Dropdown({
Name = _d("JAdUCB1WRCYAWAE"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = kku.themeOrder,
Callback = function(msrd)
local lxjn = type(msrd) == _d("BA5TCR0") and msrd[1] or msrd

if type(lxjn) == _d("AxtDDBYL") and kku.presets[lxjn] then
kku.theme = lxjn
kku.accent = nil
kku.applyTheme()

pcall(function()
kku.themeDropdown:UpdateName(_d("JAdUCB1WRA") .. lxjn)
end)

kku.saveUi()
end
end,
}, _d("BQZuERAJCRU"))

kku.accentPicker = kku.uiSection:Colorpicker({
Name = _d("MQxSABYYRBMAXQoNHg"),
Default = Color3.fromRGB(168, 170, 176),
Alpha = 0,
Callback = function(jjpz)
kku.accent = jjpz
kku.applyTheme()
kku.saveUi()
end,
}, _d("BQZuBBsPAR4b"))

kku.codesSection = kku.tab:Section({
Side = _d("IgZWDQw"),
})

kku.codesSection:Header({
Name = _d("MwBVAAs"),
})

kku.codeText = _d("IgpVAB0BF1AKRwAKFUQTAFUAWBgMGRwRAhkBAVAcWQwIH0QHBkUNVEwLHgoRAA4JFglPUgoNHAgVT14DWB8BEwBfAQtC")

function kku.setCodeText(cdsu)
kku.codeText = cdsu

pcall(function()
kku.codeParagraph:UpdateBody(cdsu)
end)
end

function kku.redeemCodes()
if kku.redeeming then
return
end

local ruh = rd.RedeemCode
local bl = bzz:FindFirstChild(_d("PQBVEBQJNxMdWBUMHw"))
local rljs = bl and bl:FindFirstChild(_d("MwBVADwNEBE"))
local mvpx, eld = false, nil

if ruh and rljs then
mvpx, eld = pcall(function()
return require(rljs)
end)
end

local lr = mvpx and type(eld) == _d("BA5TCR0") and eld.Codes or nil

if not ruh or type(lr) ~= _d("BA5TCR0") then
kku.setCodeText(_d("JAdYFlgaAQIcWAoWTAsWT0UNHUwDEQJURRANF1ABXkUbAwAVT10MCxhEHx0RCxdMFhULVAAVTBYVAl4RHUI"))
return
end

local ojj = {}

for jpcu in pairs(lr) do
ojj[#ojj + 1] = jpcu
end

table.sort(ojj)

local noz = #ojj

kku.redeeming = true
kku.setCodeText(_d("IgpVAB0BDR4IEQ") .. noz .. _d("UAxeAR0fSl5B"))

task.spawn(function()
local za, ffao, vqe = 0, 0, 0
local bel = {}

for uxag = 1, noz do
if not mbys() then
break
end

local jlz = ojj[uxag]
local whue, wck = pcall(function()
return ruh:InvokeServer(jlz)
end)

local li = whue and type(wck) == _d("BA5TCR0") and wck.success == true
local csl = whue and type(wck) == _d("BA5TCR0") and tostring(wck.message or _d("")) or tostring(wck or _d(""))

if not li and string.find(string.lower(csl), _d("Bw5YEQ"), 1, true) then
task.wait(3.5)

whue, wck = pcall(function()
return ruh:InvokeServer(jlz)
end)

li = whue and type(wck) == _d("BA5TCR0") and wck.success == true
csl = whue and type(wck) == _d("BA5TCR0") and tostring(wck.message or _d("")) or tostring(wck or _d(""))
end

if li then
za = za + 1
elseif string.find(string.lower(csl), _d("EQNDABkIHQ"), 1, true) then
ffao = ffao + 1
else
vqe = vqe + 1

if #bel < 6 then
bel[#bel + 1] = jlz .. _d("Sk8") .. (csl ~= _d("") and csl or _d("HgARBBYfExUd"))
end
end

kku.setCodeText(string.format(_d("VQsRCh5MQRRPHEVdCEQCClUAHQEBFEMRQBxMBRwdVAQcFUhQSlVFCgkCBRxUAVY"), uxag, noz, za, ffao, vqe))

if uxag < noz and mbys() then
task.wait(1.8)
end
end

local lta = {
string.format(_d("IgpVAB0BARRPFAFUTAUcHVQEHBVEGA5VRV0ISFAdVAMNHwEUTxQBWAMCUEpVSw"), za, ffao, vqe, noz),
}

for xyhr, ue in ipairs(bel) do
lta[#lta + 1] = ue
end

kku.redeeming = false
kku.setCodeText(table.concat(lta, _d("eg")))
end)
end

kku.codesSection:Button({
Name = _d("IgpVAB0BRBEDXUUbAwAVHA"),
Callback = function()
kku.redeemCodes()
end,
})

kku.codeParagraph = kku.codesSection:Paragraph({
Header = _d("MwBVAAs"),
Body = kku.codeText,
})

kku.scriptSection = kku.tab:Section({
Side = _d("IgZWDQw"),
})

kku.scriptSection:Header({
Name = _d("IwxDDAgY"),
})

kku.scriptSection:Button({
Name = _d("JQFdChkIRAMMQwwIGA"),
Callback = function()
pcall(function()
ww:Unload()
end)

getgenv().ACBXWindow = nil
getgenv().ACBXAllowReload = nil
end,
})

task.spawn(function()
while mbys() do

if os.clock() >= kku.savesAt then
kku.savesAt = os.clock() + 3

local lvv = kku.saves()
local isli = table.concat(lvv, _d("DA"))

if isli ~= kku.knownSaves then
kku.knownSaves = isli

pcall(function()
kku.fileDropdown:ClearOptions()
kku.fileDropdown:InsertOptions(lvv)
end)
end

if kku.selected and kku.selectionShown ~= kku.selected then
kku.selectionShown = kku.selected

pcall(function()
kku.fileDropdown:UpdateSelection(kku.selected)
end)
end
end

if kku.autoSave and os.clock() >= kku.autoSaveAt then
kku.autoSaveAt = os.clock() + 60

local fnkb = kku.selected or _d("FApXBA0AEA")
local sufj, txpz = kku.save(fnkb)

kku.selected = fnkb
kku.lastText = sufj and (_d("MRpFClgfBQYKVUU") .. fnkb .. _d("UA5FRQ") .. os.date(_d("VScLQDU")) .. _d("Xg"))
or (_d("MRpFClgfBQYKEQMZBQgVCwtF") .. tostring(txpz))
end

if os.clock() >= kku.themeAt then
kku.themeAt = os.clock() + 3
kku.applyTheme()
end

if os.clock() >= kku.capAt then
kku.capAt = os.clock() + 2
kku.refreshScaleCap()
end

if os.clock() >= kku.statusAt then
kku.statusAt = os.clock() + 2

local bkdr = kku.autoLoadName()
local ulx = table.concat({
_d("MRpFClgACxELC0U") .. (bkdr or _d("HgBfAA")),
_d("Iw5HAAtWRA") .. tostring(#kku.saves()),
kku.lastText,
}, _d("eg"))

if ulx ~= kku.shownStatus then
kku.shownStatus = ulx

pcall(function()
kku.statusParagraph:UpdateBody(ulx)
end)
end
end

task.wait(0.25)
end
end)

task.spawn(function()
while mbys() do

local igyt = kku.scalePending

if igyt and os.clock() - (kku.scalePendingAt or 0) > 0.35 then
local hxu = kku.scaleCeiling()
local lrx = math.clamp(igyt, 0.5, hxu)

kku.scalePending = nil

if math.abs(lrx - kku.scaleTarget) > 0.002 then
kku.scaleTarget = lrx
kku.scaleAnchor = nil

kku.saveUi()
end
end

if math.abs(kku.scaleTarget - kku.scale) > 0.002 then
local fco = kku.guiRoot()

if fco and not kku.baseWidth then
kku.baseWidth = fco.Size.X.Offset
kku.baseHeight = fco.Size.Y.Offset
end

local jnzr = kku.baseWidth or 720
local mm = kku.baseHeight or 500
local vdnd = workspace.CurrentCamera and workspace.CurrentCamera.ViewportSize or Vector2.new(1280, 720)
local weqx, wzfv = 8, 40

if not kku.scaleAnchor and fco then

local ace = kku.widthFactor(kku.scaleTarget)
local vvgv, keo = jnzr * ace * kku.scaleTarget, mm * kku.scaleTarget
local lssz = fco.AbsolutePosition

kku.scaleAnchor = Vector2.new(
math.clamp(lssz.X, weqx, math.max(weqx, vdnd.X - vvgv - weqx)),
math.clamp(lssz.Y, wzfv, math.max(wzfv, vdnd.Y - keo - weqx))
)
end

local kiu = kku.scaleAnchor

kku.scale = kku.scale + (kku.scaleTarget - kku.scale) * 0.18

local pmk = kku.widthFactor(kku.scale)

pcall(function()
ww:SetScale(kku.scale)

if fco then
local mee = math.floor(jnzr * pmk)

fco.Size = UDim2.fromOffset(mee, math.floor(mm))

local yyuq = fco:FindFirstChild(_d("MwBfER0CEA"))

if yyuq then
local gxzi = fco:FindFirstChild(_d("IwZVABoNFg"))
local qhh = math.floor(gxzi and gxzi.Size.X.Scale * mee or mee * 0.325)

yyuq.Size = UDim2.new(0, math.max(0, mee - qhh), 1, 0)
end
end
end)

if fco and kiu then
local en, ruij = jnzr * pmk * kku.scale, mm * kku.scale
local aay = math.clamp(kiu.X, weqx, math.max(weqx, vdnd.X - en - weqx))
local utoa = math.clamp(kiu.Y, wzfv, math.max(wzfv, vdnd.Y - ruij - weqx))

local vab = fco.Parent and fco.Parent.AbsolutePosition or Vector2.zero

pcall(function()
fco.Position = UDim2.fromOffset(math.floor(aay - vab.X), math.floor(utoa - vab.Y))
end)
end
else

kku.scaleAnchor = nil
end

task.wait()
end
end)

hntq.misc.tierLabels = {}
hntq.misc.labelToTier = {}

hntq.misc.expSection = hntq.misc.tab:Section({
Side = _d("PApXEQ"),
})

hntq.misc.expSection:Header({
Name = _d("NRdBABwFEBkAXxZYnPvn7d7d9w"),
})

hntq.misc.claimToggle = hntq.misc.expSection:Toggle({
Name = _d("MRpFClgPCBEGXA"),
Default = false,
Callback = function(aygr)
local yrjp = hntq.misc.expeditions

yrjp.enabled = aygr
yrjp.claimAt = 0

if aygr then
yrjp.askedAt = 0
yrjp.request()
end
end,
}, _d("ERpFCicPCBEGXA"))

hntq.misc.rewardToggle = hntq.misc.expSection:Toggle({
Name = _d("MRpFClgPCB8cVEUKCRMRHVUW"),
Default = false,
Callback = function(vs)
local ocb = hntq.misc.expeditions

ocb.autoClose = vs

if vs then
ocb.closeRewards()
end
end,
}, _d("FRdBOhkZEB8wUgkXHwE"))

hntq.misc.startToggle = hntq.misc.expSection:Toggle({
Name = _d("MRpFClgfEBEdRQ"),
Default = false,
Callback = function(tkx)
local zyjj = hntq.misc.expeditions

if tkx and not next(zyjj.tiersWanted) then
zyjj.autoStart = false

pcall(function()
hntq.misc.startToggle:UpdateState(false)
end)

ww:Dialog({
Title = _d("MRpFClgfEBEdRUUWCQEUHBEEWBgNFR0"),
Description = _d("IAZSDlgNEFADVAQLGEQfAVRFDAUBAk9YC1gYDBVPZQwdHkQUHV4VHAMTHk9XDAofEF5PdAQLFUQEDloAC0wQGAoRBhAJBQAKQhFYDwUCC0JJWCINFwdFCBkeAVAbWQBYHgUCCkIRVEwFHgsRBBYVRB4aXAcdHkQfCREREAkJUAxQC1geER5PUBFYAwoTCh8"),
Buttons = {
{
Name = _d("NwBFRREY"),
},
},
})

return
end

zyjj.autoStart = tkx
zyjj.startedAt = {}

if tkx then
zyjj.askedAt = 0
zyjj.request()
end
end,
}, _d("ERpFCicfEBEdRQ"))

for nrq, ylom in ipairs(hntq.misc.expeditions.tiers()) do
table.insert(hntq.misc.tierLabels, tostring(ylom.name))
hntq.misc.labelToTier[tostring(ylom.name)] = ylom.id
end

hntq.misc.building = true

hntq.misc.tierDropdown = hntq.misc.expSection:Dropdown({
Name = _d("JAZUFw"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = hntq.misc.tierLabels,
Callback = function(acb)
local yisw = hntq.misc.expeditions

if hntq.misc.building then
return
end

local dfla = {}
local basl = {}

if type(acb) == _d("BA5TCR0") then
for ju, szu in pairs(acb) do
local iral = hntq.misc.labelToTier[tostring(ju)]

if szu and iral then
dfla[iral] = true
table.insert(basl, tostring(ju))
end
end
end

table.sort(basl)
yisw.tiersWanted = dfla

pcall(function()
hntq.misc.tierDropdown:UpdateName(#basl > 0 and (_d("JAZUF1iO5NJP") .. table.concat(basl, _d("XE8"))) or _d("JAZUF1iO5NJPXwoWCQ"))
end)
end,
}, _d("BAZUFw"))

task.defer(function()
hntq.misc.building = false
end)

hntq.misc.expSection:Button({
Name = _d("MwNQDBVMCh8Y"),
Callback = function()
local ndht = hntq.misc.expeditions

if not ndht.claim() then
ww:Notify({
Title = _d("NRdBABwFEBkAXxY"),
Description = _d("PgBFDRECA1AHUBZYDwsdChEHGQ8PUBZUEVY"),
Lifetime = 5,
})
end
end,
})

hntq.misc.expSection:Button({
Name = _d("IwpfAVgfARwKUhEdCA"),
Callback = function()
local exh = hntq.misc.expeditions

if not next(exh.tiersWanted) then
ww:Notify({
Title = _d("NRdBABwFEBkAXxY"),
Description = _d("IAZSDlgNEFADVAQLGEQfAVRFDAUBAk9YC1gYDBVPVRcXHAAfGF9FHgUWAxsf"),
Lifetime = 5,
})

return
end

local yin = {}
local qwty = 0

for dd, vflk in ipairs(exh.tiers()) do
if exh.tiersWanted[vflk.id] and exh.status(vflk.id) == _d("ERlQDBQNBhwK") then
if exh.start(vflk.id, yin) then
qwty = qwty + 1
end
end
end

if qwty == 0 then
ww:Notify({
Title = _d("NRdBABwFEBkAXxY"),
Description = _d("PgBFDRECA1AMXhAUCEQSChEWHQIQSk9FDR1MFxUDVAYMCQBQG1gACh9EER1URRkAFhUOVRxYAxEEQxEKCkwQGApDAFgNFhVPXwoMTAIfGkNFHQANFwZTCR1MBxEdVRZYCgsCT0UNHQFK"),
Lifetime = 6,
})
end
end,
})

hntq.misc.expInfo = hntq.misc.tab:Section({
Side = _d("IgZWDQw"),
})

hntq.misc.expInfo:Header({
Name = _d("NRdBABwFEBkAXxY"),
})

hntq.misc.expParagraph = hntq.misc.expInfo:Paragraph({
Header = _d("IxtQEQ0f"),
Body = hntq.misc.expeditions.text(),
})

hntq.misc.expeditions.loadRewards()

hntq.misc.expRewardParagraph = hntq.misc.expInfo:Paragraph({
Header = _d("MwNQDBUJAA"),
Body = hntq.misc.expeditions.rewardsText(),
})

task.spawn(function()
local bsxm = hntq.misc.expeditions
local migy = az(_d("IxZfBj0UFBULWBERAwoD"), 3)

if migy then
bwkv(migy.OnClientEvent, function(zkc)
if type(zkc) ~= _d("BA5TCR0") then
return
end

bsxm.state = zkc

bsxm.offset = (tonumber(zkc.now) or os.time()) - os.time()
bsxm.syncedAt = os.clock()

if type(zkc.rewards) == _d("BA5TCR0") and #zkc.rewards > 0 then
table.insert(bsxm.rewardLog, 1, {
at = os.time(),
title = tostring(zkc.rewardTitle or _d("NRdBABwFEBkAXw")),
items = zkc.rewards,
})

while #bsxm.rewardLog > 8 do
table.remove(bsxm.rewardLog)
end

bsxm.saveRewards()

if bsxm.autoClose then

task.delay(0.35, bsxm.closeRewards)
end
end
end)
end

while mbys() do

if os.clock() - bsxm.askedAt > 1 and os.clock() - bsxm.syncedAt > 20 then
bsxm.request()
end

if bsxm.enabled then
bsxm.claim()
end

if bsxm.autoClose then
bsxm.closeRewards()
end

if bsxm.autoStart and next(bsxm.tiersWanted) then
local ozh = {}

for ekim, kfx in ipairs(bsxm.tiers()) do
if bsxm.tiersWanted[kfx.id] and bsxm.status(kfx.id) == _d("ERlQDBQNBhwK") then
if bsxm.start(kfx.id, ozh) then
break
end
end
end
end

local lwj = bsxm.text()

if hntq.misc.expParagraph and lwj ~= hntq.misc.expShown then
hntq.misc.expShown = lwj

pcall(function()
hntq.misc.expParagraph:UpdateBody(lwj)
end)
end

local ukn = bsxm.rewardsText()

if hntq.misc.expRewardParagraph and ukn ~= bsxm.rewardsShown then
bsxm.rewardsShown = ukn

pcall(function()
hntq.misc.expRewardParagraph:UpdateBody(ukn)
end)
end

task.wait(0.75)
end
end)

hntq.misc.util = {
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

function hntq.misc.util.hook()
local ynb = hntq.misc.util

if ynb.hooked then
return
end

ynb.hooked = true

if rd.SyncCollection then
bwkv(rd.SyncCollection.OnClientEvent, function(lpu)
if type(lpu) == _d("BA5TCR0") then
ynb.profile = lpu
ynb.profileAt = os.clock()
end
end)
end

if rd.SyncAchievements then
bwkv(rd.SyncAchievements.OnClientEvent, function(nbmt)
if type(nbmt) == _d("BA5TCR0") then
ynb.ach = nbmt
end
end)
end

if rd.SyncQuests then
bwkv(rd.SyncQuests.OnClientEvent, function(qw)
if type(qw) == _d("BA5TCR0") and type(qw.list) == _d("BA5TCR0") then
ynb.quests = qw
end
end)
end

if rd.SyncPeriodicQuests then
bwkv(rd.SyncPeriodicQuests.OnClientEvent, function(howx, aoi)
if howx == _d("BwpUDhQV") and type(aoi) == _d("BA5TCR0") and type(aoi.list) == _d("BA5TCR0") then
ynb.weekly = aoi
end
end)
end
end

function hntq.misc.util.askProfile()
local ouk = hntq.misc.util

if os.clock() - ouk.askedAt < 1.5 then
return
end

ouk.askedAt = os.clock()

if rd.RequestSync then
pcall(function()
rd.RequestSync:FireServer()
end)
end
end

function hntq.misc.util.currentProfile()
local kdc = hntq.misc.util

if type(kdc.profile) ~= _d("BA5TCR0") then
kdc.askProfile()

return nil
end

if os.clock() - kdc.profileAt > 20 then
kdc.askProfile()
end

return kdc.profile
end

function hntq.misc.util.forgetProfile()
local zgf = hntq.misc.util

zgf.profile = nil
zgf.profileAt = 0
zgf.askedAt = 0
end

function hntq.misc.util.indexedTotal(odm)
local pdxq = 0

for txo, cl in pairs((odm and odm.cardIndex) or {}) do
if cl then
pdxq = pdxq + 1
end
end

return pdxq
end

function hntq.misc.util.indexPending(way)
local sikd = {}

if type(way) ~= _d("BA5TCR0") then
return sikd
end

local zym = hntq.misc.util.indexedTotal(way)
local xcj = way.indexMilestones or {}

for lup = 1, 30 do
if not xcj[lup] and lup * 5 <= zym then
table.insert(sikd, lup)
end
end

return sikd
end

function hntq.misc.util.indexFrame()
local fgoi = kdoz:FindFirstChild(_d("Mw5DATECABUXdhAR"))

return fgoi and fgoi:FindFirstChild(_d("OQFVAAAqFhECVA"))
end

function hntq.misc.util.clickButton(idj)
if not idj then
return false
end

if firesignal then
local fpa = pcall(firesignal, idj.MouseButton1Click)

if fpa then
return true
end
end

return pcall(function()
idj:Activate()
end)
end

function hntq.misc.util.closeIndex()
local hphn = hntq.misc.util.indexFrame()

if not hphn or not hphn.Visible then
return false
end

pcall(function()
local fu = bzz:FindFirstChild(_d("PQBVEBQJNxMdWBUMHw"))
local dvk = fu and fu:FindFirstChild(_d("PQpfEDUNChEIVBc"))

if dvk then
require(dvk).close(hphn)
end
end)

hntq.misc.util.clickButton(hphn:FindFirstChild(_d("MwNeFh0uEQQbXgs")))

pcall(function()
hphn.Visible = false
end)

return true
end

function hntq.misc.util.claimIndex()
local kzq = hntq.misc.util

if os.clock() < kzq.indexAt then
return false
end

local jix = kzq.currentProfile()

if not jix then
return false
end

local amyi = kzq.indexPending(jix)
local wmhh = amyi[1]

if not wmhh then
return false
end

local aqfj = kzq.indexedTotal(jix)
local lcn = kzq.indexAsked

if type(lcn) == _d("BA5TCR0") and lcn.milestone == wmhh and lcn.total == aqfj then
return false
end

kzq.indexAsked = { milestone = wmhh, total = aqfj }

pcall(function()
rd.ClaimIndexReward:FireServer(wmhh)
end)

kzq.indexAt = os.clock() + 1.5

kzq.profile = nil
kzq.profileAt = 0

task.delay(0.4, kzq.closeIndex)

return true
end

function hntq.misc.util.achPending()
local bmmw = {}
local vbzh = hntq.misc.util.ach

if type(vbzh) ~= _d("BA5TCR0") then
return bmmw
end

for fmij, iqut in ipairs(vbzh.chains or {}) do
for cpiy, opc in ipairs(iqut.levels or {}) do
if opc.reached and not opc.claimed then
table.insert(bmmw, { chain = tostring(iqut.id), index = opc.index, name = tostring(opc.name or opc.index) })
end
end
end

return bmmw
end

function hntq.misc.util.claimAchievement()
local vi = hntq.misc.util

if os.clock() < vi.achAt then
return false
end

if type(vi.ach) ~= _d("BA5TCR0") then
if os.clock() - vi.achAskedAt > 4 and rd.RequestAchievements then
vi.achAskedAt = os.clock()

pcall(function()
rd.RequestAchievements:FireServer()
end)
end

return false
end

for vtw, lj in ipairs(vi.achPending()) do
pcall(function()
rd.ClaimAchievement:FireServer(lj.chain, lj.index)
end)

vi.achAt = os.clock() + 1

task.delay(1, function()
if rd.RequestAchievements then
pcall(function()
rd.RequestAchievements:FireServer()
end)
end
end)

return true
end

return false
end

function hntq.misc.util.questRows()
local arlb = hntq.misc.util
local npdq = {}

for pbq, cjz in ipairs({ { list = _d("FA5YCQE"), payload = arlb.quests }, { list = _d("BwpUDhQV"), payload = arlb.weekly } }) do
for edq, htw in ipairs((type(cjz.payload) == _d("BA5TCR0") and cjz.payload.list) or {}) do
if type(htw) == _d("BA5TCR0") then
table.insert(npdq, { list = cjz.list, index = edq, quest = htw })
end
end
end

return npdq
end

function hntq.misc.util.questPending()
local pnyu = {}

for nocz, dbg in ipairs(hntq.misc.util.questRows()) do
local fgl = dbg.quest

if not fgl.claimed and (tonumber(fgl.progress) or 0) >= (tonumber(fgl.target) or math.huge) then
table.insert(pnyu, dbg)
end
end

return pnyu
end

function hntq.misc.util.askQuests()
local vvny = hntq.misc.util

if os.clock() - vvny.questAskedAt > 4 and rd.RequestQuests then
vvny.questAskedAt = os.clock()

pcall(function()
rd.RequestQuests:FireServer()
end)
end

if os.clock() - vvny.weeklyAskedAt > 4 and rd.RequestPeriodicQuests then
vvny.weeklyAskedAt = os.clock()

pcall(function()
rd.RequestPeriodicQuests:FireServer(_d("BwpUDhQV"))
end)
end
end

function hntq.misc.util.claimQuest()
local rxlj = hntq.misc.util

if os.clock() < rxlj.questAt then
return false
end

if type(rxlj.quests) ~= _d("BA5TCR0") and type(rxlj.weekly) ~= _d("BA5TCR0") then
rxlj.askQuests()

return false
end

for fob, ijab in ipairs(rxlj.questPending()) do
if ijab.list == _d("BwpUDhQV") then
if rd.ClaimPeriodicQuest then
pcall(function()
rd.ClaimPeriodicQuest:FireServer(_d("BwpUDhQV"), ijab.index)
end)
end
else
pcall(function()
rd.ClaimQuest:FireServer(ijab.index)
end)
end

rxlj.questAt = os.clock() + 1.2

task.delay(1, function()
rxlj.askQuests()
end)

return true
end

return false
end

function hntq.misc.util.packCatalog()
local htiw = hntq.misc.util

if htiw.packs then
return htiw.packs
end

local xyv = {}
local gale, yie = pcall(function()
return require(bzz.ModuleScripts.PackData)
end)

if gale and type(yie) == _d("BA5TCR0") and type(yie.Packs) == _d("BA5TCR0") then
for vxyf, nwg in ipairs(yie.Packs) do
if nwg.id then
table.insert(xyv, { id = tostring(nwg.id), name = tostring(nwg.name or nwg.id) })
end
end
end

htiw.packs = xyv

return xyv
end

function hntq.misc.util.packUnlocked(pz, xcjy)
if type(pz) ~= _d("BA5TCR0") then
return true
end

local tav, iyv = pcall(function()
return require(bzz.ModuleScripts.PackData)
end)
local wfy, mcow = pcall(function()
return require(bzz.ModuleScripts.PackSlotData)
end)

if not (tav and wfy) then
return true
end

local wnho = iyv.ById and iyv.ById[xcjy]

if not wnho then
return false
end

local ikd, rxjr = pcall(mcow.isPackUnlocked, wnho, pz)

return (not ikd) or rxjr == true
end

function hntq.misc.util.visit(onnx)
local vuv = workspace:FindFirstChild(_d("Pj9yFg"))
local udxx = vuv and vuv:FindFirstChild(onnx)
local vwp = pl.Character
local lue = vwp and vwp:FindFirstChild(_d("OBpcBBYDDRQ9XgoMPAUCGw"))
local nxo = udxx and (udxx:FindFirstChild(_d("OBpcBBYDDRQ9XgoMPAUCGw")) or udxx:FindFirstChildWhichIsA(_d("Mg5CACgNFgQ"), true))

if not (nxo and lue) then
return nil
end

local yotu = lue.CFrame

lue.CFrame = CFrame.new((nxo.CFrame * CFrame.new(0, 0, -5)).Position)

return yotu
end

function hntq.misc.util.returnTo(cpt)
local sfj = pl.Character
local iji = sfj and sfj:FindFirstChild(_d("OBpcBBYDDRQ9XgoMPAUCGw"))

if iji and cpt then
iji.CFrame = cpt
end
end

function hntq.misc.util.applyPacks(eyb, dcv)
local uu = hntq.misc.util

if os.clock() < uu.packAt then
return false, _d("Jw5YEVgNRB0AXAAWGEo")
end

local lyo = uu.currentProfile()

if not lyo then
return false, _d("IgpQARECA1AWXhAKTBQCAFcMFAlEXU9FFwFMBRcOWAtYBQpQDhEWHQ8LHgsf")
end

if dcv and (tonumber(lyo.packSlots) or 1) < 2 then
return false, _d("IwNeEVheRB4KVAELTBAYChEAABgWEU9BBBsHRAMDXhFYCwUdCkEECx9K")
end

if not (rd.OpenPackShop and rd.EquipPack) then
return false, _d("JAdURQgNBxtPQg0XHEQZHBELFxhEGQERERAFF1AIUAgdTBIVHUIMFwJK")
end

uu.packAt = os.clock() + 8

task.spawn(function()
local xi = uu.visit(_d("PgBTCR0fFxkBVhY"))

if not xi then
return
end

pcall(function()
rd.OpenPackShop:FireServer(_d("AA5SDicBAQIMWQQWGA"))
end)

task.wait(1.2)

if eyb then
pcall(function()
rd.EquipPack:FireServer(eyb, 1)
end)
end

if dcv then
task.wait(0.8)

pcall(function()
rd.EquipPack:FireServer(dcv, 2)
end)
end

task.wait(0.8)
uu.returnTo(xi)
uu.forgetProfile()
end)

return true
end

function hntq.misc.util.accScore(jqr)
local erap = jqr.effects or {}

return (erap.luckBonus or 0) * 10
+ ((erap.luckMult or 1) - 1) * 200
+ ((erap.borderLuckMult or 1) - 1) * 200
- ((erap.rollCdMult or 1) - 1) * 30
end

function hntq.misc.util.accCatalog()
local cm = hntq.misc.util

if cm.accessories then
return cm.accessories
end

local qdva = {}

for bdqw, omf in ipairs({ _d("MQxSAAsfCwIWdQQMDQ"), _d("MQxSAAsfCwIWdQQMDVY") }) do
local dfia, mvh = pcall(function()
return require(bzz.ModuleScripts[omf])
end)

if dfia and type(mvh) == _d("BA5TCR0") and type(mvh.Accessories) == _d("BA5TCR0") then
for hx, hhau in ipairs(mvh.Accessories) do
if hhau.id then
table.insert(qdva, {
id = tostring(hhau.id),
name = tostring(hhau.name or hhau.id),
shop = bdqw,

shopName = bdqw == 1 and _d("MQxSAAsfCwIWETYQAxQ") or _d("PRZCER0eDR8aQkU1DQo"),
raidable = hhau.raidShopOnly == true,
hidden = hhau.hidden == true,
requirements = hhau.requirements or {},
score = hntq.misc.util.accScore(hhau),
})
end
end
end
end

cm.accessories = qdva

return qdva
end

function hntq.misc.util.accOwned(yfh)
local aehc = {}

for fal, ngp in ipairs((yfh and yfh.accessories) or {}) do
aehc[tostring(ngp)] = true
end

return aehc
end

function hntq.misc.util.accMeets(uad, vj)
for wis, xbw in ipairs(vj.requirements) do
local rylm = uad.cards and uad.cards[xbw.cardId]
local clk = type(rylm) == _d("BA5TCR0") and (tonumber(rylm[xbw.borderLevel]) or 0) or 0

if clk < (tonumber(xbw.amount) or 0) then
return false
end
end

return true
end

function hntq.misc.util.accPlan(qcq)
local bykw = hntq.misc.util
local mwh = bykw.accOwned(qcq)
local loma = {}

for vfzv, dji in ipairs(bykw.accCatalog()) do
if not mwh[dji.id] and not dji.raidable and not dji.hidden and bykw.accMeets(qcq, dji) then
local jmbr = loma[dji.shop]

if not jmbr or dji.score > jmbr.score then
loma[dji.shop] = dji
end
end
end

return loma
end

function hntq.misc.util.accPicks(srmy)
local qfus = hntq.misc.util
local kvha = qfus.accOwned(srmy)
local yws, ffa

for rfsi, zwt in ipairs(qfus.accCatalog()) do
if kvha[zwt.id] then
if not yws or zwt.score > yws.score then
yws = zwt
end
elseif not zwt.raidable and not zwt.hidden and qfus.accMeets(srmy, zwt) then
if not ffa or zwt.score > ffa.score then
ffa = zwt
end
end
end

return yws, ffa
end

function hntq.misc.util.equipBest()
local izxn = hntq.misc.util
local dx = izxn.currentProfile()

if not dx or not rd.EquipAccessory then
return false
end

local aqdw = izxn.accPicks(dx)

if not aqdw or dx.equippedAccessory == aqdw.id then
return aqdw ~= nil
end

pcall(function()
rd.EquipAccessory:FireServer(aqdw.id)
end)

task.delay(1.5, function()
izxn.forgetProfile()
end)

return true
end

function hntq.misc.util.buyBest()
local bhfn = hntq.misc.util

if os.clock() < bhfn.accAt then
return false, _d("Jw5YEVgNRB0AXAAWGEo")
end

if hu.busy(1) or hu.busy(2) then
bhfn.accNote = _d("OQERBFgOBQQbXQBYQUQRT0INFxxEBB1YFVgbCwUDVUUdAgBQBkU")
return false, _d("OQERBFgOBQQbXQBYQUQRT0INFxxEBB1YFVgbCwUDVUUdAgBQBkVL")
end

local lfn = bhfn.currentProfile()

if not lfn then
bhfn.accNote = _d("IgpQARECA1AWXhAKTBQCAFcMFAlEXU9GDBQARAQdSEUZCwUZAREMFkwFUBxUBhcCAA")
return false, _d("IgpQARECA1AWXhAKTBQCAFcMFAlEXU9FFwFMBRcOWAtYBQpQDhEWHQ8LHgsf")
end

local oahh = bhfn.accPlan(lfn)
local ogtz = {}

for hupe = 1, 2 do
if oahh[hupe] then
table.insert(ogtz, oahh[hupe].name)
end
end

if #ogtz == 0 then
bhfn.accNote = _d("PgBFDRECA1ABVBJYGQocAFIOHQhECQpFRVVMEBgKEQYZHgADT1cKCkwNBE9QFx1MCh8bEQwWTBAYChEGFwAIFQxFDBcC")
return false, _d("PgBFDRECA1ABVBJYDwUeT1MAWBkKHABSDh0IRAkKRUVVTBAYChEGGR4AA09XCgpMDQRPUBcdTAofGxEMFkwQGAoRBhcACBUMRQwXAko")
end

bhfn.accAt = os.clock() + 12
bhfn.accNote = _d("Jw5dDhECA1AbXkUMBAFQDF4QFhgBAk9XCgpM") .. table.concat(ogtz, _d("UA5fAVg"))

task.spawn(function()
for lxza = 1, 2 do
local bhex = oahh[lxza]

if bhex then
local cazb = lxza == 1 and _d("ABpDFg0FEBULVQ") or _d("Bw5XAx0ACREBVAQMHxMRCVcAFB8")
local qj = lxza == 1 and rd.OpenAccessoryShop or rd.OpenAccessoryShop2
local hcq = lxza == 1 and rd.BuyAccessory or rd.BuyAccessory2
local qjoe = cazb and bhfn.visit(cazb) or nil

if not qjoe then
local hng = workspace:FindFirstChild(_d("Pj9yFg"))
local omdl = hng and hng:FindFirstChild(cazb)

if omdl and os.clock() - (bhfn.worldAskedAt or 0) > 25 then

bhfn.worldAskedAt = os.clock()
bhfn.accNote = _d("MwdQFxkPEBUdEQsXGEQCClABAUxJUBtDHBECA1AOVgQRAkQDB14XDAAd")
elseif not omdl and os.clock() - (bhfn.worldAskedAt or 0) > 25 then

bhfn.worldAskedAt = os.clock()
bhfn.accNote = _d("PgARBhcZCgQKQ0URAkQEB1gWWBsLAgNVRVVMEBEEWAsfTBAYChEJFw4GCU9FABQJFB8dRQ")

pcall(function()
rd.TeleportToWorld:FireServer(_d("HABTBwE"))
end)

task.wait(4.5)
qjoe = bhfn.visit(cazb)
end
end

if qjoe and qj and hcq then

task.wait(0.9)

pcall(function()
qj:FireServer()
end)

task.wait(1.2)

pcall(function()
hcq:FireServer(bhex.id)
end)

task.wait(0.9)
bhfn.returnTo(qjoe)
bhfn.accNote = _d("MgBEAhAYRA") .. tostring(bhex.name)
elseif not qjoe then
bhfn.accNote = _d("MwBECRxMCh8bERcdDQcYT0UNHUwHHxpfER0eRF1PRRcBTAUXDlgLWAUKUA4RCBcBAR4b")
end

task.wait(0.6)
end
end

bhfn.forgetProfile()

for dmwh = 1, 8 do
if type(bhfn.profile) == _d("BA5TCR0") then
break
end

bhfn.askProfile()
task.wait(0.7)
end

bhfn.equipBest()
end)

return true, table.concat(ogtz, _d("XE8"))
end

function hntq.misc.util.indexText()
local vkue = hntq.misc.util

if type(vkue.profile) ~= _d("BA5TCR0") then
return _d("IgpQARECA1AWXhAKTAcRHVVFEQIAFRcfS1Y")
end

local bpbd = vkue.indexPending(vkue.profile)
local sm = 0

for qnd, st in pairs(vkue.profile.indexMilestones or {}) do
if st then
sm = sm + 1
end
end

local uw = tostring(vkue.indexedTotal(vkue.profile)) .. _d("UAxQFxwfRBkBVQAACQBcTw") .. tostring(sm) .. _d("UABXRUtcRAIKRgQKCBdQDF0EEQEBFA")

if #bpbd > 0 then
uw = uw .. _d("ej1UBBwVXlA") .. table.concat(bpbd, _d("XE8"))
end

return uw
end

function hntq.misc.util.achText()
local pnc = hntq.misc.util

if type(pnc.ach) ~= _d("BA5TCR0") then
return _d("IgpQARECA1AOUg0RCRIVAlQLDB9KXkE")
end

local gfhh = pnc.achPending()
local ccs = 0

for gifa, zid in ipairs(pnc.ach.chains or {}) do
for lbrf in ipairs(zid.levels or {}) do
ccs = ccs + 1
end
end

return tostring(#gfhh) .. _d("UABXRQ") .. tostring(ccs) .. _d("UA5SDREJEhUCVAsMH0QCClABAQ")
end

function hntq.misc.util.questText()
local jm = hntq.misc.util

if type(jm.quests) ~= _d("BA5TCR0") and type(jm.weekly) ~= _d("BA5TCR0") then
return _d("IgpQARECA1AeRAALGBdeQR8")
end

local jin, fvbg = 0, 0

for qp, qfsh in ipairs(jm.questPending()) do
if qfsh.list == _d("BwpUDhQV") then
fvbg = fvbg + 1
else
jin = jin + 1
end
end

local ng = type(jm.quests) == _d("BA5TCR0") and #(jm.quests.list or {}) or 0
local nbn = type(jm.weekly) == _d("BA5TCR0") and #(jm.weekly.list or {}) or 0

return tostring(jin) .. _d("UABXRQ") .. tostring(ng) .. _d("UAtQDBQVRAIKUAEBZg")
.. tostring(fvbg) .. _d("UABXRQ") .. tostring(nbn) .. _d("UBhUABMAHVAdVAQcFQ")
end

function hntq.misc.util.packText()
local ktd = hntq.misc.util
local nir = ktd.profile

if type(nir) ~= _d("BA5TCR0") then
return _d("IgpQARECA1AWXhAKTBQRDFoWVkJK")
end

local function tk(och)
for kdn, efu in ipairs(ktd.packCatalog()) do
if efu.id == och then
return efu.name
end
end

return tostring(och)
end

local wl = _d("IwNeEVhdXlA") .. tk(nir.equippedPack)

if (tonumber(nir.packSlots) or 1) >= 2 then
wl = wl .. _d("ejxdCgxMVkpP") .. tk(nir.equippedPack2)
else
wl = wl .. _d("ejxdCgxMVkpPVgQVCRQRHEJFFgMQUABGCx0I")
end

return wl
end

function hntq.misc.util.accText()
local aaj = hntq.misc.util
local sbuo = aaj.profile

if type(sbuo) ~= _d("BA5TCR0") then
return _d("IgpQARECA1AWXhAKTAUTDFQWCwMWGQpCS1ZC")
end

local rui = aaj.accPicks(sbuo)
local kmaq = aaj.accPlan(sbuo)
local lgkr = _d("HgBfAA")

for kgd, kpv in ipairs(aaj.accCatalog()) do
if kpv.id == sbuo.equippedAccessory then
lgkr = kpv.name .. _d("UEc") .. kpv.shopName .. _d("WQ")
end
end

local dbiw = _d("NR5EDAgcARRVEQ") .. lgkr

if rui then
dbiw = dbiw .. _d("ei1UFgxMCwcBVAFCTA") .. rui.name
end

dbiw = dbiw .. _d("ei5SBh0fFx8dSEUrBAsAVRE") .. (kmaq[1] and kmaq[1].name or _d("HgBFDRECA1ABVBI"))
dbiw = dbiw .. _d("eiJIFgwJFhkARBZYIQUeVRE") .. (kmaq[2] and kmaq[2].name or _d("HgBFDRECA1ABVBI"))

if aaj.accNote then
dbiw = dbiw .. _d("eiNQFgxMEAIGQV9Y") .. aaj.accNote
end

return dbiw
end

hntq.misc.util.hook()
hntq.misc.util.askProfile()

hntq.misc.indexSection = hntq.misc.tab:Section({
Side = _d("PApXEQ"),
})

hntq.misc.indexSection:Header({
Name = _d("Mw5DAVglChQKSUWI8/f3"),
})

hntq.misc.indexToggle = hntq.misc.indexSection:Toggle({
Name = _d("MRpFClgPCBEGXA"),
Default = false,
Callback = function(vgrs)
hntq.misc.util.indexOn = vgrs
hntq.misc.util.indexAt = 0

hntq.misc.util.indexAsked = nil
end,
}, _d("ERpFCicPCBEGXDpK"))

hntq.misc.indexSection:Button({
Name = _d("MwNQDBVMCh8Y"),
Callback = function()
local igps = hntq.misc.util

igps.indexAt = 0
igps.indexAsked = nil

if not igps.claimIndex() then
ww:Notify({
Title = _d("Mw5DAVglChQKSQ"),
Description = _d("PgARCBEAAQMbXgsdTA0DT0MAGQgdUBteRRsABRkCHw"),
Lifetime = 5,
})
end
end,
})

hntq.misc.claimSection = hntq.misc.tab:Section({
Side = _d("PApXEQ"),
})

hntq.misc.claimSection:Header({
Name = _d("MQxZDB0aAR0KXxELTEJQPkQACxgXUJ+u6v4"),
})

hntq.misc.achToggle = hntq.misc.claimSection:Toggle({
Name = _d("MRpFClgPCBEGXEUZDwwZCkcAFQkKBBw"),
Default = false,
Callback = function(ezv)
hntq.misc.util.achOn = ezv
hntq.misc.util.achAt = 0

if ezv and rd.RequestAchievements then
pcall(function()
rd.RequestAchievements:FireServer()
end)
end
end,
}, _d("ERpFCicPCBEGXDoZDwwZCkcAFQkKBBw"))

hntq.misc.questToggle = hntq.misc.claimSection:Toggle({
Name = _d("MRpFClgPCBEGXEUJGQEDG0I"),
Default = false,
Callback = function(xupk)
hntq.misc.util.questOn = xupk
hntq.misc.util.questAt = 0
hntq.misc.util.questAskedAt = 0
hntq.misc.util.weeklyAskedAt = 0

if xupk then
hntq.misc.util.askQuests()
end
end,
}, _d("ERpFCicPCBEGXDoJGQEDG0I"))

hntq.misc.claimSection:Button({
Name = _d("MwNQDBVMBRwDEQsXGw"),
Callback = function()
local emrr = hntq.misc.util

emrr.achAt = 0
emrr.questAt = 0

local igk = emrr.claimAchievement()
local cy = emrr.claimQuest()

if not (igk or cy) then
ww:Notify({
Title = _d("MQxZDB0aAR0KXxELTEJQPkQACxgX"),
Description = _d("PgBFDRECA1AGQkUKCQUUFhERF0wHHA5YCFY"),
Lifetime = 5,
})
end
end,
})

hntq.misc.packSection = hntq.misc.tab:Section({
Side = _d("PApXEQ"),
})

hntq.misc.packSection:Header({
Name = _d("Mw5DAVg8BRMEQkWI8+rE"),
})

hntq.misc.packSection:Paragraph({
Header = _d("JBheRQsACwQc"),
Body = _d("IAZSDgtMBQAfXRxYAwocFhESEAkKUBZeEFgcFhUcQkU5HBQcFhEVGQ8PA0MRBx0PBQUcVEUMBAFQHEYMDA8MUBhQCRMfRAQAEREQCUQdCkMGEA0KBEE"),
})

local ergm = {}
local elrb = {}

for xycm, llj in ipairs(hntq.misc.util.packCatalog()) do
table.insert(ergm, llj.name)
elrb[llj.name] = llj.id
end

hntq.misc.packSlotOne = nil
hntq.misc.packSlotTwo = nil

hntq.misc.packDropdownOne = hntq.misc.packSection:Dropdown({
Name = _d("IwNeEVhd"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = ergm,
Callback = function(ewuv)
local ibf = type(ewuv) == _d("BA5TCR0") and ewuv[1] or ewuv

hntq.misc.packSlotOne = elrb[tostring(ibf)]
end,
}, _d("AwNeESdd"))

hntq.misc.packDropdownTwo = hntq.misc.packSection:Dropdown({
Name = _d("IwNeEVhe"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = ergm,
Callback = function(qrh)
local jog = type(qrh) == _d("BA5TCR0") and qrh[1] or qrh

hntq.misc.packSlotTwo = elrb[tostring(jog)]
end,
}, _d("AwNeESde"))

hntq.misc.packSection:Button({
Name = _d("MR9BCQFMFBEMWhY"),
Callback = function()
local pug = hntq.misc.util
local khzx = hntq.misc.packSlotOne
local hvd = hntq.misc.packSlotTwo

if not khzx then
ww:Notify({
Title = _d("Mw5DAVg8BRMEQg"),
Description = _d("IAZSDlgNRAAOUg5YCgsCT0IJFxhEQU9XDAofEF4"),
Lifetime = 5,
})

return
end

local gfb, ukwq = pug.applyPacks(khzx, hvd)

if not gfb then
ww:Dialog({
Title = _d("Mw5DAVg8BRMEQg"),
Description = ukwq,
Buttons = {
{
Name = _d("NwBFRREY"),
},
},
})
end
end,
})

hntq.misc.cards = {
rarityLabels = { _d("MQNd"), _d("PgBDCBkA"), _d("NwBdAQ"), _d("Ig5YCxoDEw"), _d("JQFYEx0eFxED") },
borderOf = { Normal = 1, Gold = 2, Rainbow = 3, Universal = 4 },
mergeOn = false,
deconOn = false,
mergeWanted = {},
deconWanted = {},
mergeAt = 0,
deconAt = 0,
mergeDone = _d("PgBFDRECA1AcVAsMTB0VGw"),
deconDone = _d("PgBFDRECA1AcVAsMTB0VGw"),

inFlight = false,

interval = 3600,
manualGap = 20,
manualAt = 0,

protectedPrefixes = { weather = true, boss = true, raid = true, wb = true, fish = true, hw = true, event = true },

deconExceptions = { weather_sayaka = true, weather_caesar = true },

deconConfirmed = false,
burnAskedAt = 0,
}

function hntq.misc.cards.isProtected(yqq, siiw)
local dtl = hntq.misc.cards
local zqca = tostring(yqq or _d(""))
local onro = zqca:match(_d("LkdqBFUWVF1WbE5RMw"))

if not (onro and dtl.protectedPrefixes[onro]) then
return false
end

return not (dtl.deconExceptions[zqca] and siiw == 2)
end

function hntq.misc.cards.burnAllowed(sk)
local xc = hntq.misc.cards
local xtju = xc.wantedFor(_d("FApSChY7BR4bVAE"))

if not (xtju == nil or xtju[3] or xtju[4]) then
xc.deconConfirmed = false

return true
end

if xc.deconConfirmed then
return true
end

if sk then
return false
end

if os.clock() < (xc.burnAskedAt or 0) then
return false
end

xc.burnAskedAt = os.clock() + 20

ww:Dialog({
Title = _d("MhpDC1g+BRkBUwoPTAsCT2QLERoBAhxQCVgPBQILQlo"),
Description = _d("MRpFClgIARMAXxYMHhETGxEWHQIAA09UEx0eHVAMXhUBTA0eT0UNHUwJERtSDRECA1AdXhILTAUeCxEGGQIKHxsRBx1MER4LXgsdQkQ")
.. _d("JwpQERAJFlxPUwoLH0hQHVAMHEwGHxxCSVgbCwIDVUUaAxcDQxEDER8MGQFWSVgkBRwDXhIdCQpQDl8BWAkSFQFFRRsNFhQcEQQKCUQYCl0BWA4FEwQRABEYDBUdERIZFUo"),
Buttons = {
{
Name = _d("MhpDC1gYDBUC"),
Callback = function()
xc.deconConfirmed = true
xc.deconAt = 0
xc.manualAt = 0

pcall(function()
hntq.misc.deconToggle:UpdateState(true)
end)
end,
},
{
Name = _d("Mw5fBh0A"),
Callback = function()
pcall(function()
hntq.misc.deconToggle:UpdateState(false)
end)
end,
},
},
})

return false
end

function hntq.misc.cards.wantedFor(vyi)
local zql = hntq.misc.cards[vyi] or {}

if next(zql) == nil or zql[0] then
return nil
end

return zql
end

function hntq.misc.cards.npcFor(uj)
local wepu = workspace:FindFirstChild(_d("Pj9yFg"))

if not wepu then
return nil
end

local abe = uj and _d("FhpCACcCFBM") or _d("FApSChYfEAIaUhEnAhQT")

for xrza, yzx in ipairs(wepu:GetChildren()) do
if yzx:GetAttribute(_d("Pj9yLBw")) == abe then
return yzx
end
end

local lve = uj and { _d("PwBBDRQV"), _d("HwBBCQEJ") } or { _d("IwdQEBQN"), _d("OA5HACwbCzQOVRY") }

for nvze, jcji in ipairs(wepu:GetChildren()) do
for azom, lxn in ipairs(lve) do
if jcji.Name == lxn then
return jcji
end
end
end

local oxw = uj and { _d("Ew5DAVgBAQIIWAsf"), _d("HwBBDRQV") } or { _d("FApSChYfEAIaUhERAwo"), _d("AwdQEBQN") }

for cqlm, hidy in ipairs(wepu:GetChildren()) do
for oen, cohr in ipairs(hidy:GetDescendants()) do
if cohr:IsA(_d("JApJETQNBhUD")) and cohr.Text ~= _d("") then
local nkwn = cohr.Text:lower()

for hwtd, gp in ipairs(oxw) do
if nkwn:find(gp, 1, true) then
return hidy
end
end

break
end
end
end

return nil
end

function hntq.misc.cards.rarityText(bpoo)
local xal = hntq.misc.cards.wantedFor(bpoo)

if not xal then
return _d("MQNd")
end

local pq = {}

for utk, vioi in pairs(hntq.misc.cards.borderOf) do
if xal[vioi] then
table.insert(pq, utk)
end
end

if #pq == 0 then
return _d("MQNd")
end

table.sort(pq)

return table.concat(pq, _d("XE8"))
end

function hntq.misc.cards.run(pqbb, lmjq, pqk)
local xrw = hntq.misc.cards
local fdnw = hntq.misc.util
local ypkd = pqbb and _d("HQpDAh0tEA") or _d("FApSChYtEA")

if pqk then
if os.clock() < xrw[ypkd] then
return false, _d("PgBFRRwZAVAWVBFW")
end
elseif os.clock() < xrw.manualAt then
return false, _d("Jw5YEVgNRB0AXAAWGEo")
end

if xrw.inFlight then
return false, _d("MQFeERAJFlAMUBccTBACBkFFER9EEQNDABkIHVAdRAsWBQoXQQ")
end

local urqz = hu.busy(1) and 1 or (hu.busy(2) and 2 or nil)
local hcc = os.clock() - (fngx.floorAt or 0) < 90
local gaf = urqz ~= nil and hu.towerSlot() == urqz and hcc

if urqz and not gaf then
return false, _d("OQERBFgOBQQbXQBYQUQEB1RFDB4NAE9GCg0AAFAKXwFYBRBe")
end

if bwk.battlePending and os.time() < (bwk.battlePendingUntil or 0) then
return false, _d("MU9TBAwYCBVPWBZYHxARHUUMFgtEXU9FDR1MEAIGQUUPAxEcCxEGGQIHFQMRDAxC")
end

if not pqbb and not xrw.burnAllowed() then
return false, _d("MwBfAxEeCVA9UAwWDgsHQGQLERoBAhxQCVgKDQIcRUs")
end

local buc = xrw.npcFor(pqbb)

if not buc then
return false, pqbb
and _d("PwBBDRQVRBkcEQsXGEQZAREREAUXUAJQFVhBRAQdUBMdAEQEABENEQFEEQFVRQgeAQMcEQwMTAUXDlgLVg")
or _d("JAdURRwJBx8BQhEKGQcET381O0wNA09fCgxMDR5PRQ0RH0QdDkFFVUwQAg5HABRMEB9PWBFYDQoUT0EXHR8XUAZFRRkLBRkBHw")
end

local qoi = pqbb and rd.OpenFuseDialog or rd.OpenDeconstructDialog
local mecg = pqbb and rd.FuseCards or rd.DeconstructCards

if not (qoi and mecg) then
return false, _d("JAdQEVgFF1ABXhFYBQpQG1kMC0wDEQJURQ4JFgMGXgtW")
end

local htdb = pqbb and _d("HQpDAh07BR4bVAE") or _d("FApSChY7BR4bVAE")
local san = xrw.wantedFor(htdb)

xrw.manualAt = os.clock() + xrw.manualGap

if pqk then
xrw[ypkd] = os.clock() + xrw.interval
end

xrw.inFlight = true

task.spawn(function()

local gic = nil

local function caw(piam, ptkl)
if pqbb then
xrw.mergeDone = piam
else
xrw.deconDone = piam
end

if ptkl and pqk then
xrw[ypkd] = os.clock() + 120
end

xrw.inFlight = false
end

local uzvg = fdnw.visit(buc.Name)

if not uzvg then
caw(_d("MwdQFxkPEBUdEQwLTAofGxEXHQ0ACU8cRQoJEAIWWAsfTA0eT0USF0wJGQFEER0fSg"), true)

return
end

task.wait(0.9)

local qdc = nil
local pqn = bwkv(qoi.OnClientEvent, function(ggd)
if type(ggd) == _d("BA5TCR0") then
qdc = ggd
end
end)

for lgsi = 1, 3 do
pcall(function()
qoi:FireServer()
end)

for ylih = 1, 20 do
if qdc then
break
end

task.wait(0.3)
end

if qdc then
break
end

task.wait(1.5)
end

pqn:Disconnect()
fdnw.returnTo(uzvg)

if type(qdc) ~= _d("BA5TCR0") then
caw(_d("JAdURRwFBRwAVkUcBQBQAV4RWA0KAxhUF1hBRAIKRRcBBQoXT1gLWBgTH09cDBYZEBUcHw"), true)

return
end

local aick = {}

for erm, op in ipairs(qdc) do
local gaxn = tonumber(op.borderLevel)
local rj = op.cardId or op.id

if gaxn and (not san or san[gaxn])
and (pqbb or not hntq.misc.cards.isProtected(rj, gaxn)) then
table.insert(aick, op)
end
end

if #aick == 0 then

hntq.misc.cards.closeFrame(pqbb)
caw(_d("PgBFDRECA1AbXkULCQoUT1cKCkw") .. hntq.misc.cards.rarityText(htdb) .. _d("Xg"))

return
end

if lmjq then

local lwq = {}

for wah, cfqe in ipairs(aick) do
if (tonumber(cfqe.count) or 0) >= lmjq then
table.insert(lwq, cfqe)
end
end

if #lwq == 0 then
hntq.misc.cards.closeFrame(pqbb)
caw(_d("PgAR") .. hntq.misc.cards.rarityText(htdb) .. _d("UB1eElgEBQNP") .. lmjq .. _d("UAxeFREJF1AWVBFW"))

return
end

aick = lwq

table.sort(aick, function(dhw, gdso)
return (tonumber(dhw.count) or 0) < (tonumber(gdso.count) or 0)
end)

local pcb, jfgf = {}, 0

for pjur, njbg in ipairs(aick) do
local yozt = tonumber(njbg.count) or 0

if #pcb > 0 and jfgf + yozt > lmjq then
break
end

table.insert(pcb, njbg)
jfgf = jfgf + yozt
end

aick = pcb
gic = jfgf
end

local mb = 0

hntq.misc.cards.closeFrame(pqbb)

if pqbb then
if not san then

pcall(function()
mecg:FireServer(_d("EQNd"), nil)
end)

mb = #aick
else
local bmah = {}

for ylsa, ld in ipairs(aick) do
table.insert(bmah, { ld.cardId, tonumber(ld.borderLevel) })
end

pcall(function()
mecg:FireServer(_d("AwpdABsYARQwUAkU"), bmah)
end)

mb = #bmah
end
else
local atlq = {}

for giqu, ibpx in ipairs(aick) do
if #atlq >= 25 then
break
end

table.insert(atlq, { ibpx.cardId, tonumber(ibpx.borderLevel), _d("EQNd") })
end

pcall(function()
mecg:FireServer(atlq)
end)

mb = #atlq
end

caw(_d("IwpfEVg") .. tostring(mb) .. _d("UB1eEg") .. (mb == 1 and _d("") or _d("Aw"))
.. _d("UEc") .. hntq.misc.cards.rarityText(htdb) .. _d("WQ")
.. (gic and (_d("XE8") .. tostring(gic) .. _d("UAxQFxwf")) or _d("")))
end)

return true
end

function hntq.misc.cards.closeFrame(zw)
pcall(function()
local ibj = zw and { _d("NhpCAD8ZDQ"), _d("NhpCAD4eBR0K") } or { _d("NApSChYfEAIaUhE/GQ0"), _d("NApSChYfEAIaUhE+HgUdCg") }
local qulp = require(bzz.ModuleScripts.MenuManager)
local kbdu = kdoz:FindFirstChild(ibj[1])
local pco = kbdu and kbdu:FindFirstChild(ibj[2])

if pco then
qulp.close(pco)
end

if not zw then
local ofhl = kbdu and kbdu:FindFirstChild(_d("NApSChYfEAIaUhEqDRAVHHcXGQEB"))

if ofhl then
qulp.close(ofhl)
else
ofhl = kdoz:FindFirstChild(_d("NApSChYfEAIaUhEqDRAVHHcXGQEB"))

if ofhl then
qulp.close(ofhl)
end
end
end
end)
end

function hntq.misc.cards.refresh(dzr)

local vlww = dzr and hntq.misc.mergeParagraph or hntq.misc.deconParagraph

if not vlww then
return
end

pcall(function()
vlww:UpdateBody(dzr
and hntq.misc.cards.mergeText()
or hntq.misc.cards.deconText())
end)
end

function hntq.misc.cards.mergeText()
local jbyt = hntq.misc.cards

return _d("Ig5DDAwFAQNVEQ") .. jbyt.rarityText(_d("HQpDAh07BR4bVAE")) .. _d("eg") .. jbyt.mergeDone
end

function hntq.misc.cards.deconText()
local uhqf = hntq.misc.cards

return _d("Ig5DDAwFAQNVEQ") .. uhqf.rarityText(_d("FApSChY7BR4bVAE")) .. _d("eg") .. uhqf.deconDone
.. _d("ejhUBAwEAQJDEQcXHxdcT0MEEQhIUBheFxQIRBIAQhZUTAIZHFkMFgtIUCdQCRQDExUKX0UZAgBQCkcAFhhEEw5DAQtMBQIKEQsdGgECT0IAFhhK")
end

hntq.misc.skill = {
on = false,
at = 0,
mainWanted = {},
raidWanted = {},

mainOrder = {},
raidOrder = {},
last = _d("PgBFDRECA1ANXhAfBBBQFlQR"),
shown = _d(""),
}

function hntq.misc.skill.branchMap(hl)
local fylc = {}

for bhw, mwwd in ipairs(wdh.Trees[hl].branches) do
fylc[mwwd.name] = mwwd
end

return fylc
end

function hntq.misc.skill.branchLabels(bkgs)
local rsw = {}

for hsa, daf in ipairs(wdh.Trees[bkgs].branches) do
table.insert(rsw, daf.name)
end

return rsw
end

function hntq.misc.skill.wantedFrom(nfdu, csli)
local rup = {}
local sitr = hntq.misc.skill.branchMap(csli)

if type(nfdu) == _d("BA5TCR0") then
for kgx, xvw in pairs(nfdu) do
if xvw and sitr[tostring(kgx)] then
rup[sitr[tostring(kgx)].id] = true
end
end
end

return rup
end

function hntq.misc.skill.ordered(zyf, nuc)
local hxp = {}
local gq = {}

for fja, nymv in ipairs(nuc or {}) do
if zyf[nymv] then
table.insert(hxp, nymv)
gq[nymv] = true
end
end

for epx in pairs(zyf) do
if not gq[epx] then
table.insert(hxp, epx)
end
end

return hxp
end

function hntq.misc.skill.branchById(acu)
local qfdh = {}

for okh, cgev in ipairs(wdh.Trees[acu].branches) do
qfdh[cgev.id] = cgev
end

return qfdh
end

function hntq.misc.skill.upgrade()
local zbii = hntq.misc.skill
local cyy = hntq.misc.util
local aep = cyy.currentProfile and cyy.currentProfile()

if type(aep) ~= _d("BA5TCR0") then
return false, _d("PgARFQoDAhkDVEUBCRBe")
end

local wto = aep.skillTrees or {}
local erja = { [1] = zbii.mainOrder, [2] = zbii.raidOrder }
local hs = nil

for mvhp, xsq in ipairs(wdh.Trees) do
local fuk = wto[xsq.id]
local bnc = tonumber(aep[xsq.pointsField or _d("AwRYCRQ8CxkBRRY")]) or 0
local eto = hntq.misc.skill.branchById(mvhp)

if type(fuk) == _d("BA5TCR0") and bnc > 0 then
for bkvd, gah in ipairs(erja[mvhp] or {}) do
local bryu = eto[gah]

if bryu and not hs then
local avvk = wdh.getBranchLevel(wto, xsq.id, bryu.id) or 0
local hmz = avvk + 1

if hmz <= bryu.levels then
local dgvn = bryu.id .. hmz
local kcn = 1

if type(bryu.costs) == _d("BA5TCR0") and tonumber(bryu.costs[hmz]) then
kcn = tonumber(bryu.costs[hmz])
elseif tonumber(bryu.cost) then
kcn = tonumber(bryu.cost)
end

if kcn <= bnc and wdh.isAvailable(wto, xsq.id, dgvn) then
hs = { tree = xsq.id, node = dgvn, name = bryu.name, level = hmz }
end
end
end
end
end
end

if not hs then
return false, _d("PgBFDRECA1AbXkUaGR1QFlQRVg")
end

rd.BuySkillNode:FireServer(hs.tree, hs.node)

if cyy.askProfile then
pcall(cyy.askProfile)
end

zbii.last = _d("MgBEAhAYRA") .. hs.name .. _d("UA") .. tostring(hs.level)

return true
end

function hntq.misc.skill.text()
local ehr = hntq.misc.skill
local myax = hntq.misc.util
local vrrr = myax.currentProfile and myax.currentProfile()

if type(vrrr) ~= _d("BA5TCR0") then
return _d("IABYCwwfXlBQOw") .. ehr.last
end

local qjb = vrrr.skillTrees or {}
local zsaf = {}

local rlz = { [1] = ehr.mainOrder, [2] = ehr.raidOrder }

for sbxq, hpg in ipairs(wdh.Trees) do
local rb = tonumber(vrrr[hpg.pointsField or _d("AwRYCRQ8CxkBRRY")]) or 0
local ov = {}
local kci = hntq.misc.skill.branchById(sbxq)

for htg, vu in ipairs(rlz[sbxq] or {}) do
local rmow = kci[vu]

if rmow then
local nmfq = wdh.getBranchLevel(qjb, hpg.id, rmow.id) or 0
table.insert(ov, rmow.name .. _d("UA") .. tostring(nmfq) .. _d("Xw") .. tostring(rmow.levels))
end
end

zsaf[#zsaf + 1] = hpg.name .. _d("Sk8") .. tostring(rb) .. _d("UB9FFg")
.. (#ov > 0 and (_d("UEIR") .. table.concat(ov, _d("XE8"))) or _d("UEIRCxcYDBkBVkUIBQcbClU"))
end

zsaf[#zsaf + 1] = ehr.last

return table.concat(zsaf, _d("eg"))
end

hntq.misc.mergeSection = hntq.misc.tab:Section({
Side = _d("PApXEQ"),
})

hntq.misc.mergeSection:Header({
Name = _d("PQpDAh1MlO/InQ"),
})

hntq.misc.mergeToggle = hntq.misc.mergeSection:Toggle({
Name = _d("MRpFClgBAQIIVA"),
Default = false,
Callback = function(wwfq)
local opq = hntq.misc.cards

opq.mergeOn = wwfq

opq.mergeAt = (wwfq and kku.loading) and (os.clock() + opq.interval) or 0
end,
}, _d("ERpFCicBAQIIVA"))

hntq.misc.mergeDropdown = hntq.misc.mergeSection:Dropdown({
Name = _d("Ig5DDAwFAQM"),
Search = false,
Multi = true,
Required = false,
Default = { _d("MQNd") },
Options = hntq.misc.cards.rarityLabels,
Callback = function(nz)
local ipn = {}

if type(nz) == _d("BA5TCR0") then
for yjzk, fnqp in pairs(nz) do
if fnqp then
if yjzk == _d("MQNd") then
ipn[0] = true
else
ipn[hntq.misc.cards.borderOf[tostring(yjzk)]] = true
end
end
end
end

hntq.misc.cards.mergeWanted = ipn
hntq.misc.cards.refresh(true)
end,
}, _d("Ag5DDAwFAQM"))

hntq.misc.mergeSection:Button({
Name = _d("PQpDAh1MCh8Y"),
Callback = function()
local frni, akg = hntq.misc.cards.run(true)

if not frni then
ww:Notify({
Title = _d("PQpDAh0"),
Description = akg,
Lifetime = 6,
})
end
end,
})

hntq.misc.mergeSection:Button({
Name = _d("PQpDAh1MXUA"),
Callback = function()

local lrhd, crx = hntq.misc.cards.run(true, 90)

if not lrhd then
ww:Notify({
Title = _d("PQpDAh1MXUA"),
Description = crx,
Lifetime = 6,
})
end
end,
})

hntq.misc.mergeParagraph = hntq.misc.mergeSection:Paragraph({
Header = _d("IxtQEQ0f"),
Body = hntq.misc.cards.mergeText(),
})

hntq.misc.accSection = hntq.misc.tab:Section({
Side = _d("IgZWDQw"),
})

hntq.misc.accSection:Header({
Name = _d("MQxSAAsfCwIGVBZYnPvi4Q"),
})

hntq.misc.accToggle = hntq.misc.accSection:Toggle({
Name = _d("MRpFClgOAQMbEQQbDwEDHF4XAQ"),
Default = false,
Callback = function(cet)
hntq.misc.util.accOn = cet
hntq.misc.util.accAt = 0
end,
}, _d("ERpFCicOAQMbbgQbDwEDHF4XAQ"))

hntq.misc.accBuyToggle = hntq.misc.accSection:Toggle({
Name = _d("MRpFClgOEQlPUwALGA"),
Default = false,
Callback = function(gyw)
hntq.misc.util.accBuyOn = gyw
hntq.misc.util.accBuyAt = 0
hntq.misc.util.accAt = 0
end,
}, _d("ERpFCicOEQkwUwALGA"))

hntq.misc.accSection:Button({
Name = _d("MhpIRRoJFwQ"),
Callback = function()
local fet, hmdx = hntq.misc.util.buyBest()

if not fet then
ww:Notify({
Title = _d("MQxSAAsfCwIGVBY"),
Description = hmdx,
Lifetime = 6,
})
end
end,
})

hntq.misc.accSection:Button({
Name = _d("NR5EDAhMBhUcRQ"),
Callback = function()
if not hntq.misc.util.equipBest() then
ww:Notify({
Title = _d("MQxSAAsfCwIGVBY"),
Description = _d("PgBFDRECA1ANVBEMCRZQBkJFFxsKFQsRHB0YSg"),
Lifetime = 5,
})
end
end,
})

hntq.misc.accParagraph = hntq.misc.accSection:Paragraph({
Header = _d("IxtQEQ0f"),
Body = hntq.misc.util.accText(),
})

hntq.misc.claimInfo = hntq.misc.tab:Section({
Side = _d("IgZWDQw"),
})

hntq.misc.claimInfo:Header({
Name = _d("PQZCBh0ACBEBVAoNHw"),
})

hntq.misc.indexParagraph = hntq.misc.claimInfo:Paragraph({
Header = _d("Mw5DAVglChQKSQ"),
Body = hntq.misc.util.indexText(),
})

hntq.misc.achParagraph = hntq.misc.claimInfo:Paragraph({
Header = _d("MQxZDB0aAR0KXxEL"),
Body = hntq.misc.util.achText(),
})

hntq.misc.questParagraph = hntq.misc.claimInfo:Paragraph({
Header = _d("IRpUFgwf"),
Body = hntq.misc.util.questText(),
})

hntq.misc.packParagraph = hntq.misc.claimInfo:Paragraph({
Header = _d("IA5SDgs"),
Body = hntq.misc.util.packText(),
})

hntq.misc.skillSection = hntq.misc.tab:Section({
Side = _d("IgZWDQw"),
})

hntq.misc.skillSection:Header({
Name = _d("IwRYCRRMMAIKVEWI8+jD"),
})

hntq.misc.skillToggle = hntq.misc.skillSection:Toggle({
Name = _d("MRpFClgZFBcdUAEd"),
Default = false,
Callback = function(eij)
local ey = hntq.misc.skill

if eij and not (next(ey.mainWanted) or next(ey.raidWanted)) then
ey.on = false

pcall(function()
hntq.misc.skillToggle:UpdateState(false)
end)

ww:Dialog({
Title = _d("IAZSDlgNRBIdUAsbBEQWBkMWDA"),
Description = _d("MwdeCgsJRBEbEQkdDRcET14LHUwGAg5fBhBMDR5PRQ0dTCkRBl9FDB4BFU9eF1g+BRkLEREKCQFQC0MKCAgLBwERSFg")
.. _d("MRpFClgZFBcdUAEdTAseA0hFCxwBHgtCRQgDDR4bQkUPBAECChEcFxlEAABYCwxMDQRB"),
Buttons = {
{
Name = _d("NwBFRREY"),
},
},
})

return
end

ey.on = eij
ey.at = 0
end,
}, _d("ERpFCicZFBcdUAEd"))

hntq.misc.skillMainDropdown = hntq.misc.skillSection:Dropdown({
Name = _d("PQ5YC1gYFhUK"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = hntq.misc.skill.branchLabels(1),
Callback = function(gfl)
local cho = hntq.misc.skill
local zvey = cho.wantedFrom(gfl, 1)

cho.mainWanted = zvey
cho.mainOrder = cho.ordered(zvey, cho.mainOrder)
cho.shown = _d("")
end,
}, _d("HQ5YCycYFhUK"))

hntq.misc.skillRaidDropdown = hntq.misc.skillSection:Dropdown({
Name = _d("Ig5YAVgYFhUK"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = hntq.misc.skill.branchLabels(2),
Callback = function(ks)
local zcy = hntq.misc.skill
local kla = zcy.wantedFrom(ks, 2)

zcy.raidWanted = kla
zcy.raidOrder = zcy.ordered(kla, zcy.raidOrder)
zcy.shown = _d("")
end,
}, _d("Ag5YAScYFhUK"))

pcall(function()
hntq.misc.skillMainDropdown:UpdateSelection({})
end)

pcall(function()
hntq.misc.skillRaidDropdown:UpdateSelection({})
end)

hntq.misc.skillParagraph = hntq.misc.skillSection:Paragraph({
Header = _d("IxtQEQ0f"),
Body = hntq.misc.skill.text(),
})

task.spawn(function()
local apwz = hntq.misc.util

while mbys() do
if apwz.indexOn or apwz.achOn or apwz.questOn or apwz.accOn or apwz.accBuyOn then
apwz.currentProfile()
end

if apwz.indexOn then
apwz.claimIndex()
end

if apwz.achOn then
apwz.claimAchievement()
end

if apwz.questOn then

if os.clock() - apwz.questAskedAt > 20 or os.clock() - apwz.weeklyAskedAt > 20 then
apwz.askQuests()
end

apwz.claimQuest()
end

if apwz.accOn and os.clock() >= apwz.accAt then
apwz.accAt = os.clock() + 3
apwz.equipBest()
end

local hib = hntq.misc.cards

if not hib.inFlight then
if hib.mergeOn and os.clock() >= hib.mergeAt then
hib.run(true, nil, true)
elseif hib.deconOn and os.clock() >= hib.deconAt then
hib.run(false, nil, true)
end
end

if hib.mergeDone ~= hib.mergeShown then
hib.mergeShown = hib.mergeDone

pcall(function()
hntq.misc.mergeParagraph:UpdateBody(hntq.misc.cards.mergeText())
end)
end

if hib.deconDone ~= hib.deconShown then
hib.deconShown = hib.deconDone

pcall(function()
hntq.misc.deconParagraph:UpdateBody(hntq.misc.cards.deconText())
end)
end

local liw = hntq.misc.skill

if liw.on and os.clock() >= liw.at then

liw.at = os.clock() + 2
liw.upgrade()
end

local rywv = hntq.misc.skill.text()

if liw.shown ~= rywv then
liw.shown = rywv

pcall(function()
hntq.misc.skillParagraph:UpdateBody(rywv)
end)
end

if apwz.accBuyOn and os.clock() >= apwz.accBuyAt then

local nfg = apwz.buyBest()

apwz.accBuyAt = os.clock() + (nfg and 45 or 10)
end

local kd = {
{ key = _d("GQFVAAA"), paragraph = hntq.misc.indexParagraph, value = apwz.indexText() },
{ key = _d("EQxZ"), paragraph = hntq.misc.achParagraph, value = apwz.achText() },
{ key = _d("ARpUFgw"), paragraph = hntq.misc.questParagraph, value = apwz.questText() },
{ key = _d("AA5SDg"), paragraph = hntq.misc.packParagraph, value = apwz.packText() },
{ key = _d("EQxS"), paragraph = hntq.misc.accParagraph, value = apwz.accText() },
}

for dgnd, cdzs in ipairs(kd) do
if cdzs.paragraph and apwz.shown[cdzs.key] ~= cdzs.value then
apwz.shown[cdzs.key] = cdzs.value

pcall(function()
cdzs.paragraph:UpdateBody(cdzs.value)
end)
end
end

task.wait(0.75)
end
end)

local cmbs = eu:Section({
Side = _d("IgZWDQw"),
})

cmbs:Paragraph({
Header = _d("NgZCDRECAw"),
Body = _d("MRpFClgqDQMHEQAJGQ0AHBEcFxkWUB1eAVRMAhEMVBZYGAwVT0YEDAkWUA5fAVgPBQMbQkUXAkQZG0JFFxsKXE9FDR0CRAIKVAkLTBMYCl9FCwMJFRtZDBYLRBIGRQALQkQkPxERF0wmERYRFQ0ACANPSAoNTAYRDFpFDANEBAdURRoNHVAJWBcLGEhQDl8BWBgMFU9FEhdMIBUKQQALGEQnDkUACkwXBwZFBhAJF1AHXgkcTBAYChEWCAMQUBZeEFgbAQIKERYMDQoUBl8CWAMKUBhZABZMHR8aEQQKAQEUT0UNHQFEXU9FDR1MABUKQQALGEQCBl8CWA8FAh1YAAtMEBgKEQcRCwMVHEVFFBkHG09TChYZF15lOzEQCUQDB14VWA4RCRwRBBYIRBUeRAwIH0QCAFUWWA0KFE9TBBEYRAcGRQ1YGAwVT1IECxgXUBZeEFgEBQYKH0U6GR0ZAVZFFgkBFBwRERAJRBMARAsMCRZQQhEHFxgMUAxeCB1MAgIAXEUMBAFQKVgWEAkWHQ5fS3JmJxEbUg0dH0QbClQVC0wFUB1ECxYFChdPRQQUAB1QDUhFERgBHU9QCxxMFxEZVBZYBRBcT0IKWBgMFU9FCgwNCFAMUBcKBQEDT14THR5EEgpFEh0JClAcVBYLBQseHB8"),
})

local qbjm = eu:Section({
Side = _d("IgZWDQw"),
})

qbjm:Header({
Name = _d("Mw5FBhAJFw"),
})

local ctzc

ctzc = qbjm:Paragraph({
Header = _d("JwdQEVgVCwVPUgQNCwwE"),
Body = pu(),
})

local penh = eu:Section({
Side = _d("IgZWDQw"),
})

penh:Header({
Name = _d("ORxdBBYIRAMHXhU"),
})

penh:Toggle({
Name = _d("MRpFClgPFhEJRUUKAwA"),
Default = false,
Callback = function(zwa)
jkxa.island.autoRod = zwa
jkxa.islandAt = 0
end,
}, _d("GRxdBBYIOxEaRQonHgsU"))

penh:Toggle({
Name = _d("MRpFClgPFhEJRUUZDwcVHEIKChU"),
Default = false,
Callback = function(jeii)
jkxa.island.autoAcc = jeii
jkxa.islandAt = 0
end,
}, _d("GRxdBBYIOxEaRQonDQcTCkIWFx4d"))

penh:Toggle({
Name = _d("NR5EDAhMBRMMVBYLAxYJ"),
Default = false,
Callback = function(dexy)
jkxa.island.equipAcc = dexy
jkxa.islandAt = 0
end,
}, _d("GRxdBBYIOxUeRAwIMwUTDFQWCwMWCQ"))

local plt

plt = penh:Paragraph({
Header = _d("ORxdBBYIRBcKUBc"),
Body = jkxa.shopIsland.text(),
})

local og = eu:Section({
Side = _d("PApXEQ"),
})

og:Header({
Name = _d("IgpTDAoYDA"),
})

jkxa.rebirthToggle = og:Toggle({
Name = _d("MRpFClgeARIGQxEQ"),
Default = false,
Callback = function(mthi)
jkxa.autoRebirth = mthi
end,
}, _d("ERpFCiceARIGQxEQ"))

jkxa.rebirthParagraph = og:Paragraph({
Header = _d("IxtQEQ0f"),
Body = jkxa.rebirthText(),
})

og:Button({
Name = _d("JD8RERdMDQMDUAsc"),
Callback = function()
if not jkxa.gotoIsland() then
ww:Notify({
Title = _d("MQ1QCxwDChULESwLAAUeCw"),
Description = _d("MwdQFxkPEBUdEQwLTAofGxEXHQ0ACU9IAAxMSVAbQxxYDQMRBl9FEQJEEU9cChUJCgRB"),
Lifetime = 5,
})
end
end,
})

local dox

dox = og:Toggle({
Name = _d("MRpFClglFxwOXwFYJAUCC1IKCgk"),
Default = false,
Callback = function(fdjt)
mvb.island = fdjt
mvb.pending = false
mvb.pendingUntil = 0
mvb.paused = false
mvb.gaveUp = false
mvb.stoodDown = false
mvb.manualPause = false

if not fdjt then
return
end

if hu.otherTowerOn(_d("GA5DARsDFhU")) then
mvb.island = false

pcall(function()
dox:UpdateState(false)
end)

pcall(function()
ww:Dialog({
Title = _d("MRpFClglFxwOXwFYJAUCC1IKCglEHwlX"),
Description = _d("JAdURTANCBwARgAdAkQEAEYACkwNA09QCQoJBRQWERcNAgoZAVZJWA0KFE9GDAwERB8BVEULAAsET0UNHUwDEQJURRcCCAlPQxAWH0QfAVRFEQICGQFYER1MFh8AXEUZGEQRT0UMFQlKUDtEFxZMEBgORUUXCgJcT14XWBgRAgERChZMJQUbXkUrAAsET0IKWAkFEwcRERcbAQJPVgAMH0QZG0JFFxsKUBxdCgxC"),
Buttons = {
{
Name = _d("NwBFRREY"),
},
},
})
end)

return
end

if hu.enabled and hu.hardcoreSlot() == nil then
mvb.island = false

pcall(function()
dox:UpdateState(false)
end)

pcall(function()
ww:Dialog({
Title = _d("MRpFClglFxwOXwFYJAUCC1IKCglEHwlX"),
Description = _d("PgARFhQDEFAGQkULCRBQG15FGUwQHxhUF1RMBR4LEREQCUQXDlwAWAMKHBYRFgwNFgQcEQRYGAsHCkNFChkKUAlDChVMBVAbXhIdHkQDA14RVkw3FRsRChYJRAQAESwLAAUeCxENGR4AEwBDAFRMCwJPRRAKAkQxGkUKWD8IHxsRCh4KSg"),
Buttons = {
{
Name = _d("NwBFRREY"),
},
},
})
end)

return
end

if not mvb.data then
mvb.island = false

pcall(function()
dox:UpdateState(false)
end)

pcall(function()
ww:Dialog({
Title = _d("MRpFClglFxwOXwFYJAUCC1IKCglEHwlX"),
Description = _d("JAdYFlgOERkDVUUQDRdQAV5FMA0WFAxeFx04CwcKQyEZGAVcT0IKWBgMFU9FCg8JFlccERYMDQMVHBEGGQIKHxsRBx1MFhUOVUUZAgBQDhEXDQJEEw5fCxcYRBIKERYMDRYEClVL"),
Buttons = {
{
Name = _d("NwBFRREY"),
},
},
})
end)

return
end

local dwpt = mvb.remotes.request

if dwpt then
pcall(function()
dwpt:FireServer()
end)
end
end,
}, _d("ERpFCicFFxwOXwEnBAUCC1IKCgk"))

mvb.islandToggle = dox

mvb.islandParagraph = og:Paragraph({
Header = _d("MhpXAws"),
Body = mvb.buffText(),
})

og:Button({
Name = _d("IA5EFh1MLQMDUAscTCwRHVUGFx4B"),
Callback = function()
if mvb.pauseRun then
mvb.pauseRun()
end
end,
})

og:Button({
Name = _d("NwZHAFg5FFAmQgkZAgBQJ1AXHA8LAgo"),
Callback = function()
if mvb.giveUpRun then
mvb.giveUpRun()
end
end,
})

local fwpn = eu:Section({
Side = _d("PApXEQ"),
})

fwpn:Header({
Name = _d("NgZCDRECA1AcWQoI"),
})

fwpn:Toggle({
Name = _d("MRpFClgOEQlPUwALGEQCAFU"),
Default = false,
Callback = function(qswk)
jkxa.shop.autoBuyRod = qswk
jkxa.shopAt = 0
end,
}, _d("ERpFCicOEQkwUwALGDsCAFU"))

fwpn:Toggle({
Name = _d("MRpFClgOEQlPUwALGEQSDlgR"),
Default = false,
Callback = function(zzt)
jkxa.shop.autoBuyBait = zzt
jkxa.shopAt = 0
end,
}, _d("ERpFCicOEQkwUwALGDsSDlgR"))

fwpn:Toggle({
Name = _d("NR5EDAhMBhUcRUUKAwA"),
Default = false,
Callback = function(rps)
jkxa.shop.equipRod = rps
jkxa.shopAt = 0
end,
}, _d("FR5EDAgzBhUcRToKAwA"))

fwpn:Toggle({
Name = _d("NR5EDAhMBhUcRUUaDQ0E"),
Default = false,
Callback = function(rpvo)
jkxa.shop.equipBait = rpvo
jkxa.shopAt = 0
end,
}, _d("FR5EDAgzBhUcRToaDQ0E"))

local tdrx

tdrx = fwpn:Paragraph({
Header = _d("MgpCEVgVCwVPUgQWTAEBGlgV"),
Body = rhsz(),
})
task.spawn(function()
local crq = rvy()
local cdqm = pu()
local chj = rhsz()
local rsox = jkxa.shopIsland.text()

while mbys() do
local ghx = rvy()

if ghx ~= crq then
crq = ghx
pcall(function()
qhmm:UpdateBody(ghx)
end)
end

local tpry = pu()

if tpry ~= cdqm then
cdqm = tpry
pcall(function()
ctzc:UpdateBody(tpry)
end)
end

local nuon = rhsz()

if nuon ~= chj then
chj = nuon
pcall(function()
tdrx:UpdateBody(nuon)
end)
end

local twzs = jkxa.shopIsland.text()

if twzs ~= rsox then
rsox = twzs
pcall(function()
plt:UpdateBody(twzs)
end)
end

task.wait(1)
end
end)

task.spawn(function()
while mbys() do

if fi() and os.clock() >= (jkxa.shopAt or 0)
and os.clock() >= (jkxa.islandTripUntil or 0) then
jkxa.shopAt = os.clock() + 1
pcall(mef)
end

if jkxa.shopIsland.active() and os.clock() >= (jkxa.islandAt or 0)
and os.clock() >= math.max(jkxa.shopHoldUntil or 0, jkxa.tpHoldUntil or 0) then
jkxa.islandAt = os.clock() + 2
pcall(jkxa.shopIsland.run)
end

task.wait(1)
end
end)

qqu:Select()

local psfv = qqu:Section({
Side = _d("PApXEQ"),
})

local kcmv = qqu:Section({
Side = _d("IgZWDQw"),
})

local ygje = psfv:Paragraph({
Header = _d("IxtQEQ0f"),
Body = hxb(),
})

psfv:Divider()

bwk.npcToggle = psfv:Toggle({
Name = _d("MRpFClgiNDM"),
Default = false,
Callback = function(eok)

if eok and not bwk.story and #byzr() == 0 then
pcall(function()
bwk.npcToggle:UpdateState(false)
end)

ww:Dialog({
Title = _d("MRpFClgiNDNPXwAdCBdQDhERGR4DFRs"),
Description = _d("IAZSDlgNEFADVAQLGEQfAVRFNjwnUAlDChVMEBgKERIXHggUHBEHHQALB0MRCgpMEAUdX0UXAkQxGkUKWC8LHR9dAAwJRCMbXhcBQkQkB1QXHUwNA09fCgwEDR4IEREXTAIZCFkRWBUBBEE"),
Buttons = {
{
Name = _d("NwBFRREY"),
},
},
})

return
end

bwk.enabled = eok
end,
}, _d("ERpFCicCFBM"))

psfv:Toggle({
Name = _d("Jw5dDlgYC1AhYSY"),
Default = false,
Callback = function(smt)
bwk.walkToNpc = smt
end,
}, _d("Bw5dDicYCy8BQQY"))

psfv:Dropdown({
Name = _d("NAZXAxEPERwbSA"),
Search = false,
Multi = true,
Required = false,
Default = { _d("PgBDCBkA") },
Options = lnyg,
Callback = function(hrtd)
local jzum = {}

if type(hrtd) == _d("BA5TCR0") then
for cu, lcoh in ipairs(lnyg) do
if hrtd[lcoh] then
table.insert(jzum, ccry[lcoh])
end
end
end

if #jzum == 0 then
jzum = { _d("HgBDCBkA") }
end

bwk.difficulties = jzum
end,
}, _d("FAZXAxEPERwbSA"))

psfv:Toggle({
Name = _d("MRpFClg+Cx8CQg"),
Default = false,
Callback = function(nk)
jb.enabled = nk
jb.inBattle = false
jb.pending = false
end,
}, _d("ERpFCiceCx8CQg"))

local hkz = qqu:Section({
Side = _d("PApXEQ"),
})

hkz:Header({
Name = _d("IwNeEQ"),
})

hkz:Paragraph({
Header = _d("OABGRQwEAVAcXQoMH0QHAEMO"),
Body = _d("IwNeEVhdRF1PeAseBQoZG0hFLAMTFR0RTRYDFh0OXUUXHkQ+BlYNDAEFAgoYRRceRDgOXQkXGwEVARExFxsBAkMRFRQZF1AhYSZYDgUEG10AC0wTGApfRQsACwRPA0URH0QSGkIcVmZuIwNeEVheRF1PfzU7H0hQHVAMHB9IUB1eChUfSFAmQgkZAgBQJ1AXHA8LAgofb3IuCwQHERYUAxADT14LWCI0M09TBAwYCBUcC0UMGwtQIWEmWAoBERtEFx0fRBEbEQoWDwFcT1ALHEwFUB1QDBxMBh8cQkUdDQcYQTtvLBsLUBteEh0eRAIaXxZYBRdQG1kAWAMKHBYRFx0KEQMKVUUIDQ0CTxxFMR8IEQFVRTANFhQMXhcdTAseT1MKDAREAwNeEQtMDQNPXgsdTBYFAREECwcBFE9XCgpMEAcGUgBWZm4jA14RC0wLFgkLRRcCAVAcXQoMQEQEAEYACh9EBA5aAFgYEQIBQks"),
})

hu.toggle = hkz:Toggle({
Name = _d("MRpFClg/CB8b"),
Default = false,
Callback = function(ysbh)
if ysbh and hu.role[1] == hu.role[2] and hu.role[1] ~= _d("Hh9S") then
hu.enabled = false

pcall(function()
hu.toggle:UpdateState(false)
end)

ww:Dialog({
Title = _d("MRpFClg/CB8b"),
Description = _d("IwNeEVhdRBEBVUUrAAsETwNFGR4BUA1eERBM") .. hu.roleLabel(1) .. _d("Xk9lDRkYRBkcEQoWCUQCGl9FGR8PFQsRAxceRAQYWAYdQEQDABEKFglEHwkRERAJRAQYXkULAAsEHBENGR9EBAARBx1MFx8CVBEQBQoXT1QJCwlK"),
Buttons = {
{
Name = _d("NwBFRREY"),
},
},
})

return
end

hu.enabled = ysbh

if ysbh then
hu.hasSlot2 = hu.detectSlot2()

if hu.hasSlot2 == false then
ww:Dialog({
Title = _d("MRpFClg/CB8b"),
Description = _d("IwNeEVheRBwAXg4LTAgfDFoAHExJUAZFRRYJARQcEREQCUQ0GlAJWC4FBBtdAFg/CB8bEQIZAQEADkIWVEwLAk94Cx4FChkbVEUqAwsdTwNQSEwHHApQFx0ISFANVAMXHgFQG1kAWB8BEwBfAVgfCB8bEQYZAkQSDkURFAlKUD1eEAwFChdPQhEZFRdQAF9FCwALBE8ARQ0CEBkDEREQCQpe"),
Buttons = {
{
Name = _d("NwBFRREY"),
},
},
})
end
end
end,
}, _d("ERpFCicfCB8b"))

function hu.applyRoles()
if not hu.enabled then
return
end

if hu.role[1] == hu.role[2] and hu.role[1] ~= _d("Hh9S") then
hu.enabled = false

pcall(function()
hu.toggle:UpdateState(false)
end)

pcall(function()
ww:Dialog({
Title = _d("MRpFClg/CB8bEQoeCg"),
Description = _d("IwNeEVhdRBEBVUUrAAsETwNFGR4BUA1eERBM") .. hu.roleLabel(1) .. _d("Xk9lDRkYRBkcEQoWCUQCGl9FGR8PFQsRAxceRAQYWAYdQEQRAVVFERhEEw5fCxcYRAQOWgBYGBMfT0IJFxgXXk9iAAxMCx4KERYUAxBQG15FCwMJFRtZDBYLRBUDQgBW"),
Buttons = {
{
Name = _d("NwBFRREY"),
},
},
})
end)

return
end

local hhct = {}

if hu.towerSlot() ~= 1 and fngx.enabled then
fngx.enabled = false
table.insert(hhct, _d("MRpFClg4CwcKQw"))

pcall(function()
fngx.ui:UpdateState(false)
end)
end

if hu.hardcoreSlot() == nil and mvb.island then
mvb.island = false
table.insert(hhct, _d("MRpFClglFxwOXwFYJAUCC1IKCgk"))

pcall(function()
mvb.islandToggle:UpdateState(false)
end)
end

if hu.halloweenSlot() == nil and mn.run.enabled then
mn.run.enabled = false
table.insert(hhct, _d("MRpFClgkBRwDXhIdCQpQO14SHR4"))

pcall(function()
mn.toggle:UpdateState(false)
end)
end

if #hhct > 0 then
pcall(function()
ww:Dialog({
Title = table.concat(hhct, _d("UA5fAVg")) .. _d("UABXAw"),
Description = _d("PgARFhQDEFAGQkULCRBQG15FDAQFBE9FCg8JFlAOXxxYAQsCCh1FCwNEGRsRDRkIRB4ARg0dHgFQG15FChkKXk92DA4JRBkbEQRYHwgfGxEEHw0NHkMRCgpMEAUdX0U5GRAfT2IJFxhEHwlXSw"),
Buttons = {
{
Name = _d("NwBFRREY"),
},
},
})
end)
end
end

hu.oneDropdown = hkz:Dropdown({
Name = _d("IwNeEVhd"),
Search = false,
Multi = false,
Required = false,

Default = 1,
Options = hu.optionsFor[1],
Callback = function(wthj)
local rpj = type(wthj) == _d("BA5TCR0") and wthj[1] or wthj

if type(rpj) == _d("AxtDDBYL") and hu.roleIds[rpj] then
hu.role[1] = hu.roleIds[rpj]
hu.picked[1] = rpj
end

pcall(function()
hu.oneDropdown:UpdateName(_d("IwNeEVhdRJLvk0U") .. hu.roleLabel(1))
end)

if hu.applyRoles then
hu.applyRoles()
end
end,
}, _d("AwNeESddO0I"))

hu.twoDropdown = hkz:Dropdown({
Name = _d("IwNeEVhe"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = hu.optionsFor[2],
Callback = function(ilu)
local cast = type(ilu) == _d("BA5TCR0") and ilu[1] or ilu

if type(cast) == _d("AxtDDBYL") and hu.roleIds[cast] then
hu.role[2] = hu.roleIds[cast]
hu.picked[2] = cast
end

pcall(function()
hu.twoDropdown:UpdateName(_d("IwNeEVheRJLvk0U") .. hu.roleLabel(2))
end)

if hu.applyRoles then
hu.applyRoles()
end
end,
}, _d("AwNeESdeO0I"))

pcall(function()
hu.oneDropdown:UpdateSelection(_d("JABGAAo"))
end)

pcall(function()
hu.twoDropdown:UpdateSelection(_d("Pj9yRRoNEAQDVBY"))
end)

getgenv().ACBXSlot = hu

local rkb = qqu:Section({
Side = _d("PApXEQ"),
})

rkb:Header({
Name = _d("Ig5YAVgOCwMc"),
})

rkb:Toggle({
Name = _d("MRpFClg+BRkLEScXHxc"),
Default = false,
Callback = function(qmuy)
hntq.enabled = qmuy
hntq.pending = {}
hntq.pendingUntil = {}

if qmuy then
hntq.cleared = {}
end
end,
}, _d("ERpFCiceBRkLbgcXHxc"))

rkb:Toggle({
Name = _d("MRpFClg7BRwEEREXTDYRBlVFOgMXAw"),
Default = false,
Callback = function(zeey)
hntq.walkToBoss = zeey
end,
}, _d("ERpFCicbBRwEbhEXMxYRBlU6GgMXAw"))

local yzp
yzp = rkb:Slider({
Name = _d("Jw5dDlg/FBUKVQ"),
Minimum = 0,
Maximum = 72,
Default = 18,
Precision = 0,
Callback = function(jyzn)
local ybsy = math.floor(jyzn + 0.5)
hntq.walkSpeed = ybsy

if yzp and ybsy ~= jyzn then
yzp:UpdateValue(ybsy)
end
end,
}, _d("Bw5dDicfFBUKVQ"))

rkb:Dropdown({
Name = _d("Ig5YAVgoDRYJWAYNABAJ"),
Search = false,
Multi = true,
Required = false,
Default = { _d("PgBDCBkA") },
Options = jjrx,
Callback = function(rie)
local ghmh = {}

if type(rie) == _d("BA5TCR0") then
for pcv, hfka in ipairs(jjrx) do
if rie[hfka] then
table.insert(ghmh, yee[hfka])
end
end
end

if #ghmh == 0 then
ghmh = { _d("HgBDCBkA") }
end

hntq.difficulties = ghmh
end,
}, _d("Ag5YAScIDRYJWAYNABAJ"))

function hntq.pickedIds(rrgb)
local oay = {}

if type(rrgb) == _d("BA5TCR0") then
for ntkh, aoie in ipairs(vzd) do
if rrgb[aoie] and edm[aoie] then
table.insert(oay, edm[aoie])
end
end
elseif type(rrgb) == _d("AxtDDBYL") and edm[rrgb] then
oay = { edm[rrgb] }
end

return oay
end

rkb:Dropdown({
Name = _d("Ig5YAVguCwMc"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = vzd,
Callback = function(swb)
hntq.picks[1] = hntq.pickedIds(swb)
hntq.cursor[1] = 1
hntq.losses[1] = {}
end,
}, _d("Ag5YAScOCwMc"))

hntq.boss2Dropdown = rkb:Dropdown({
Name = _d("Ig5YAVguCwMcEU0rAAsETwNM"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = vzd,
Callback = function(hly)
hntq.picks[2] = hntq.pickedIds(hly)
hntq.cursor[2] = 1
hntq.losses[2] = {}
end,
}, _d("Ag5YAScOCwMcbhYUAxAvXQ"))

pcall(function()
hntq.boss2Dropdown:SetVisibility(false)
end)

task.spawn(function()
local dwq = nil

while mbys() do
local sce = hu.splitNpc()

if sce ~= dwq then
dwq = sce

local lcyr = hntq.boss2Dropdown

if lcyr then
pcall(function()
lcyr:SetVisibility(sce)
end)
end
end

task.wait(0.5)
end
end)

kcmv:Paragraph({
Header = _d("MRpFClgqDRcHRQ"),
Body = _d("IwpdABsYRB8BVEUXHkQdAEMAWCI0MxwRAwoDCVAbWQBYGwsCA1UWWA4BHABGSw"),
})

for rwjs, hyhr in ipairs(dnq) do
kcmv:Dropdown({
Name = hyhr.name,
Search = true,
Multi = true,
Required = false,
Default = {},
Options = hyhr.options,
Callback = function(chg)
local ybtv = {}

if type(chg) == _d("BA5TCR0") then
if chg.All then
for mxm, eg in ipairs(hyhr.ids) do
table.insert(ybtv, eg)
end
else
for zptb, byow in ipairs(hyhr.options) do
if chg[byow] and hyhr.byName[byow] then
table.insert(ybtv, hyhr.byName[byow])
end
end
end
elseif type(chg) == _d("AxtDDBYL") then
if chg == _d("MQNd") then
for rlt, wxoh in ipairs(hyhr.ids) do
table.insert(ybtv, wxoh)
end
else
ybtv = { hyhr.byName[chg] }
end
end

bwk.selectedByWorld[hyhr.name] = ybtv
end,
}, _d("Hh9SOg") .. hyhr.id)
end

kcmv:Toggle({
Name = _d("MRpFClgvCx0fXQAMCUQjG14XAQ"),
Default = false,
Callback = function(jk)
bwk.story = jk
bwk.battlePending = false
bwk.battlePendingUntil = 0
end,
}, _d("ERpFCicPCx0fXQAMCTsDG14XAQ"))

bwk.storyDropdown = kcmv:Dropdown({
Name = _d("NAZXAxEPERwbWAAL"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = lnyg,
Callback = function(ucy)
local ya = type(ucy) == _d("BA5TCR0") and ucy[1] or ucy

if type(ya) == _d("AxtDDBYL") and ccry[ya] then
bwk.storyDifficulty = ccry[ya]
end
end,
}, _d("FAZXAxEPERwbWAAL"))

pcall(function()
bwk.storyDropdown:UpdateSelection(lnyg[1])
end)

pcall(function()
bwk.storyDropdown:UpdateName(_d("NAZXAxEPERwbWAALTIbwzRE") .. lnyg[1])
end)

kcmv:Paragraph({
Header = _d("OABGRTkZEB9PcgoVHAgVG1RFKxgLAhYREhceDwM"),
Body = _d("NgZWDQwfRBUZVBcBTBcEAEMcWCI0M08cRTYNCRUEEREQHgsFCFlFMR8BGw5YRVVMCx5PRQ0dTAseChEBEQoCGQxECQwVRBENXhMdQEQHAEMOEQIDUBtZAFgNFhUOQkURAkQfHVUACkwFHgsRBhcBDR4IEQcZDw9QHV4QFghEERwRBhcDCBQARgsLTAccClAXVmZuORsRFx0cCBEMVBZYGAwVT1AXHQ1EFB1eFRwDEx4cERIQBQgVT1gRWAUXUABfSVgNChRPXQAZGgEDT0MEEQhEEgBCFh0fRBEDXgsdQg"),
})

local vpn = zdl:Section({
Side = _d("PApXEQ"),
})

vpn:Header({
Name = _d("JABGAAo"),
})

local knu
local ounu

local yhw = {
remotes = {},
watcher = false,
hidMenu = false,

hardWatch = {},
}

pcall(function()
local qrfs = getgenv().ACBXHardWatch

if type(qrfs) == _d("BA5TCR0") then
for zwx, fuv in pairs(qrfs) do
pcall(function()
if fuv.Connected then
fuv:Disconnect()
end
end)
end
end

getgenv().ACBXHardWatch = yhw.hardWatch
end)

function yhw.hardPick(rld)
rld = rld == true

for ob, co in ipairs({ _d("Mg5FERQJIwUG"), _d("Mg5FERQJIwUGAw") }) do
local uh = kdoz:FindFirstChild(co)

if uh then
if uh:GetAttribute(_d("JABGAAokBQILYQwbBw")) ~= rld then
pcall(function()
uh:SetAttribute(_d("JABGAAokBQILYQwbBw"), rld)
end)
end

if uh:GetAttribute(_d("JABGAAokBQILYxAW")) ~= nil and uh:GetAttribute(_d("JABGAAokBQILYxAW")) ~= rld then
pcall(function()
uh:SetAttribute(_d("JABGAAokBQILYxAW"), rld)
end)
end
end
end
end

function yhw.pinMode()
if not (fngx.enabled or fngx.nightmare) then
return
end

local bnhh = fngx.nightmare == true

for nie, ktui in ipairs({ _d("Mg5FERQJIwUG"), _d("Mg5FERQJIwUGAw") }) do
local nlib = kdoz:FindFirstChild(ktui)

if nlib then
if nlib:GetAttribute(_d("JABGAAokBQILYQwbBw")) ~= bnhh then
pcall(function()
nlib:SetAttribute(_d("JABGAAokBQILYQwbBw"), bnhh)
end)
end

local pkt = yhw.hardWatch[nlib]

if pkt and pkt.Connected == false then
yhw.hardWatch[nlib] = nil
pkt = nil
end

if pkt == nil then
local apwv, fhb = pcall(function()
return bwkv(nlib:GetAttributeChangedSignal(_d("JABGAAokBQILYQwbBw")), function()
if not (fngx.enabled or fngx.nightmare) then
return
end

local onp = fngx.nightmare == true

if nlib.Parent and nlib:GetAttribute(_d("JABGAAokBQILYQwbBw")) ~= onp then
pcall(function()
nlib:SetAttribute(_d("JABGAAokBQILYQwbBw"), onp)
end)
end
end)
end)

if apwv then
yhw.hardWatch[nlib] = fhb
end
end
end
end
end

function yhw.pauseRows()
local hgps = pl:FindFirstChild(_d("IANQHB0eIwUG")) and pl.PlayerGui:FindFirstChild(_d("IwpFERECAwMoRAw"))

if not hgps then
return nil, nil
end

return hgps:FindFirstChild(_d("IA5EFh0lChYGXwwMCS0eH0QR"), true), hgps:FindFirstChild(_d("IA5EFh0lChYGXwwMCScYClIO"), true)
end

function yhw.pauseState()
local jxtg = pl:FindFirstChild(_d("IANQHB0eIwUG")) and pl.PlayerGui:FindFirstChild(_d("IwpFERECAwMoRAw"))
local spe = jxtg and jxtg:FindFirstChild(_d("NwpFNh0YEBkBVhY"), true)

if not spe then
return nil
end

local vsa, ovsh = pcall(function()
return spe:Invoke()
end)

if vsa and type(ovsh) == _d("BA5TCR0") then
return ovsh.pauseInfiniteEnabled == true
end

return nil
end

function yhw.pauseAt(xndl, nfc)
nfc = math.max(1, math.floor(tonumber(nfc) or 1))

local aas, dopq = yhw.pauseRows()

if not (aas and dopq) then
return false
end

local ohq = pcall(function()
if tonumber(aas.Text) ~= nfc then
aas.Text = tostring(nfc)

if getconnections then
for teo, ul in ipairs(getconnections(aas.FocusLost)) do
pcall(function()
ul:Fire(true, Enum.UserInputType.Focus)
end)
end
end
end
end)

if xndl ~= nil then
local shz = yhw.pauseState()

if shz ~= nil and shz ~= xndl and getconnections then
pcall(function()
for hlk, tene in ipairs(getconnections(dopq.MouseButton1Click)) do
pcall(function()
tene:Fire()
end)
end
end)
end
end

return ohq
end

function yhw.restorePause()
zg.triggered = false

if zg.enabled and zg.floor > 0 then
yhw.pauseAt(true, zg.floor)

pcall(function()
rd.SaveClientData:FireServer({
pauseInfiniteEnabled = true,
pauseInfiniteAt = zg.floor,
})
end)

return
end

pcall(function()
rd.SaveClientData:FireServer({
pauseInfiniteEnabled = false,
pauseInfiniteAt = 1,
})
end)

yhw.pauseAt(false, 1)
end

function yhw.remote(oub)
local xxgb = yhw.remotes[oub]

if xxgb and xxgb.Parent then
return xxgb
end

local mhx = bzz:FindFirstChild(_d("IgpcCgwJFw"))
local eoxf = mhx and mhx:FindFirstChild(oub)

if eoxf then
yhw.remotes[oub] = eoxf
end

return eoxf
end

function yhw.historyOpen()
for dagv, wbu in ipairs({ _d("Mg5FERQJIwUG"), _d("Mg5FERQJIwUGAw") }) do
local rcss = kdoz:FindFirstChild(wbu)
local qsn = rcss and rcss:FindFirstChild(_d("JABGAAokDQMbXhcBKhYRAlQ"))

if qsn and qsn.Visible then
return true
end
end

return false
end

function yhw.generationOpen()
local toje = kdoz:FindFirstChild(_d("JABGAAo+AQMaXRE/GQ0"))
local eyv = toje and toje:FindFirstChild(_d("IgpCEBQYIgIOXAA"))

return eyv ~= nil and eyv.Visible
end

function yhw.standDown(jf)
if not yhw.hidMenu then
local kvmm = true

pcall(function()
kvmm = ww:GetState() ~= false
end)

if kvmm then
yhw.hidMenu = true

pcall(function()
ww:SetState(false)
end)
end
end

if yhw.watcher then
return
end

yhw.watcher = true

task.spawn(function()

local ggz = os.clock() + 6

while mbys() and os.clock() < ggz and not jf() do
task.wait(0.2)
end

while mbys() and jf() do
task.wait(0.4)
end

yhw.watcher = false

if yhw.hidMenu then
yhw.hidMenu = false

pcall(function()
ww:SetState(true)
end)
end
end)
end

fngx.floorAt = 0
fngx.battleAt = 0
fngx.floor = nil
fngx.manualPause = false

task.spawn(function()
local dszu = az(_d("Mg5FERQJMQALUBEd"))
local pvgr = az(_d("IxZfBiwDExUddwkXAxY"))
local lrd = az(_d("Mg5FERQJIR4L"))
local ucgz = az(_d("JABGAAo+ER4qXwEdCA"))

if dszu then
bwkv(dszu.OnClientEvent, function()
fngx.battleAt = os.clock()
end)
end

if pvgr then
bwkv(pvgr.OnClientEvent, function(aca)
fngx.floorAt = os.clock()

if type(aca) == _d("HhpcBx0e") and aca > 1 then
fngx.floor = aca
else
fngx.floor = nil
end
end)
end

if lrd then
bwkv(lrd.OnClientEvent, function(umx)
if type(umx) == _d("BA5TCR0") and umx.mode == _d("BABGAAo") then
fngx.floorAt = os.clock()
end
end)
end

if ucgz then
bwkv(ucgz.OnClientEvent, function()

fngx.lastRunEnded = {
clock = os.clock(),
floor = fngx.floor,
}

task.delay(1, function()
local gzo = kdoz:FindFirstChild(_d("JABGAAo+AQMaXRE/GQ0"))
local jax = gzo and gzo:FindFirstChild(_d("IgpCEBQYIgIOXAA"))
local djn = {}

if jax then
for is, nmj in ipairs(jax:GetDescendants()) do
if nmj:IsA(_d("JApJETQNBhUD")) and nmj.Visible and nmj.Text ~= _d("") and #djn < 12 then
djn[#djn + 1] = nmj.Text
end
end
end

if fngx.lastRunEnded then
fngx.lastRunEnded.texts = table.concat(djn, _d("UBMR"))
end
end)

fngx.floorAt = 0
fngx.battleAt = 0
fngx.floor = nil

if fngx.manualPause then
yhw.restorePause()
end
end)
end

end)

local function houj()
local ylhu = os.clock()

if ylhu - (fngx.floorAt or 0) < 90 and ylhu - (fngx.battleAt or 0) < 12 then
return true
end

for tlqm, jnwq in ipairs({ _d("Mg5FERQJIwUG"), _d("Mg5FERQJIwUGAw") }) do
local olp = kdoz:FindFirstChild(jnwq)

if olp then

local tbke = olp:FindFirstChild(_d("JABGAAoqCB8AQykZDgEc"))

if tbke and tbke.Visible then
return true
end

local wje = olp:FindFirstChild(_d("NgNeCgo/BwIKVAs"))

if wje and wje.Visible then
return true
end

local lrty = olp:FindFirstChild(_d("Mg5FERQJNxMdVAAW"))

if lrty and lrty.Visible then
local eqsr = lrty:FindFirstChild(_d("IRpYBhMrDQYKZBU6GRAEAF8"))

if eqsr and eqsr.Visible then
return true
end
end
end
end

return false
end

function yhw.hardNow()

local wbpl = kdoz:FindFirstChild(_d("Mg5FERQJIwUG"))
local cev = wbpl and wbpl:GetAttribute(_d("JABGAAokBQILYQwbBw"))

if cev ~= nil then
return cev == true
end

local ggzs = hntq.misc.util.profile

return type(ggzs) == _d("BA5TCR0") and ggzs.lastTowerHard == true
end

function yhw.endIfWrongMode(sqye)
if not houj() or yhw.hardNow() == (sqye == true) then
return false
end

pcall(function()
if type(ounu) == _d("FhpfBgwFCx4") then
ounu()
else
rd.EndTowerRemote:FireServer(1)
end
end)

fngx.floor = nil

return true
end

function yhw.hardPickNow()
for wfm, pyh in ipairs({ _d("Mg5FERQJIwUG"), _d("Mg5FERQJIwUGAw") }) do
local lvvy = kdoz:FindFirstChild(pyh)
local ren = lvvy and lvvy:GetAttribute(_d("JABGAAokBQILYQwbBw"))

if ren ~= nil then
return ren == true
end
end

return nil
end

function yhw.parked()
for bgjn, ojgd in ipairs({ _d("Mg5FERQJIwUG"), _d("Mg5FERQJIwUGAw") }) do
local ywi = kdoz:FindFirstChild(ojgd)

if ywi then
local gmc = ywi:FindFirstChild(_d("JABGAAoqCB8AQykZDgEc"))
local dgfb = ywi:FindFirstChild(_d("NgNeCgo/BwIKVAs"))
local igxc = ywi:FindFirstChild(_d("Mg5FERQJNxMdVAAW"))

if gmc and gmc.Visible
and not (dgfb and dgfb.Visible)
and not (igxc and igxc.Visible) then
return true
end
end
end

return false
end

fngx.ui = vpn:Toggle({
Name = _d("MRpFClg4CwcKQw"),
Default = false,
Callback = function(baw)

if fngx.quiet then
return
end

fngx.enabled = baw
fngx.pending = false
fngx.pendingUntil = 0

if baw then

if hu.enabled and hu.role[1] ~= _d("BABGAAo") then
fngx.enabled = false

pcall(function()
fngx.ui:UpdateState(false)
end)

pcall(function()
ww:Dialog({
Title = _d("MRpFClg4CwcKQ0UXCgI"),
Description = _d("IwNeEVhdRBkcERYdGEQEABE") .. hu.roleName(1) .. _d("Xk9lDR1MLR4JWAsRGB1QLFAWDAABUABfCQFMFwQOQxELTAseT0IJFxhEQUMRFhdMFxUbETYUAxBQXhERF0wwHxhUF1gKDQIcRUs"),
Buttons = {
{
Name = _d("NwBFRREY"),
},
},
})
end)

return
end

if hu.otherTowerOn(_d("BABGAAo")) then
fngx.enabled = false

pcall(function()
fngx.ui:UpdateState(false)
end)

pcall(function()
ww:Dialog({
Title = _d("MRpFClg4CwcKQ0UXCgI"),
Description = _d("MQFeERAJFlAbXhIdHkQRGkUKFQ0QGQBfRREfRBEDQwAZCB1QAF9JWA0KFE9FDREfRBEMUgoNAhBQAF8JAUwFHANeEgtMCx4KEREXGwECT0MQFkwFBE9QRQwFCRVBETENHgpQG1kEDEwLHgoRCh4KRBYGQxYMQEQfHRERDR4KUABfRTkZEB9PYgkXGEQDABEAGQ8MUBxdCgxMAxUbQkURGBdQAEYLWBgLBwpDSw"),
Buttons = {
{
Name = _d("NwBFRREY"),
},
},
})
end)

return
end

fngx.nightmare = false

pcall(function()
fngx.quiet = true
fngx.nightmareToggle:UpdateState(false)
fngx.quiet = false
end)

fngx.manualPause = false
fngx.paused = false
yhw.restorePause()
fngx.pauseArmed = false

yhw.endIfWrongMode(false)
yhw.hardPick(false)

return
end

if not houj() then
return
end

fngx.paused = true
local yibx = knu()

ww:Notify({
Title = _d("MRpFClg4CwcKQ0UXCgI"),
Description = yibx and _d("JABGAApMFgUBERUZGRcVCx8") or _d("IhpfRREfRBwGRwBUTAYFGxELF0wGAgpQDlgOEQQbXgtYCgsFAVVL"),
Lifetime = 5,
})
end,
}, _d("ERpFCicYCwcKQw"))

fngx.nightmareToggle = vpn:Toggle({
Name = _d("MRpFClgiDRcHRQgZHgFQO14SHR4"),
Default = false,
Callback = function(kana)
if fngx.quiet then
return
end

fngx.nightmare = kana

if not kana then

fngx.enabled = false
fngx.pending = false
fngx.pendingUntil = 0

yhw.hardPick(false)

pcall(function()
fngx.quiet = true
fngx.ui:UpdateState(false)
fngx.quiet = false
end)

if houj() then
fngx.paused = true
local ouhg = knu()

ww:Notify({
Title = _d("MRpFClgiDRcHRQgZHgFQO14SHR5EHwlX"),
Description = ouhg and _d("PgZWDQwBBQIKERcNAkQADkQWHQhK") or _d("IhpfRREfRBwGRwBUTAYFGxELF0wGAgpQDlgOEQQbXgtYCgsFAVVL"),
Lifetime = 5,
})
end

return
end

if hu.enabled and hu.role[1] ~= _d("BABGAAo") then
fngx.nightmare = false

pcall(function()
fngx.quiet = true
fngx.nightmareToggle:UpdateState(false)
fngx.quiet = false
end)

pcall(function()
ww:Dialog({
Title = _d("MRpFClgiDRcHRQgZHgFQO14SHR5EHwlX"),
Description = _d("PgZWDQwBBQIKETEXGwECT1IKDQIQA09QFlg4CwcKQ0URAkQDA14RWF1IUA5fAVgVCwUdERYUAxBQXhEMC0wLHk8") .. hu.roleName(1) .. _d("UB1YAhAYRB4ARktYPwEET0IJFxhEQU9FClg4CwcKQ0UeBRYDGx8"),
Buttons = {
{
Name = _d("NwBFRREY"),
},
},
})
end)

return
end

pcall(function()
fngx.quiet = true
fngx.ui:UpdateState(false)
fngx.quiet = false
end)

fngx.enabled = true
fngx.manualPause = false
fngx.paused = false

yhw.restorePause()
fngx.pauseArmed = false

yhw.endIfWrongMode(true)
yhw.hardPick(true)

fngx.pending = false
fngx.pendingUntil = 0
end,
}, _d("ERpFCicCDRcHRQgZHgEvG14SHR4"))

vpn:Header({
Name = _d("MRpFClg8BQUcVEUsAxMVHQ"),
})

local pkbh

pkbh = vpn:Toggle({
Name = _d("MRpFClg8BQUcVEU+AAsfHQ"),
Default = false,
Callback = function(dkup)
zg.triggered = false

if dkup and zg.floor <= 0 then
zg.enabled = false

pcall(function()
pkbh:UpdateState(false)
end)

pcall(function()
rd.SaveClientData:FireServer({ pauseInfiniteEnabled = false })
end)

ww:Dialog({
Title = _d("MRpFClg8BQUcVEU+AAsfHQ"),
Description = _d("IwpFRRlMFBEaQgBYCggfAENFGQ4LBgoRVVgKDQIcRUVVTCUFG15FKA0RAwoRMRcbAQJPXwAdCBdQG15FEwILB09GDR0eAVAbXkULGAsAQQ"),
Buttons = {
{
Name = _d("NwBFRREY"),
},
},
})

return
end

zg.enabled = dkup

pcall(function()
rd.SaveClientData:FireServer({
pauseInfiniteEnabled = dkup,
pauseInfiniteAt = zg.floor,
})
end)
end,
}, _d("ERpFCiccBQUcVDoeAAsfHQ"))

vpn:Input({
Name = _d("IA5EFh1MBQRPVwkXAxY"),
Placeholder = _d("FUFWS1hZVA"),
AcceptedCharacters = _d("PhpcBx0eFw"),
Callback = function(padn)
local xei = tonumber(padn) or 0

if xei < 0 then
xei = 0
end

if xei == zg.floor then
return
end

zg.floor = xei
zg.triggered = false

if xei <= 0 and zg.enabled then
zg.enabled = false

pcall(function()
pkbh:UpdateState(false)
end)
end

pcall(function()
rd.SaveClientData:FireServer({
pauseInfiniteAt = xei,
pauseInfiniteEnabled = zg.enabled,
})
end)
end,
}, _d("AA5EFh0zBQQwVwkXAxY"))

vpn:Button({
Name = _d("IA5EFh1MMB8YVBc"),
Callback = function()
local seu = false

pcall(function()
seu = knu()
end)

if seu then

fngx.manualPause = true
return
end

ww:Dialog({
Title = _d("IA5EFh1MMB8YVBc"),
Description = _d("PgARCREaAVAbXhIdHkQCGl9FDANEAA5EFh1MFhkIWRFYAgsHQQ"),
Buttons = {
{
Name = _d("NwBFRREY"),
},
},
})
end,
})

vpn:Header({
Name = _d("MRpFClgrDQYKETAI"),
})

plcw.toggle = vpn:Toggle({
Name = _d("MRpFClgrDQYKETAI"),
Default = false,
Callback = function(qbw)
plcw.triggered = false

if qbw and plcw.floor <= 0 then
plcw.enabled = false

pcall(function()
plcw.toggle:UpdateState(false)
end)

ww:Dialog({
Title = _d("MRpFClgrDQYKETAI"),
Description = _d("IwpFRRlMAxkZVEUNHEQWA14KCkwFEgBHAFhcRBYGQxYMTElQLkQRF0wjGRlURS0cRB4KVAELTBAfT1oLFxtEBwdUFx1MEB9PQhEXHEo"),
Buttons = {
{
Name = _d("NwBFRREY"),
},
},
})

return
end

plcw.enabled = qbw
end,
}, _d("ERpFCicLDQYKbhAI"))

vpn:Input({
Name = _d("NwZHAFgZFFAAX0UeAAsfHQ"),
Placeholder = _d("FUFWS1hbVA"),
AcceptedCharacters = _d("PhpcBx0eFw"),
Callback = function(beg)
local qhj = tonumber(beg) or 0

if qhj < 0 then
qhj = 0
end

if qhj == plcw.floor then
return
end

plcw.floor = qhj
plcw.triggered = false

if qhj <= 0 and plcw.enabled then
plcw.enabled = false

pcall(function()
plcw.toggle:UpdateState(false)
end)
end
end,
}, _d("FwZHACcZFC8AXzoeAAsfHQ"))

plcw.weatherToggle = vpn:Toggle({
Name = _d("MRpFClgLDQYKERAITAseT0YAGRgMFR0"),
Default = false,
Callback = function(pdfp)
plcw.weatherTriggered = false

if pdfp and next(plcw.weathers) == nil then
plcw.weatherEnabled = false

pcall(function()
plcw.weatherToggle:UpdateState(false)
end)

ww:Dialog({
Title = _d("JwpQERAJFlAoWBMdTDEA"),
Description = _d("JAZSDlgNEFADVAQLGEQfAVRFDwkFBAdUF1gOARwARkUeBRYDGxFIWAMQGApDEhEfAVAbWQAKCUQZHBELFxgMGQFWRQwDRBcGRwBYGRRQAF9L"),
Buttons = {
{
Name = _d("NwBFRREY"),
},
},
})

return
end

plcw.weatherEnabled = pdfp
end,
}, _d("ERpFCicLDQYKbhAIMwseMEYAGRgMFR0"))

vpn:Dropdown({
Name = _d("NwZHAFgZFFAYVAQMBAECHA"),
Multi = true,
Required = false,
Options = { _d("JBZBDRcDCg"), _d("MgNYHwINFhQ"), _d("PAZWDQwCDR4I"), _d("JwZfAQsYCwIC"), _d("IwdQFxECAxEB"), _d("IwZfAg0ABQIGRRw"), _d("PQBfBAoPDFArXggZBQo"), _d("JgBYAQ"), _d("PQ5VAFgFClAnVAQOCQo"), _d("PQ5fAhk") },
Callback = function(zly)
plcw.weathers = {}

if type(zly) == _d("BA5TCR0") then
for uxc, rsoy in pairs(zly) do
if rsoy then
plcw.weathers[uxc] = true
end
end
end

plcw.weatherTriggered = false
end,
}, _d("FwZHACcZFC8YVAQMBAECHA"))

vpn:Input({
Name = _d("PQZfDBUZCVAJXQoXHhc"),
Placeholder = _d("QE8MRRkCHVAJXQoXHg"),
AcceptedCharacters = _d("PhpcAAoFBw"),
Callback = function(dj)
local losl = math.floor(tonumber(dj) or 0)

if losl < 0 then
losl = 0
end

plcw.weatherMinFloor = losl
plcw.weatherTriggered = false
end,
}, _d("HQZfDBUZCS8JXQoXHhc"))

plcw.weatherLateToggle = vpn:Toggle({
Name = _d("NwZHAFgZFFAYWBEQTFZAHBEJHQoQ"),
Default = false,
Callback = function(fvvi)
plcw.weatherLate = fvvi
plcw.weatherTriggered = false

if fvvi and not plcw.weatherEnabled then
pcall(function()
plcw.weatherToggle:UpdateState(true)
end)
end
end,
}, _d("FwZHACcZFC8DUBEd"))

vpn:Button({
Name = _d("NwZHAFg5FFA7XhIdHg"),
Callback = function()
if not houj() then
ww:Dialog({
Title = _d("NwZHAFg5FFA7XhIdHg"),
Description = _d("PgARCREaAVAbXhIdHkQCGl9FDANEFwZHAFgZFFAdWAIQGEQeAEZL"),
Buttons = {
{
Name = _d("NwBFRREY"),
},
},
})

return
end

ww:Dialog({
Title = _d("NwZHAFg5FFA7XhIdHg"),
Description = _d("NgBDAx0FEFAbWQBYDxECHVQLDEwQHxhUF1geER5QETEQBRdQDFALFgMQUA1URQ0CAB8BVEs"),
Buttons = {
{
Name = _d("NwARBxkPDw"),
},
{
Name = _d("NwZHAFgZFA"),
Callback = function()
local lmvy = false

pcall(function()
lmvy = ounu()
end)

if lmvy then
return
end

task.defer(function()
task.wait(0.3)

ww:Dialog({
Title = _d("NwZHAFg5FFA7XhIdHg"),
Description = _d("PgARAhEaAVAaQUUaGRAEAF9FGQIXBwpDABxMSVAbWQBYHhEeT1wEAUwFHB1UBBwVRBIKEQoOCRZe"),
Buttons = {
{
Name = _d("NwBFRREY"),
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

vpn:Button({
Name = _d("MwdUBhNMCB8cQkUQBRcEAEMc"),
Callback = function()
local yqdg = yhw.remote(_d("IgpAEB0fECQARgAKJA0DG14XAQ"))

if not yqdg then
ww:Dialog({
Title = _d("PABCFlgkDQMbXhcB"),
Description = _d("JAdYFlgOERkDVUUQDRdQAV5FDAMTFR0RDREfEB8dSEUKCQkfG1RL"),
Buttons = {
{
Name = _d("NwBFRREY"),
},
},
})

return
end

yhw.standDown(yhw.historyOpen)

pcall(function()
yqdg:FireServer()
end)
end,
})

vpn:Button({
Name = _d("MwdUBhNMAxUBVBcZGA0fAUI"),
Callback = function()

local xgga = kdoz:FindFirstChild(_d("JABGAAo+AQMaXRE/GQ0"))
local vaul = xgga and xgga:FindFirstChild(_d("Px9UCz8JCjgGQhEXHh0"))

if not vaul then
ww:Dialog({
Title = _d("NwpfAAoNEBkAXxY"),
Description = _d("JAdYFlgOERkDVUUQDRdQAV5FHwkKFR1QEREDCgNPRgwWCAsHQQ"),
Buttons = {
{
Name = _d("NwBFRREY"),
},
},
})

return
end

yhw.standDown(yhw.generationOpen)

pcall(function()
vaul:Fire()
end)
end,
})

bwk.bossTeams.towerSection = zdl:Section({
Side = _d("PApXEQ"),
})

bwk.bossTeams.towerSection:Header({
Name = _d("JABGAApMMBUOXBY"),
})

bwk.bossTeams.towerSection:Paragraph({
Header = _d("OABGRQwDExUdEREdDQkDT0YKCgc"),
Body = _d("PwlXX1gJBRMHERcNAkQFHFQWWBsMERtUEx0eRAQKUAhYBRADT0IJFxhEEQNDABkIHVAHXgkcH0p6ZX4LQkwBEQxZRQwDExUdEQcdAAsHT0MQFh9EBwZFDVgYDBVPRQAZAUQABlIOHQhEFgBDRREYSg"),
})

bwk.bossTeams.towerToggle = bwk.bossTeams.towerSection:Toggle({
Name = _d("JABGAApMMBUOXBY"),
Default = false,
Callback = function(bmkc)
bwk.bossTeams.towersOn = bmkc
end,
}, _d("BABGAAozEBUOXBY"))

for zyp, bdp in ipairs({
{ kind = _d("BABGAAo"), name = _d("OQFXDBYFEAlPcgQLGAgVTx5FNgUDGBtcBAoJ") },
{ kind = _d("GA5DARsDFhU"), name = _d("ORxdBBYIRDgOQwEbAxYV") },
}) do
local zlyx = math.clamp(math.floor(tonumber(bwk.bossTeams.towerPicked[bdp.kind]) or 1), 1, 4)

bwk.bossTeams.towerPicked[bdp.kind] = zlyx

bwk.bossTeams.towerUi[bdp.kind] = bwk.bossTeams.towerSection:Dropdown({
Name = bdp.name,
Search = false,
Multi = false,
Required = false,
Default = zlyx,
Options = { _d("JApQCFhd"), _d("JApQCFhe"), _d("JApQCFhf"), _d("JApQCFhY") },
Callback = function(hk)
local tbdf = type(hk) == _d("BA5TCR0") and hk[1] or hk
local eoa = type(tbdf) == _d("AxtDDBYL") and tonumber(tbdf:match(_d("WEpVTlE"))) or nil

if eoa then
bwk.bossTeams.towerPicked[bdp.kind] = eoa
bwk.bossTeams.save()
end

pcall(function()
bwk.bossTeams.towerUi[bdp.kind]:UpdateName(bdp.name .. _d("UI2xx1g") .. (tbdf or _d("JApQCFhd")))
end)
end,
}, _d("BApQCCcYCwcKQzo") .. bdp.kind)

pcall(function()
bwk.bossTeams.towerUi[bdp.kind]:UpdateSelection(_d("JApQCFg") .. tostring(zlyx))
bwk.bossTeams.towerUi[bdp.kind]:UpdateName(bdp.name .. _d("UI2xx1g4ARECEQ") .. tostring(zlyx))
end)
end

bwk.bossTeams.towerSection:Header({
Name = _d("IxhQFVgDClAJXQoXHg"),
})

bwk.bossTeams.towerSection:Paragraph({
Header = _d("IxhQFVgYARECEQoWTAVQCV0KFx4"),
Body = _d("JAdURR8NCRVIQkUXGwpQHEYECEBEHgBFRRlMFBEaQgBWTCERDFlFChkIFU9YFlgNRBYDXgoKTAUeCxEREAlEBApQCFgbCwIBEQMKAwlQG1kEDEwCHABeF1gDClxPRhcRGBAVAREMFhgLUBtZAFgLBR0KFhZYPwEEG1gLHx9EXVERJA0YC1A7VAQVTDcHDkFFSUwFHgsRV1RMFx9PRQ0dTAMRAlRFFQ0PFRwRERAJRAMYWBEbBEQZG0IAFApEBwdUC1gNRAIaX0ULGAUCG0JFDAQFBE9XCRcDFl5PfwoMBA0eCBEMC0wXBABBFR0IRBEBVUUMBAFQHUQLWAcBFR9CRREYF1AcXQoMQm56LhEGGR8QHAoRFw0CRBcKRRZYGAwVT0IEFQlEAxhYERsERBYdXghYGAwZHBEVGQIBHEMRBx0PBQUcVEUMBAFQCFAIHUsXUABGC1gfExEfEQoWAB1QCVgXHR9EGQFCDBwJRDkBVwwWBRAVT2MKFwEXXmU7KR0NEhVPUEUeAAsfHREEDExUUBteRQwZFh5PRQ0ZGEQCGl0AWAMCFkE"),
})

function bwk.bossTeams.swapStatusText()
local jr = bwk.bossTeams.swap
local iq = {}

if jr.on then
table.insert(iq, _d("PwERSFgbFhkbRQAWTBAfT0UNHUwDEQJUQgtMJQUbXkUsCQUdT2ISGRxEAgBGFlY"))
else
table.insert(iq, _d("PwlXRVVMEBgKEQIZAQFXHBEWDw0UUAZCRRQJAgRPUAkXAgFe"))
end

local agm = {
{ index = 1, floor = jr.floor, team = jr.team },
{ index = 2, floor = jr.floor2, team = jr.team2 },
}

for kxp, kem in ipairs(agm) do
if kem.floor > 0 then
table.insert(iq, string.format(_d("IxhQFVhJAEpPZQAZAURVCxEDCgMJUAldChceRFUL"), kem.index, kem.team, kem.floor))
else
table.insert(iq, string.format(_d("IxhQFVhJAEpPXgMeTEweABEDFAMLAk9CAAxF"), kem.index))
end
end

if bwk.bossTeams.swapMessage ~= _d("") then
table.insert(iq, bwk.bossTeams.swapMessage)
end

return table.concat(iq, _d("eg"))
end

function bwk.bossTeams.paintSwap()
pcall(function()
bwk.bossTeams.swapStatus:UpdateBody(bwk.bossTeams.swapStatusText())
end)
end

bwk.bossTeams.swapToggle = bwk.bossTeams.towerSection:Toggle({
Name = _d("IxhQFVgYARECEQoWTAIcAF4X"),
Default = bwk.bossTeams.swap.on,
Callback = function(zhr)
bwk.bossTeams.swap.on = zhr

bwk.bossTeams.swapReset()

bwk.bossTeams.swapApply()
bwk.bossTeams.save()
end,
}, _d("AxhQFScYARECbgoWMwIcAF4X"))

bwk.bossTeams.swapInput = bwk.bossTeams.towerSection:Input({
Name = _d("NgNeCgo"),
Placeholder = _d("FUFWS1hZVEBPGVVYUUQfCVdM"),
AcceptedCharacters = _d("PhpcAAoFBw"),
Callback = function(pfaa)
local gydx = tonumber(type(pfaa) == _d("AxtDDBYL") and pfaa:match(_d("WEpVTlE")) or pfaa)

if gydx then
bwk.bossTeams.swap.floor = gydx
bwk.bossTeams.swapReset()
bwk.bossTeams.swapApply()
bwk.bossTeams.save()
end
end,
}, _d("FgNeCgo"))

bwk.bossTeams.swapDropdown = bwk.bossTeams.towerSection:Dropdown({
Name = _d("IxhQFVgYCw"),
Search = false,
Multi = false,
Required = false,
Default = math.clamp(math.floor(tonumber(bwk.bossTeams.swap.team) or 1), 1, 4),
Options = { _d("JApQCFhd"), _d("JApQCFhe"), _d("JApQCFhf"), _d("JApQCFhY") },
Callback = function(sps)
local cxd = type(sps) == _d("BA5TCR0") and sps[1] or sps
local zf = type(cxd) == _d("AxtDDBYL") and tonumber(cxd:match(_d("WEpVTlE"))) or nil

if zf then
bwk.bossTeams.swap.team = zf
bwk.bossTeams.swapReset()
bwk.bossTeams.swapApply()
bwk.bossTeams.save()
end

pcall(function()
bwk.bossTeams.swapDropdown:UpdateName(_d("IxhQFVgYC1CNscdY") .. (cxd or _d("JApQCFhd")))
end)

bwk.bossTeams.paintSwap()
end,
}, _d("AxhQFScYCw"))

bwk.bossTeams.swapInput2 = bwk.bossTeams.towerSection:Input({
Name = _d("NgNeCgpMVg"),
Placeholder = _d("FUFWS1hdVEBfEU1ITFlQAFcDUQ"),
AcceptedCharacters = _d("PhpcAAoFBw"),
Callback = function(xchg)
local uyl = tonumber(type(xchg) == _d("AxtDDBYL") and xchg:match(_d("WEpVTlE")) or xchg)

if uyl then
bwk.bossTeams.swap.floor2 = uyl
bwk.bossTeams.swapReset()
bwk.bossTeams.swapApply()
bwk.bossTeams.save()
end
end,
}, _d("FgNeCgozVg"))

bwk.bossTeams.swapDropdown2 = bwk.bossTeams.towerSection:Dropdown({
Name = _d("IxhQFVgYC1Bd"),
Search = false,
Multi = false,
Required = false,
Default = math.clamp(math.floor(tonumber(bwk.bossTeams.swap.team2) or 1), 1, 4),
Options = { _d("JApQCFhd"), _d("JApQCFhe"), _d("JApQCFhf"), _d("JApQCFhY") },
Callback = function(jrq)
local oiaq = type(jrq) == _d("BA5TCR0") and jrq[1] or jrq
local diq = type(oiaq) == _d("AxtDDBYL") and tonumber(oiaq:match(_d("WEpVTlE"))) or nil

if diq then
bwk.bossTeams.swap.team2 = diq
bwk.bossTeams.swapReset()
bwk.bossTeams.swapApply()
bwk.bossTeams.save()
end

pcall(function()
bwk.bossTeams.swapDropdown2:UpdateName(_d("IxhQFVgYC1BdEYf4zkQ") .. (oiaq or _d("JApQCFhd")))
end)

bwk.bossTeams.paintSwap()
end,
}, _d("AxhQFScYCy9d"))

bwk.bossTeams.swapStatus = bwk.bossTeams.towerSection:Paragraph({
Header = _d("IxhQFVgfEBEbRBY"),
Body = bwk.bossTeams.swapStatusText(),
})

pcall(function()
local ghgu = math.clamp(math.floor(tonumber(bwk.bossTeams.swap.team) or 1), 1, 4)
local cytb = math.clamp(math.floor(tonumber(bwk.bossTeams.swap.team2) or 1), 1, 4)

bwk.bossTeams.swapDropdown:UpdateSelection(_d("JApQCFg") .. tostring(ghgu))
bwk.bossTeams.swapDropdown:UpdateName(_d("IxhQFVgYC1CNscdYOAERAhE") .. tostring(ghgu))
bwk.bossTeams.swapDropdown2:UpdateSelection(_d("JApQCFg") .. tostring(cytb))
bwk.bossTeams.swapDropdown2:UpdateName(_d("IxhQFVgYC1BdEYf4zkQkClAIWA") .. tostring(cytb))
end)

task.spawn(function()
local wbqi = bwk.bossTeams.swapStatusText()

while mbys() do
local wrnl = bwk.bossTeams.swapStatusText()

if wrnl ~= wbqi then
wbqi = wrnl
bwk.bossTeams.paintSwap()
end

task.wait(2)
end
end)

if bwk.bossTeams.swap.on then
task.delay(2, function()
pcall(bwk.bossTeams.swapApply)
end)
end

bwk.bossTeams.section = zdl:Section({
Side = _d("IgZWDQw"),
})

bwk.bossTeams.section:Header({
Name = _d("MgBCFlg4ARECQg"),
})

bwk.bossTeams.section:Paragraph({
Header = _d("OABGRRoDFwNPRQAZARdQGF4XEw"),
Body = _d("PwlXX1gCCwQHWAsfTA0DT0ISERgHGApVRVVMAQYKQxxYCg0XB0VFDR8BA09FDR1MEBUOXEUBAxFQDl0XHQ0ACU9ZBA4JRBwGXwAcTBEAQxESEAUHGE9YFlgYDBVPYgkXGERBT0UAGQFEBQFdAAsfRAMDXhFYXkQEDloAC0wQGAoRBxkYEBwKH29yIwpKT1QEGwREER1UBFgOARwARkUeBQMYG0JFDwUQGE9FDR1MEBUOXEUBAxFQH1gGE0wCHx0RDAxC"),
})

bwk.bossTeams.toggle = bwk.bossTeams.section:Toggle({
Name = _d("MgBCFlg4ARECQg"),
Default = false,
Callback = function(uoy)
bwk.bossTeams.enabled = uoy
end,
}, _d("EgBCFicYARECQg"))

for sxu, rgy in ipairs(dnq) do
local ti = bwk.bossTeams.picked[rgy.id] or 1

ti = math.clamp(math.floor(tonumber(ti) or 1), 1, 4)
bwk.bossTeams.picked[rgy.id] = ti

bwk.bossTeams.ui[rgy.id] = bwk.bossTeams.section:Dropdown({
Name = rgy.name,
Search = false,
Multi = false,
Required = false,

Default = ti,
Options = { _d("JApQCFhd"), _d("JApQCFhe"), _d("JApQCFhf"), _d("JApQCFhY") },
Callback = function(tpkb)
local trrz = type(tpkb) == _d("BA5TCR0") and tpkb[1] or tpkb
local ntdf = type(trrz) == _d("AxtDDBYL") and tonumber(trrz:match(_d("WEpVTlE"))) or nil

if ntdf then
bwk.bossTeams.picked[rgy.id] = ntdf

bwk.bossTeams.save()
end

pcall(function()
bwk.bossTeams.ui[rgy.id]:UpdateName(rgy.name .. _d("UI2xx1g") .. (trrz or _d("JApQCFhd")))
end)
end,
}, _d("BApQCCcbCwIDVTo") .. rgy.id)

pcall(function()
bwk.bossTeams.ui[rgy.id]:UpdateSelection(_d("JApQCFg") .. tostring(ti))
bwk.bossTeams.ui[rgy.id]:UpdateName(rgy.name .. _d("UI2xx1g4ARECEQ") .. tostring(ti))
end)
end

bwk.bossTeams.raidSection = zdl:Section({
Side = _d("IgZWDQw"),
})

bwk.bossTeams.raidSection:Header({
Name = _d("Ig5YAVg4ARECQg"),
})

bwk.bossTeams.raidSection:Paragraph({
Header = _d("OABGRQoNDRRPRQAZARdQGF4XEw"),
Body = _d("PwlXX1geBRkLQkUNHwFQGFkEDAkSFR0RER0NCVAbWQBYHwgfGxEEFB4BEQtIRRADCBQcH29yIwpKT1QEGwREAg5YAVgOARwARkURH0QWAEQCEBhEBwZFDVgYDBVPRQAZAUQABlIOHQhEFgBDRREYSg"),
})

bwk.bossTeams.raidToggle = bwk.bossTeams.raidSection:Toggle({
Name = _d("Ig5YAVg4ARECQg"),
Default = false,
Callback = function(tys)
bwk.bossTeams.raidsOn = tys
end,
}, _d("Ag5YAScYARECQg"))

for zpbp, almf in ipairs(oon.Raids) do
if almf.BossTitle and almf.id then
local khd = bwk.bossTeams.raidPicked[almf.id] or 1

khd = math.clamp(math.floor(tonumber(khd) or 1), 1, 4)
bwk.bossTeams.raidPicked[almf.id] = khd

bwk.bossTeams.raidUi[almf.id] = bwk.bossTeams.raidSection:Dropdown({
Name = almf.BossTitle,
Search = false,
Multi = false,
Required = false,
Default = khd,
Options = { _d("JApQCFhd"), _d("JApQCFhe"), _d("JApQCFhf"), _d("JApQCFhY") },
Callback = function(foc)
local fkf = type(foc) == _d("BA5TCR0") and foc[1] or foc
local zj = type(fkf) == _d("AxtDDBYL") and tonumber(fkf:match(_d("WEpVTlE"))) or nil

if zj then
bwk.bossTeams.raidPicked[almf.id] = zj
bwk.bossTeams.save()
end

pcall(function()
bwk.bossTeams.raidUi[almf.id]:UpdateName(almf.BossTitle .. _d("UI2xx1g") .. (fkf or _d("JApQCFhd")))
end)
end,
}, _d("BApQCCceBRkLbg") .. almf.id)

pcall(function()
bwk.bossTeams.raidUi[almf.id]:UpdateSelection(_d("JApQCFg") .. tostring(khd))
bwk.bossTeams.raidUi[almf.id]:UpdateName(almf.BossTitle .. _d("UI2xx1g4ARECEQ") .. tostring(khd))
end)
end
end

task.spawn(function()
local aqvl = hxb()

while mbys() do
local lqv = hxb()

if hu.enabled and hu.statusText then
lqv = hu.statusText()
end

lqv = lqv .. _d("emViAAoaAQJPRBVY") .. zcq()

if lqv ~= aqvl then
aqvl = lqv
pcall(function()
ygje:UpdateBody(lqv)
end)
end
task.wait(0.5)
end
end)

task.spawn(function()
while mbys() do
for avvm, tdt in ipairs({ _d("Mg5FERQJIwUG"), _d("Mg5FERQJIwUGAw") }) do
local jvg = kdoz:FindFirstChild(tdt)
local jd = jvg and jvg:FindFirstChild(_d("Mg5FERQJNxMdVAAW"))
local ols = jvg and jvg:FindFirstChild(_d("OAZVADoNEAQDVCcNGBAfAQ"))

if jd and jd.Visible and ols and not ols.Visible then
ols.Visible = true
end
end

task.wait(0.5)
end
end)

task.spawn(function()
local vfa = false

while mbys() do
if ajq then
local ftvx = kdoz:FindFirstChild(_d("JABGAAo+AQMaXRE/GQ0"))
local rytj = ftvx and ftvx:FindFirstChild(_d("IgpCEBQYIgIOXAA"))
local xty = ftvx and ftvx:FindFirstChild(_d("NwpfAAoNEBkBViMKDQkV"))

if xty and xty.Visible then
xty.Visible = false
end

local lath = rytj and rytj.Visible or false

if lath and not vfa then
local tii = rytj:FindFirstChild(_d("MwNeFh0uEQQbXgs"))
local vkpk = false

if tii then
for lag, ewie in ipairs({ _d("PQBEFh0uEQQbXgtJLwgZDFo"), _d("MQxFDA4NEBUL") }) do
local rsd = tii[ewie]
if rsd then
for wbpg, tbz in ipairs(getconnections(rsd)) do
pcall(function()
tbz:Fire()
end)
vkpk = true
end
end
end
end

if not vkpk then
rytj.Visible = false
else
task.spawn(function()
task.wait(0.3)
if rytj.Parent and rytj.Visible then
rytj.Visible = false
end
end)
end
end

vfa = lath
else
vfa = false
end

task.wait(0.2)
end
end)

local dpt = {}

function dpt.active()
return bwk.enabled or bwk.story
end

function dpt.towerHolds()
if hu.enabled then
return false
end

if mn.run.enabled then
return true
end

return fngx.enabled and not fngx.paused
end

function dpt.ready(er, wii, ysvz)
local ptl = bwk.unlocked[er]

return (not ptl or ptl[wii] ~= false) and fo(er, wii) <= ysvz
end

function dpt.hasReadyTarget()
local ivkr = os.time()

for lfcr, zhe in ipairs(byzr()) do
for kxuu, hkfh in ipairs(bz()) do
if dpt.ready(zhe, hkfh, ivkr) then
return true
end
end
end

return false
end

function dpt.backOff(rqdx, cco)
asr(rqdx, cco, os.time() + 5)
end

function dpt.findTarget()
for ykoc, npp in ipairs(byzr()) do
local zdv = akxa(npp)
local nnw = os.time() - (bwk.lastFetch[npp] or 0) > 60

if nnw and zdv and not bwk.walkToNpc then
nl(zdv)
task.wait(0.3)
pm(npp)
end

for ghfc, zwpi in ipairs(bz()) do
if dpt.ready(npp, zwpi, os.time()) then
return npp, zwpi
end
end
end

return nil
end

function bwk.bossTeams.slotForFight()
if hu.hasSlot2 == false then
return 1
end

if hu.busy(2) then
return 1
end

return 2
end

function bwk.bossTeams.slotTeam(zfi)
local kof = kdoz:FindFirstChild(_d("IwpFERECAwMoRAw"))
local bpuj = kof and kof:FindFirstChild(_d("IwNeESwJBR0") .. zfi .. _d("MhpFERcC"), true)
local aopf = bpuj and bpuj.Text

return aopf and tonumber(aopf:match(_d("WEpVTlE"))) or nil
end

function bwk.bossTeams.applyTeam(njd, gvep)
njd = tonumber(njd)

if not njd then
return false
end

gvep = tonumber(gvep) or bwk.bossTeams.slotForFight()

if hu.busy(gvep) then
return false
end

bwk.bossTeams.lastSlot = gvep

local cra = bwk.bossTeams.slotTeam(gvep) or bwk.bossTeams.applied[gvep]

if cra == njd then
return true
end

local izzj = yhw.remote(_d("IxhYERsEMBUOXA"))

if not izzj then
return false
end

local mkj = pcall(function()
izzj:FireServer(njd, false, gvep)
end)

bwk.bossTeams.applied[gvep] = njd
task.wait(0.2)

return mkj
end

function bwk.bossTeams.apply(kqkc)
if not bwk.bossTeams.enabled then
return
end

local rsg = bwk.bossTeams.worldOf[kqkc]
local vd = rsg and bwk.bossTeams.picked[rsg]

if not vd then
return
end

bwk.bossTeams.applyTeam(vd)
end

function bwk.bossTeams.applyTower(tnyw, rbf)
if not bwk.bossTeams.towersOn then
return false
end

local iz = bwk.bossTeams.towerPicked[tnyw]

local rw = bwk.bossTeams.swapFired[tnyw]

if bwk.bossTeams.swap.on and type(rw) == _d("BA5TCR0") then
iz = rw[2] or rw[1] or iz
end

if not iz then
return false
end

return bwk.bossTeams.applyTeam(iz, rbf)
end

function bwk.bossTeams.applyRaid(ssb)
if not bwk.bossTeams.raidsOn then
return
end

local fahu = ssb and bwk.bossTeams.raidPicked[ssb]

if not fahu then
return
end

bwk.bossTeams.applyTeam(fahu)
end

function dpt.fight(jwo, lfz)
local wndr = akxa(jwo)

if not wndr then
dpt.backOff(jwo, lfz)
return false
end

local grp

if bwk.walkToNpc then
local sdx = ad[jwo]

if sdx then
rd.TeleportToWorld:FireServer(sdx)
task.wait(2.5)

local lpi = akxa(jwo) or wndr
local qsb = lpi:GetPivot()

grp = xmox(qsb.Position + qsb.LookVector * 6, function()
return not dpt.active() or not bwk.walkToNpc
end)

if grp then
pm(jwo)
grp = dpt.ready(jwo, lfz, os.time())
end
end
else
grp = nl(wndr)
end

if not grp then
dpt.backOff(jwo, lfz)
return false
end

task.wait(0.4)
bwk.bossTeams.apply(jwo)
bwk.activeDifficulty[jwo] = lfz
rd.SetNPCDifficulty:FireServer(jwo, lfz)
task.wait(0.4)

bwk.currentBattle = {
npcId = jwo,
difficulty = lfz,
}
ejg = jwo
hdh = lfz
rd.StartNPCBattle:FireServer(jwo)
asr(jwo, lfz, os.time() + 10)
bwk.battlePending = true
bwk.battlePendingUntil = os.time() + 30
task.wait(1)

return true
end

bwk.workPending = function()

if hntq.misc and hntq.misc.cards and hntq.misc.cards.inFlight then
return true
end

if not dpt.active() then
return false
end

if bwk.battlePending then
return true
end

local vlih = hu.npcSlot()

if vlih and hu.busy(vlih) then
return true
end

return dpt.hasReadyTarget()
end

task.spawn(function()
while mbys() do

local pbnl = (hu.enabled and (hntq.enabled or jb.enabled or hntq.worldBoss.enabled))
or dpt.towerHolds()
or not hu.slotFree(hu.npcSlot())

or (hntq.misc and hntq.misc.cards and hntq.misc.cards.inFlight)
or (bwk.battlePending and os.time() < bwk.battlePendingUntil)

if dpt.active() and not pbnl and not hu.prioBlocks(_d("Hh9S")) then
local njea, dhff = dpt.findTarget()

if njea then
dpt.fight(njea, dhff)
end
end

task.wait(0.5)
end
end)

task.spawn(function()
while mbys() do

local hqk = {}

if hntq.enabled then
local ltfz = hu.roleSlot(_d("Hh9S"))

if ltfz then
table.insert(hqk, ltfz)
end

if hu.splitNpc() and ltfz ~= 2 then
table.insert(hqk, 2)
end
end

local rsy = bzz:FindFirstChild(_d("Ig5YASsYBQQaQg"))

if #hqk > 0 and rsy and (not jb.enabled or hu.splitNpc()) and (hu.enabled or not bwk.workPending()) then
for aioi, edw in ipairs(hqk) do
local fdq = rsy

local mpwv = hntq.bossFor(edw, (edw ~= 1 and not hu.splitNpc()) and 1 or nil)
local odjm = fdq:GetAttribute(_d("ORx+FR0C")) == true or fdq:GetAttribute(_d("NgBDBh0I")) == true
local fat = mpwv ~= nil and fdq:GetAttribute(_d("IgpQAQEz") .. mpwv) == true
local shrm = mpwv and pr(mpwv)

if mpwv and hntq.pending[mpwv] and os.time() >= (hntq.pendingUntil[mpwv] or 0) then
hntq.pending[mpwv] = false
hntq.cleared[mpwv] = nil
end

if mpwv and hu.slotFree(edw) and odjm and fat and hntq.cleared[mpwv] ~= shrm and not hntq.pending[mpwv] then
local deoo = yzkv[mpwv]
local ydvf = deoo and akxa(deoo)
local swbf = false

if ydvf then
if hntq.walkToBoss then
local qehu = vgd[mpwv]
local dhxz = pl.Character and pl.Character:FindFirstChild(_d("OBpcBBYDDRQ9XgoMPAUCGw"))
local tvas = ydvf:GetPivot().Position
local mx = dhxz and (dhxz.Position - tvas).Magnitude <= 15

if mx then
swbf = true
elseif qehu then
rd.TeleportToWorld:FireServer(qehu)

local xwc = os.clock()
while os.clock() - xwc < 2.5 and hntq.enabled do
task.wait(0.1)
end

if hntq.enabled then
local sit = akxa(deoo) or ydvf
local vjm = sit:GetPivot()
local zkr = vjm.Position + vjm.LookVector * 6
swbf = efjd(zkr, hntq.walkSpeed, function()
return not hntq.enabled or not hntq.walkToBoss
end)
end
end

if not swbf then
swbf = nl(ydvf)
end
else
swbf = nl(ydvf)
end

if swbf then
task.wait(0.5)
end
end

if swbf and not hu.prioBlocks(_d("Ag5YAQs")) then
hntq.inFlight[mpwv] = edw
hntq.pending[mpwv] = true
hntq.pendingUntil[mpwv] = os.time() + 15
hntq.cleared[mpwv] = shrm

local yryx = hntq.difficulties[1] or _d("HgBDCBkA")
local vv = hntq.progress[mpwv]

if vv then
local zxb = vv.unlocked
local dptk = vv.cooldowns

for dfox, juny in ipairs(hntq.difficulties) do
local lbyc = not zxb or zxb[juny] ~= false
local pp = dptk and tonumber(dptk[juny]) or 0

if lbyc and pp <= 0 then
yryx = juny
break
end
end
end

bwk.bossTeams.applyRaid(mpwv)
rd.SetRaidDifficulty:FireServer(yryx, mpwv)
task.wait(0.3)
rd.StartRaidBattle:FireServer(mpwv)
task.wait(2)
end
end
end
end

task.wait(1)
end
end)

task.spawn(function()
while mbys() do
local jkf = jb.inBattle and os.time() < jb.inBattleUntil

if jb.enabled and (hu.enabled or not bwk.workPending()) and not jkf and hu.slotFree(hu.roomSlot()) and not (jb.pending and os.time() < jb.pendingUntil) then
local ynwi = jb.progress

if ynwi == nil then
rd.RequestInfiniteRoomProgress:FireServer()
task.wait(0.5)
else
local hwjr = nil

for mhh, qduh in ipairs(duyp.Milestones) do
if duyp.isMilestoneUnlocked(qduh, ynwi) and not duyp.isMilestoneCleared(qduh, ynwi) then
hwjr = qduh
break
end
end

if hwjr then

local jxj = hu.roomSlot()

jb.currentRoom = hwjr
jb.inBattle = true
jb.inBattleUntil = os.time() + 60
jb.pending = true
jb.pendingUntil = os.time() + 10

local yhzd = kdoz:FindFirstChild(jxj == 2 and _d("IgpCAAwuBQQbXQA+AAsfHQM") or _d("IgpCAAwuBQQbXQA+AAsfHQ"))
if yhzd and yhzd:IsA(_d("MgZfARkOCBUqRwAWGA")) then
yhzd:Fire(hwjr, _d("GQFXDBYFEBUwQwoXAQ"))
end

local yksy = kdoz:FindFirstChild(jxj == 2 and _d("IxtQFwwlChYGXwwMCTYfAFwnGRgQHAoD") or _d("IxtQFwwlChYGXwwMCTYfAFwnGRgQHAo"))
if yksy and yksy:IsA(_d("MgZfARkOCBUqRwAWGA")) then
yksy:Fire(hwjr)
end

rd.StartBattle:FireServer(_d("GQFXDBYFEBUwQwoXAQ"), {
milestone = hwjr,
slot = jxj,
})
task.wait(2)
end
end
end

task.wait(1)
end
end)

local function cip(chus, gsfw)
local ocje = kdoz:FindFirstChild(_d("IwxDAB0CIwUG"))

if not ocje then
return
end

local eil = ocje:FindFirstChild(chus)
local wei = eil and eil:FindFirstChild(_d("Jg5dEB0gBRIKXQ"), true)
local mtzx = eil and eil:FindFirstChild(_d("PA5TABQ"), true)

if not eil then
return
end

local ms = false

if wei then
ms = wei.Text == _d("PwE")
elseif mtzx then
ms = not string.lower(mtzx.Text):find(_d("HwlX"), 1, true)
end

if ms ~= gsfw then
for deo, hky in ipairs(getconnections(eil.MouseButton1Click)) do
local dump = hky.Function

if type(dump) == _d("FhpfBgwFCx4") then
pcall(dump)
else
pcall(function()
hky:Fire()
end)
end
end
end
end

getgenv().ACBXSetRollButton = cip

local function ztzq(kiia)
cip(_d("IRpYBhM+CxwDcxAMGAse"), kiia)
cip(_d("MRpFCioDCBwtRBEMAwo"), kiia)
end

getgenv().ACBXSetRollUi = ztzq
kku.setRollButton = cip

pcall(function()
rd.SaveClientData:FireServer({ autoHideBattle = false })
end)

task.defer(function()
task.wait(0.5)

local srs = kdoz:FindFirstChild(_d("Mg5FERQJIwUG"))
local okgs = srs and srs:FindFirstChild(_d("Mg5FERQJNxMdVAAW"))
local gxjm = srs and srs:FindFirstChild(_d("OAZVADoNEAQDVCcNGBAfAQ"))

if gxjm and gxjm.Visible and okgs and not okgs.Visible and cdmi() then
for orr, gqc in ipairs(getconnections(gxjm.MouseButton1Click)) do
local cr = gqc.Function

if type(cr) == _d("FhpfBgwFCx4") then
pcall(cr)
else
pcall(function()
gqc:Fire()
end)
end
end
end
end)

ztzq(true)

task.spawn(function()
while mbys() do

if kku.autoRoll then
cip(_d("MRpFCioDCBwtRBEMAwo"), true)
end

if kku.autoQuickRoll then
cip(_d("IRpYBhM+CxwDcxAMGAse"), true)
end

task.wait(1)
end
end)

local function ft()

if fngx.floor then
return fngx.floor
end

local su = kdoz:FindFirstChild(_d("Mg5FERQJIwUG"))

if not su then
return nil
end

for tveh, uq in ipairs({ _d("JABGAAoqCB8AQykZDgEc"), _d("IhpfIxQDCwIjUAcdAA") }) do
local lox = su:FindFirstChild(uq)

if lox and lox.Visible and lox.Text then
local mgdf = tonumber(lox.Text:match(_d("WEpVTlE")))

if mgdf then
return mgdf
end
end
end

local ixig = su:FindFirstChild(_d("NgNeCgo/BwIKVAs"))
local crf = ixig and ixig:FindFirstChild(_d("JABBJxke"))
local bgt = crf and crf:FindFirstChild(_d("NgNeCgogBRIKXQ"))

if bgt then
return tonumber(bgt.Text:match(_d("WEpVTlE")))
end

return nil
end

function bwk.bossTeams.swapRows(olko)
local tmsp = kdoz:FindFirstChild(_d("IwpFERECAwMoRAw"))
local moek = tmsp and tmsp:FindFirstChild(_d("MRpFCisbBQA") .. olko .. _d("IgBG"), true)

if not moek then
return nil
end

return moek:FindFirstChild(_d("MRpFCisbBQA") .. olko .. _d("MwdUBhM")),
moek:FindFirstChild(_d("MRpFCisbBQA") .. olko .. _d("JApQCA")),
moek:FindFirstChild(_d("MRpFCisbBQA") .. olko .. _d("NgNeCgo"))
end

function bwk.bossTeams.swapOn(yjje)
local cvfd = kdoz:FindFirstChild(_d("IwpFERECAwMoRAw"))
local pkj = cvfd and cvfd:FindFirstChild(_d("NwpFNh0YEBkBVhY"), true)

if not pkj then
return nil
end

local esjy, api = pcall(function()
return pkj:Invoke()
end)

if esjy and type(api) == _d("BA5TCR0") then
return api[yjje == 1 and _d("ERpFCiwJBR08RgQIKQoRDV0AHA") or _d("ERpFCiwJBR08RgQIXiEeDlMJHQg")] == true
end

return nil
end

function bwk.bossTeams.swapBox(de, rjp)
if tonumber(de.Text) == rjp then
return
end

de.Text = tostring(rjp)

if getconnections then
for pep, gf in ipairs(getconnections(de.FocusLost)) do
pcall(function()
gf:Fire(true, Enum.UserInputType.Focus)
end)
end
end
end

function bwk.bossTeams.swapSet(tcmv, bxac, qeaj, mav)
local shn, why, ebpc = bwk.bossTeams.swapRows(tcmv)

if not (shn and why and ebpc) then
return false
end

qeaj = math.max(1, math.floor(tonumber(qeaj) or 1))
mav = math.clamp(math.floor(tonumber(mav) or 1), 1, 4)

bwk.bossTeams.swapBox(ebpc, qeaj)
bwk.bossTeams.swapBox(why, mav)

local cjv = bwk.bossTeams.swapOn(tcmv)

if cjv ~= nil and cjv ~= (bxac == true) and getconnections then
pcall(function()
for sqf, nixk in ipairs(getconnections(shn.MouseButton1Click)) do
pcall(function()
nixk:Fire()
end)
end
end)
end

local kqjm = tcmv == 1 and _d("") or _d("Qg")

pcall(function()
rd.SaveClientData:FireServer({
[_d("ERpFCiwJBR08RgQI") .. kqjm .. _d("NQFQBxQJAA")] = bxac == true,
[_d("ERpFCiwJBR08RgQI") .. kqjm .. _d("JApQCA")] = mav,
[_d("ERpFCiwJBR08RgQI") .. kqjm .. _d("NgNeCgo")] = qeaj,
})
end)

return true
end

function bwk.bossTeams.swapApply()
local rna = bwk.bossTeams
local apkc = rna.swap
local qafb = true

if apkc.on then
qafb = rna.swapSet(1, apkc.floor > 0, apkc.floor, apkc.team)
qafb = rna.swapSet(2, apkc.floor2 > 0, apkc.floor2, apkc.team2) and qafb
else
qafb = rna.swapSet(1, false, apkc.floor, apkc.team)
qafb = rna.swapSet(2, false, apkc.floor2, apkc.team2) and qafb
end

rna.swapMessage = _d("")

if not qafb then
rna.swapMessage = _d("JAdURR8NCRVIQkU5GRAfT2UAGQFEIxhQFVgeCwccEQQKCUQeAEVFGhkNHBsRHB0YRF1PQwAMHh0ZAVZL")
end

rna.paintSwap()
end

function bwk.bossTeams.swapReset(taz)
local gnf = bwk.bossTeams

if taz then
gnf.swapFired[taz] = nil
else
gnf.swapFired = {}
end
end

function bwk.bossTeams.swapTick()
local xmgm = bwk.bossTeams
local jqh = xmgm.swap

if not jqh.on or (jqh.floor <= 0 and jqh.floor2 <= 0) then
if next(xmgm.swapFired) ~= nil then
xmgm.swapFired = {}
end

return
end

local dwd = os.clock()
local dvdy = yhw.remote(_d("IxhYERsEMBUOXA"))

if dwd - (xmgm.swapWroteAt or 0) > 10 then
xmgm.swapWroteAt = dwd
xmgm.swapApply()
end

local iqw = {
{
kind = _d("BABGAAo"),
slot = hu.towerSlot(),

live = dwd - (fngx.floorAt or 0) < 90,
floor = ft(),

own = true,
},
{
kind = _d("GA5DARsDFhU"),
slot = hu.hardcoreSlot(),
live = mvb.active(),
floor = mvb.floorNow(),

own = false,
},
}

local vccm = {
{ index = 1, floor = jqh.floor, team = jqh.team },
{ index = 2, floor = jqh.floor2, team = jqh.team2 },
}

for bffm, skd in ipairs(iqw) do
if not skd.live then

xmgm.swapFired[skd.kind] = nil
elseif skd.own and dvdy and skd.floor then
local lru = xmgm.swapFired[skd.kind]

for kz, feq in ipairs(vccm) do
local ctm = type(lru) == _d("BA5TCR0") and lru[feq.index]

if feq.floor > 0 and skd.floor == feq.floor and not ctm then
local xeqm = pcall(function()
dvdy:FireServer(math.clamp(math.floor(feq.team), 1, 4), true, skd.slot or 1)
end)

if xeqm then
lru = type(lru) == _d("BA5TCR0") and lru or {}
lru[feq.index] = feq.team
xmgm.swapFired[skd.kind] = lru

xmgm.swapMessage = string.format(_d("Mw5CERQJRBYDXgoKTEEUTxxFCxsNBAxZABxMEB9PZQAZAURVCx8"), skd.floor, feq.team)
xmgm.paintSwap()
end
end
end
end
end
end

task.spawn(function()
while mbys() do
pcall(bwk.bossTeams.swapTick)
task.wait(0.5)
end
end)

local function fr()

return dpt.active() and dpt.hasReadyTarget()
end

function hntq.worldBoss.remote(jcfe)
local ghh = hntq.worldBoss

ghh.remotes = ghh.remotes or {}

local txad = ghh.remotes[jcfe]

if txad and txad.Parent then
return txad
end

local hfbp = yhw.remote(jcfe)

if hfbp then
ghh.remotes[jcfe] = hfbp
end

return hfbp
end

function hntq.worldBoss.setRepeat(vms)
local pvek = hntq.worldBoss
local jhg = pvek.remote(_d("JwBDCRwuCwMccAYMBQse"))

if not jhg then
return false
end

local piui = pvek.state
local fum = type(piui) == _d("BA5TCR0") and piui.repeatOn == true

if fum == (vms and true or false) then
pvek.repeatIntent = nil

return true
end

if vms then
local eaok = workspace:FindFirstChild(_d("JwBDCRwuCwMccBcdAgU"))
local ylux = eaok and (eaok:FindFirstChild(_d("MwpdCTUNHA")) or eaok)
local rcm = pl.Character and pl.Character:FindFirstChild(_d("OBpcBBYDDRQ9XgoMPAUCGw"))

if not (ylux and rcm) then
return false
end

local fng, kwgz = pcall(function()
return ylux:GetPivot()
end)

if not fng or (rcm.Position - kwgz.Position).Magnitude > 60 then
return false
end
end

if pvek.repeatIntent == vms and os.clock() - (pvek.repeatAskedAt or 0) < 20 then
return false
end

pvek.repeatIntent = vms

pcall(function()
jhg:FireServer(_d("AgpBABkY"))
end)

pvek.repeatAskedAt = os.clock()

return true
end

function hntq.worldBoss.requestSync()
local gss = hntq.worldBoss
local eet = gss.remote(_d("JwBDCRwuCwMccAYMBQse"))

if eet then
pcall(function()
eet:FireServer(_d("AxZfBg"))
end)
end

gss.askedAt = os.clock()
end

function hntq.worldBoss.hasWork()
local caaq = hntq.worldBoss
local pgkx = caaq.state

if not caaq.enabled or type(pgkx) ~= _d("BA5TCR0") then
return false
end

if caaq.stopAtFull and type(caaq.meterFull) == _d("FhpfBgwFCx4") and caaq.meterFull() then
return false
end

local auwu = caaq.isOpen()

if auwu == nil then
auwu = pgkx.open == true
end

return auwu and pgkx.inFight ~= true
end

hntq.worldBoss.bossUp = function()
local itj = hntq.worldBoss

if not itj.enabled then
return false
end

local kxw = itj.isOpen()

if kxw ~= nil then
return kxw == true
end

local ruyr = itj.state

return type(ruyr) == _d("BA5TCR0") and ruyr.open == true
end

function hntq.worldBoss.meter()
local mpww = hntq.worldBoss
local adk = os.clock()

if adk - (mpww.meterAt or 0) < 1 then
return mpww.meterCurrent, mpww.meterMax
end

mpww.meterAt = adk
mpww.meterCurrent = nil
mpww.meterMax = nil

local mg = bzz:FindFirstChild(_d("JwBDCRwuCwMcYhEZGBED"))
local hyh = mg and tonumber(mg:GetAttribute(_d("PQpFAAo")))
local vts = mg and tonumber(mg:GetAttribute(_d("PQpFAAohBQg")))

if hyh and vts and vts > 0 then
mpww.meterCurrent = hyh
mpww.meterMax = vts

return mpww.meterCurrent, mpww.meterMax
end

local function olj(wrw)
if type(wrw) ~= _d("AxtDDBYL") then
return nil
end

local sjqj, hqf = wrw:match(_d("WDQUAV1COVtGFBZSRD87InMOFQ45T0Y"))
local uma = tonumber(sjqj)

if not uma then
return nil
end

local wgot = ({ K = 1000, M = 1000000, B = 1000000000 })[string.upper(hqf or _d(""))] or 1

return uma * wgot
end

local mpbm = kdoz:FindFirstChild(_d("JwBDCRwuCwMccwQWAgECKEQM"))
local jccl = mpbm and mpbm:FindFirstChild(_d("Mg5fCx0e"))
local okob = jccl and jccl:FindFirstChild(_d("PQpFAAouBQI"))
local fkrn = okob

if okob and not okob:IsA(_d("JApJETQNBhUD")) then
fkrn = okob:FindFirstChild(_d("JApJEQ"))
end

local ttmm = fkrn and fkrn:IsA(_d("JApJETQNBhUD")) and fkrn.Text or nil

if type(ttmm) == _d("AxtDDBYL") then
local va, evtl = ttmm:match(_d("WDRvSiVHTV9HH05R"))

mpww.meterCurrent = olj(va)
mpww.meterMax = olj(evtl)
end

return mpww.meterCurrent, mpww.meterMax
end

function hntq.worldBoss.meterFull()
local weae, fsj = hntq.worldBoss.meter()

return weae ~= nil and fsj ~= nil and fsj > 0 and weae >= fsj
end

hntq.worldBoss.holdsFishing = function()
local oy = hntq.worldBoss

if not oy.enabled or not oy.bossUp() then
return false
end

if oy.stopAtFull and oy.meterFull() then
return false
end

return hu.prioBlocks(_d("Bw5FAAo"))
end

hntq.worldBoss.holdsDigging = function()
local cpy = hntq.worldBoss

if not cpy.enabled or not cpy.bossUp() then
return false
end

if cpy.stopAtFull and cpy.meterFull() then
return false
end

return hu.digBlocked()
end

hntq.worldBoss.usesGameChain = function()
return true
end

function hntq.worldBoss.travel()
local hnoh = hntq.worldBoss
local dfl = pl.Character
local cvsj = dfl and dfl:FindFirstChild(_d("OBpcBBYDDRQ9XgoMPAUCGw"))

if not cvsj or os.clock() < hnoh.travelUntil then
return
end

hnoh.travelUntil = os.clock() + 6

local lzrj = workspace:FindFirstChild(_d("JwBDCRwuCwMcYQoKGAUc"))
local yqy = lzrj and lzrj:FindFirstChild(_d("IABDERkA"))

if not yqy then
return
end

if (cvsj.Position - yqy.Position).Magnitude > 150 then
local tzd = yhw.remote(_d("JApdAAgDFgQ7XjIXHggU"))

if tzd then
pcall(function()
tzd:FireServer(_d("HABTBwE"))
end)
end

return
end

if (cvsj.Position - yqy.Position).Magnitude > 6 then
hnoh.walkLeg(yqy.Position + Vector3.new(0, 3, 0), 4)

if (cvsj.Position - yqy.Position).Magnitude > 9 then
return
end
end

local jfiv = yqy:FindFirstChildOfClass(_d("IB1eHREBDQQWYRcXARQE"))

if not jfiv then
return
end

pcall(function()
if type(fireproximityprompt) == _d("FhpfBgwFCx4") then
fireproximityprompt(jfiv)
else
jfiv:InputHoldBegin()
task.wait(0.25)
jfiv:InputHoldEnd()
end
end)
end

function hntq.worldBoss.reach()
local ahg = hntq.worldBoss

local tbpn = workspace:FindFirstChild(_d("JwBDCRwuCwMccBcdAgU")) or workspace:FindFirstChild(_d("JwBDCRwuCwMcYhUZGwo"), true)
local byok = pl.Character
local ajrx = byok and byok:FindFirstChild(_d("OBpcBBYDDRQ9XgoMPAUCGw"))

if not (tbpn and ajrx) then
ahg.travel()
return false
end

local yrze = tbpn:FindFirstChild(_d("MwpdCTUNHA")) or tbpn
local vfci, sozs = pcall(function()
return yrze:GetPivot()
end)

if not vfci then
return false
end

local bj = sozs.Position + sozs.LookVector * 6 + Vector3.new(0, 3, 0)
local tqdz = Vector3.new(sozs.Position.X, bj.Y, sozs.Position.Z)

ajrx.CFrame = CFrame.lookAt(bj, tqdz)

return true
end

hntq.worldBoss.cityBounds = { 19100, 20900, -850, 850 }

function hntq.worldBoss.inArena()
local lyn = pl.Character and pl.Character:FindFirstChild(_d("OBpcBBYDDRQ9XgoMPAUCGw"))
local llcq = hntq.worldBoss.cityBounds

if not lyn then
return false
end

local tnsc = lyn.Position

return tnsc.X >= llcq[1] and tnsc.X <= llcq[2]
and tnsc.Z >= llcq[3] and tnsc.Z <= llcq[4]
end

function hntq.worldBoss.enterCity(oxx)
local ljh = hntq.worldBoss

local vpzb = os.clock() + (oxx or 30)

if ljh.inArena() then
return true
end

while os.clock() < vpzb do
if not ljh.enabled then
return false
end

ljh.travel()

if ljh.inArena() then
return true
end

task.wait(0.5)
end

return ljh.inArena()
end

hntq.worldBoss.walking = false
hntq.worldBoss.walkStartedAt = 0

function hntq.worldBoss.walkLeg(ugs, okj)
local jsvv = hntq.worldBoss
local goq = pl.Character
local kt = goq and goq:FindFirstChild(_d("OBpcBBYDDRQ9XgoMPAUCGw"))
local lvd = goq and goq:FindFirstChildOfClass(_d("OBpcBBYDDRQ"))

if not (kt and lvd) then
return false
end

if jsvv.walking and os.clock() - (jsvv.walkStartedAt or 0) < 45 then
return false
end

okj = okj or 6

jsvv.walking = true
jsvv.walkStartedAt = os.clock()

local ygg, elt = pcall(function()
local ae = os.clock() + 40
local eqns = 0
local phzl = kt.Position
local bf = os.clock()

while jsvv.enabled and os.clock() < ae do
local twgo = Vector3.new(ugs.X - kt.Position.X, 0, ugs.Z - kt.Position.Z)

if twgo.Magnitude <= okj then
return true
end

if os.clock() - eqns >= 0.25 then
lvd:MoveTo(Vector3.new(ugs.X, kt.Position.Y, ugs.Z))
eqns = os.clock()
end

if os.clock() - bf >= 1.2 then
if (kt.Position - phzl).Magnitude < 2 then
lvd.Jump = true
end

phzl = kt.Position
bf = os.clock()
end

task.wait(0.1)
end

return Vector3.new(ugs.X - kt.Position.X, 0, ugs.Z - kt.Position.Z).Magnitude <= okj
end)

pcall(function()
lvd:MoveTo(kt.Position)
end)

jsvv.walking = false

return ygg and elt == true
end

function hntq.worldBoss.walkIn(jyt)
local tsk = hntq.worldBoss
local qpoy = workspace:FindFirstChild(_d("JwBDCRwuCwMccBcdAgU"))
local wv = qpoy and (qpoy:FindFirstChild(_d("MwpdCTUNHA")) or qpoy) or nil
local xnuc = pl.Character and pl.Character:FindFirstChild(_d("OBpcBBYDDRQ9XgoMPAUCGw"))

if not (wv and xnuc) then
return false
end

local ree, xth = pcall(function()
return wv:GetPivot()
end)

if not ree then
return false
end

local ejjt = xth.Position + xth.LookVector * 6 + Vector3.new(0, 3, 0)

if (xnuc.Position - ejjt).Magnitude <= (jyt or 10) then
return true
end

local ucnj = tsk.walkLeg(ejjt, jyt or 6)

if not ucnj then
ucnj = (xnuc.Position - xth.Position).Magnitude <= 25
end

return ucnj
end

function hntq.worldBoss.approach()
local hvz = hntq.worldBoss

if not hvz.walkToBoss then
return hvz.reach()
end

if not hvz.enterCity() then
return false
end

return hvz.walkIn(10)
end

function hntq.worldBoss.fight()
local mnf = hntq.worldBoss
local uyqb = mnf.remote(_d("JwBDCRwuCwMccAYMBQse"))

local function qwwn(wzkk)
mnf.nextFightAt = os.clock() + (wzkk or 20)

return false
end

if not uyqb then
return qwwn(60)
end

if mnf.stopAtFull and mnf.meterFull() then
return qwwn(20)
end

if jkxa.enabled
and (jkxa.tpToBay or jkxa.deepZone)
and jkxa.phase ~= _d("GQtdAA") then
return false
end

mnf.takingUntil = os.clock() + 45

local knt = workspace:FindFirstChild(_d("JwBDCRwuCwMccBcdAgU"))
local yakv = knt and (knt:FindFirstChild(_d("MwpdCTUNHA")) or knt) or nil
local rg = pl.Character and pl.Character:FindFirstChild(_d("OBpcBBYDDRQ9XgoMPAUCGw"))

local function fck()
if not (yakv and rg) then
return nil
end

local nefz, uoe = pcall(function()
return yakv:GetPivot()
end)

if not nefz then
return nil
end

return (rg.Position - uoe.Position).Magnitude
end

local btmx = mnf.usesGameChain() and (fck() or math.huge) <= 60

if not btmx and not mnf.approach() then
mnf.takingUntil = os.clock() + 3

return qwwn(mnf.inArena() and 3 or 20)
end

if yakv and rg then
local hhf, euh = pcall(function()
return yakv:GetPivot()
end)

if not hhf or (rg.Position - euh.Position).Magnitude > 60 then
mnf.takingUntil = os.clock() + 2

return qwwn(mnf.inArena() and 2 or 10)
end
end

bwk.bossTeams.applyTeam(mnf.team)

task.wait(btmx and 0 or (mnf.walkToBoss and 0.3 or 1.4))

pcall(function()
uyqb:FireServer(_d("FgZWDQw"))
end)

mnf.fightAt = os.clock()

mnf.holdUntil = os.clock() + (mnf.usesGameChain() and 0.7 or 4)

mnf.takingUntil = os.clock() + 0.6

if jkxa.enabled and (jkxa.tpToBay or jkxa.deepZone) then
jkxa.deepPhase = _d("GQtdAA")
jkxa.deepStageAt = 0
jkxa.nextCastAt = 0
end

mnf.killsAtFire = type(mnf.state) == _d("BA5TCR0") and tonumber(mnf.state.kills) or nil

if not mnf.usesGameChain() and jkxa.enabled
and (jkxa.tpToBay or jkxa.deepZone) then
mnf.nextFightAt = os.clock() + 1
end

return true
end

function hntq.worldBoss.buy(mdgc)
local lks = hntq.worldBoss
local zoud = lks.remote(_d("JwBDCRwuCwMccAYMBQse"))

mdgc = mdgc or 1

if not zoud then
return 0
end

local teh = 0

for ogsh = 1, mdgc do
local kylp = lks.state

if type(kylp) ~= _d("BA5TCR0") or type(kylp.shop) ~= _d("BA5TCR0") then
break
end

if os.clock() < lks.buyAt then
break
end

local rczq = tonumber(kylp.medals) or 0
local iud = nil

for dir, jact in ipairs(kylp.shop) do
local dqdu = tonumber(jact.price) or 0
local amr = jact.kind ~= _d("GRtUCA") or (tonumber(jact.left) or 0) > 0

if lks.selected[jact.id] == true and amr and jact.owned ~= true and dqdu <= rczq then
iud = jact
break
end
end

if not iud then
break
end

pcall(function()
zoud:FireServer(_d("EhpI"), iud.id, 1)
end)

teh = teh + 1
lks.bought = lks.bought + 1
lks.buyAt = os.clock() + 1.2

lks.syncedAt = 0
lks.requestSync()
task.wait(1.1)
end

return teh
end

hntq.worldBoss.questGroups = { _d("AApDFhcCBRw"), _d("FwNeBxkA"), _d("FgZdCQ"), _d("AgpCEQoFBwQGXgs") }

function hntq.worldBoss.questRows(qrw)
local amqm = hntq.worldBoss
local nox = type(qrw) == _d("BA5TCR0") and qrw.quests or nil
local ihyw = {}

if type(nox) ~= _d("BA5TCR0") then
return ihyw
end

for dh, dvvu in ipairs(amqm.questGroups) do
local clac = nox[dvvu]

if type(clac) == _d("BA5TCR0") then
for rjfn, pqxg in ipairs(clac) do
if type(pqxg) == _d("BA5TCR0") then
table.insert(ihyw, pqxg)
end
end
end
end

return ihyw
end

function hntq.worldBoss.claim()
local jvom = hntq.worldBoss
local yi = jvom.remote(_d("JwBDCRwuCwMccAYMBQse"))
local xaqv = jvom.state

if not yi or type(xaqv) ~= _d("BA5TCR0") or type(xaqv.quests) ~= _d("BA5TCR0") then
return 0
end

if os.clock() < jvom.claimAt then
return 0
end

local xcd = jvom.questRows(xaqv)

if #xcd == 0 then
return 0
end

local sae = {}

for ftp, good in ipairs(xcd) do
if good.id ~= nil then
sae[tostring(good.id)] = true
end
end

for eroz, aaz in pairs(jvom.claimFired) do
if not sae[eroz] or os.clock() - aaz > 120 then
jvom.claimFired[eroz] = nil
end
end

local eke = nil

for pvt, mutg in ipairs(xcd) do
if mutg.complete == true and mutg.claimed ~= true and mutg.id ~= nil then
local turi = tostring(mutg.id)
local oubz = jvom.claimFired[turi]

if not (oubz and os.clock() - oubz < 6) then
eke = mutg
break
end
end
end

if not eke then
return 0
end

jvom.claimFired[tostring(eke.id)] = os.clock()
jvom.claimedTotal = jvom.claimedTotal + 1

pcall(function()
yi:FireServer(_d("EwNQDBU"), eke.id)
end)

jvom.claimAt = os.clock() + 2
jvom.syncedAt = 0
jvom.requestSync()

return 1
end

hntq.worldBoss.syncRemote = az(_d("JwBDCRwuCwMcYhwWDw"))

if hntq.worldBoss.syncRemote then
bwkv(hntq.worldBoss.syncRemote.OnClientEvent, function(wnc)
local mu = hntq.worldBoss

if type(wnc) ~= _d("BA5TCR0") then
return
end

mu.state = wnc
mu.syncedAt = os.clock()

if wnc.inFight == true then
mu.wasFighting = true
elseif mu.wasFighting then
mu.wasFighting = false

if jkxa.enabled then
pcall(jkxa.recover)
end
end
end)
end

task.spawn(function()
hntq.worldBoss.requestSync()
end)

task.spawn(function()
while mbys() do
local zip = hntq.worldBoss
local wwd = zip.state

if zip.autoClaim then
if os.clock() - zip.syncedAt > 4 and os.clock() - zip.askedAt > 1 then
zip.requestSync()
end

zip.claim()
end

if zip.enabled then

if os.clock() - zip.syncedAt > (zip.bossUp() and 1.5 or 4) and os.clock() - zip.askedAt > 1 then
zip.requestSync()
end

if zip.autoBuy and next(zip.selected) then
zip.buy(1)
end

local bfs = type(wwd) == _d("BA5TCR0") and wwd.repeatOn == true

if zip.usesGameChain() then

local gl = type(wwd) == _d("BA5TCR0") and tonumber(wwd.kills) or nil

if gl and gl ~= zip.seenKills then
zip.seenKills = gl
zip.progressAt = os.clock()

zip.chainWaitAt = nil
end

if zip.bossUp() and not bfs and os.clock() - (zip.repeatAskedAt or 0) > 20 then
if zip.approach() then
zip.repeatSeeded = true
zip.progressAt = os.clock()

zip.setRepeat(true)
end
end

if zip.hasWork() and os.clock() >= zip.holdUntil
and os.clock() >= (zip.nextFightAt or 0)
and os.clock() - (zip.kickAt or 0) > 0.5
and not (zip.stopAtFull and zip.meterFull())
and not hu.prioBlocks(_d("EgBCFg")) then
zip.chainWaitAt = nil
zip.kickAt = os.clock()
zip.fight()
elseif not zip.hasWork() then
zip.chainWaitAt = nil
end

if not zip.bossUp() then
zip.chainWaitAt = nil

if bfs and os.clock() - (zip.repeatAskedAt or 0) > 6 then
zip.repeatSeeded = false
zip.setRepeat(false)
end
end
elseif zip.isOpen() and bfs and os.clock() - (zip.repeatAskedAt or 0) > 6 then
zip.setRepeat(false)
end

local twge = type(wwd) == _d("BA5TCR0") and tonumber(wwd.kills) or nil

if zip.killsAtFire ~= nil and twge == zip.killsAtFire
and os.clock() - (zip.fightAt or 0) > (zip.inArena() and 2.5 or 9)
and os.clock() < (zip.nextFightAt or 0)
and os.clock() >= zip.holdUntil then
zip.killsAtFire = nil
zip.nextFightAt = os.clock()
end

if not zip.usesGameChain() and zip.hasWork() and os.clock() >= zip.holdUntil
and os.clock() >= (zip.nextFightAt or 0)
and not (zip.stopAtFull and zip.meterFull()) then

local zy = fr()
local dum = hu.roleSlot(_d("Hh9S")) or 1
local sjnm = hu.enabled and hu.busy(dum)

if not zy and not sjnm then
zip.fight()
end
end
end

local azvf = zip.bodyText()

if zip.bodyParagraph and azvf ~= zip.bodyShown then
zip.bodyShown = azvf

pcall(function()
zip.bodyParagraph:UpdateBody(azvf)
end)
end

local ufw = zip.shopText()

if zip.shopParagraph and ufw ~= zip.shopShown then
zip.shopShown = ufw

pcall(function()
zip.shopParagraph:UpdateBody(ufw)
end)
end

task.wait(0.5)
end
end)

function hu.roomsHaveWork()
if not jb.enabled then
return false
end

local dnya = jb.progress

if dnya == nil then
return true
end

for vkr, drlt in ipairs(duyp.Milestones) do
if duyp.isMilestoneUnlocked(drlt, dnya) and not duyp.isMilestoneCleared(drlt, dnya) then
return true
end
end

return false
end

function hu.raidHasWork()
if not hntq.enabled then
return false
end

local ofq = bzz:FindFirstChild(_d("Ig5YASsYBQQaQg"))

if not ofq then
return false
end

if not (ofq:GetAttribute(_d("ORx+FR0C")) == true or ofq:GetAttribute(_d("NgBDBh0I")) == true) then
return false
end

for mprp, eydc in ipairs({ 1, 2 }) do
local bvm = (eydc ~= 1 and not hu.splitNpc()) and 1 or nil
local per = hntq.picks[bvm or eydc] and hntq.bossFor(eydc, bvm)

if per and hntq.cleared[per] ~= pr(per) then
return true
end
end

return false
end

function hu.prioRank(dkwe)
for lxj, ikdw in ipairs(hu.prioGroups) do
if ikdw.id == dkwe then
return ikdw.rank
end
end

return 99
end

function hu.prioWants(ksfx)
if ksfx == _d("Ag5YAQs") then
return hu.raidHasWork()
elseif ksfx == _d("EgBCFg") then

return hntq.worldBoss.hasWork()
elseif ksfx == _d("Hh9S") then
return fr() or hu.roomsHaveWork()
elseif ksfx == _d("GA5DARsDFhU") then
return mvb.active()
elseif ksfx == _d("Bw5FAAo") then
return jkxa.enabled or cbc.autoOn == true
end

return false
end

function hu.prioBlocks(xtk)
local czfd = hu.prioRank(xtk)

for wc, lsnx in ipairs(hu.prioGroups) do
if lsnx.id ~= xtk and lsnx.rank < czfd and hu.prioWants(lsnx.id) then
return true
end
end

return false
end

function hu.digBlocked()
local xsev = hu.prioRank(_d("Bw5FAAo"))

for wjr, esqy in ipairs(hu.prioGroups) do
if esqy.id ~= _d("Bw5FAAo") and esqy.id ~= _d("GA5DARsDFhU")
and esqy.rank < xsev and hu.prioWants(esqy.id) then
return true
end
end

return false
end

function hu.towerYields()
for yrf, xtwt in ipairs({ _d("Ag5YAQs"), _d("EgBCFg"), _d("Hh9S") }) do
if hu.prioWants(xtwt) then
return true
end
end

return false
end

function hu.towerOutranks()
return not hu.enabled and (mvb.active() or mn.run.enabled)
end

local function ymjq(yqos)
if not yqos then
return false
end

local iwt = false

for dyc, shc in ipairs(getconnections(yqos.MouseButton1Click)) do
local bkwu = shc.Function

if type(bkwu) == _d("FhpfBgwFCx4") then
pcall(bkwu)
else
pcall(function()
shc:Fire()
end)
end

iwt = true
end

return iwt
end

function ounu()
for pg, rit in ipairs({ _d("Mg5FERQJIwUG"), _d("Mg5FERQJIwUGAw") }) do
local qdhj = kdoz:FindFirstChild(rit)

if qdhj then
local uwuj = qdhj:FindFirstChild(_d("Mg5FERQJNxMdVAAW"))
local tqfu = uwuj and uwuj:FindFirstChild(_d("IRpYBhMrDQYKZBU6GRAEAF8"))

if ymjq(tqfu) then
return true
end

local nsoz = qdhj:FindFirstChild(_d("NgNeCgo/BwIKVAs"))
local zhv = nsoz and nsoz:FindFirstChild(_d("MgBFERcBJhEd"))
local qez = zhv and zhv:FindFirstChild(_d("NwZHAC0cJgUbRQoW"))

if ymjq(qez) then
return true
end
end
end

local xzc = bzz:FindFirstChild(_d("IgpcCgwJFw"))
local gtu = xzc and xzc:FindFirstChild(_d("NwZHAC0cMB8YVBc"))
local dald = xzc and xzc:FindFirstChild(_d("NQFVMRcbAQI9VAgXGAE"))

if not (gtu or dald) then
return false
end

if gtu then
pcall(function()
gtu:FireServer()
end)
end

if dald then
pcall(function()
dald:FireServer(1)
end)
end

fngx.manualPause = false
fngx.floor = nil
yhw.restorePause()

return true
end

local qlpq = ounu

function ounu()

fngx.lastGiveUp = {
at = os.time(),
clock = os.clock(),
floor = fngx.floor,
parked = yhw.parked(),
active = houj(),
hard = yhw.hardNow(),
nightmare = fngx.nightmare == true,
caller = debug.traceback(_d(""), 2),
}

local nwfr = qlpq()

if nwfr then
em.armedAt = os.clock()
end

return nwfr
end

function knu(sw)

local hohq = false

if sw ~= false and houj() then
local pqgh = ft()

if pqgh then
hohq = yhw.pauseAt(true, pqgh) or hohq

fngx.pauseArmed = true
end
end

for gsia, tdn in ipairs({ _d("Mg5FERQJIwUG"), _d("Mg5FERQJIwUGAw") }) do
local fcbm = kdoz:FindFirstChild(tdn)

if fcbm then
local uacx = fcbm:FindFirstChild(_d("Mg5FERQJNxMdVAAW"))
local zdn = uacx and uacx:FindFirstChild(_d("IRpYBhMuFhUOWicNGBAfAQ"))

if zdn then

if tostring(zdn.Text):find(_d("kvOi"), 1, true) then
hohq = true
elseif ymjq(zdn) then
hohq = true
end
end

local ndkw = fcbm:FindFirstChild(_d("NgNeCgo/BwIKVAs"))

if ndkw and ndkw.Visible then
local hsfj = ndkw:FindFirstChild(_d("MgBFERcBJhEd"))
local kajy = hsfj and hsfj:FindFirstChild(_d("JA5aADoeAREEcxAMGAse"))

if ymjq(kajy) then
hohq = true
end
end
end
end

return hohq
end

function mvb.pauseRun()
if not houj() then
pcall(function()
ww:Dialog({
Title = _d("IA5EFh1MLQMDUAscTCwRHVUGFx4B"),
Description = _d("PgARERcbAQJPQxAWTA0DT10MDglEAgZWDQxMCh8YHUULA0QEB1QXHUwNA09fCgwEDR4IEREXTBQRGkIAVg"),
Buttons = {
{
Name = _d("NwBFRREY"),
},
},
})
end)

return
end

mvb.paused = true
mvb.manualPause = true
local cki = knu(false)

pcall(function()
ww:Notify({
Title = _d("IA5EFh1MLQMDUAscTCwRHVUGFx4B"),
Description = cki and _d("JABGAApMFgUBERUZGRcVCx8") or _d("IhpfRREfRBwGRwBUTAYFGxELF0wGAgpQDlgOEQQbXgtYCgsFAVVL"),
Lifetime = 5,
})
end)
end

function mvb.giveUpRun()
if not houj() then
pcall(function()
ww:Dialog({
Title = _d("NwZHAFg5FFAmQgkZAgBQJ1AXHA8LAgo"),
Description = _d("PgARERcbAQJPQxAWTA0DT10MDglEAgZWDQxMCh8YHUULA0QEB1QXHUwNA09fCgwEDR4IEREXTAMZGVRFDRxK"),
Buttons = {
{
Name = _d("NwBFRREY"),
},
},
})
end)

return
end

mvb.gaveUp = true
mvb.paused = true
local aph = ounu()

pcall(function()
ww:Notify({
Title = _d("NwZHAFg5FFAmQgkZAgBQJ1AXHA8LAgo"),
Description = aph and _d("Nw5HAFgZFFAbWQBYDxECHVQLDEwQHxhUF1gKCB8AQ0s") or _d("IhpfRREfRBwGRwBUTAYFGxELF0wDGRlURQ0cRBIaRREXAkQWAEQLHEI"),
Lifetime = 5,
})
end)
end

task.spawn(function()
while mbys() do

pcall(yhw.pinMode)

if fngx.pauseArmed and not zg.enabled
and (not fngx.enabled or not fngx.paused) then
yhw.restorePause()

if yhw.pauseState() ~= true then
fngx.pauseArmed = false
end
end

if fngx.enabled and not fngx.manualPause and hu.towerSlot() ~= nil
and not mn.run.enabled then

local xfc = os.clock() - (fngx.floorAt or 0) > 12
and os.clock() - (fngx.battleAt or 0) > 12

local rhy = hu.towerSlot() == 1 and not fngx.paused
and not (zg.enabled and zg.floor > 0)
and xfc
and yhw.parked()

if rhy then
fngx.parkedAt = fngx.parkedAt > 0 and fngx.parkedAt or os.clock()

if os.clock() - fngx.parkedAt >= 25 then
fngx.parkedAt = os.clock()
ounu()
end
else
fngx.parkedAt = 0
end

local jqmi = yhw.hardPickNow()

local mbtp = not fngx.paused and not fngx.pending
and not (zg.enabled and zg.floor > 0)
and houj()
and jqmi ~= nil
and jqmi ~= (fngx.nightmare == true)

if mbtp then
fngx.modeWrongAt = fngx.modeWrongAt or os.clock()
else
fngx.modeWrongAt = nil
end

if fngx.modeWrongAt and os.clock() - fngx.modeWrongAt > 20
and os.clock() - (fngx.modeFixAt or 0) > 20 then
fngx.modeFixAt = os.clock()
fngx.modeWrongAt = nil
yhw.endIfWrongMode(fngx.nightmare == true)
end

if (fngx.floorAt or 0) > 0 and not fngx.paused
and os.clock() - fngx.floorAt > 60
and os.clock() - (fngx.battleAt or 0) > 60
and not houj()
and not hu.busy(hu.towerSlot() or 1) then
fngx.floorAt = 0
fngx.battleAt = 0
fngx.floor = nil
end

if not hu.enabled and (hu.towerOutranks() or hu.towerYields()) then
if not fngx.paused then
fngx.paused = true
knu()
end

elseif hu.slotFree(hu.towerSlot() or 1)
and (fngx.floorAt or 0) == 0
and not bwk.bossTeams.swapHold then
local xed = ft()
local kf = zg.enabled and zg.floor or 0
local jnkq = kf > 0 and xed ~= nil and xed >= kf

if jnkq then
if not fngx.paused then
fngx.paused = true
knu()
end
else

if fngx.paused then
fngx.paused = false
yhw.restorePause()
end

if not (fngx.pending and os.time() < fngx.pendingUntil) then

bwk.bossTeams.applyTower(_d("BABGAAo"), 1)

yhw.hardPick(fngx.nightmare == true)

local mlhh = workspace:FindFirstChild(_d("Mw5CERQJNB8dRQQU"), true)

if mlhh then
local xkuf = pl.Character
local ufmn = xkuf and xkuf:FindFirstChild(_d("OBpcBBYDDRQ9XgoMPAUCGw"))

if ufmn and (mlhh.Position - ufmn.Position).Magnitude > 60 then
pcall(function()
el.standAt(mlhh.Position)
end)

task.wait(0.8)
end
end

rd.EndTowerRemote:FireServer(1)
task.wait(0.25)

rd.StartBattle:FireServer(_d("BABGAAo"), { hard = fngx.nightmare == true })

plcw.triggered = false
plcw.weatherTriggered = false

fngx.floorAt = os.clock()

fngx.floor = nil
fngx.pending = true
fngx.pendingUntil = os.time() + 8
task.wait(2)
end
end
end
end

task.wait(1)
end
end)

task.spawn(function()
while mbys() do
if mvb.active() and hu.hardcoreSlot() ~= nil then
local eoka = hu.hardcoreSlot() or 1
local qhdw = mvb.floorNow()

local qyus = zg.enabled and zg.floor or 0
local spt = plcw.enabled and plcw.floor or 0

if qyus <= 0 and not mvb.stoodDown and not mvb.manualPause
and not bwk.bossTeams.swapHold then
mvb.paused = false
end

if mvb.gaveUp then

elseif spt > 0 and qhdw and qhdw >= spt then
mvb.gaveUp = true
mvb.paused = true
local xvtp = ounu()

pcall(function()
ww:Notify({
Title = _d("MRpFClgrDQYKETAI"),
Description = xvtp and (_d("Nw5HAFgZFFAORUUQDRYUDF4XHUwCHABeF1g") .. qhdw .. _d("Xg")) or (_d("OA5DARsDFhVPVwkXAxZQ") .. qhdw .. _d("UB1UBBsEARRDEQcNGEQeABECERoBUBpBRRoZEAQAX0UeAxEeCx8")),
Lifetime = 5,
})
end)
elseif qhdw and qyus > 0 and qhdw >= qyus then
if not mvb.paused then
mvb.paused = true
knu(false)
end
elseif hu.prioBlocks(_d("GA5DARsDFhU")) then

if not mvb.stoodDown then
mvb.stoodDown = true
mvb.paused = true
knu(false)
end
elseif mvb.stoodDown then

mvb.stoodDown = false
mvb.paused = false
elseif not mvb.paused and not bwk.bossTeams.swapHold then
if hu.slotFree(eoka) and not (mvb.pending and os.time() < mvb.pendingUntil) then
mvb.start(eoka)
task.wait(2)
end
end
end

task.wait(1)
end
end)

function hu.slotActivity(yvcc)
if not hu.busy(yvcc) then
return nil
end

local xcz = hu.role[yvcc]
local fuib = kdoz:FindFirstChild(yvcc == 2 and _d("Mg5FERQJIwUGAw") or _d("Mg5FERQJIwUG"))
local gan = fuib and fuib:FindFirstChild(_d("IhpfIxQDCwIjUAcdAA"))
local fcla = gan and gan.Text or _d("")

if jb.enabled and xcz == _d("Hh9S") then
local uupt = fcla:match(_d("Lj1eChVJF1tHFAFTRQ"))

if uupt then
return _d("OQFXDBYFEBVPQwoXARdQQhEXFwMJUA") .. uupt
end
end

if hu.isTowerRole(xcz)
and (fngx.enabled or mn.run.enabled or mvb.active()) then
local zzdz = fcla:match(_d("LildChceQQNEGUAcR00"))

if zzdz then
return hu.roleName(yvcc) .. _d("UEIRAxQDCwJP") .. zzdz
end
end

return nil
end

function hu.statusText()
if not hu.enabled then
return _d("MRpFClg/CB8bEQoeCkRdT1QTHR4dBAdYCx9MFgUBQkUXAkQDA14RWF1K")
end

local sg = {}

for my = 1, 2 do
local ivy = _d("IwNeEVg") .. tostring(my) .. _d("UEIR")
local xfxw = hu.slotActivity(my)

if my == 2 and hu.hasSlot2 == false then
ivy = ivy .. hu.roleLabel(my) .. _d("UEIRCRcPDxULEU0WCQEUHBEREAlENBpQCVguBQQbXQBYPwgfGxg")
elseif xfxw then
ivy = ivy .. xfxw
elseif hu.busy(my) then
ivy = ivy .. hu.roleLabel(my) .. _d("UEIRAxELDAQGXwI")
else
ivy = ivy .. hu.roleLabel(my) .. _d("UEIRDBwAAQ")
end

table.insert(sg, ivy)
end

return table.concat(sg, _d("emU"))
end

task.spawn(function()
while mbys() do
hu.hasSlot2 = hu.detectSlot2()
task.wait(5)
end
end)

task.spawn(function()
while mbys() do

if not mvb.island and zg.enabled and zg.floor > 0 then
local hjly = ft()

if hjly and hjly >= zg.floor then
if not zg.triggered then
zg.triggered = true
knu()

pcall(function()
rd.SaveClientData:FireServer({
pauseInfiniteEnabled = true,
pauseInfiniteAt = hjly,
})
end)
end
else
zg.triggered = false
end
end

if not mvb.island and plcw.enabled and plcw.floor > 0 then
local ez = ft()

if ez and ez >= plcw.floor then

if not plcw.triggered and houj() then
plcw.triggered = true
local yszg = ounu()

pcall(function()
ww:Notify({
Title = _d("MRpFClgrDQYKETAI"),
Description = yszg and (_d("Nw5HAFgZFFAORUUeAAsfHRE") .. ez .. _d("Xg")) or (_d("NgNeCgpM") .. ez .. _d("UB1UBBsEARRDEQcNGEQeABECERoBUBpBRRoZEAQAX0UeAxEeCx8")),
Lifetime = 5,
})
end)
end
else
plcw.triggered = false
end
end

if not mvb.island and plcw.weatherEnabled then
local bqqt = ft()
local ut = plcw.weatherMinFloor <= 0
or (bqqt ~= nil and bqqt >= plcw.weatherMinFloor)
local ker = ut and plcw.weatherWanted() or nil

if ker and plcw.weatherLate then
local jnxh = plcw.weatherLeft()

if jnxh == nil or jnxh > 20 then
ker = nil
end
end

if ker then
if not plcw.weatherTriggered
and plcw.weatherGivenFor ~= plcw.weatherNow
and houj() then
plcw.weatherTriggered = true
plcw.weatherGivenFor = plcw.weatherNow

local cnqr = ounu()

pcall(function()
ww:Notify({
Title = _d("JwpQERAJFlAoWBMdTDEA"),
Description = cnqr
and (_d("Nw5HAFgZFFAORUUeAAsfHRE") .. tostring(bqqt) .. _d("UAZfRQ") .. ker .. _d("Xg"))
or (ker .. _d("UAZCRQ0cSFANRBFYAgtQCFgTHUwRAE9TEAwYCx5PUAsLGwECClVL")),
Lifetime = 5,
})
end)
end
else
plcw.weatherTriggered = false
end
end

task.wait(1)
end
end)

task.spawn(function()
if rd.WeatherChanged then
pcall(function()
bwkv(rd.WeatherChanged.OnClientEvent, function(zizp)

plcw.weatherNow = nil
plcw.weatherAt = 0
plcw.weatherGivenFor = nil
em.weatherSpent = nil

if type(zizp) == _d("AxtDDBYL") then
plcw.weatherNow = zizp
end
end)
end)
end

while mbys() do
if os.clock() - plcw.weatherAt > 5 then
plcw.weatherAt = os.clock()

if rd.RequestWeatherState then
local ngu, hxoh = pcall(function()
return rd.RequestWeatherState:InvokeServer()
end)

if ngu and type(hxoh) == _d("AxtDDBYL") then
if plcw.weatherNow ~= nil and plcw.weatherNow ~= hxoh then
em.weatherSpent = nil
plcw.weatherGivenFor = nil
end

plcw.weatherNow = hxoh
end
end
end

task.wait(1)
end
end)

task.spawn(function()
local fad = nil
local nqn = nil
local okx = 0

while mbys() do

if (em.onWeather or em.afterGiveUp) and os.clock() - okx > 60 then
okx = os.clock()

pcall(function()
rd.RequestItemSync:FireServer()
end)
end

if em.onWeather and next(em.weatherPotions) ~= nil then
local cgb = plcw.weatherWanted(em.weathers)

if cgb and plcw.weatherNow ~= em.weatherSpent then

em.weatherSpent = plcw.weatherNow
em.pop(em.weatherPotions, em.weatherAmount, _d("JwpQERAJFlA") .. cgb)
end
end

if em.afterGiveUp and next(em.giveUpPotions) ~= nil and em.armedAt > 0 then

local krz = os.clock() - em.armedAt

if not houj() or krz >= 3 then
if krz <= 30 then
em.armedAt = 0
em.pop(em.giveUpPotions, em.giveUpAmount, _d("MQlFAApMAxkZVEUNHA"))
else

em.armedAt = 0
end
end
end

local fcb = em.status()

if fcb ~= fad then
fad = fcb

pcall(function()
em.weatherParagraph:UpdateBody(fcb)
end)
end

local qhsh = em.giveUpStatus()

if qhsh ~= nqn then
nqn = qhsh

pcall(function()
em.giveUpParagraph:UpdateBody(qhsh)
end)
end

task.wait(1)
end
end)

task.spawn(function()
while mbys() do
local udm = jkxa.stick

if udm.enabled and os.clock() >= udm.at then
udm.at = os.clock() + 3

local qjzw = nil

for tklt, lvwc in ipairs(workspace:GetDescendants()) do
if (lvwc:IsA(_d("Mg5CACgNFgQ")) or lvwc:IsA(_d("PQBVABQ")))
and udm.names[string.lower(lvwc.Name)] then
qjzw = lvwc
break
end
end

local yfhg = pl.Character
local son = yfhg and yfhg:FindFirstChild(_d("OBpcBBYDDRQ9XgoMPAUCGw"))
local yrrc = qjzw and (qjzw:IsA(_d("Mg5CACgNFgQ")) and qjzw or qjzw:FindFirstChildWhichIsA(_d("Mg5CACgNFgQ"), true))

if yrrc and son then
local ncmn = yrrc:FindFirstChildWhichIsA(_d("IB1eHREBDQQWYRcXARQE"))
or (qjzw ~= yrrc and qjzw:FindFirstChildWhichIsA(_d("IB1eHREBDQQWYRcXARQE"), true))

if (son.Position - yrrc.Position).Magnitude > 4 then
pcall(function()
yfhg:PivotTo(CFrame.new(yrrc.Position + Vector3.new(0, 3, 0)))
end)

task.wait(0.4)
end

if ncmn then
pcall(function()
ncmn:InputHoldBegin()
task.wait(0.2)
ncmn:InputHoldEnd()
end)
end

udm.hits = udm.hits + 1
udm.last = _d("AAZSDh0IRAUfEQQMTA") .. math.floor(yrrc.Position.X) .. _d("XE8") .. math.floor(yrrc.Position.Z)

pcall(function()
ww:Notify({
Title = _d("PBpSDlg/EBkMWg"),
Description = udm.last,
Lifetime = 4,
})
end)
elseif qjzw then
udm.last = _d("FgBECxxM") .. qjzw:GetFullName() .. _d("XE9fCgwEDR4IEREXTBcEDl8BWAMK")
else
udm.last = _d("HgARFgwFBxtPWAtYGAwVT0YKCgAA")
end
end

task.wait(1)
end
end)

getgenv().ACBXStick = jkxa.stick

task.spawn(function()

local zdk = game:GetService(_d("JgZDEQ0NCDkBQRAMIQUeDlYACg"))

local function dgt()
local kjlr = pl.Character
local nqfx = kjlr and kjlr:FindFirstChildOfClass(_d("OBpcBBYDDRQ"))

if nqfx and nqfx.Health > 0 then
pcall(function()
nqfx.Jump = true
end)
end

pcall(function()
zdk:SendKeyEvent(true, Enum.KeyCode.Space, false, pl)
end)

task.wait(0.05)

pcall(function()
zdk:SendKeyEvent(false, Enum.KeyCode.Space, false, pl)
end)

kzb.jumps = kzb.jumps + 1
end

while mbys() do
if kzb.enabled and os.clock() >= kzb.nextAt then
kzb.nextAt = os.clock() + 300
dgt()
end

task.wait(1)
end
end)

ww:SetState(true)

task.defer(function()
local uclu
for nan, yb in ipairs(game:GetService(_d("MwBDAD8ZDQ")):GetDescendants()) do
if yb:IsA(_d("JApJETQNBhUD")) and yb.Text == hrt then
uclu = yb
break
end
end

if not uclu then
return
end

local ujoa = uclu
while ujoa and not (ujoa:IsA(_d("Nh1QCB0")) and ujoa.AbsoluteSize.X >= 600 and ujoa.AbsoluteSize.Y >= 400) do
ujoa = ujoa.Parent
end

if ujoa then
ujoa.AnchorPoint = Vector2.new(0, 0)

local hhwq = ujoa.AbsoluteSize
ujoa.Position = UDim2.new(0.5, -hhwq.X / 2, 0.5, -hhwq.Y / 2 - 20)
end
end)

task.defer(function()
task.wait(0.1)

for jduw, qttr in ipairs(game:GetService(_d("MwBDAD8ZDQ")):GetDescendants()) do
if qttr:IsA(_d("IwxDChQADR4IdxcZAQE")) and qttr.Name == _d("NQNUCB0CEAM8UhcXAAgZAVY") then
qttr.CanvasPosition = Vector2.new(0, 0)
end
end
end)

getgenv().ACBXTowerRunActive = houj
getgenv().ACBXWindow = ww

getgenv().ACBXPriority = {
groups = hu.prioGroups,
rows = kku.prioRows,
rank = hu.prioRank,
wants = hu.prioWants,
blocks = hu.prioBlocks,
set = function(zelq, mp)
kku.setPriority(zelq, mp)
end,
}

pc.repo = _d("Mw0DKlcNBxIX")
pc.url = _d("GBtFFQtWS18dUBJWCw0EB0QHDR8BAgxeCwwJCgRBUgoVQycSXX5KGQ8GCEBcBBECSxEMUx1WABER")
pc.versionUrl = _d("GBtFFQtWS18dUBJWCw0EB0QHDR8BAgxeCwwJCgRBUgoVQycSXX5KGQ8GCEBcBBECSwYKQxYRAwpeG0kR")

pc.announced = false

function pc.fetch(msd)

local btdm, zmkt = pcall(function()
return game:HttpGet(msd .. _d("TxkM") .. os.time() .. _d("Vh0M") .. math.random(1, 100000))
end)

if not btdm or type(zmkt) ~= _d("AxtDDBYL") or #zmkt == 0 then
return nil
end

if zmkt:find(_d("LlsBUQ")) or zmkt:find(_d("LiFeEVgqCwUBVQ")) then
return nil
end

return zmkt
end

function pc.check()
if pc.buildId == _d("FApH") then
return nil, _d("FApHRRoZDRwL")
end

if pc.checking then
return nil, _d("EhpCHA")
end

pc.checking = true
local wej = pc.fetch(pc.versionUrl)
pc.checking = false

if not wej then
return nil, _d("HgAREx0eFxkAX0UeBQgV")
end

local kmn = wej:match(_d("LkpCT1BCSVlKQk9c")) or _d("")
kmn = kmn:gsub(_d("VRwbb1ZGQA"), _d(""))

if kmn == _d("") or not pc.newer(kmn) then
return nil, _d("ExpDFx0CEA")
end

return kmn
end

function pc.newer(unrc)
local function pfjv(gtmb)
local yne, ulq = tostring(gtmb or _d("")):match(_d("BlAZQBxJAFULFAFdCEEURhRIUEkAVQsUAV0ITQ"))

return yne and (yne .. ulq) or nil
end

local function sjnv(lwg)
local kbof = tostring(lwg or _d(""))

if not kbof:match(_d("LkpVTl1CW1ULG0E")) then
return nil
end

local dew = {}

for nbo in kbof:gmatch(_d("VQsa")) do
dew[#dew + 1] = tonumber(nbo) or 0
end

return #dew > 0 and dew or nil
end

local nwhd, xfsa = sjnv(unrc), sjnv(pc.buildId)

if nwhd and xfsa then
for uy = 1, math.max(#nwhd, #xfsa) do
local evr = nwhd[uy] or 0
local sivo = xfsa[uy] or 0

if evr ~= sivo then
return evr > sivo
end
end

return false
end

if nwhd or xfsa then
return nwhd ~= nil
end

local ohyj, ixk = pfjv(unrc), pfjv(pc.buildId)

if not ohyj or not ixk then
return tostring(unrc) ~= tostring(pc.buildId)
end

return ohyj > ixk
end

function pc.busy()
if bwk.battlePending or bwk.currentBattle then
return true
end

local utsz = getgenv().ACBXTowerRunActive

if type(utsz) == _d("FhpfBgwFCx4") then
local ylut, frg = pcall(utsz)

if ylut and frg then
return true
end
end

return false
end

function pc.apply(yxnx)
if pc.applying then
return false
end

pc.applying = true

local aqr = pc.fetch(pc.url)

if not aqr then
pc.applying = false
warn(_d("Ky5yJyAxRAUfVQQMCV5QDF4QFAhEHgBFRRwDEx4DXgQcTA") .. tostring(yxnx) .. _d("XE9CERkVDR4IEQoWTA") .. pc.buildId)

pcall(function()
ww:Notify({
Title = _d("JR9VBAwJRBYOWAkdCA"),
Description = _d("MwBECRxMCh8bEQEXGwocAFABWA") .. tostring(yxnx) .. _d("Xk9iEREACFAdRAsWBQoXTw") .. pc.buildId .. _d("Xg"),
Lifetime = 8,
})
end)

return false
end

local pol, tbkg = loadstring(aqr)

if not pol then
pc.applying = false
warn(_d("Ky5yJyAxRAUfVQQMCV5Q") .. tostring(yxnx) .. _d("UAteAAtMCh8bEQYXARQZA1RFVUw") .. tostring(tbkg))

pcall(function()
ww:Notify({
Title = _d("JR9VBAwJRAIKWwAbGAEU"),
Description = _d("MhpYCRxM") .. tostring(yxnx) .. _d("UAlQDBQJAFAbXkUbAwkABl0AVkw3BAZdCVgeER4BWAsfTA") .. pc.buildId .. _d("Xg"),
Lifetime = 8,
})
end)

return false
end

pcall(function()
ww:Notify({
Title = _d("JR9VBAwFChc"),
Description = _d("IgpdChkIDR4IEQ") .. pc.buildId .. _d("UEIPRQ") .. yxnx .. _d("Xg"),
Lifetime = 4,
})
end)

task.wait(0.4)

pc.cameFrom = pc.buildId
getgenv().ACBXUpdatedFrom = pc.buildId

pcall(function()
ww:Unload()
end)

getgenv().ACBXWindow = nil

task.wait(0.5)

local dmtl, sc = pcall(pol)

if not dmtl then
pc.applying = false
warn(_d("Ky5yJyAxRAUfVQQMCV5Q") .. tostring(yxnx) .. _d("UBtZFx0bRB8BEQkXDQBQQhE") .. tostring(sc))
return false
end

return true
end

pc.cameFrom = getgenv().ACBXUpdatedFrom

task.defer(function()
if pc.cameFrom then
getgenv().ACBXUpdatedFrom = nil
print(_d("Ky5yJyAxRBIaWAkcTA") .. pc.buildId .. _d("UEdEFRwNEBULEQMKAwlQ") .. tostring(pc.cameFrom) .. _d("WQ"))

pcall(function()
ww:Notify({
Title = _d("JR9VBAwJAA"),
Description = _d("IhpfCxECA1A") .. pc.buildId .. _d("XE9XFxcBRA") .. tostring(pc.cameFrom) .. _d("Xg"),
Lifetime = 6,
})
end)

return
end

print(_d("Ky5yJyAxRBIaWAkcTA") .. pc.buildId)
end)

task.defer(function()
task.wait(12)

if pc.announced or pc.buildId == _d("FApH") or pc.enabled then
return
end

pc.announced = true

local dtd = pc.check()

if not dtd then
return
end

print(_d("Ky5yJyAxRBIaWAkcTA") .. pc.buildId .. _d("UAZCRRoJDBkBVUU") .. tostring(dtd) .. _d("XE9QCxxMEQALUBEdH0QRHVRFFwoC"))
print(_d("Ky5yJyAxRBwAUAFYBRBQGFgREFZEHABQAQsYFhkBVk0fDQkVVXkRDBwjFRsZRw") .. pc.url .. _d("UkYYTVE"))

pcall(function()
ww:Notify({
Title = _d("JR9VBAwJRBEZUAwUDQYcCg"),
Description = _d("IhpfCxECA1A") .. pc.buildId .. _d("XE8") .. tostring(dtd) .. _d("UAZCRRcZEF5PYwBVCRwVDEQRHUwQH09dChkIRBkbHw"),
Lifetime = 10,
})
end)
end)

task.spawn(function()

task.wait(8)

while mbys() do
if not pc.enabled then

task.wait(5)
else
local uotr = pc.check()
local uau = pc.interval

if uotr then
if pc.pendingVersion ~= uotr or not pc.pendingSince then
pc.pendingVersion = uotr
pc.pendingSince = os.clock()
end

local ecz = os.clock() - (pc.pendingSince or os.clock())

if not pc.busy() or ecz >= pc.forceAfter then
if pc.apply(uotr) then

xgq = false
return
end

pc.pendingSince = os.clock()
uau = pc.retry
else
uau = pc.retry
end
else
pc.pendingVersion = nil
pc.pendingSince = nil
end

task.wait(uau)
end
end
end)
getgenv().ACBXUpdater = pc

task.defer(function()
task.wait(0.9)

local jh = kku.loadUi()

if type(jh) ~= _d("BA5TCR0") then
return
end

print(_d("Ky5yJyAxRBwAXg5YHgEDG14XHQheUA") .. tostring(jh.theme) .. _d("UA5FRQ") .. tostring(jh.scale))
end)

local function xul()
if not mbys() then
return
end

local mop = false
local ljge = false

pcall(function()
mop = fngx.nightmareToggle:GetState() == true
ljge = fngx.ui:GetState() == true
end)

if not (mop or ljge) then
return
end

fngx.nightmare = mop
fngx.enabled = true
fngx.manualPause = false
fngx.paused = false
fngx.parkedAt = 0
fngx.modeWrongAt = nil
fngx.pending = false
fngx.pendingUntil = 0

yhw.restorePause()
fngx.pauseArmed = false
yhw.hardPick(mop)

if not houj() then
fngx.floorAt = 0
fngx.battleAt = 0
fngx.floor = nil
end

print(_d("Ky5yJyAxRAQARgAKTBYVHEQIHQhEEQlFAApMFhUDXgQcVkQ") .. (mop and _d("HgZWDQwBBQIK") or _d("HgBDCBkA")))
end

task.defer(function()
task.wait(1)

local tvup = kku.autoLoadName()

if not tvup then
return
end

local hziv, nhx = kku.load(tvup)

task.delay(2, xul)

kku.selected = tvup
kku.lastText = hziv and (_d("MRpFClgACxELVAFY") .. tvup .. _d("Xg"))
or (_d("MRpFClgACxELEQMZBQgVCwtF") .. tostring(nhx))
kku.savesAt = 0

pcall(function()
kku.fileDropdown:UpdateSelection(tvup)
end)

pcall(function()
ww:Notify({
Title = _d("MwBfAxEL"),
Description = hziv and (_d("PABQAR0IRA") .. tvup .. _d("UABfRQsYBQIbHw"))
or (_d("MwBECRxMCh8bEQkXDQBQ") .. tvup .. _d("Sk8") .. tostring(nhx)),
Lifetime = 5,
})
end)
end)

task.defer(function()
task.wait(3)

kku.restorePriority()
end)

task.defer(function()
task.wait(3)

if kku.autoLoadName() then
return
end

xul()
end)
