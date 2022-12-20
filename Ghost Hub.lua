--[[

	░██████╗░██╗░░██╗░█████╗░░██████╗████████╗  ██╗░░██╗██╗░░░██╗██████╗░
	██╔════╝░██║░░██║██╔══██╗██╔════╝╚══██╔══╝  ██║░░██║██║░░░██║██╔══██╗
	██║░░██╗░███████║██║░░██║╚█████╗░░░░██║░░░  ███████║██║░░░██║██████╦╝
	██║░░╚██╗██╔══██║██║░░██║░╚═══██╗░░░██║░░░  ██╔══██║██║░░░██║██╔══██╗
	╚██████╔╝██║░░██║╚█████╔╝██████╔╝░░░██║░░░  ██║░░██║╚██████╔╝██████╦╝
	░╚═════╝░╚═╝░░╚═╝░╚════╝░╚═════╝░░░░╚═╝░░░  ╚═╝░░╚═╝░╚═════╝░╚═════╝░
   \_____________________________________________________________________/
                                
                                  Ghost Hub
							    
							Made by GhostDev#7318
						https://discord.gg/YEQTh4gn2k

]]

local Library = loadstring(game:HttpGet("https://pastebin.com/raw/c9STrGY4"))()
local Window = Library:MakeWindow({
	Name = "👻 Ghost Hub",
	HidePremium = false,
	IntroText = "👻 Ghost Hub",
	SaveConfig = true,
	ConfigFolder = "GhostConfig"
})


--[[

██╗░░░██╗░█████╗░██╗░░░░░██╗░░░██╗███████╗░██████╗
██║░░░██║██╔══██╗██║░░░░░██║░░░██║██╔════╝██╔════╝
╚██╗░██╔╝███████║██║░░░░░██║░░░██║█████╗░░╚█████╗░
░╚████╔╝░██╔══██║██║░░░░░██║░░░██║██╔══╝░░░╚═══██╗
░░╚██╔╝░░██║░░██║███████╗╚██████╔╝███████╗██████╔╝
░░░╚═╝░░░╚═╝░░╚═╝╚══════╝░╚═════╝░╚══════╝╚═════╝░

]]

_G.autoTap = true
_G.autoRebirth = true


--[[

███████╗██╗░░░██╗███╗░░██╗░█████╗░████████╗██╗░█████╗░███╗░░██╗░██████╗
██╔════╝██║░░░██║████╗░██║██╔══██╗╚══██╔══╝██║██╔══██╗████╗░██║██╔════╝
█████╗░░██║░░░██║██╔██╗██║██║░░╚═╝░░░██║░░░██║██║░░██║██╔██╗██║╚█████╗░
██╔══╝░░██║░░░██║██║╚████║██║░░██╗░░░██║░░░██║██║░░██║██║╚████║░╚═══██╗
██║░░░░░╚██████╔╝██║░╚███║╚█████╔╝░░░██║░░░██║╚█████╔╝██║░╚███║██████╔╝
╚═╝░░░░░░╚═════╝░╚═╝░░╚══╝░╚════╝░░░░╚═╝░░░╚═╝░╚════╝░╚═╝░░╚══╝╚═════╝░

]]
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


--[[

████████╗░█████╗░██████╗░░██████╗
╚══██╔══╝██╔══██╗██╔══██╗██╔════╝
░░░██║░░░███████║██████╦╝╚█████╗░
░░░██║░░░██╔══██║██╔══██╗░╚═══██╗
░░░██║░░░██║░░██║██████╦╝██████╔╝
░░░╚═╝░░░╚═╝░░╚═╝╚═════╝░╚═════╝░

]]

local LocalTab = Window:MakeTab({
    Name = "Local",
    Icon = "rbxassetid://7733954760",
    PremiumOnly = false
})

local AnimTab = Window:MakeTab({
	Name = "Animations",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local ScriptsTab = Window:MakeTab({
	Name = "GH Scripts",
	Icon = "rbxassetid://7733793319",
	PremiumOnly = false
})

local GamesTab = Window:MakeTab({
	Name = "Game Hubs",
	Icon = "rbxassetid://4483345998",
	PremiumOnly	= false
})

local CreditsTab = Window:MakeTab({
    Name = "Credits",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})


--[[

██╗░░░░░░█████╗░░█████╗░░█████╗░██╗░░░░░
██║░░░░░██╔══██╗██╔══██╗██╔══██╗██║░░░░░
██║░░░░░██║░░██║██║░░╚═╝███████║██║░░░░░
██║░░░░░██║░░██║██║░░██╗██╔══██║██║░░░░░
███████╗╚█████╔╝╚█████╔╝██║░░██║███████╗
╚══════╝░╚════╝░░╚════╝░╚═╝░░╚═╝╚══════╝

]]


local LocalSection = LocalTab:AddSection({
	Name = "Local Tools"
})


LocalTab:AddSlider({
	Name = "Player Speed",
	Min = 16,
	Max = 500,
	Default = 16,
	Color = Color3.fromRGB(85, 166, 71),
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
	Color = Color3.fromRGB(85, 166, 71),
	Increment = 1,
	ValueName = "Jump Power",
	Callback = function(s)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = s -- Sets the jump power of the slider you have selected.
	end    
})


LocalTab:AddButton({
	Name = "Rejoin",
	Callback = function()
		game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
	end
})


local CheatsSection = LocalTab:AddSection({
	Name = "Cheating Tools"
})


LocalTab:AddToggle({
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


LocalTab:AddButton({
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


LocalTab:AddToggle({
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


LocalTab:AddButton({
	Name = "Kick Someone",
	Callback = function()
		if #players > 1 then -- You as the executor.
			table.remove(players, 1) -- Removes you from the table so it doesn't kick you.
		end

		game.Players.PlayerAdded:Connect(function(player)
			for _, v in pairs(game.Players:GetPlayers()) do
			wait(10)
			v:Kick("You have been kicked for cheating. Please join back in 1 hour or you will be permanently banned.")
		end
	end)
})


local FarmSection = LocalTab:AddSection({
	Name = "Farming Tools"
})


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


local UtilitySection = LocalTab:AddSection({
	Name = "Utility Tools"
})


--[[

░█████╗░███╗░░██╗██╗███╗░░░███╗░█████╗░████████╗██╗░█████╗░███╗░░██╗░██████╗
██╔══██╗████╗░██║██║████╗░████║██╔══██╗╚══██╔══╝██║██╔══██╗████╗░██║██╔════╝
███████║██╔██╗██║██║██╔████╔██║███████║░░░██║░░░██║██║░░██║██╔██╗██║╚█████╗░
██╔══██║██║╚████║██║██║╚██╔╝██║██╔══██║░░░██║░░░██║██║░░██║██║╚████║░╚═══██╗
██║░░██║██║░╚███║██║██║░╚═╝░██║██║░░██║░░░██║░░░██║╚█████╔╝██║░╚███║██████╔╝
╚═╝░░╚═╝╚═╝░░╚══╝╚═╝╚═╝░░░░░╚═╝╚═╝░░╚═╝░░░╚═╝░░░╚═╝░╚════╝░╚═╝░░╚══╝╚═════╝░

]]


local AnimationsSection = AnimTab:AddSection({
	Name = "Animations"
})





local R15Section = AnimTab:AddSection({
	Name = "R15 Animations"
})





local R6Section = AnimTab:AddSection({
	Name = "R6 Animations"
})


--[[

░██████╗░█████╗░██████╗░██╗██████╗░████████╗░██████╗
██╔════╝██╔══██╗██╔══██╗██║██╔══██╗╚══██╔══╝██╔════╝
╚█████╗░██║░░╚═╝██████╔╝██║██████╔╝░░░██║░░░╚█████╗░
░╚═══██╗██║░░██╗██╔══██╗██║██╔═══╝░░░░██║░░░░╚═══██╗
██████╔╝╚█████╔╝██║░░██║██║██║░░░░░░░░██║░░░██████╔╝
╚═════╝░░╚════╝░╚═╝░░╚═╝╚═╝╚═╝░░░░░░░░╚═╝░░░╚═════╝░

]]


local ScriptsSection = ScriptsTab:AddSection({
	Name = "Scripts"
})


local AdminSection = ScriptsTab:AddSection({
	Name = "Admin Panels"
})


ScriptsTab:AddButton({
	Name = "Infinite Yield",
	Callback = function()
		loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
	end
})


--[[

░██████╗░░█████╗░███╗░░░███╗███████╗  ██╗░░██╗██╗░░░██╗██████╗░░██████╗
██╔════╝░██╔══██╗████╗░████║██╔════╝  ██║░░██║██║░░░██║██╔══██╗██╔════╝
██║░░██╗░███████║██╔████╔██║█████╗░░  ███████║██║░░░██║██████╦╝╚█████╗░
██║░░╚██╗██╔══██║██║╚██╔╝██║██╔══╝░░  ██╔══██║██║░░░██║██╔══██╗░╚═══██╗
╚██████╔╝██║░░██║██║░╚═╝░██║███████╗  ██║░░██║╚██████╔╝██████╦╝██████╔╝
░╚═════╝░╚═╝░░╚═╝╚═╝░░░░░╚═╝╚══════╝  ╚═╝░░╚═╝░╚═════╝░╚═════╝░╚═════╝░

]]


local BloxburgSection = GamesTab:AddSection({
	Name = "Welcome to Bloxburg"
})


GamesTab:AddButton({
	Name = "Scar Hub",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/PainfulDestroyer/Roblox/main/Scar%20Hub"))()
	end
})


local RaceClickerSection = GamesTab:AddSection({
	Name = "Race Clicker"
})


GamesTab:AddButton({
	Name = "Race Clicker Hub",
		Callback = function()
		loadstring(game:HttpGet(('https://raw.githubusercontent.com/Saaakai/Random-Roblox-Script/main/Race%20Clicker')))()
	end
})


local DoorsSection = GamesTab:AddSection({
	Name = "Doors"
})

GamesTab:AddButton({
	Name = "Doors Hub",
	Callback = function()
		loadstring(game:HttpGet(https://pastebin.com/raw/rysGLM7U))()
	end
})


local AimSection = GamesTab:AddSection({
	Name = "Aimbot"
})


GamesTab:AddButton({
	Name = "Owl Hub",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/CriShoux/OwlHub/master/OwlHub.txt"))();
  	end    
})


--[[

░█████╗░██████╗░███████╗██████╗░██╗████████╗░██████╗
██╔══██╗██╔══██╗██╔════╝██╔══██╗██║╚══██╔══╝██╔════╝
██║░░╚═╝██████╔╝█████╗░░██║░░██║██║░░░██║░░░╚█████╗░
██║░░██╗██╔══██╗██╔══╝░░██║░░██║██║░░░██║░░░░╚═══██╗
╚█████╔╝██║░░██║███████╗██████╔╝██║░░░██║░░░██████╔╝
░╚════╝░╚═╝░░╚═╝╚══════╝╚═════╝░╚═╝░░░╚═╝░░░╚═════╝░

]]


local CreditsSection = CreditsTab:AddSection({
	Name = "Credits"
})


CreditsTab:AddParagraph("Coder","GhostDev")


CreditsTab:AddButton({
	Name = "Click for Discord Server Link",
		Callback = function()	
			setclipboard('https://discord.gg/YEQTh4gn2k')
	end
})


--[[

██████╗░░█████╗░  ███╗░░██╗░█████╗░████████╗  ████████╗░█████╗░██╗░░░██╗░█████╗░██╗░░██╗
██╔══██╗██╔══██╗  ████╗░██║██╔══██╗╚══██╔══╝  ╚══██╔══╝██╔══██╗██║░░░██║██╔══██╗██║░░██║
██║░░██║██║░░██║  ██╔██╗██║██║░░██║░░░██║░░░  ░░░██║░░░██║░░██║██║░░░██║██║░░╚═╝███████║
██║░░██║██║░░██║  ██║╚████║██║░░██║░░░██║░░░  ░░░██║░░░██║░░██║██║░░░██║██║░░██╗██╔══██║
██████╔╝╚█████╔╝  ██║░╚███║╚█████╔╝░░░██║░░░  ░░░██║░░░╚█████╔╝╚██████╔╝╚█████╔╝██║░░██║
╚═════╝░░╚════╝░  ╚═╝░░╚══╝░╚════╝░░░░╚═╝░░░  ░░░╚═╝░░░░╚════╝░░╚═════╝░░╚════╝░╚═╝░░╚═╝

]]


Library:Init()