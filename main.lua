-- [[ COFFEE VIP HUB - ULTIMATE EDITION BY SOUKSAKHONE ]] --
local LP = game:GetService("Players").LocalPlayer
local SG = Instance.new("ScreenGui", game:GetService("CoreGui"))
SG.Name = "CoffeeVIPHubUltimate"

-- Main Login Frame
local LoginFrame = Instance.new("Frame", SG)
LoginFrame.Size = UDim2.new(0, 260, 0, 180)
LoginFrame.Position = UDim2.new(0.5, -130, 0.5, -90)
LoginFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
LoginFrame.Active = true
LoginFrame.Draggable = true
Instance.new("UICorner", LoginFrame).CornerRadius = UDim.new(0, 10)

local LoginStroke = Instance.new("UIStroke", LoginFrame)
LoginStroke.Color = Color3.fromRGB(255, 170, 0)
LoginStroke.Thickness = 2

local Title = Instance.new("TextLabel", LoginFrame)
Title.Size = UDim2.new(0, 260, 0, 40)
Title.Text = "⭐ COFFEE VIP LOGIN ⭐"
Title.TextColor3 = Color3.fromRGB(255, 200, 0)
Title.TextSize = 16
Title.Font = Enum.Font.SourceSansBold
Title.BackgroundTransparency = 1

local OwnerLogin = Instance.new("TextLabel", LoginFrame)
OwnerLogin.Size = UDim2.new(0, 260, 0, 20)
OwnerLogin.Position = UDim2.new(0, 0, 0, 35)
OwnerLogin.Text = "By Souksakhone"
OwnerLogin.TextColor3 = Color3.fromRGB(150, 150, 150)
OwnerLogin.TextSize = 12
OwnerLogin.Font = Enum.Font.SourceSansItalic
OwnerLogin.BackgroundTransparency = 1

local TextBox = Instance.new("TextBox", LoginFrame)
TextBox.Size = UDim2.new(0, 220, 0, 38)
TextBox.Position = UDim2.new(0, 20, 0, 65)
TextBox.PlaceholderText = "Enter Password..."
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(0, 0, 0)
TextBox.BackgroundColor3 = Color3.fromRGB(240, 240, 240)
TextBox.TextSize = 14
Instance.new("UICorner", TextBox).CornerRadius = UDim.new(0, 6)

local SubmitBtn = Instance.new("TextButton", LoginFrame)
SubmitBtn.Size = UDim2.new(0, 105, 0, 38)
SubmitBtn.Position = UDim2.new(0, 20, 0, 120)
SubmitBtn.Text = "Login"
SubmitBtn.BackgroundColor3 = Color3.fromRGB(0, 170, 80)
SubmitBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
SubmitBtn.TextSize = 14
SubmitBtn.Font = Enum.Font.SourceSansBold
Instance.new("UICorner", SubmitBtn).CornerRadius = UDim.new(0, 6)

local ExitBtn = Instance.new("TextButton", LoginFrame)
ExitBtn.Size = UDim2.new(0, 105, 0, 38)
ExitBtn.Position = UDim2.new(0, 135, 0, 120)
ExitBtn.Text = "Exit"
ExitBtn.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
ExitBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
ExitBtn.TextSize = 14
ExitBtn.Font = Enum.Font.SourceSansBold
Instance.new("UICorner", ExitBtn).CornerRadius = UDim.new(0, 6)

-- Main Menu Frame (Hidden by default)
local MainFrame = Instance.new("Frame", SG)
MainFrame.Size = UDim2.new(0, 240, 0, 275)
MainFrame.Position = UDim2.new(0, 40, 0, 120)
MainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
MainFrame.Active = true
MainFrame.Draggable = true
MainFrame.Visible = false
Instance.new("UICorner", MainFrame).CornerRadius = UDim.new(0, 10)

local MainStroke = Instance.new("UIStroke", MainFrame)
MainStroke.Color = Color3.fromRGB(255, 170, 0)
MainStroke.Thickness = 2

local MainTitle = Instance.new("TextLabel", MainFrame)
MainTitle.Size = UDim2.new(0, 240, 0, 35)
MainTitle.Text = "⚡ COFFEE VIP HUB ⚡"
MainTitle.TextColor3 = Color3.fromRGB(255, 200, 0)
MainTitle.TextSize = 15
MainTitle.Font = Enum.Font.SourceSansBold
MainTitle.BackgroundTransparency = 1

local OwnerMain = Instance.new("TextLabel", MainFrame)
OwnerMain.Size = UDim2.new(0, 240, 0, 20)
OwnerMain.Position = UDim2.new(0, 0, 0, 28)
OwnerMain.Text = "Owner: Souksakhone"
OwnerMain.TextColor3 = Color3.fromRGB(150, 150, 150)
OwnerMain.TextSize = 11
OwnerMain.Font = Enum.Font.SourceSansItalic
OwnerMain.BackgroundTransparency = 1

-- Toggle / Minimize Button (-)
local ToggleBtn = Instance.new("TextButton", MainFrame)
ToggleBtn.Size = UDim2.new(0, 30, 0, 25)
ToggleBtn.Position = UDim2.new(0, 200, 0, 5)
ToggleBtn.Text = "-"
ToggleBtn.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
ToggleBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleBtn.TextSize = 16
ToggleBtn.Font = Enum.Font.SourceSansBold
Instance.new("UICorner", ToggleBtn).CornerRadius = UDim.new(0, 4)

-- Container for all menu items (to toggle visibility)
local ContentContainer = Instance.new("Frame", MainFrame)
ContentContainer.Size = UDim2.new(1, 0, 1, -50)
ContentContainer.Position = UDim2.new(0, 0, 0, 50)
ContentContainer.BackgroundTransparency = 1

-- Custom Speed Input Box
local SpeedBox = Instance.new("TextBox", ContentContainer)
SpeedBox.Size = UDim2.new(0, 130, 0, 32)
SpeedBox.Position = UDim2.new(0, 15, 0, 5)
SpeedBox.PlaceholderText = "Type speed..."
SpeedBox.Text = ""
SpeedBox.TextColor3 = Color3.fromRGB(0, 0, 0)
SpeedBox.BackgroundColor3 = Color3.fromRGB(240, 240, 240)
SpeedBox.TextSize = 13
Instance.new("UICorner", SpeedBox).CornerRadius = UDim.new(0, 6)

local ApplySpeedBtn = Instance.new("TextButton", ContentContainer)
ApplySpeedBtn.Size = UDim2.new(0, 70, 0, 32)
ApplySpeedBtn.Position = UDim2.new(0, 155, 0, 5)
ApplySpeedBtn.Text = "Set Speed"
ApplySpeedBtn.BackgroundColor3 = Color3.fromRGB(0, 120, 255)
ApplySpeedBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
ApplySpeedBtn.TextSize = 12
ApplySpeedBtn.Font = Enum.Font.SourceSansBold
Instance.new("UICorner", ApplySpeedBtn).CornerRadius = UDim.new(0, 6)

local function mkMenuBtn(text, yPos, callback)
    local b = Instance.new("TextButton", ContentContainer)
    b.Size = UDim2.new(0, 210, 0, 32)
    b.Position = UDim2.new(0, 15, 0, yPos)
    b.BackgroundColor3 = Color3.fromRGB(255, 140, 0)
    b.TextColor3 = Color3.fromRGB(255, 255, 255)
    b.Text = text
    b.TextSize = 13
    b.Font = Enum.Font.SourceSansBold
    Instance.new("UICorner", b).CornerRadius = UDim.new(0, 6)
    b.MouseButton1Click:Connect(callback)
end

-- Menu Buttons
mkMenuBtn("🚀 Speed 500", 45, function()
    if LP.Character and LP.Character:FindFirstChild("Humanoid") then
        LP.Character.Humanoid.WalkSpeed = 500
    end
end)

mkMenuBtn("🔥 Speed 99999 (Ultra)", 85, function()
    if LP.Character and LP.Character:FindFirstChild("Humanoid") then
        LP.Character.Humanoid.WalkSpeed = 99999
    end
end)

mkMenuBtn("🔄 Reset Speed (16)", 125, function()
    if LP.Character and LP.Character:FindFirstChild("Humanoid") then
        LP.Character.Humanoid.WalkSpeed = 16
    end
end)

mkMenuBtn("❌ Close GUI", 165, function()
    SG:Destroy()
end)

-- Toggle Logic (Minimize / Maximize)
local isOpen = true
ToggleBtn.MouseButton1Click:Connect(function()
    isOpen = not isOpen
    ContentContainer.Visible = isOpen
    if isOpen then
        ToggleBtn.Text = "-"
        MainFrame.Size = UDim2.new(0, 240, 0, 275)
    else
        ToggleBtn.Text = "+"
        MainFrame.Size = UDim2.new(0, 240, 0, 50)
    end
end)

-- Custom Speed Setter Logic
ApplySpeedBtn.MouseButton1Click:Connect(function()
    local val = tonumber(SpeedBox.Text)
    if val and LP.Character and LP.Character:FindFirstChild("Humanoid") then
        LP.Character.Humanoid.WalkSpeed = val
    else
        SpeedBox.Text = ""
        SpeedBox.PlaceholderText = "Invalid Number!"
    end
end)

-- Login & Exit Logic
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
