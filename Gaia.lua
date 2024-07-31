local DiscordLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt"))()
local scriptswin = DiscordLib:Window("VOID-X NIGHT WAVES")

local CHAIN = scriptswin:Server("CHAIN", "")
local MiscChain = CHAIN:Channel("Misc")

MiscChain:Button("Chain ESP", function()
local FillColor = Color3.fromRGB(81, 65, 79)
local DepthMode = "AlwaysOnTop"
local FillTransparency = 0.3
local OutlineColor = Color3.fromRGB(255, 0, 0)
local OutlineTransparency = 0
local CoreGui = game:FindService("CoreGui")

local Storage = Instance.new("Folder")
Storage.Parent = CoreGui
Storage.Name = "Highlight_Storage"

local Highlight = Instance.new("Highlight")
Highlight.Name = "yoomama"
Highlight.FillColor = FillColor
Highlight.DepthMode = DepthMode
Highlight.FillTransparency = FillTransparency
Highlight.OutlineColor = OutlineColor
Highlight.OutlineTransparency = 0
Highlight.Parent = Storage

local billboardGui = Instance.new("BillboardGui")
billboardGui.Name = "TadachiisESPTags" -- Use the correct name for the BillboardGui
billboardGui.Size = UDim2.new(0, 100, 0, 50) -- fixed size for the BillboardGui
billboardGui.StudsOffset = Vector3.new(0, 2, 0) -- adjust the vertical offset as needed
billboardGui.AlwaysOnTop = true
billboardGui.LightInfluence = 1
billboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
local textLabel = Instance.new("TextLabel")
textLabel.Name = "NameLabel" -- Use the correct name for the label
textLabel.Size = UDim2.new(1, 0, 1, 0)
textLabel.BackgroundTransparency = 1 -- transparent background
textLabel.TextColor3 = Color3.new(1, 0, 0) -- red text for the player's name
textLabel.TextScaled = true
textLabel.TextStrokeColor3 = Color3.new(0, 0, 0) -- black text stroke
textLabel.TextStrokeTransparency = 0 -- fully opaque text stroke (visible through walls)
textLabel.Visible = true -- ESP is always visible without a GUI
textLabel.Parent = billboardGui

local v
if game:GetService("Workspace").Misc.AI:FindFirstChild("CHAIN") and workspace.Misc.AI.CHAIN:FindFirstChild("Humanoid") then
  v = game:GetService("Workspace").Misc.AI.CHAIN
end

if v then
  Highlight.Adornee = v
  billboardGui.Parent = v.Head
  for i = 1, 4800 do
    wait(0.1)
    textLabel.Text = math.floor(v.Humanoid.Health)
  end
end

game:GetService("Workspace").Misc.AI.ChildAdded:Connect(function(Child)
  if Child.Name == "CHAIN" and Child:FindFirstChild("Humanoid") then
wait(5)
    Highlight.Adornee = Child
billboardGui.Parent = Child.Head
    for i = 1, 960 do
      wait(0.5)
      textLabel.Text = math.floor(Child.Humanoid.Health)
    end
  end
end)
  end)


MiscChain:Button("Infinite Stamina", function()
  --[[  local mt = getrawmetatable(game.Players.LocalPlayer.Character);
make_writeable(mt); 
local old_index = mt.__index;

mt.__index = function(a, b) 
if tostring(a) == "Stamina" then 
if tostring(b) == "Value" then return 999; 
end 
end 
return old_index(a, b);
end  --]]

local plr = game.Players.LocalPlayer
local char = plr.Character

local function abc()	
char.Stats.Stamina.Value = 100
end

char.Stats.Stamina:GetPropertyChangedSignal("Value"):Connect(abc)
end)
