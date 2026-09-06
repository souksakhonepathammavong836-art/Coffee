-- [[ COFFEE HUB VIP - FIXED WALKSPEED & GUI ]] --

local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer

-- ลบ UI เก่าออกก่อน
if CoreGui:FindFirstChild("CoffeeHubVIP") then
    CoreGui:FindFirstChild("CoffeeHubVIP"):Destroy()
end

-- ScreenGui หลัก
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "CoffeeHubVIP"
ScreenGui.Parent = CoreGui
ScreenGui.ResetOnSpawn = false

---------------------------------------------------------
-- 1. KEY SYSTEM (ระบอบป้อนรหัส)
---------------------------------------------------------
local CORRECT_KEY = "COFFEE2026"

local KeyFrame = Instance.new("Frame")
KeyFrame.Size = UDim2.new(0, 300, 0, 160)
KeyFrame.Position = UDim2.new(0.5, -150, 0.5, -80)
KeyFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
KeyFrame.BorderSizePixel = 0
KeyFrame.Active = true
KeyFrame.Draggable = true
KeyFrame.Parent = ScreenGui

local KeyCorner = Instance.new("UICorner")
KeyCorner.CornerRadius = UDim.new(0, 10)
KeyCorner.Parent = KeyFrame

local KeyTitle = Instance.new("TextLabel")
KeyTitle.Size = UDim2.new(1, 0, 0, 40)
KeyTitle.BackgroundTransparency = 1
KeyTitle.Text = "☕ COFFEE HUB - KEY SYSTEM"
KeyTitle.TextColor3 = Color3.fromRGB(255, 170, 0)
KeyTitle.TextSize = 16
KeyTitle.Font = Enum.Font.SourceSansBold
KeyTitle.Parent = KeyFrame

local KeyInput = Instance.new("TextBox")
KeyInput.Size = UDim2.new(0.8, 0, 0, 35)
KeyInput.Position = UDim2.new(0.1, 0, 0.35, 0)
KeyInput.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
KeyInput.TextColor3 = Color3.fromRGB(255, 255, 255)
KeyInput.PlaceholderText = "ป้อนรหัสผ่าน..."
KeyInput.Text = ""
KeyInput.Font = Enum.Font.SourceSans
KeyInput.Parent = KeyFrame

local SubmitBtn = Instance.new("TextButton")
SubmitBtn.Size = UDim2.new(0.8, 0, 0, 35)
SubmitBtn.Position = UDim2.new(0.1, 0, 0.65, 0)
SubmitBtn.BackgroundColor3 = Color3.fromRGB(255, 140, 0)
SubmitBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
SubmitBtn.Text = "เข้าใช้งาน (Submit)"
SubmitBtn.Font = Enum.Font.SourceSansBold
SubmitBtn.Parent = KeyFrame

---------------------------------------------------------
-- 2. MAIN GUI (หน้าจอหลัก)
---------------------------------------------------------
local MainFrame = Instance.new("Frame")
MainFrame.Size = UDim2.new(0, 320, 0, 240)
MainFrame.Position = UDim2.new(0.5, -160, 0.5, -120)
MainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 28)
MainFrame.BorderSizePixel = 0
MainFrame.Active = true
MainFrame.Draggable = true
MainFrame.Visible = false
MainFrame.Parent = ScreenGui

local MainCorner = Instance.new("UICorner")
MainCorner.CornerRadius = UDim.new(0, 10)
MainCorner.Parent = MainFrame

local TitleBar = Instance.new("TextLabel")
TitleBar.Size = UDim2.new(1, -40, 0, 35)
TitleBar.Position = UDim2.new(0, 10, 0, 0)
TitleBar.BackgroundTransparency = 1
TitleBar.Text = "☕ Coffee Hub Main"
TitleBar.TextColor3 = Color3.fromRGB(255, 170, 0)
TitleBar.TextSize = 18
TitleBar.Font = Enum.Font.SourceSansBold
TitleBar.TextXAlignment = Enum.TextXAlignment.Left
TitleBar.Parent = MainFrame

local CloseBtn = Instance.new("TextButton")
CloseBtn.Size = UDim2.new(0, 30, 0, 30)
CloseBtn.Position = UDim2.new(1, -35, 0, 3)
CloseBtn.BackgroundTransparency = 1
CloseBtn.Text = "✕"
CloseBtn.TextColor3 = Color3.fromRGB(255, 80, 80)
CloseBtn.TextSize = 18
CloseBtn.Parent = MainFrame

---------------------------------------------------------
-- 3. TOGGLE BUTTON (ปุ่มลอยสำหรับเปิด/ปิด GUI)
---------------------------------------------------------
local ToggleBtn = Instance.new("TextButton")
ToggleBtn.Size = UDim2.new(0, 50, 0, 50)
ToggleBtn.Position = UDim2.new(0, 10, 0.5, -25)
ToggleBtn.BackgroundColor3 = Color3.fromRGB(255, 140, 0)
ToggleBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleBtn.Text = "☕"
ToggleBtn.TextSize = 24
ToggleBtn.Visible = false
ToggleBtn.Active = true
ToggleBtn.Draggable = true
ToggleBtn.Parent = ScreenGui

local ToggleCorner = Instance.new("UICorner")
ToggleCorner.CornerRadius = UDim.new(1, 0)
ToggleCorner.Parent = ToggleBtn

---------------------------------------------------------
-- 4. FUNCTION BUTTONS (ปุ่มฟังก์ชั่นภายใน)
---------------------------------------------------------
local walkSpeedBypass = false
local targetSpeed = 100

-- (1) ปุ่มล็อคความเร็ว (แก้ปัญหาสปีดเด้งกลับ)
local SpeedBtn = Instance.new("TextButton")
SpeedBtn.Size = UDim2.new(0.9, 0, 0, 40)
SpeedBtn.Position = UDim2.new(0.05, 0, 0.2, 0)
SpeedBtn.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
SpeedBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
SpeedBtn.Text = "⚡ WalkSpeed (100): OFF"
SpeedBtn.Font = Enum.Font.SourceSansBold
SpeedBtn.Parent = MainFrame

SpeedBtn.MouseButton1Click:Connect(function()
    walkSpeedBypass = not walkSpeedBypass
    if walkSpeedBypass then
        SpeedBtn.Text = "⚡ WalkSpeed (100): ON"
        SpeedBtn.BackgroundColor3 = Color3.fromRGB(0, 170, 100)
    else
        SpeedBtn.Text = "⚡ WalkSpeed (100): OFF"
        SpeedBtn.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
        if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") then
            LocalPlayer.Character.Humanoid.WalkSpeed = 16
        end
    end
end)

-- Loop ล็อคค่าวอล์คสปีดไม่ให้เกมรีเซ็ต
RunService.RenderStepped:Connect(function()
    if walkSpeedBypass and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") then
        LocalPlayer.Character.Humanoid.WalkSpeed = targetSpeed
    end
end)

-- (2) ปุ่ม JumpPower
local JumpBtn = Instance.new("TextButton")
JumpBtn.Size = UDim2.new(0.9, 0, 0, 40)
JumpBtn.Position = UDim2.new(0.05, 0, 0.42, 0)
JumpBtn.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
JumpBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
JumpBtn.Text = "🦘 High JumpPower (120)"
JumpBtn.Font = Enum.Font.SourceSansBold
JumpBtn.Parent = MainFrame

JumpBtn.MouseButton1Click:Connect(function()
    if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") then
        LocalPlayer.Character.Humanoid.UseJumpPower = true
        LocalPlayer.Character.Humanoid.JumpPower = 120
    end
end)

-- (3) ปุ่ม Reset Normal
local ResetBtn = Instance.new("TextButton")
ResetBtn.Size = UDim2.new(0.9, 0, 0, 40)
ResetBtn.Position = UDim2.new(0.05, 0, 0.64, 0)
ResetBtn.BackgroundColor3 = Color3.fromRGB(180, 50, 50)
ResetBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
ResetBtn.Text = "🔄 Reset Normal (คืนค่าปกติ)"
ResetBtn.Font = Enum.Font.SourceSansBold
ResetBtn.Parent = MainFrame

ResetBtn.MouseButton1Click:Connect(function()
    walkSpeedBypass = false
    SpeedBtn.Text = "⚡ WalkSpeed (100): OFF"
    SpeedBtn.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
    if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") then
        LocalPlayer.Character.Humanoid.WalkSpeed = 16
        LocalPlayer.Character.Humanoid.JumpPower = 50
    end
end)

---------------------------------------------------------
-- 5. LOGIC (การทำงานของ Key และปุ่มปิดเปิด)
---------------------------------------------------------
SubmitBtn.MouseButton1Click:Connect(function()
    if KeyInput.Text == CORRECT_KEY then
        KeyFrame:Destroy()
        MainFrame.Visible = true
        ToggleBtn.Visible = true
    else
        SubmitBtn.Text = "❌ รหัสไม่ถูกต้อง!"
        task.wait(1.5)
        SubmitBtn.Text = "เข้าใช้งาน (Submit)"
    end
end)

CloseBtn.MouseButton1Click:Connect(function()
    MainFrame.Visible = false
end)

ToggleBtn.MouseButton1Click:Connect(function()
    MainFrame.Visible = not MainFrame.Visible
end)
