local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UIS = game:GetService("UserInputService")
local LocalPlayer = Players.LocalPlayer

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "DEDSEC_Fling"
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = game:GetService("CoreGui")

local MainFrame = Instance.new("Frame")
MainFrame.Size = UDim2.new(0, 380, 0, 460)
MainFrame.Position = UDim2.new(0.5, -190, 0.5, -230)
MainFrame.BackgroundColor3 = Color3.fromRGB(10, 12, 20)
MainFrame.BackgroundTransparency = 0.05
MainFrame.BorderSizePixel = 0
MainFrame.ClipsDescendants = true
MainFrame.Parent = ScreenGui

local Corner = Instance.new("UICorner")
Corner.CornerRadius = UDim.new(0, 12)
Corner.Parent = MainFrame

local Stroke = Instance.new("UIStroke")
Stroke.Color = Color3.fromRGB(0, 255, 200)
Stroke.Thickness = 2
Stroke.Transparency = 0.4
Stroke.Parent = MainFrame

local TitleBar = Instance.new("Frame")
TitleBar.Size = UDim2.new(1, 0, 0, 35)
TitleBar.BackgroundColor3 = Color3.fromRGB(20, 22, 32)
TitleBar.BorderSizePixel = 0
TitleBar.Parent = MainFrame

local TitleCorner = Instance.new("UICorner")
TitleCorner.CornerRadius = UDim.new(0, 12)
TitleCorner.Parent = TitleBar

local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, 0, 1, 0)
Title.BackgroundTransparency = 1
Title.Text = "◈ DEDSEC ◈ HYPER FLING ◈"
Title.TextColor3 = Color3.fromRGB(0, 255, 200)
Title.Font = Enum.Font.GothamBold
Title.TextSize = 16
Title.Parent = TitleBar

local ResizeHandle = Instance.new("Frame")
ResizeHandle.Size = UDim2.new(0, 15, 0, 15)
ResizeHandle.Position = UDim2.new(1, -15, 1, -15)
ResizeHandle.BackgroundColor3 = Color3.fromRGB(0, 255, 200)
ResizeHandle.BackgroundTransparency = 0.5
ResizeHandle.Parent = MainFrame

local ResizeCorner = Instance.new("UICorner")
ResizeCorner.CornerRadius = UDim.new(0, 4)
ResizeCorner.Parent = ResizeHandle

local CloseBtn = Instance.new("TextButton")
CloseBtn.Size = UDim2.new(0, 32, 0, 32)
CloseBtn.Position = UDim2.new(1, -36, 0, 2)
CloseBtn.BackgroundColor3 = Color3.fromRGB(200, 40, 40)
CloseBtn.Text = "X"
CloseBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseBtn.Font = Enum.Font.GothamBold
CloseBtn.TextSize = 18
CloseBtn.Parent = TitleBar
CloseBtn.MouseButton1Click:Connect(function() ScreenGui:Destroy() end)

local StatusLabel = Instance.new("TextLabel")
StatusLabel.Position = UDim2.new(0, 15, 0, 48)
StatusLabel.Size = UDim2.new(1, -30, 0, 25)
StatusLabel.BackgroundTransparency = 1
StatusLabel.Text = "SELECT TARGETS"
StatusLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
StatusLabel.Font = Enum.Font.Gotham
StatusLabel.TextSize = 13
StatusLabel.TextXAlignment = Enum.TextXAlignment.Left
StatusLabel.Parent = MainFrame

local ListFrame = Instance.new("Frame")
ListFrame.Position = UDim2.new(0, 10, 0, 80)
ListFrame.Size = UDim2.new(1, -20, 0, 240)
ListFrame.BackgroundColor3 = Color3.fromRGB(18, 20, 30)
ListFrame.BackgroundTransparency = 0.3
ListFrame.BorderSizePixel = 0
ListFrame.Parent = MainFrame

local ListCorner = Instance.new("UICorner")
ListCorner.CornerRadius = UDim.new(0, 8)
ListCorner.Parent = ListFrame

local PlayerScroll = Instance.new("ScrollingFrame")
PlayerScroll.Position = UDim2.new(0, 5, 0, 5)
PlayerScroll.Size = UDim2.new(1, -10, 1, -10)
PlayerScroll.BackgroundTransparency = 1
PlayerScroll.BorderSizePixel = 0
PlayerScroll.ScrollBarThickness = 6
PlayerScroll.CanvasSize = UDim2.new(0, 0, 0, 0)
PlayerScroll.Parent = ListFrame

local StartBtn = Instance.new("TextButton")
StartBtn.Position = UDim2.new(0, 10, 0, 330)
StartBtn.Size = UDim2.new(0.5, -15, 0, 42)
StartBtn.BackgroundColor3 = Color3.fromRGB(0, 160, 0)
StartBtn.BackgroundTransparency = 0.2
StartBtn.Text = "▶ START"
StartBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
StartBtn.Font = Enum.Font.GothamBold
StartBtn.TextSize = 16
StartBtn.Parent = MainFrame

local StartCorner = Instance.new("UICorner")
StartCorner.CornerRadius = UDim.new(0, 8)
StartCorner.Parent = StartBtn

local StopBtn = Instance.new("TextButton")
StopBtn.Position = UDim2.new(0.5, 5, 0, 330)
StopBtn.Size = UDim2.new(0.5, -15, 0, 42)
StopBtn.BackgroundColor3 = Color3.fromRGB(160, 0, 0)
StopBtn.BackgroundTransparency = 0.2
StopBtn.Text = "■ STOP"
StopBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
StopBtn.Font = Enum.Font.GothamBold
StopBtn.TextSize = 16
StopBtn.Parent = MainFrame

local StopCorner = Instance.new("UICorner")
StopCorner.CornerRadius = UDim.new(0, 8)
StopCorner.Parent = StopBtn

local SelectAllBtn = Instance.new("TextButton")
SelectAllBtn.Position = UDim2.new(0, 10, 0, 382)
SelectAllBtn.Size = UDim2.new(0.5, -15, 0, 34)
SelectAllBtn.BackgroundColor3 = Color3.fromRGB(50, 50, 70)
SelectAllBtn.Text = "✓ ALL"
SelectAllBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
SelectAllBtn.Font = Enum.Font.Gotham
SelectAllBtn.TextSize = 13
SelectAllBtn.Parent = MainFrame

local SelectCorner = Instance.new("UICorner")
SelectCorner.CornerRadius = UDim.new(0, 6)
SelectCorner.Parent = SelectAllBtn

local DeselectAllBtn = Instance.new("TextButton")
DeselectAllBtn.Position = UDim2.new(0.5, 5, 0, 382)
DeselectAllBtn.Size = UDim2.new(0.5, -15, 0, 34)
DeselectAllBtn.BackgroundColor3 = Color3.fromRGB(50, 50, 70)
DeselectAllBtn.Text = "✗ NONE"
DeselectAllBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
DeselectAllBtn.Font = Enum.Font.Gotham
DeselectAllBtn.TextSize = 13
DeselectAllBtn.Parent = MainFrame

local DeselectCorner = Instance.new("UICorner")
DeselectCorner.CornerRadius = UDim.new(0, 6)
DeselectCorner.Parent = DeselectAllBtn

local Selected = {}
local Checkboxes = {}
local FlingActive = false

local function UpdateStatus()
    local cnt = 0
    for _ in pairs(Selected) do cnt = cnt + 1 end
    if FlingActive then
        StatusLabel.Text = "⚠️ FLINGING " .. cnt .. " TARGET(S) ⚠️"
        StatusLabel.TextColor3 = Color3.fromRGB(255, 80, 80)
    else
        StatusLabel.Text = "🎯 " .. cnt .. " TARGET(S) READY"
        StatusLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
    end
end

local function RefreshList()
    for _, v in pairs(PlayerScroll:GetChildren()) do v:Destroy() end
    Checkboxes = {}
    local y = 5
    local sorted = {}
    for _, v in pairs(Players:GetPlayers()) do table.insert(sorted, v) end
    table.sort(sorted, function(a,b) return a.Name:lower() < b.Name:lower() end)
    for _, plr in pairs(sorted) do
        if plr ~= LocalPlayer then
            local row = Instance.new("Frame")
            row.Size = UDim2.new(1, -10, 0, 34)
            row.Position = UDim2.new(0, 5, 0, y)
            row.BackgroundColor3 = Color3.fromRGB(30, 32, 44)
            row.BackgroundTransparency = 0.4
            row.BorderSizePixel = 0
            row.Parent = PlayerScroll
            local rowCorner = Instance.new("UICorner")
            rowCorner.CornerRadius = UDim.new(0, 6)
            rowCorner.Parent = row
            local tickBox = Instance.new("Frame")
            tickBox.Size = UDim2.new(0, 22, 0, 22)
            tickBox.Position = UDim2.new(0, 8, 0.5, -11)
            tickBox.BackgroundColor3 = Color3.fromRGB(45, 47, 60)
            tickBox.BorderSizePixel = 0
            tickBox.Parent = row
            local tickCorner = Instance.new("UICorner")
            tickCorner.CornerRadius = UDim.new(0, 4)
            tickCorner.Parent = tickBox
            local tickMark = Instance.new("TextLabel")
            tickMark.Size = UDim2.new(1, 0, 1, 0)
            tickMark.BackgroundTransparency = 1
            tickMark.Text = "●"
            tickMark.TextColor3 = Color3.fromRGB(0, 255, 200)
            tickMark.TextSize = 14
            tickMark.Visible = Selected[plr.Name] ~= nil
            tickMark.Parent = tickBox
            local nameLabel = Instance.new("TextLabel")
            nameLabel.Size = UDim2.new(1, -45, 1, 0)
            nameLabel.Position = UDim2.new(0, 38, 0, 0)
            nameLabel.BackgroundTransparency = 1
            nameLabel.Text = plr.Name
            nameLabel.TextColor3 = Color3.fromRGB(220, 220, 220)
            nameLabel.Font = Enum.Font.Gotham
            nameLabel.TextSize = 13
            nameLabel.TextXAlignment = Enum.TextXAlignment.Left
            nameLabel.Parent = row
            local clicker = Instance.new("TextButton")
            clicker.Size = UDim2.new(1, 0, 1, 0)
            clicker.BackgroundTransparency = 1
            clicker.Text = ""
            clicker.Parent = row
            clicker.MouseButton1Click:Connect(function()
                if Selected[plr.Name] then
                    Selected[plr.Name] = nil
                    tickMark.Visible = false
                else
                    Selected[plr.Name] = plr
                    tickMark.Visible = true
                end
                UpdateStatus()
            end)
            Checkboxes[plr.Name] = tickMark
            y = y + 40
        end
    end
    PlayerScroll.CanvasSize = UDim2.new(0, 0, 0, y + 10)
end

local function SelectAll(select)
    for _, plr in pairs(Players:GetPlayers()) do
        if plr ~= LocalPlayer and Checkboxes[plr.Name] then
            if select then
                Selected[plr.Name] = plr
                Checkboxes[plr.Name].Visible = true
            else
                Selected[plr.Name] = nil
                Checkboxes[plr.Name].Visible = false
            end
        end
    end
    UpdateStatus()
end

local function Notify(Title, Text, Dur)
    game:GetService("StarterGui"):SetCore("SendNotification", {Title = Title, Text = Text, Duration = Dur or 3})
end

local function HyperFling(Target)
    local Char = LocalPlayer.Character
    local Hum = Char and Char:FindFirstChildOfClass("Humanoid")
    local Root = Hum and Hum.RootPart
    local TChar = Target.Character
    if not TChar then return end
    local THum = TChar:FindFirstChildOfClass("Humanoid")
    local TRoot = THum and THum.RootPart
    local THead = TChar:FindFirstChild("Head")
    if not Char or not Hum or not Root then return Notify("ERROR", "Character not ready", 2) end
    if THum and THum.Sit then return Notify("ERROR", Target.Name .. " is sitting", 2) end
    if not TChar:FindFirstChildWhichIsA("BasePart") then return end
    if Root.Velocity.Magnitude < 50 then
        getgenv().OldPos = Root.CFrame
    end
    if THead then
        workspace.CurrentCamera.CameraSubject = THead
    elseif TRoot then
        workspace.CurrentCamera.CameraSubject = TRoot
    end
    local function Push(Base, X, Y, Z, RotX, RotY, RotZ)
        Root.CFrame = CFrame.new(Base.Position) * CFrame.new(X, Y, Z)
        Char:SetPrimaryPartCFrame(CFrame.new(Base.Position) * CFrame.new(X, Y, Z))
        Root.Velocity = Vector3.new(9e7, 9e8, 9e7)
        Root.RotVelocity = Vector3.new(9e8, 9e8, 9e8)
    end
    local function Cycle(Base)
        local Start = tick()
        local Step = 0
        repeat
            if Root and THum then
                Step = Step + 180
                Push(Base, 0, 1.8, 0, math.rad(Step), 0, 0)
                task.wait()
                Push(Base, 0, -1.8, 0, math.rad(Step), 0, 0)
                task.wait()
                Push(Base, 0, 1.8, THum.WalkSpeed / 2, math.rad(Step), 0, 0)
                task.wait()
                Push(Base, 0, -1.8, -THum.WalkSpeed / 2, math.rad(Step), 0, 0)
                task.wait()
            end
        until Start + 2.5 < tick() or not FlingActive
    end
    workspace.FallenPartsDestroyHeight = 0/0
    local BV = Instance.new("BodyVelocity")
    BV.Parent = Root
    BV.Velocity = Vector3.new(0, 0, 0)
    BV.MaxForce = Vector3.new(9e9, 9e9, 9e9)
    Hum:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
    if TRoot then Cycle(TRoot) elseif THead then Cycle(THead) end
    BV:Destroy()
    Hum:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
    workspace.CurrentCamera.CameraSubject = Hum
    if getgenv().OldPos then
        repeat
            Root.CFrame = getgenv().OldPos * CFrame.new(0, 0.5, 0)
            Char:SetPrimaryPartCFrame(getgenv().OldPos * CFrame.new(0, 0.5, 0))
            Hum:ChangeState("GettingUp")
            for _, P in pairs(Char:GetChildren()) do
                if P:IsA("BasePart") then
                    P.Velocity, P.RotVelocity = Vector3.new(), Vector3.new()
                end
            end
            task.wait()
        until (Root.Position - getgenv().OldPos.p).Magnitude < 25
        workspace.FallenPartsDestroyHeight = getgenv().FPDH
    end
end

local function StartFling()
    if FlingActive then return end
    local Cnt = 0
    for _ in pairs(Selected) do Cnt = Cnt + 1 end
    if Cnt == 0 then
        StatusLabel.Text = "NO TARGETS"
        task.wait(1)
        StatusLabel.Text = "SELECT TARGETS"
        return
    end
    FlingActive = true
    UpdateStatus()
    Notify("DEDSEC", "Flinging " .. Cnt .. " targets", 2)
    spawn(function()
        while FlingActive do
            local Valid = {}
            for Name, Plr in pairs(Selected) do
                if Plr and Plr.Parent then Valid[Name] = Plr else Selected[Name] = nil end
            end
            for _, Plr in pairs(Valid) do
                if FlingActive then
                    HyperFling(Plr)
                    task.wait(0.05)
                end
            end
            UpdateStatus()
            task.wait(0.3)
        end
    end)
end

local function StopFling()
    if not FlingActive then return end
    FlingActive = false
    UpdateStatus()
    Notify("DEDSEC", "Fling stopped", 2)
end

StartBtn.MouseButton1Click:Connect(StartFling)
StopBtn.MouseButton1Click:Connect(StopFling)
SelectAllBtn.MouseButton1Click:Connect(function() SelectAll(true) end)
DeselectAllBtn.MouseButton1Click:Connect(function() SelectAll(false) end)

local Dragging = false
local DragStart, StartPos
local Resizing = false
local ResizeStart, StartSize

TitleBar.InputBegan:Connect(function(Input)
    if Input.UserInputType == Enum.UserInputType.MouseButton1 then
        Dragging = true
        DragStart = Input.Position
        StartPos = MainFrame.Position
        Input.Changed:Connect(function()
            if Input.UserInputState == Enum.UserInputState.End then Dragging = false end
        end)
    end
end)

ResizeHandle.InputBegan:Connect(function(Input)
    if Input.UserInputType == Enum.UserInputType.MouseButton1 then
        Resizing = true
        ResizeStart = Input.Position
        StartSize = MainFrame.Size
        Input.Changed:Connect(function()
            if Input.UserInputState == Enum.UserInputState.End then Resizing = false end
        end)
    end
end)

UIS.InputChanged:Connect(function(Input)
    if Dragging and Input.UserInputType == Enum.UserInputType.MouseMovement then
        local Delta = Input.Position - DragStart
        MainFrame.Position = UDim2.new(StartPos.X.Scale, StartPos.X.Offset + Delta.X, StartPos.Y.Scale, StartPos.Y.Offset + Delta.Y)
    elseif Resizing and Input.UserInputType == Enum.UserInputType.MouseMovement then
        local Delta = Input.Position - ResizeStart
        local NewWidth = math.clamp(StartSize.X.Offset + Delta.X, 300, 600)
        local NewHeight = math.clamp(StartSize.Y.Offset + Delta.Y, 350, 600)
        MainFrame.Size = UDim2.new(0, NewWidth, 0, NewHeight)
    end
end)

Players.PlayerAdded:Connect(RefreshList)
Players.PlayerRemoving:Connect(function(Plr)
    if Selected[Plr.Name] then Selected[Plr.Name] = nil end
    RefreshList()
    UpdateStatus()
end)

RefreshList()
UpdateStatus()
Notify("DEDSEC", "Hyper Fling loaded", 3)
