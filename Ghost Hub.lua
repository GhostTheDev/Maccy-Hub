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

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/RealzzDev/Ghost-Hub/main/GUI%20Source"))()
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
    Icon = "rbxassetid://7743871002",
    PremiumOnly = false
})

local AnimTab = Window:MakeTab({
	Name = "Animations",
	Icon = "rbxassetid://7734020554",
	PremiumOnly = false
})

local ScriptsTab = Window:MakeTab({
	Name = "Scripts",
	Icon = "rbxassetid://7733920644",
	PremiumOnly = false
})

local GamesTab = Window:MakeTab({
	Name = "Game Hubs",
	Icon = "rbxassetid://7733799795",
	PremiumOnly	= false
})

local CreditsTab = Window:MakeTab({
    Name = "Credits",
    Icon = "rbxassetid://7733671493",
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


LocalTab:AddButton({
	Name = "Server Hop",
	Callback = function()
		local module = loadstring(game:HttpGet"https://raw.githubusercontent.com/LeoKholYt/roblox/main/lk_serverhop.lua")()

		module:Teleport(game.PlaceId)
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
			Content = "God Mode has been ",
			Image = "rbxassetid://4483345998",
			Time = 5
		})


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
	loadstring(game:HttpGet('https://pastebin.com/raw/JGTCGFE2'))()
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
	end
})


local FarmSection = LocalTab:AddSection({
	Name = "Farming Tools"
})


LocalTab:AddToggle({
	Name = "Auto Tap",
	Default = false,
	Callback = function(Value)
		_G.autoTap = Value
        autoTap()
	end    
})


LocalTab:AddToggle({
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


AnimTab:AddButton({
	Name = "Cartoony",
	Callback = function()
		local Animate = game.Players.LocalPlayer.Character.Animate
		Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=742637544"
		Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=742638445"
		Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=742640026"
		Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=742638842"
		Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=742637942"
		Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=742636889"
		Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=742637151"
		game.Players.LocalPlayer.Character.Humanoid.Jump = true
	end
})


AnimTab:AddButton({
	Name = "Levitation",
	Callback = function()
		local Animate = game.Players.LocalPlayer.Character.Animate
		Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616006778"
		Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616008087"
		Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616013216"
		Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616010382"
		Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616008936"
		Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616003713"
		Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616005863"
		game.Players.LocalPlayer.Character.Humanoid.Jump = true
	end
})


AnimTab:AddButton({
	Name = "Ninja",
	Callback = function()
		local Animate = game.Players.LocalPlayer.Character.Animate
		Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=656117400"
		Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=656118341"
		Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=656121766"
		Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=656118852"
		Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=656117878"
		Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=656114359"
		Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=656115606"
		game.Players.LocalPlayer.Character.Humanoid.Jump = true
	end
})


AnimTab:AddButton({
	Name = "Pirate",
	Callback = function()
		local Animate = game.Players.LocalPlayer.Character.Animate
		Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=750781874"
		Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=750782770"
		Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=750785693"
		Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=750783738"
		Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=750782230"
		Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=750779899"
		Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=750780242"
		game.Players.LocalPlayer.Character.Humanoid.Jump = true
	end
})


AnimTab:AddButton({
	Name = "Vampire",
	Callback = function()
		local Animate = game.Players.LocalPlayer.Character.Animate
		Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1083445855"
		Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1083450166"
		Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1083473930"
		Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1083462077"
		Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1083455352"
		Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1083439238"
		Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1083443587"
		game.Players.LocalPlayer.Character.Humanoid.Jump = true
	end
})


AnimTab:AddButton({
	Name = "Superhero",
	Callback = function()
		local Animate = game.Players.LocalPlayer.Character.Animate
		Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616111295"
		Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616113536"
		Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616122287"
		Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616117076"
		Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616115533"
		Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616104706"
		Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616108001"
		game.Players.LocalPlayer.Character.Humanoid.Jump = true
	end
})


local R15Section = AnimTab:AddSection({
	Name = "R15 Emotes"
})





local R6Section = AnimTab:AddSection({
	Name = "R6 Emotes"
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
		loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'), true))()
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


local AdoptSection = GamesTab:AddSection({
	Name = "Adopt Me!"
})


GamesTab:AddButton({
	Name = "VG Hub",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/1201for/V.G-Hub/main/V.Ghub'))()
	end
})


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
		loadstring(game:HttpGet('https://pastebin.com/raw/rysGLM7U'))()
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


CreditsTab:AddParagraph("Coder","GhostDev#7318")


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