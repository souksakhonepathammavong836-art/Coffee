-- [[ COFFEE HUB VIP - TYCOON AUTO BUY ]] --
_CoreGui = game:GetService("CoreGui")
_Players = game:GetService("Players")
_LocalPlayer = Players.LocalPlayer

_if CoreGui:FindFirstChild("CoffeeHubVIP") then
_    CoreGui:FindFirstChild("CoffeeHubVIP"):Destroy()
_end

_ScreenGui = Instance.new("ScreenGui", CoreGui)
_ScreenGui.Name = "CoffeeHubVIP"

_autoBuy = false
_btn = Instance.new("TextButton", ScreenGui)
_btn.Size = UDim2.new(0, 220, 0, 50)
_btn.Position = UDim2.new(0, 40, 0, 40)
_btn.BackgroundColor3 = Color3.fromRGB(0, 170, 100)
_btn.TextColor3 = Color3.fromRGB(255, 255, 255)
_btn.Text = "🛒 Auto Buy: OFF"
_btn.TextSize = 15
_btn.Font = Enum.Font.SourceSansBold

_corner = Instance.new("UICorner", btn)
_corner.CornerRadius = UDim.new(0, 8)

_btn.MouseButton1Click:Connect(function()
_    autoBuy = not autoBuy
_    if autoBuy then
_        btn.Text = "🛒 Auto Buy: ON"
_        btn.BackgroundColor3 = Color3.fromRGB(255, 140, 0)
_    else
_        btn.Text = "🛒 Auto Buy: OFF"
_        btn.BackgroundColor3 = Color3.fromRGB(0, 170, 100)
_    end
_end)

_task.spawn(function()
_    while true do
_        task.wait(0.3)
_        if autoBuy and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
_            pcall(function()
_                hrp = LocalPlayer.Character.HumanoidRootPart
_                for _, v in pairs(workspace:GetDescendants()) do
_                    if v:IsA("BasePart") and v:FindFirstChildOfClass("TouchTransmitter") then
_                        dist = (hrp.Position - v.Position).Magnitude
_                        if dist < 40 then
_                            firetouchinterest(hrp, v, 0)
_                            firetouchinterest(hrp, v, 1)
_                        end
_                    end
_                end
_            end)
_        end
_    end
_end)
