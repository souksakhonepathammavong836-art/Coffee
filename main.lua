local OrionLib = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Orion/main/source'))()
local Window = OrionLib:MakeWindow({Name = "Coffee Hub ☕", HidePremium = false, SaveConfig = true, ConfigFolder = "CoffeeConfig"})

-- ແທັບຫຼັກ
local MainTab = Window:MakeTab({
	Name = "Main Player",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = MainTab:AddSection({
	Name = "Character Settings"
})

-- ປັບຄວາມໄວ (WalkSpeed)
MainTab:AddSlider({
	Name = "WalkSpeed (ຄວາມໄວ)",
	Min = 16,
	Max = 250,
	Default = 16,
	Color = Color3.fromRGB(255, 255, 255),
	Increment = 1,
	ValueName = "Speed",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end    
})

-- ປັບຄວາມສູງໃນການໂດດ (JumpPower)
MainTab:AddSlider({
	Name = "JumpPower (ຄວາມສູງໂດດ)",
	Min = 50,
	Max = 300,
	Default = 50,
	Color = Color3.fromRGB(255, 255, 255),
	Increment = 1,
	ValueName = "Power",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	end    
})

-- ປຸ່ມຣີເຊັດຄ່າເດີມ
MainTab:AddButton({
	Name = "Reset Normal (ຄ່າເດີມ)",
	Callback = function()
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
  	end
})

OrionLib:Init()

