-- [[ COFFEE HUB VIP - FULL FIXED SCRIPT ]] --

local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local LocalPlayer = Players.LocalPlayer

-- ລົບ UI ເກົ່າອອກກ່ອນ
if CoreGui:FindFirstChild("CoffeeHubVIP") then
    CoreGui:FindFirstChild("CoffeeHubVIP"):Destroy()
end

-- ScreenGui ຫຼັກ
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "CoffeeHubVIP"
ScreenGui.Parent = CoreGui
ScreenGui.ResetOnSpawn = false

---------------------------------------------------------
-- 1. KEY SYSTEM (ລະບົບປ້ອນລະຫັດ)
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
KeyInput.PlaceholderText = "ປ້ອນລະຫັດຜ່ານ..."
KeyInput.Text = ""
KeyInput.Font = Enum.Font.SourceSans
KeyInput.Parent = KeyFrame

local SubmitBtn = Instance.new("TextButton")
SubmitBtn.Size = UDim2.new(0.8, 0, 0, 35)
SubmitBtn.Position = UDim2.new(0.1, 0, 0.65, 0)
SubmitBtn.BackgroundColor3 = Color3.fromRGB(255, 140, 0)
SubmitBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
SubmitBtn.Text = "ເຂົ້າໃຊ້ງານ (Submit)"
SubmitBtn.Font = Enum.Font.SourceSansBold
SubmitBtn.Parent = KeyFrame

---------------------------------------------------------
-- 2. MAIN GUI (ໜ້າຈໍຫຼັກ)
---------------------------------------------------------
local MainFrame = Instance.new("Frame")
MainFrame.Size = UDim2.new(0, 340, 0, 320)
MainFrame.Position = UDim2.new(0.5, -170, 0.5, -160)
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

local Scroll = Instance.new("ScrollingFrame")
Scroll.Size = UDim2.new(1, -20, 1, -45)
Scroll.Position = UDim2.new(0, 10, 0, 40)
Scroll.BackgroundTransparency = 1
Scroll.CanvasSize = UDim2.new(0, 0, 0, 330)
Scroll.ScrollBarThickness = 4
Scroll.Parent = MainFrame

local UIList = Instance.new("UIListLayout")
UIList.Parent = Scroll
UIList.SortOrder = Enum.SortOrder.LayoutOrder
UIList.Padding = UDim.new(0, 8)

---------------------------------------------------------
-- 3. TOGGLE BUTTON (ປຸ່ມລອຍ)
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
-- 4. FUNCTION BUTTONS (ຟັງຊັນ)
---------------------------------------------------------
local walkSpeedBypass = false
local targetSpeed = 100
local autoBuyEnabled = false
local flyEnabled = false
local bodyVelocity, bodyGyro

local function CreateButton(text, color, parent)
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(1, -5, 0, 40)
    btn.BackgroundColor3 = color
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    btn.Text = text
    btn.Font = Enum.Font.SourceSansBold
    btn.TextSize = 14
    btn.Parent = parent
    
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 6)
    corner.Parent = btn
    
    return btn
end

-- (1) WalkSpeed
local SpeedBtn = CreateButton("⚡ WalkSpeed (100): OFF", Color3.fromRGB(40, 40, 55), Scroll)
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

RunService.RenderStepped:Connect(function()
    if walkSpeedBypass and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") then
        LocalPlayer.Character.Humanoid.WalkSpeed = targetSpeed
    end
end)

-- (2) JumpPower
local JumpBtn = CreateButton("🦘 High JumpPower (120)", Color3.fromRGB(40, 40, 55), Scroll)
JumpBtn.MouseButton1Click:Connect(function()
    if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") then
        LocalPlayer.Character.Humanoid.UseJumpPower = true
        LocalPlayer.Character.Humanoid.JumpPower = 120
    end
end)

-- (3) Fly
local FlyBtn = CreateButton("🕊️ Fly (ບິນ): OFF", Color3.fromRGB(40, 40, 55), Scroll)
FlyBtn.MouseButton1Click:Connect(function()
    flyEnabled = not flyEnabled
    local char = LocalPlayer.Character
    if flyEnabled and char and char:FindFirstChild("HumanoidRootPart") then
        FlyBtn.Text = "🕊️ Fly (ບິນ): ON"
        FlyBtn.BackgroundColor3 = Color3.fromRGB(0, 170, 100)
        
        local hrp = char.HumanoidRootPart
        bodyVelocity = Instance.new("BodyVelocity")
        bodyVelocity.Velocity = Vector3.new(0, 0, 0)
        bodyVelocity.MaxForce = Vector3.new(1e5, 1e5, 1e5)
        bodyVelocity.Parent = hrp
        
        bodyGyro = Instance.new("BodyGyro")
        bodyGyro.MaxTorque = Vector3.new(1e5, 1e5, 1e5)
        bodyGyro.CFrame = hrp.CFrame
        bodyGyro.Parent = hrp
    else
        FlyBtn.Text = "🕊️ Fly (ບິນ): OFF"
        FlyBtn.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
        if bodyVelocity then bodyVelocity:Destroy() end
        if bodyGyro then bodyGyro:Destroy() end
    end
end)

RunService.RenderStepped:Connect(function()
    if flyEnabled and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        local cam = workspace.CurrentCamera
        if bodyVelocity and bodyGyro then
            bodyGyro.CFrame = cam.CFrame
            bodyVelocity.Velocity = cam.CFrame.LookVector * 50
        end
    end
end)

-- (4) Auto Buy
local AutoBuyBtn = CreateButton("🛒 Auto Buy (ຊື້ຂອງ): OFF", Color3.fromRGB(40, 40, 55), Scroll)
AutoBuyBtn.MouseButton1Click:Connect(function()
    autoBuyEnabled = not autoBuyEnabled
    if autoBuyEnabled then
        AutoBuyBtn.Text = "🛒 Auto Buy (ຊື້ຂອງ): ON"
        AutoBuyBtn.BackgroundColor3 = Color3.fromRGB(0, 170, 100)
    else
        AutoBuyBtn.Text = "🛒 Auto Buy (ຊື້ຂອງ): OFF"
        AutoBuyBtn.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
    end
end)

task.spawn(function()
    while true do
        task.wait(0.5)
        if autoBuyEnabled then
            pcall(function()
                for _, v in pairs(ReplicatedStorage:GetDescendants()) do
                    if v:IsA("RemoteFunction") and (v.Name:lower():find("buy") or v.Name:lower():find("purchase")) then
                        v:InvokeServer()
                    elseif v:IsA("RemoteEvent") and (v.Name:lower():find("buy") or v.Name:lower():find("purchase")) then
                        v:FireServer()
                    end
                end
            end)
        end
    end
end)

-- (5) Reset Normal
local ResetBtn = CreateButton("🔄 Reset Normal (ຄືນຄ່າປົກກະຕິ)", Color3.fromRGB(180, 50, 50), Scroll)
ResetBtn.MouseButton1Click:Connect(function()
    walkSpeedBypass = false
    autoBuyEnabled = false
    flyEnabled = false
    
    SpeedBtn.Text = "⚡ WalkSpeed (100): OFF"
    SpeedBtn.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
    FlyBtn.Text = "🕊️ Fly (ບິນ): OFF"
    FlyBtn.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
    AutoBuyBtn.Text = "🛒 Auto Buy (ຊື້ຂອງ): OFF"
    AutoBuyBtn.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
    
    if bodyVelocity then bodyVelocity:Destroy() end
    if bodyGyro then bodyGyro:Destroy() end
    
    if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") then
        LocalPlayer.Character.Humanoid.WalkSpeed = 16
        LocalPlayer.Character.Humanoid.JumpPower = 50
    end
end)

---------------------------------------------------------
-- 5. LOGIC
---------------------------------------------------------
SubmitBtn.MouseButton1Click:Connect(function()
    if KeyInput.Text == CORRECT_KEY then
        KeyFrame:Destroy()
        MainFrame.Visible = true
        ToggleBtn.Visible = true
    else
        SubmitBtn.Text = "❌ ລະຫັດບໍ່ຖືກຕ້ອງ!"
        task.wait(1.5)
        SubmitBtn.Text = "ເຂົ້າໃຊ້ງານ (Submit)"
    end
end)

CloseBtn.MouseButton1Click:Connect(function()
    MainFrame.Visible = false
end)

ToggleBtn.MouseButton1Click:Connect(function()
    MainFrame.Visible = not MainFrame.Visible
end)
