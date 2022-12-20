local Library = loadstring(game:HttpGet("https://pastebin.com/raw/c9STrGY4"))()
local Window = Library:MakeWindow({Name = "👻 Ghost Hub", HidePremium = false, IntroText = "👻 Ghost Hub", SaveConfig = true, ConfigFolder = "GhostConfig"})


-- Values
_G.autoTap = true
_G.autoRebirth = true


-- Functions
function autoTap()
    while _G.autoTap == true do
        game:GetService("ReplicatedStorage").Remotes.Tap:FireServer()
        wait(.0001)
    end
end

function autoRebirth()
    while _G.autoRebirth == true do
        game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(1)
        wait (.0001)
    end
end


-- Tabs

local MainTab = Window:MakeTab({
    Name = "Main",
    Icon = "rbxassetid://7733779730",
    PremiumOnly = false
})

local LocalTab = Window:MakeTab({
    Name = "Local Player",
    Icon = "rbxassetid://7733954760",
    PremiumOnly = false
})

local FarmTab = Window:MakeTab({
	Name = "Auto Farm",
	Icon = "rbxassetid://7743866529",
	PremiumOnly = false
})

local ScriptsTab = Window:MakeTab({
	Name = "Scripts",
	Icon = "rbxassetid://7733793319",
	PremiumOnly = false
})

local CreditsTab = Window:MakeTab({
    Name = "Credits",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})


-- Main Interaction

MainTab:AddButton({
	Name = "Box ESP",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/CriShoux/OwlHub/master/OwlHub.txt"))();
  	end    
})

-- Local Player Interaction

LocalTab:AddSlider({
	Name = "Player Speed",
	Min = 16,
	Max = 500,
	Default = 16,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Speed",
	Callback = function(s)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
	end    
})

LocalTab:AddSlider({
	Name = "Player Jump Power",
	Min = 50,
	Max = 250,
	Default = 16,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Jump Power",
	Callback = function(s)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
	end    
})

-- Farm Interaction

FarmTab:AddToggle({
	Name = "Auto Tap",
	Default = false,
	Callback = function(Value)
		_G.autoTap = Value
        autoTap()
	end    
})

FarmTab:AddToggle({
    Name = "Auto Rebirth",
    Default = false,
    Callback = function(Value)
        _G.autoRebirth = Value
        autoRebirth()
    end
})

-- Scripts Interaction

ScriptsTab:AddButton({
	Name = "Owl Hub",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/CriShoux/OwlHub/master/OwlHub.txt"))();
  	end    
})

ScriptsTab:AddButton({
    Name = "Admin Menu",
    Callback = function()
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
    end
})

-- Credits Interaction

CreditsTab:AddParagraph("Coder","GhostDev")

CreditsTab:AddParagraph("GUI Designer","Shlexware, GhostDev")

CreditsTab:AddParagraph("Discord","GhostDev#7318")


Library:Init()





























--[[ local lplr = game.Players.LocalPlayer
local camera = game:GetService("Workspace").CurrentCamera
local CurrentCamera = workspace.CurrentCamera
local worldToViewportPoint = CurrentCamera.WorldToViewportPoint

local HeadOff = Vector3.new(0, 0.5, 0)
local LegOff = vector3.new(0, 3, 0)

for i, v in pairs(game.Players:GetChildren()) do
	local BoxOutline = Drawing.new("Square")
	BoxOutline.Visible = false
	BoxOutline.Color = Color3.new(0, 0, 0)
	BoxOutline.Thickness = 3
	BoxOutline.Transparency = 1
	BoxOutline.Filled = false
	
	local Box = Drawing.new("Square")
	Box.Visible = false
	Box.Color = Color3.new(1, 1, 1)
	Box.Thickness = 1
	Box.Transparency = 1
	Box.Filled = false

	function boxesp()
		game:GetService("RunService").RenderStepped:Connect(function()
			if v.Character ~= nil and v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("HumanoidRootPart") ~= nil and v ~= lplr and v.Character.Humanoid.Health > 0 then
				local Vector, onScreen = camera:worldToViewportPoint(v.Character.HumanoidRootPart.Position)

				local RootPart = v.Character.HumanoidRootPart
				local Head = v.Character.Head
				local RootPosition, Rootvis = worldToViewportPoint(CurrentCamera, RootPart.Position)
				local HeadPosition = worldToViewportPoint(CurrentCamera, Head.Position + HeadOff)
				local LegPosition = worldToViewportPoint(CurrentCamera, RootPart.Position - LegOff)

				if onScreen then
					BoxOutline.Size = Vector2.new(1000 / RootPosition.Z, HeadPosition.Y - LegPosition.Y)
					BoxOutline.Position = Vector2.new(RootPosition.X - BoxOutline.Size.X / 2, RootPosition.Y - BoxOutline.Size.Y / 2)
					BoxOutline.Visible = true

					Box.Size = Vector2.new(1000 / RootPosition.Z, HeadPosition.Y - LegPosition.Y)
					Box.Position = Vector2.new(RootPosition.X - Box.Size.X / 2, RootPosition.Y - Box.Size.Y / 2)
					Box.Visible = true
				else
					BoxOutline.Visible = false
					Box.Visible = false
				end
			else
				BoxOutline.Visible = false
				Box.Visible = false
			end
		end)
	end
	coroutine.wrap(boxesp)()
end

game.Players.PlayerAdded:Connect(function(v)
	local BoxOutline = Drawing.new("Square")
	BoxOutline.Visible = false
	BoxOutline.Color = Color3.new(0, 0, 0)
	BoxOutline.Thickness = 3
	BoxOutline.Transparency = 1
	BoxOutline.Filled = false
	
	local Box = Drawing.new("Square")
	Box.Visible = false
	Box.Color = Color3.new(1, 1, 1)
	Box.Thickness = 1
	Box.Transparency = 1
	Box.Filled = false

	function boxesp()
		game:GetService("RunService").RenderStepped:Connect(function()
			if v.Character ~= nil and v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("HumanoidRootPart") ~= nil and v ~= lplr and v.Character.Humanoid.Health > 0 then
				local Vector, onScreen = camera:worldToViewportPoint(v.Character.HumanoidRootPart.Position)

				local RootPart = v.Character.HumanoidRootPart
				local Head = v.Character.Head
				local RootPosition, Rootvis = worldToViewportPoint(CurrentCamera, RootPart.Position)
				local HeadPosition = worldToViewportPoint(CurrentCamera, Head.Position + HeadOff)
				local LegPosition = worldToViewportPoint(CurrentCamera, RootPart.Position - LegOff)

				if onScreen then
					BoxOutline.Size = Vector2.new(1000 / RootPosition.Z, HeadPosition.Y - LegPosition.Y)
					BoxOutline.Position = Vector2.new(RootPosition.X - BoxOutline.Size.X / 2, RootPosition.Y - BoxOutline.Size.Y / 2)
					BoxOutline.Visible = true

					Box.Size = Vector2.new(1000 / RootPosition.Z, HeadPosition.Y - LegPosition.Y)
					Box.Position = Vector2.new(RootPosition.X - Box.Size.X / 2, RootPosition.Y - Box.Size.Y / 2)
					Box.Visible = true
				else
					BoxOutline.Visible = false
					Box.Visible = false
				end
			else
				BoxOutline.Visible = false
				Box.Visible = false
			end
		end)
	end
	coroutine.wrap(boxesp)()
end) --]]