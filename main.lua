-- [[ COFFEE HUB - LOGIN & CONTROLS GUI ]] --
local LP = game:GetService("Players").LocalPlayer
local SG = Instance.new("ScreenGui", game:GetService("CoreGui"))
SG.Name = "LoginHub"

-- Main Login Frame
local LoginFrame = Instance.new("Frame", SG)
LoginFrame.Size = UDim2.new(0, 240, 0, 160)
LoginFrame.Position = UDim2.new(0.5, -120, 0.5, -80)
LoginFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
LoginFrame.Active = true
LoginFrame.Draggable = true
Instance.new("UICorner", LoginFrame).CornerRadius = UDim.new(0, 8)

local Title = Instance.new("TextLabel", LoginFrame)
Title.Size = UDim2.new(0, 240, 0, 35)
Title.Text = "🔐 Enter Password"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 15
Title.Font = Enum.Font.SourceSansBold
Title.BackgroundTransparency = 1

local TextBox = Instance.new("TextBox", LoginFrame)
TextBox.Size = UDim2.new(0, 200, 0, 35)
TextBox.Position = UDim2.new(0, 20, 0, 45)
TextBox.PlaceholderText = "Type password..."
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(0, 0, 0)
TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextBox.TextSize = 14
Instance.new("UICorner", TextBox).CornerRadius = UDim.new(0, 6)

local SubmitBtn = Instance.new("TextButton", LoginFrame)
SubmitBtn.Size = UDim2.new(0, 95, 0, 35)
SubmitBtn.Position = UDim2.new(0, 20, 0, 95)
SubmitBtn.Text = "Login"
SubmitBtn.BackgroundColor3 = Color3.fromRGB(0, 170, 100)
SubmitBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
SubmitBtn.TextSize = 14
SubmitBtn.Font = Enum.Font.SourceSansBold
Instance.new("UICorner", SubmitBtn).CornerRadius = UDim.new(0, 6)

local ExitBtn = Instance.new("TextButton", LoginFrame)
ExitBtn.Size = UDim2.new(0, 95, 0, 35)
ExitBtn.Position = UDim2.new(0, 125, 0, 95)
ExitBtn.Text = "Exit"
ExitBtn.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
ExitBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
ExitBtn.TextSize = 14
ExitBtn.Font = Enum.Font.SourceSansBold
Instance.new("UICorner", ExitBtn).CornerRadius = UDim.new(0, 6)

-- Main Menu Frame (Hidden by default)
local MainFrame = Instance.new("Frame", SG)
MainFrame.Size = UDim2.new(0, 220, 0, 150)
MainFrame.Position = UDim2.new(0, 40, 0, 120)
MainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
MainFrame.Active = true
MainFrame.Draggable = true
MainFrame.Visible = false
Instance.new("UICorner", MainFrame).CornerRadius = UDim.new(0, 8)

local function mkMenuBtn(text, yPos, callback)
    local b = Instance.new("TextButton", MainFrame)
    b.Size = UDim2.new(0, 200, 0, 35)
    b.Position = UDim2.new(0, 10, 0, yPos)
    b.BackgroundColor3 = Color3.fromRGB(255, 140, 0)
    b.TextColor3 = Color3.fromRGB(255, 255, 255)
    b.Text = text
    b.TextSize = 14
    b.Font = Enum.Font.SourceSansBold
    Instance.new("UICorner", b).CornerRadius = UDim.new(0, 6)
    b.MouseButton1Click:Connect(callback)
end

mkMenuBtn("⚡ Ultra Speed (1000)", 15, function()
    if LP.Character and LP.Character:FindFirstChild("Humanoid") then
        LP.Character.Humanoid.WalkSpeed = 1000
    end
end)

mkMenuBtn("🔄 Reset Speed (16)", 55, function()
    if LP.Character and LP.Character:FindFirstChild("Humanoid") then
        LP.Character.Humanoid.WalkSpeed = 16
    end
end)

mkMenuBtn("❌ Close GUI", 95, function()
    SG:Destroy()
end)

-- Logic
ExitBtn.MouseButton1Click:Connect(function()
    SG:Destroy()
end)

SubmitBtn.MouseButton1Click:Connect(function()
    if TextBox.Text == "Coffee2026" then
        LoginFrame.Visible = false
        MainFrame.Visible = true
    else
        TextBox.Text = ""
        TextBox.PlaceholderText = "Wrong Password!"
    end
end)
