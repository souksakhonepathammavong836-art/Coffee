local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

humanoid.WalkSpeed = 50
humanoid.JumpPower = 100

print("ສະຄຣິບເຮັດວຽກແລ້ວ!")
