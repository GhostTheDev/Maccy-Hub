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


local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GhostTheDev/Maccy-Hub/main/GUI%20Source"))()
local Window = Library:MakeWindow({
	Name = "Maccy Hub",
	HidePremium = false,
	IntroText = "Maccy | v1.0",
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
	Color = Color3.fromRGB(47, 47, 47),
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
	Color = Color3.fromRGB(47, 47, 47),
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
	Name = "Bring All",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/DigitalityScripts/roblox-scripts/main/Bring%20All'))()
	end
})

                         
LocalTab:AddButton({
    Name = "Kill All",
    Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/DigitalityScripts/roblox-scripts/main/Kill%20All'))()
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


LocalTab:AddButton({
	Name = "BTools",
	Default = false,
	Callback = function()
--[[
	Keybinds:
	Press P for BTools
	Press L to unlock the Workspace
	Press K to enable the backpack/other core elements.
]]--
 
		local player = game.Players.LocalPlayer
		local mouse = player:GetMouse()
 
		mouse.KeyDown:connect(function(key)
 	   key = string.lower(key)
 
			if key == "p" then
				for item = 1, 4 do
					HopperBin = Instance.new("HopperBin", game.Players.LocalPlayer.Backpack)
					HopperBin.BinType = item
				end
			elseif key == "l" then
				function UnlockWorkspace(a)
					for n,part in pairs(a:GetChildren()) do
						if(part:IsA("BasePart")) then 
							part.Locked = false 
						end
						UnlockWorkspace(part)
					end
				end
				UnlockWorkspace(workspace)
			elseif key == "k" then
				local StarterGui = game:GetService("StarterGui")
				StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.All, true)
			end
		end)
	end
})


LocalTab:AddParagraph("BTools Keybinds","P for BTools, L to unlock Workspace, K to enable backpack")


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
	Name = "Astronaut",
	Callback = function()
		local Animate = game.Players.LocalPlayer.Character.Animate
		Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=891621366"
		Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=891633237"
		Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=891667138"
		Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=891636393"
		Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=891627522"
		Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=891609353"
		Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=891617961"
		game.Players.LocalPlayer.Character.Humanoid.Jump = true
	end
})


AnimTab:AddButton({
	Name = "Bubbly",
	Callback = function()
		local Animate = game.Players.LocalPlayer.Character.Animate
		Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=910004836"
		Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=910009958"
		Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=910034870"
		Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=910025107"
		Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=910016857"
		Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=910001910"
		Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=910030921"
		Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=910028158"
		game.Players.LocalPlayer.Character.Humanoid.Jump = true
	end
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
	Name = "Elder",
	Callback = function()
		local Animate = game.Players.LocalPlayer.Character.Animate
		Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=845397899"
		Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=845400520"
		Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=845403856"
		Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=845386501"
		Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=845398858"
		Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=845392038"
		Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=845396048"
		game.Players.LocalPlayer.Character.Humanoid.Jump = true
	end
})


AnimTab:AddButton({
	Name = "Knight",
	Callback = function()
		local Animate = game.Players.LocalPlayer.Character.Animate
		Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=657595757"
		Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=657568135"
		Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=657552124"
		Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=657564596"
		Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=658409194"
		Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=658360781"
		Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=657600338"
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
	Name = "Mage",
	Callback = function()
		local Animate = game.Players.LocalPlayer.Character.Animate
		Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=707742142"
		Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=707855907"
		Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=707897309"
		Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=707861613"
		Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=707853694"
		Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=707826056"
		Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=707829716"
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
	Name = "Robot",
	Callback = function()
		local Animate = game.Players.LocalPlayer.Character.Animate
		Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616088211"
		Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616089559"
		Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616095330"
		Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616091570"
		Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616090535"
		Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616086039"
		Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616087089"
		game.Players.LocalPlayer.Character.Humanoid.Jump = true
	end
})


AnimTab:AddButton({
	Name = "Stylish",
	Callback = function()
		local Animate = game.Players.LocalPlayer.Character.Animate
		Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616136790"
		Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616138447"
		Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616146177"
		Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616140816"
		Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616139451"
		Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616133594"
		Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616134815"
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


AnimTab:AddButton({
	Name = "Toy",
	Callback = function()
		local Animate = game.Players.LocalPlayer.Character.Animate
		Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=782841498"
		Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=782845736"
		Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=782843345"
		Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=782842708"
		Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=782847020"
		Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=782843869"
		Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=782846423"
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
	Name = "Werewolf",
	Callback = function()
		local Animate = game.Players.LocalPlayer.Character.Animate
		Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1083195517"
		Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1083214717"
		Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1083178339"
		Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1083216690"
		Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1083218792"
		Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1083182000"
		Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1083189019"
		game.Players.LocalPlayer.Character.Humanoid.Jump = true
    end
})


AnimTab:AddButton({
	Name = "Zombie",
	Callback = function()
		local Animate = game.Players.LocalPlayer.Character.Animate
		Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616158929"
		Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616160636"
		Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616168032"
		Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616163682"
		Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616161997"
		Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616156119"
		Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616157476"
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


ScriptsTab:AddButton({
	Name = "Chat Spoofer",
	Callback = function()
		loadstring(game:HttpGet(('https://pastebin.com/raw/djBfk8Li'),true))()
	end
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


CreditsTab:AddParagraph("Beta Testers", "Battery#3488")


--[[

██████╗░░█████╗░  ███╗░░██╗░█████╗░████████╗  ████████╗░█████╗░██╗░░░██╗░█████╗░██╗░░██╗
██╔══██╗██╔══██╗  ████╗░██║██╔══██╗╚══██╔══╝  ╚══██╔══╝██╔══██╗██║░░░██║██╔══██╗██║░░██║
██║░░██║██║░░██║  ██╔██╗██║██║░░██║░░░██║░░░  ░░░██║░░░██║░░██║██║░░░██║██║░░╚═╝███████║
██║░░██║██║░░██║  ██║╚████║██║░░██║░░░██║░░░  ░░░██║░░░██║░░██║██║░░░██║██║░░██╗██╔══██║
██████╔╝╚█████╔╝  ██║░╚███║╚█████╔╝░░░██║░░░  ░░░██║░░░╚█████╔╝╚██████╔╝╚█████╔╝██║░░██║
╚═════╝░░╚════╝░  ╚═╝░░╚══╝░╚════╝░░░░╚═╝░░░  ░░░╚═╝░░░░╚════╝░░╚═════╝░░╚════╝░╚═╝░░╚═╝

]]


Library:Init()