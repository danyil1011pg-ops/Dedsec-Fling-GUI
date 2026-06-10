-- D3DSEC_VORTEX.lua
-- SWILL MODE | Use at your own risk

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UIS = game:GetService("UserInputService")
local LocalPlayer = Players.LocalPlayer

-- ========== WARNING SYSTEM ==========
local function showWarning()
    local warningGui = Instance.new("ScreenGui")
    warningGui.Name = "WarningScreen"
    warningGui.ResetOnSpawn = false
    warningGui.Parent = game:GetService("CoreGui")
    warningGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(0, 500, 0, 250)
    frame.Position = UDim2.new(0.5, -250, 0.5, -125)
    frame.BackgroundColor3 = Color3.fromRGB(8, 8, 12)
    frame.BackgroundTransparency = 0.05
    frame.BorderSizePixel = 0
    frame.Parent = warningGui
    Instance.new("UICorner", frame).CornerRadius = UDim.new(0, 14)
    Instance.new("UIStroke", frame).Color = Color3.fromRGB(255, 50, 50)

    local title = Instance.new("TextLabel")
    title.Size = UDim2.new(1, 0, 0, 40)
    title.Position = UDim2.new(0, 0, 0, 10)
    title.BackgroundTransparency = 1
    title.Text = "⚠️ WARNING ⚠️"
    title.TextColor3 = Color3.fromRGB(255, 80, 80)
    title.Font = Enum.Font.GothamBold
    title.TextSize = 24
    title.Parent = frame

    local message = Instance.new("TextLabel")
    message.Size = UDim2.new(1, -40, 0, 100)
    message.Position = UDim2.new(0, 20, 0, 60)
    message.BackgroundTransparency = 1
    message.Text = "This tool modifies game behavior.\nUsing it may result in a permanent BAN.\n\nYou are solely responsible for your account.\n\nProceed at your own risk."
    message.TextColor3 = Color3.fromRGB(220, 220, 220)
    message.Font = Enum.Font.Gotham
    message.TextSize = 14
    message.TextWrapped = true
    message.Parent = frame

    local acceptBtn = Instance.new("TextButton")
    acceptBtn.Size = UDim2.new(0, 150, 0, 40)
    acceptBtn.Position = UDim2.new(0.5, -160, 1, -60)
    acceptBtn.BackgroundColor3 = Color3.fromRGB(0, 140, 0)
    acceptBtn.Text = "I UNDERSTAND"
    acceptBtn.TextColor3 = Color3.fromRGB(255,255,255)
    acceptBtn.Font = Enum.Font.GothamBold
    acceptBtn.TextSize = 14
    acceptBtn.Parent = frame
    Instance.new("UICorner", acceptBtn).CornerRadius = UDim.new(0, 8)

    local cancelBtn = Instance.new("TextButton")
    cancelBtn.Size = UDim2.new(0, 150, 0, 40)
    cancelBtn.Position = UDim2.new(0.5, 10, 1, -60)
    cancelBtn.BackgroundColor3 = Color3.fromRGB(140, 0, 0)
    cancelBtn.Text = "EXIT"
    cancelBtn.TextColor3 = Color3.fromRGB(255,255,255)
    cancelBtn.Font = Enum.Font.GothamBold
    cancelBtn.TextSize = 14
    cancelBtn.Parent = frame
    Instance.new("UICorner", cancelBtn).CornerRadius = UDim.new(0, 8)

    local accepted = false
    acceptBtn.MouseButton1Click:Connect(function()
        accepted = true
        warningGui:Destroy()
    end)
    cancelBtn.MouseButton1Click:Connect(function()
        warningGui:Destroy()
    end)

    repeat task.wait() until accepted
end

-- ========== DRAG + RESIZE SYSTEM ==========
local function makeWindowDraggableAndResizable(frame, titleBar, resizeHandle)
    local drag = false
    local dragStart, startPos
    titleBar.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            drag = true
            dragStart = input.Position
            startPos = frame.Position
        end
    end)
    UIS.InputChanged:Connect(function(input)
        if drag and input.UserInputType == Enum.UserInputType.MouseMovement then
            local delta = input.Position - dragStart
            frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
        end
    end)
    UIS.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            drag = false
        end
    end)
    if resizeHandle then
        local resizing = false
        local resizeStart, startSize
        resizeHandle.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 then
                resizing = true
                resizeStart = input.Position
                startSize = frame.Size
            end
        end)
        UIS.InputChanged:Connect(function(input)
            if resizing and input.UserInputType == Enum.UserInputType.MouseMovement then
                local delta = input.Position - resizeStart
                local newWidth = math.clamp(startSize.X.Offset + delta.X, 380, 700)
                local newHeight = math.clamp(startSize.Y.Offset + delta.Y, 450, 700)
                frame.Size = UDim2.new(0, newWidth, 0, newHeight)
            end
        end)
        UIS.InputEnded:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 then
                resizing = false
            end
        end)
    end
end

-- Show warning before anything else
showWarning()

-- ========== MAIN GUI (D3DSEC STYLE) ==========
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "D3DSEC_Vortex"
screenGui.ResetOnSpawn = false
screenGui.Parent = game:GetService("CoreGui")

local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 420, 0, 520)
mainFrame.Position = UDim2.new(0.5, -210, 0.5, -260)
mainFrame.BackgroundColor3 = Color3.fromRGB(8, 12, 24)
mainFrame.BackgroundTransparency = 0.08
mainFrame.BorderSizePixel = 0
mainFrame.ClipsDescendants = true
mainFrame.Parent = screenGui
Instance.new("UICorner", mainFrame).CornerRadius = UDim.new(0, 14)
Instance.new("UIStroke", mainFrame).Color = Color3.fromRGB(0, 255, 80)

-- Background matrix
local bgMatrix = Instance.new("Frame")
bgMatrix.Size = UDim2.new(1, 0, 1, 0)
bgMatrix.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
bgMatrix.BackgroundTransparency = 0.75
bgMatrix.Parent = mainFrame

for i = 1, 40 do
    local lbl = Instance.new("TextLabel")
    lbl.Size = UDim2.new(0, math.random(30, 70), 0, 18)
    lbl.Position = UDim2.new(math.random() * 0.95, 0, math.random() * 0.95, 0)
    lbl.Text = math.random(0,1) == 0 and "0" or "1"
    lbl.TextColor3 = Color3.fromRGB(0, math.random(150, 255), math.random(80, 150))
    lbl.BackgroundTransparency = 1
    lbl.Font = Enum.Font.Code
    lbl.TextSize = math.random(10, 14)
    lbl.TextTransparency = math.random(3, 7) / 10
    lbl.Parent = bgMatrix
end

local titleBar = Instance.new("Frame")
titleBar.Size = UDim2.new(1, 0, 0, 40)
titleBar.BackgroundColor3 = Color3.fromRGB(12, 16, 28)
titleBar.BackgroundTransparency = 0.3
titleBar.Parent = mainFrame
Instance.new("UICorner", titleBar).CornerRadius = UDim.new(0, 14)

local icon = Instance.new("TextLabel")
icon.Size = UDim2.new(0, 40, 1, 0)
icon.BackgroundTransparency = 1
icon.Text = "⚡"
icon.TextColor3 = Color3.fromRGB(0, 255, 80)
icon.Font = Enum.Font.GothamBold
icon.TextSize = 24
icon.Parent = titleBar

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, -80, 1, 0)
title.Position = UDim2.new(0, 45, 0, 0)
title.BackgroundTransparency = 1
title.Text = "◈ D3DSEC_VORTEX ◈"
title.TextColor3 = Color3.fromRGB(0, 255, 80)
title.Font = Enum.Font.GothamBold
title.TextSize = 16
title.Parent = titleBar

local closeBtn = Instance.new("TextButton")
closeBtn.Size = UDim2.new(0, 30, 0, 30)
closeBtn.Position = UDim2.new(1, -38, 0, 5)
closeBtn.BackgroundColor3 = Color3.fromRGB(180, 30, 30)
closeBtn.Text = "✕"
closeBtn.TextColor3 = Color3.fromRGB(255,255,255)
closeBtn.Font = Enum.Font.GothamBold
closeBtn.TextSize = 16
closeBtn.Parent = titleBar
closeBtn.MouseButton1Click:Connect(function() screenGui:Destroy() end)

local resizeHandle = Instance.new("Frame")
resizeHandle.Size = UDim2.new(0, 15, 0, 15)
resizeHandle.Position = UDim2.new(1, -15, 1, -15)
resizeHandle.BackgroundColor3 = Color3.fromRGB(0, 255, 80)
resizeHandle.BackgroundTransparency = 0.5
resizeHandle.Parent = mainFrame
Instance.new("UICorner", resizeHandle).CornerRadius = UDim.new(0, 3)

local statusLabel = Instance.new("TextLabel")
statusLabel.Position = UDim2.new(0, 15, 0, 50)
statusLabel.Size = UDim2.new(1, -30, 0, 22)
statusLabel.BackgroundTransparency = 1
statusLabel.Text = "STANDBY | TARGETS: 0"
statusLabel.TextColor3 = Color3.fromRGB(150, 255, 150)
statusLabel.Font = Enum.Font.Gotham
statusLabel.TextSize = 12
statusLabel.TextXAlignment = Enum.TextXAlignment.Left
statusLabel.Parent = mainFrame

local listFrame = Instance.new("Frame")
listFrame.Position = UDim2.new(0, 10, 0, 80)
listFrame.Size = UDim2.new(1, -20, 0, 280)
listFrame.BackgroundColor3 = Color3.fromRGB(15, 19, 30)
listFrame.BackgroundTransparency = 0.4
listFrame.Parent = mainFrame
Instance.new("UICorner", listFrame).CornerRadius = UDim.new(0, 8)

local playerScroll = Instance.new("ScrollingFrame")
playerScroll.Position = UDim2.new(0, 5, 0, 5)
playerScroll.Size = UDim2.new(1, -10, 1, -10)
playerScroll.BackgroundTransparency = 1
playerScroll.ScrollBarThickness = 5
playerScroll.CanvasSize = UDim2.new(0, 0, 0, 0)
playerScroll.Parent = listFrame

local engageBtn = Instance.new("TextButton")
engageBtn.Position = UDim2.new(0, 10, 0, 375)
engageBtn.Size = UDim2.new(0.48, -5, 0, 36)
engageBtn.BackgroundColor3 = Color3.fromRGB(0, 140, 0)
engageBtn.Text = "▶ ENGAGE"
engageBtn.TextColor3 = Color3.fromRGB(255,255,255)
engageBtn.Font = Enum.Font.GothamBold
engageBtn.TextSize = 14
engageBtn.Parent = mainFrame
Instance.new("UICorner", engageBtn).CornerRadius = UDim.new(0, 8)

local disengageBtn = Instance.new("TextButton")
disengageBtn.Position = UDim2.new(0.52, 5, 0, 375)
disengageBtn.Size = UDim2.new(0.48, -5, 0, 36)
disengageBtn.BackgroundColor3 = Color3.fromRGB(140, 0, 0)
disengageBtn.Text = "■ DISENGAGE"
disengageBtn.TextColor3 = Color3.fromRGB(255,255,255)
disengageBtn.Font = Enum.Font.GothamBold
disengageBtn.TextSize = 14
disengageBtn.Parent = mainFrame
Instance.new("UICorner", disengageBtn).CornerRadius = UDim.new(0, 8)

local selectAllBtn = Instance.new("TextButton")
selectAllBtn.Position = UDim2.new(0, 10, 0, 420)
selectAllBtn.Size = UDim2.new(0.48, -5, 0, 28)
selectAllBtn.BackgroundColor3 = Color3.fromRGB(40, 40, 60)
selectAllBtn.Text = "SELECT ALL"
selectAllBtn.TextColor3 = Color3.fromRGB(220,220,220)
selectAllBtn.Font = Enum.Font.Gotham
selectAllBtn.TextSize = 11
selectAllBtn.Parent = mainFrame
Instance.new("UICorner", selectAllBtn).CornerRadius = UDim.new(0, 6)

local deselectAllBtn = Instance.new("TextButton")
deselectAllBtn.Position = UDim2.new(0.52, 5, 0, 420)
deselectAllBtn.Size = UDim2.new(0.48, -5, 0, 28)
deselectAllBtn.BackgroundColor3 = Color3.fromRGB(40, 40, 60)
deselectAllBtn.Text = "DESELECT ALL"
deselectAllBtn.TextColor3 = Color3.fromRGB(220,220,220)
deselectAllBtn.Font = Enum.Font.Gotham
deselectAllBtn.TextSize = 11
deselectAllBtn.Parent = mainFrame
Instance.new("UICorner", deselectAllBtn).CornerRadius = UDim.new(0, 6)

-- Data
local selected = {}
local checkmarks = {}
local active = false
local savedPos = nil

-- Core fling function
local function hyperFling(target)
    local char = LocalPlayer.Character
    local hum = char and char:FindFirstChildOfClass("Humanoid")
    local root = hum and hum.RootPart
    local tChar = target.Character
    if not tChar then return end
    local tHum = tChar:FindFirstChildOfClass("Humanoid")
    local tRoot = tHum and tHum.RootPart
    local tHead = tChar:FindFirstChild("Head")
    if not char or not hum or not root then return end
    if root.Velocity.Magnitude < 50 then
        savedPos = root.CFrame
    end
    if tHead then
        workspace.CurrentCamera.CameraSubject = tHead
    elseif tRoot then
        workspace.CurrentCamera.CameraSubject = tRoot
    end
    local function push(base, x, y, z, rotX, rotY, rotZ)
        root.CFrame = CFrame.new(base.Position) * CFrame.new(x, y, z)
        char:SetPrimaryPartCFrame(CFrame.new(base.Position) * CFrame.new(x, y, z))
        if tHum then
            tHum.PlatformStand = true
            tHum.Sit = false
            if tRoot then tRoot.Velocity = Vector3.new(0,0,0) end
        end
        root.Velocity = Vector3.new(9e9, 9e9, 9e9)
        root.RotVelocity = Vector3.new(9e9, 9e9, 9e9)
    end
    local function cycle(base)
        local start = tick()
        local step = 0
        repeat
            if root and tHum then
                step = step + 180
                push(base, 0, 1.8, 0, math.rad(step), 0, 0)
                task.wait()
                push(base, 0, -1.8, 0, math.rad(step), 0, 0)
                task.wait()
                push(base, 0, 1.8, (tHum.WalkSpeed or 16)/2, math.rad(step), 0, 0)
                task.wait()
                push(base, 0, -1.8, -(tHum.WalkSpeed or 16)/2, math.rad(step), 0, 0)
                task.wait()
            end
        until start + 2.5 < tick() or not active
    end
    local oldFall = workspace.FallenPartsDestroyHeight
    workspace.FallenPartsDestroyHeight = 0/0
    local bv = Instance.new("BodyVelocity")
    bv.Parent = root
    bv.Velocity = Vector3.new(0,0,0)
    bv.MaxForce = Vector3.new(9e9,9e9,9e9)
    hum:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
    if tRoot then
        cycle(tRoot)
        if root and root.Velocity.Magnitude < 1e7 then cycle(tRoot) end
    elseif tHead then
        cycle(tHead)
        if root and root.Velocity.Magnitude < 1e7 then cycle(tHead) end
    end
    bv:Destroy()
    if tHum then tHum.PlatformStand = false end
    hum:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
    workspace.CurrentCamera.CameraSubject = hum
    workspace.FallenPartsDestroyHeight = oldFall
    if savedPos then
        repeat
            root.CFrame = savedPos * CFrame.new(0,0.5,0)
            char:SetPrimaryPartCFrame(savedPos * CFrame.new(0,0.5,0))
            hum:ChangeState("GettingUp")
            for _, p in pairs(char:GetChildren()) do
                if p:IsA("BasePart") then
                    p.Velocity, p.RotVelocity = Vector3.new(), Vector3.new()
                end
            end
            task.wait()
        until (root.Position - savedPos.p).Magnitude < 25
    end
end

-- GUI list update
local function updateList()
    for _, v in pairs(playerScroll:GetChildren()) do if v:IsA("Frame") then v:Destroy() end end
    checkmarks = {}
    local y = 5
    local sorted = {}
    for _, plr in pairs(Players:GetPlayers()) do table.insert(sorted, plr) end
    table.sort(sorted, function(a,b) return a.Name:lower() < b.Name:lower() end)
    for _, plr in pairs(sorted) do
        if plr ~= LocalPlayer then
            local row = Instance.new("Frame")
            row.Size = UDim2.new(1, -10, 0, 32)
            row.Position = UDim2.new(0, 5, 0, y)
            row.BackgroundColor3 = Color3.fromRGB(25, 28, 42)
            row.BackgroundTransparency = 0.4
            row.Parent = playerScroll
            Instance.new("UICorner", row).CornerRadius = UDim.new(0, 6)
            local box = Instance.new("Frame")
            box.Size = UDim2.new(0, 20, 0, 20)
            box.Position = UDim2.new(0, 8, 0.5, -10)
            box.BackgroundColor3 = Color3.fromRGB(40, 44, 60)
            box.Parent = row
            Instance.new("UICorner", box).CornerRadius = UDim.new(0, 4)
            local mark = Instance.new("TextLabel")
            mark.Size = UDim2.new(1, 0, 1, 0)
            mark.BackgroundTransparency = 1
            mark.Text = "●"
            mark.TextColor3 = Color3.fromRGB(0, 255, 80)
            mark.TextSize = 14
            mark.Visible = selected[plr.Name] ~= nil
            mark.Parent = box
            local name = Instance.new("TextLabel")
            name.Size = UDim2.new(1, -45, 1, 0)
            name.Position = UDim2.new(0, 38, 0, 0)
            name.BackgroundTransparency = 1
            name.Text = plr.Name
            name.TextColor3 = Color3.fromRGB(220,220,220)
            name.Font = Enum.Font.Gotham
            name.TextSize = 12
            name.TextXAlignment = Enum.TextXAlignment.Left
            name.Parent = row
            local click = Instance.new("TextButton")
            click.Size = UDim2.new(1, 0, 1, 0)
            click.BackgroundTransparency = 1
            click.Text = ""
            click.Parent = row
            click.MouseButton1Click:Connect(function()
                if selected[plr.Name] then
                    selected[plr.Name] = nil
                    mark.Visible = false
                else
                    selected[plr.Name] = plr
                    mark.Visible = true
                end
                local cnt = 0 for _ in pairs(selected) do cnt = cnt + 1 end
                statusLabel.Text = (active and "🔴 ACTIVE" or "🟢 STANDBY") .. " | TARGETS: " .. cnt
            end)
            checkmarks[plr.Name] = mark
            y = y + 38
        end
    end
    playerScroll.CanvasSize = UDim2.new(0, 0, 0, y + 10)
end

local function selectAll(select)
    for _, plr in pairs(Players:GetPlayers()) do
        if plr ~= LocalPlayer and checkmarks[plr.Name] then
            if select then
                selected[plr.Name] = plr
                checkmarks[plr.Name].Visible = true
            else
                selected[plr.Name] = nil
                checkmarks[plr.Name].Visible = false
            end
        end
    end
    local cnt = 0 for _ in pairs(selected) do cnt = cnt + 1 end
    statusLabel.Text = (active and "🔴 ACTIVE" or "🟢 STANDBY") .. " | TARGETS: " .. cnt
end

-- Start/Stop
local function startFling()
    if active then return end
    local cnt = 0 for _ in pairs(selected) do cnt = cnt + 1 end
    if cnt == 0 then
        statusLabel.Text = "⚠️ NO TARGETS SELECTED"
        task.wait(1)
        local cnt2 = 0 for _ in pairs(selected) do cnt2 = cnt2 + 1 end
        statusLabel.Text = (active and "🔴 ACTIVE" or "🟢 STANDBY") .. " | TARGETS: " .. cnt2
        return
    end
    active = true
    statusLabel.Text = "🔴 ACTIVE | TARGETS: " .. cnt
    spawn(function()
        while active do
            local valid = {}
            for name, plr in pairs(selected) do
                if plr and plr.Parent then valid[name] = plr else selected[name] = nil end
            end
            for _, plr in pairs(valid) do
                if active then
                    hyperFling(plr)
                    task.wait()
                end
            end
            local cntNow = 0 for _ in pairs(selected) do cntNow = cntNow + 1 end
            statusLabel.Text = "🔴 ACTIVE | TARGETS: " .. cntNow
            task.wait(0.1)
        end
    end)
end

local function stopFling()
    active = false
    local cnt = 0 for _ in pairs(selected) do cnt = cnt + 1 end
    statusLabel.Text = "🟢 STANDBY | TARGETS: " .. cnt
end

engageBtn.MouseButton1Click:Connect(startFling)
disengageBtn.MouseButton1Click:Connect(stopFling)
selectAllBtn.MouseButton1Click:Connect(function() selectAll(true) end)
deselectAllBtn.MouseButton1Click:Connect(function() selectAll(false) end)

Players.PlayerAdded:Connect(updateList)
Players.PlayerRemoving:Connect(function(plr)
    if selected[plr.Name] then selected[plr.Name] = nil end
    updateList()
    local cnt = 0 for _ in pairs(selected) do cnt = cnt + 1 end
    statusLabel.Text = (active and "🔴 ACTIVE" or "🟢 STANDBY") .. " | TARGETS: " .. cnt
end)

makeWindowDraggableAndResizable(mainFrame, titleBar, resizeHandle)
updateList()
