-- [[ COFFEE VIP HUB - ADDED AIMBOT / LOCK HEAD ]] --
local LP = game:GetService("Players").LocalPlayer
local SG = Instance.new("ScreenGui", game:GetService("CoreGui"))
SG.Name = "CoffeeVIPHubCustomImage"

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

-- Main Menu Frame
local MainFrame = Instance.new("Frame", SG)
MainFrame.Size = UDim2.new(0, 240, 0, 380)
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
MainTitle.Text = "☕ COFFEE VIP HUB ☕"
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

local ToggleBtn = Instance.new("TextButton", MainFrame)
ToggleBtn.Size = UDim2.new(0, 32, 0, 26)
ToggleBtn.Position = UDim2.new(0, 198, 0, 5)
ToggleBtn.Text = "☕"
ToggleBtn.BackgroundColor3 = Color3.fromRGB(80, 50, 20)
ToggleBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleBtn.TextSize = 14
ToggleBtn.Font = Enum.Font.SourceSansBold
Instance.new("UICorner", ToggleBtn).CornerRadius = UDim.new(0, 4)

local RoundIconBtn = Instance.new("ImageButton", SG)
RoundIconBtn.Size = UDim2.new(0, 50, 0, 50)
RoundIconBtn.Position = UDim2.new(0, 40, 0, 120)
RoundIconBtn.Image = "rbxassetid://1392880262"
RoundIconBtn.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
RoundIconBtn.Visible = false
RoundIconBtn.Active = true
RoundIconBtn.Draggable = true
Instance.new("UICorner", RoundIconBtn).CornerRadius = UDim.new(1, 0)

local RoundIconStroke = Instance.new("UIStroke", RoundIconBtn)
RoundIconStroke.Color = Color3.fromRGB(255, 170, 0)
RoundIconStroke.Thickness = 2

-- ScrollingFrame
local ContentContainer = Instance.new("ScrollingFrame", MainFrame)
ContentContainer.Size = UDim2.new(1, 0, 1, -55)
ContentContainer.Position = UDim2.new(0, 0, 0, 50)
ContentContainer.BackgroundTransparency = 1
ContentContainer.CanvasSize = UDim2.new(0, 0, 0, 380)
ContentContainer.ScrollBarThickness = 4

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

-- 2. Fly Control Buttons
local FlyBtn = Instance.new("TextButton", ContentContainer)
FlyBtn.Size = UDim2.new(0, 100, 0, 30)
FlyBtn.Position = UDim2.new(0, 15, 0, 72)
FlyBtn.Text = "🕊️ Fly ON"
FlyBtn.BackgroundColor3 = Color3.fromRGB(0, 170, 80)
FlyBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
FlyBtn.TextSize = 11
FlyBtn.Font = Enum.Font.SourceSansBold
Instance.new("UICorner", FlyBtn).CornerRadius = UDim.new(0, 6)

local LandBtn = Instance.new("TextButton", ContentContainer)
LandBtn.Size = UDim2.new(0, 100, 0, 30)
LandBtn.Position = UDim2.new(0, 125, 0, 72)
LandBtn.Text = "🛬 Land OFF"
LandBtn.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
LandBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
LandBtn.TextSize = 11
LandBtn.Font = Enum.Font.SourceSansBold
Instance.new("UICorner", LandBtn).CornerRadius = UDim.new(0, 6)

local FlyUpBtn = Instance.new("TextButton", ContentContainer)
FlyUpBtn.Size = UDim2.new(0, 100, 0, 30)
FlyUpBtn.Position = UDim2.new(0, 15, 0, 108)
FlyUpBtn.Text = "⬆️ Fly Up"
FlyUpBtn.BackgroundColor3 = Color3.fromRGB(150, 100, 0)
FlyUpBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
FlyUpBtn.TextSize = 11
FlyUpBtn.Font = Enum.Font.SourceSansBold
Instance.new("UICorner", FlyUpBtn).CornerRadius = UDim.new(0, 6)

local FlyDownBtn = Instance.new("TextButton", ContentContainer)
FlyDownBtn.Size = UDim2.new(0, 100, 0, 30)
FlyDownBtn.Position = UDim2.new(0, 125, 0, 108)
FlyDownBtn.Text = "⬇️ Fly Down"
FlyDownBtn.BackgroundColor3 = Color3.fromRGB(100, 50, 150)
FlyDownBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
FlyDownBtn.TextSize = 11
FlyDownBtn.Font = Enum.Font.SourceSansBold
Instance.new("UICorner", FlyDownBtn).CornerRadius = UDim.new(0, 6)

-- 3. Fly Speed Slider
local FlySliderBg = Instance.new("Frame", ContentContainer)
FlySliderBg.Size = UDim2.new(0, 210, 0, 26)
FlySliderBg.Position = UDim2.new(0, 15, 0, 146)
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

-- 4. Hitbox Extender Button
local HitboxBtn = Instance.new("TextButton", ContentContainer)
HitboxBtn.Size = UDim2.new(0, 210, 0, 30)
HitboxBtn.Position = UDim2.new(0, 15, 0, 180)
