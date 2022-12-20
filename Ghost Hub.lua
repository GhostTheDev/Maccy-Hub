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

MainTab:AddToggle({
	Name = "God Mode",
	Default = false,
	Callback = function(Value)
		local Player = game.Players.LocalPlayer
		local Character = Player.Character
		local Humanoid = Character.Humanoid
 
		Library:MakeNotification({
			Name = "God Mode",
			Content = "God Mode is now " + Value,
			Image = "rbxassetid://4483345998",
			Time = 5
		});
 
		Humanoid.MaxHealth = 999999
		Humanoid.Health = Humanoid.MaxHealth / 2	
 
			Humanoid.HealthChanged:connect(function()
    			if Humanoid.Health < 10 then
        		Humanoid.Health = Humanoid.MaxHealth
    		end
		end)
	end    
})

MainTab:AddToggle({
	Name = "ESP",
	Default = false,
	Callback = function(Value)
        if #players > 1 then -- You as the executor.
			table.remove(players, 1) -- Removes you from the table so it doesn't put the ESP around you.
		end

		local Players = game:GetService("Players"):GetChildren()
		local RunService = game:GetService("RunService")
		local Highlight = Instance.new("Highlight")
		Highlight.Name = "Highlight"

		for i, v in pairs(Players) do
			repeat wait() until v.Character
			if not v.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Highlight") then
				local HighlightClone = Highlight:Clone()
				HighlightClone.Adornee = v.Character
				HighlightClone.Parent = v.Character:FindFirstChild("HumanoidRootPart")
				HighlightClone.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
				HighlightClone.Name = "Highlight"
			end
		end

		game.Players.PlayerAdded:Connect(function(player)
			repeat wait() until v.Character
			if not v.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Highlight") then
				local HighlightClone = Highlight:Clone()
				HighlightClone.Adornee = v.Character
				HighlightClone.Parent = v.Character:FindFirstChild("HumanoidRootPart")
				HighlightClone.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
				HighlightClone.Name = "Highlight"
			end
		end)

		game.Players.PlayerRemoving:COnnect(function(playerRemoved)
			playerRemoved.Character:FindFirstChild("HumanoidRootPart").Highlight:Destroy()
		end)

		RunService.Heartbeat:Connect(function()
			for i, v in pairs(Players) do
				repeat wait() until v.Character
				if not v.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Highlight") then
					local HighlightClone = Highlight.Clone()
					HighlightClone.Adornee = v.Character
					HighlightClone.Parent = v.Character:FindFirstChild("HumanoidRootPart")
					HighlightClone.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
					HighlightClone.Name = "Highlight"
					task.wait()
				end
			end
		end)
	end    
})

MainTab:AddButton({
    Name = "Kill All",
    Callback = function()
        if #players > 1 then -- You as the executor.
			table.remove(players, 1) -- Removes you from the table so it doesn't kill you.
		end
		
		game.Players.PlayerAdded:Connect(function()
			for i, players in pairs(game:GetService("Players"):GetChildren()) do
				players.Character.Humanoid.Health = 0
			end
		end)
    end
})

MainTab:AddButton({
	Name = "Kick Someone",
	Callback = function()
		game.Players.PlayerAdded:Connect(function(all)
			all:Kick("You have been kicked for cheating.")
		end)
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
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s -- Sets the speed of the slider you have decided to select.
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
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = s -- Sets the jump power of the slider you have selected.
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
		OrionLib:MakeNotification({
			Name = "Owl Hub",
			Content = "Owl Hub is now open.",
			Image = "rbxassetid://4483345998",
			Time = 5
		})
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