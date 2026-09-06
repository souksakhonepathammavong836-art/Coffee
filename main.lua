-- [[ COFFEE VIP HUB - PRO FLY & SPEED SYSTEM BY SOUKSAKHONE ]] --
local LP = game:GetService("Players").LocalPlayer
local SG = Instance.new("ScreenGui", game:GetService("CoreGui"))
SG.Name = "CoffeeVIPHubProFly"

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

-- Main Menu Frame (Height adjusted for all features)
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

-- Container
local ContentContainer = Instance.new("Frame", MainFrame)
ContentContainer.Size = UDim2.new(1, 0, 1, -50)
ContentContainer.Position = UDim2.new(0, 0, 0, 50)
ContentContainer.BackgroundTransparency = 1

-- 1. WalkSpeed Section
local SpeedBox = Instance.new("TextBox", ContentContainer)
SpeedBox.Size = UDim2.new(0, 130, 0, 28)
SpeedBox.Position = UDim2.new(0, 15, 0, 5)
SpeedBox.PlaceholderText = "Type walk speed..."
SpeedBox.Text = ""
SpeedBox.TextColor3 = Color3.fromRGB(0, 0, 0)
SpeedBox.BackgroundColor3 = Color3.fromRGB(240, 240, 240)
SpeedBox.TextSize = 12
Instance.new("UICorner", SpeedBox).CornerRadius = UDim.new(0, 6)

local ApplySpeedBtn = Instance.new("TextButton", ContentContainer)
ApplySpeedBtn.Size = UDim2.new(0, 70, 0, 28)
ApplySpeedBtn.Position = UDim2.new(0, 155, 0, 5)
ApplySpeedBtn.Text = "Set Walk"
ApplySpeedBtn.BackgroundColor3 = Color3.fromRGB(0, 120, 255)
ApplySpeedBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
ApplySpeedBtn.TextSize = 12
ApplySpeedBtn.Font = Enum.Font.SourceSansBold
Instance.new("UICorner", ApplySpeedBtn).CornerRadius = UDim.new(0, 6)

-- WalkSpeed Slider UI (1 to 99999)
local SliderBg = Instance.new("Frame", ContentContainer)
SliderBg.Size = UDim2.new(0, 210, 0, 26)
SliderBg.Position = UDim2.new(0, 15, 0, 38)
SliderBg.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Instance.new("UICorner", SliderBg).CornerRadius = UDim.new(0, 6)

local SliderFill = Instance.new("Frame", SliderBg)
SliderFill.Size = UDim2.new(0, 0, 1, 0)
SliderFill.BackgroundColor3 = Color3.fromRGB(255, 140, 0)
Instance.new("UICorner", SliderFill).CornerRadius = UDim.new(0, 6)

local SliderText = Instance.new("TextLabel", SliderBg)
SliderText.Size = UDim2.new(1, 0, 1, 0)
SliderText.Text = "Walk Speed: 16"
SliderText.TextColor3 = Color3.fromRGB(255, 255, 255)
SliderText.TextSize = 11
SliderText.Font = Enum.Font.SourceSansBold
SliderText.BackgroundTransparency = 1

local SliderButton = Instance.new("TextButton", SliderBg)
SliderButton.Size = UDim2.new(1, 0, 1, 0)
SliderButton.Text = ""
SliderButton.BackgroundTransparency = 1

-- 2. Fly Control Buttons (Fly / Land)
local FlyBtn = Instance.new("TextButton", ContentContainer)
FlyBtn.Size = UDim2.new(0, 100, 0, 32)
FlyBtn.Position = UDim2.new(0, 15, 0, 70)
FlyBtn.Text = "🕊️ Fly (ເປີດບິນ)"
FlyBtn.BackgroundColor3 = Color3.fromRGB(0, 170, 80)
FlyBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
FlyBtn.TextSize = 11
FlyBtn.Font = Enum.Font.SourceSansBold
Instance.new("UICorner", FlyBtn).CornerRadius = UDim.new(0, 6)

local LandBtn = Instance.new("TextButton", ContentContainer)
LandBtn.Size = UDim2.new(0, 100, 0, 32)
LandBtn.Position = UDim2.new(0, 125, 0, 70)
LandBtn.Text = "🛬 Land (ປິດລົງ)"
LandBtn.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
LandBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
LandBtn.TextSize = 11
LandBtn.Font = Enum.Font.SourceSansBold
Instance.new("UICorner", LandBtn).CornerRadius = UDim.new(0, 6)

-- 3. Fly Speed Slider UI (1 to 500)
local FlySliderBg = Instance.new("Frame", ContentContainer)
FlySliderBg.Size = UDim2.new(0, 210, 0, 26)
FlySliderBg.Position = UDim2.new(0, 15, 0, 108)
FlySliderBg.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Instance.new("UICorner", FlySliderBg).CornerRadius = UDim.new(0, 6)

local FlySliderFill = Instance.new("Frame", FlySliderBg)
FlySliderFill.Size = UDim2.new(0, 0, 1, 0)
FlySliderFill.BackgroundColor3 = Color3.fromRGB(0, 180, 255)
Instance.new("UICorner", FlySliderFill).CornerRadius = UDim.new(0, 6)

local FlySliderText = Instance.new("TextLabel", FlySliderBg)
FlySliderText.Size = UDim2.new(1, 0, 1, 0)
FlySliderText.Text = "Fly Speed: 50"
FlySliderText.TextColor3 = Color3.fromRGB(255, 255, 255)
FlySliderText.TextSize = 11
FlySliderText.Font = Enum.Font.SourceSansBold
FlySliderText.BackgroundTransparency = 1

local FlySliderButton = Instance.new("TextButton", FlySliderBg)
FlySliderButton.Size = UDim2.new(1, 0, 1, 0)
FlySliderButton.Text = ""
FlySliderButton.BackgroundTransparency = 1

-- WalkSpeed Slider Logic (1 to 99999)
local UIS = game:GetService("UserInputService")
local dragging = false

SliderButton.MouseButton1Down:Connect(function()
    dragging = true
end)

-- Fly Speed Slider Logic (1 to 500)
local flyDragging = false
local currentFlySpeed = 50

FlySliderButton.MouseButton1Down:Connect(function()
    flyDragging = true
end)

UIS.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = false
        flyDragging = false
    end
end)

UIS.InputChanged:Connect(function(input)
    if (dragging or flyDragging) and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
        local mousePos = UIS:GetMouseLocation()
        
        if dragging then
            local absPos = SliderBg.AbsolutePosition
            local absSize = SliderBg.AbsoluteSize
            local relX = math.clamp((mousePos.X - absPos.X) / absSize.X, 0, 1)
            local speedVal = math.floor(1 + relX * (99999 - 1))
            SliderFill.Size = UDim2.new(relX, 0, 1, 0)
            SliderText.Text = "Walk Speed: " .. speedVal
            if LP.Character and LP.Character:FindFirstChild("Humanoid") then
                LP.Character.Humanoid.WalkSpeed = speedVal
            end
        elseif flyDragging then
            local absPos = FlySliderBg.AbsolutePosition
            local absSize = FlySliderBg.AbsoluteSize
            local relX = math.clamp((mousePos.X - absPos.X) / absSize.X, 0, 1)
            currentFlySpeed = math.floor(1 + relX * (500 - 1))
            FlySliderFill.Size = UDim2.new(relX, 0, 1, 0)
            FlySliderText.Text = "Fly Speed: " .. currentFlySpeed
        end
    end
end)

-- Fly Logic
local flying = false
local rs = game:GetService("RunService")
local cam = workspace.CurrentCamera

FlyBtn.MouseButton1Click:Connect(function()
    flying = true
end)

LandBtn.MouseButton1Click:Connect(function()
    flying = false
    if LP.Character and LP.Character:FindFirstChild("HumanoidRootPart") then
        LP.Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
    end
end)

rs.RenderStepped:Connect(function()
    if flying and LP.Character and LP.Character:FindFirstChild("HumanoidRootPart") and LP.Character:FindFirstChild("Humanoid") then
        local hrp = LP.Character.HumanoidRootPart
        local hum = LP.Character.Humanoid
        hrp.Velocity = Vector3.new(0, 1, 0)
        local moveDir = hum.MoveDirection
        if moveDir.Magnitude > 0 then
            hrp.CFrame = hrp.CFrame + (cam.CFrame.LookVector * Vector3.new(1,0,1)).Unit * moveDir.Magnitude * (currentFlySpeed / 15) + Vector3.new(0, moveDir.Y * (currentFlySpeed / 15), 0)
        end
    end
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
        SpeedBox.PlaceholderText = "Invalid!"
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
