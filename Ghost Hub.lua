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
	Name = "Button1",
	Callback = function()
  	end    
})

MainTab:AddColorpicker({
	Name = "Colorpicker",
	Default = Color3.fromRGB(255, 0, 0),
	Callback = function(Value)
		print(Value)
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
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
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

CreditsTab:AddParagraph("Coder","GhostDev#7318")


Library:Init()