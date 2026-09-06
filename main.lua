-- [[ COFFEE HUB VIP - TYCOON AUTO BUY ]] --
local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

if CoreGui:FindFirstChild("CoffeeHubVIP") then
    CoreGui:FindFirstChild("CoffeeHubVIP"):Destroy()
end

local ScreenGui = Instance.new("ScreenGui", CoreGui)
ScreenGui.Name = "CoffeeHubVIP"

local autoBuy = false
local btn = Instance.new("TextButton", ScreenGui)
btn.Size = UDim2.new(0, 220, 0, 50)
btn.Position = UDim2.new(0, 40, 0, 40)
btn.BackgroundColor3 = Color3.fromRGB(0, 170, 100)
btn.TextColor3 = Color3.fromRGB(255, 255, 255)
btn.Text = "🛒 Auto Buy Buttons: OFF"
btn.TextSize = 15
btn.Font = Enum.Font.SourceSansBold

local corner = Instance.new("UICorner", btn)
corner.CornerRadius = UDim.new(0, 8)

btn.MouseButton1Click:Connect(function()
    autoBuy = not autoBuy
    if autoBuy then
        btn.Text = "🛒 Auto Buy Buttons: ON"
        btn.BackgroundColor3 = Color3.fromRGB(255, 140, 0)
    else
        btn.Text = "🛒 Auto Buy Buttons: OFF"
        btn.BackgroundColor3 = Color3.fromRGB(0, 170, 100)
    end
end)

task.spawn(function()
    while true do
        task.wait(0.2)
        if autoBuy and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
            pcall(function()
                local hrp = LocalPlayer.Character.HumanoidRootPart
                for _, v in pairs(workspace:GetDescendants()) do
                    if v:IsA("BasePart") and (v.Name:lower():find("button") or v.Name:lower():find("buy")) then
                        firetouchinterest(hrp, v, 0)
                        firetouchinterest(hrp, v, 1)
                    end
                end
            end)
        end
    end
end)
