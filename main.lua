-- COFFEE HUB --
autoBuy = false
btn = Instance.new("TextButton", game.CoreGui:FindFirstChild("CoreGui") or game.CoreGui)
btn.Size = UDim2.new(0, 200, 0, 50)
btn.Position = UDim2.new(0, 50, 0, 50)
btn.BackgroundColor3 = Color3.fromRGB(0, 170, 100)
btn.TextColor3 = Color3.fromRGB(255, 255, 255)
btn.Text = "Auto Buy: OFF"
btn.TextSize = 16

btn.MouseButton1Click:Connect(function()
    autoBuy = not autoBuy
    if autoBuy then
        btn.Text = "Auto Buy: ON"
        btn.BackgroundColor3 = Color3.fromRGB(255, 140, 0)
    else
        btn.Text = "Auto Buy: OFF"
        btn.BackgroundColor3 = Color3.fromRGB(0, 170, 100)
    end
end)

task.spawn(function()
    while true do
        task.wait(0.3)
        if autoBuy and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
            pcall(function()
                hrp = game.Players.LocalPlayer.Character.HumanoidRootPart
                for i, v in pairs(workspace:GetDescendants()) do
                    if v:IsA("BasePart") and (v.Name:lower():find("button") or v.Name:lower():find("buy")) then
                        firetouchinterest(hrp, v, 0)
                        firetouchinterest(hrp, v, 1)
                    end
                end
            end)
        end
    end
end)
