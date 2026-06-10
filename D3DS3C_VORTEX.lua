local IlIlIllIIlIIlIIIl = game:GetService("Players")
local IlllIIllIIlIlIlIl = game:GetService("RunService")
local IIIlllIIllIIlIIII = game:GetService("UserInputService")
local lllllllllllllIIII = IlIlIllIIlIIlIIIl.LocalPlayer
local IlIIIIIlllllIlIIl = Instance.new("ScreenGui")
IlIIIIIlllllIlIIl.Name = "D3DSEC_Vortex"
IlIIIIIlllllIlIIl.ResetOnSpawn = false
IlIIIIIlllllIlIIl.Parent = game:GetService("CoreGui")
local lllIIlIlIlIIlIIII = Instance.new("Frame")
lllIIlIlIlIIlIIII.Size = UDim2.new(0, 340, 0, 420)
lllIIlIlIlIIlIIII.Position = UDim2.new(0.5, -170, 0.5, -210)
lllIIlIlIlIIlIIII.BackgroundColor3 = Color3.fromRGB(6, 12, 18)
lllIIlIlIlIIlIIII.BorderSizePixel = 0
lllIIlIlIlIIlIIII.Active = true
lllIIlIlIlIIlIIII.Draggable = true
lllIIlIlIlIIlIIII.Parent = IlIIIIIlllllIlIIl
Instance.new("UICorner", lllIIlIlIlIIlIIII).CornerRadius = UDim.new(0, 10)
Instance.new("UIStroke", lllIIlIlIlIIlIIII).Color = Color3.fromRGB(0, 255, 80)
for IIIlllIIIIllIlII = 1, 30 do
    local IIIllllIIIIllIlII = Instance.new("TextLabel")
    IIIllllIIIIllIlII.Size = UDim2.new(0, math.random(20, 60), 0, 16)
    IIIllllIIIIllIlII.Position = UDim2.new(math.random() * 0.95, 0, math.random() * 0.95, 0)
    IIIllllIIIIllIlII.Text = math.random(0,1) == 0 and "0" or "1"
    IIIllllIIIIllIlII.TextColor3 = Color3.fromRGB(0, math.random(150, 255), math.random(80, 150))
    IIIllllIIIIllIlII.BackgroundTransparency = 1
    IIIllllIIIIllIlII.Font = Enum.Font.Code
    IIIllllIIIIllIlII.TextSize = math.random(10, 14)
    IIIllllIIIIllIlII.TextTransparency = 0.6
    IIIllllIIIIllIlII.Parent = lllIIlIlIlIIlIIII
end
local IIIllllllIIllIIIl = Instance.new("Frame")
IIIllllllIIllIIIl.Size = UDim2.new(1, 0, 0, 32)
IIIllllllIIllIIIl.BackgroundColor3 = Color3.fromRGB(0, 20, 0)
IIIllllllIIllIIIl.BorderSizePixel = 0
IIIllllllIIllIIIl.Parent = lllIIlIlIlIIlIIII
Instance.new("UICorner", IIIllllllIIllIIIl).CornerRadius = UDim.new(0, 10)
local IIIlIllIlIIllIlII = Instance.new("TextLabel")
IIIlIllIlIIllIlII.Size = UDim2.new(1, -35, 1, 0)
IIIlIllIlIIllIlII.BackgroundTransparency = 1
IIIlIllIlIIllIlII.Text = "> D3DSEC_VORTEX <"
IIIlIllIlIIllIlII.TextColor3 = Color3.fromRGB(0, 255, 80)
IIIlIllIlIIllIlII.Font = Enum.Font.GothamBold
IIIlIllIlIIllIlII.TextSize = 16
IIIlIllIlIIllIlII.Parent = IIIllllllIIllIIIl
local IIIlllIllllIllllI = Instance.new("TextButton")
IIIlllIllllIllllI.Size = UDim2.new(0, 32, 0, 32)
IIIlllIllllIllllI.Position = UDim2.new(1, -32, 0, 0)
IIIlllIllllIllllI.BackgroundColor3 = Color3.fromRGB(120, 0, 0)
IIIlllIllllIllllI.BorderSizePixel = 0
IIIlllIllllIllllI.Text = "X"
IIIlllIllllIllllI.TextColor3 = Color3.fromRGB(255, 255, 255)
IIIlllIllllIllllI.Font = Enum.Font.GothamBold
IIIlllIllllIllllI.TextSize = 18
IIIlllIllllIllllI.Parent = IIIllllllIIllIIIl
Instance.new("UICorner", IIIlllIllllIllllI).CornerRadius = UDim.new(0, 6)
local IlIIIlIlllllllIll = Instance.new("TextLabel")
IlIIIlIlllllllIll.Position = UDim2.new(0, 10, 0, 42)
IlIIIlIlllllllIll.Size = UDim2.new(1, -20, 0, 22)
IlIIIlIlllllllIll.BackgroundTransparency = 1
IlIIIlIlllllllIll.Text = "STANDING BY | TARGETS: 0"
IlIIIlIlllllllIll.TextColor3 = Color3.fromRGB(0, 255, 80)
IlIIIlIlllllllIll.Font = Enum.Font.Gotham
IlIIIlIlllllllIll.TextSize = 12
IlIIIlIlllllllIll.TextXAlignment = Enum.TextXAlignment.Left
IlIIIlIlllllllIll.Parent = lllIIlIlIlIIlIIII
local lIIllIIlllIIIIlII = Instance.new("Frame")
lIIllIIlllIIIIlII.Position = UDim2.new(0, 10, 0, 72)
lIIllIIlllIIIIlII.Size = UDim2.new(1, -20, 0, 240)
lIIllIIlllIIIIlII.BackgroundColor3 = Color3.fromRGB(12, 18, 24)
lIIllIIlllIIIIlII.BorderSizePixel = 0
lIIllIIlllIIIIlII.Parent = lllIIlIlIlIIlIIII
Instance.new("UICorner", lIIllIIlllIIIIlII).CornerRadius = UDim.new(0, 8)
local lIIlIlllIllIIlIlI = Instance.new("ScrollingFrame")
lIIlIlllIllIIlIlI.Position = UDim2.new(0, 5, 0, 5)
lIIlIlllIllIIlIlI.Size = UDim2.new(1, -10, 1, -10)
lIIlIlllIllIIlIlI.BackgroundTransparency = 1
lIIlIlllIllIIlIlI.BorderSizePixel = 0
lIIlIlllIllIIlIlI.ScrollBarThickness = 5
lIIlIlllIllIIlIlI.CanvasSize = UDim2.new(0, 0, 0, 0)
lIIlIlllIllIIlIlI.Parent = lIIllIIlllIIIIlII
local IIIlllllIIllIlIIl = Instance.new("TextButton")
IIIlllllIIllIlIIl.Position = UDim2.new(0, 10, 0, 324)
IIIlllllIIllIlIIl.Size = UDim2.new(0.48, -5, 0, 34)
IIIlllllIIllIlIIl.BackgroundColor3 = Color3.fromRGB(0, 100, 0)
IIIlllllIIllIlIIl.BorderSizePixel = 0
IIIlllllIIllIlIIl.Text = "⚡ ACTIVATE"
IIIlllllIIllIlIIl.TextColor3 = Color3.fromRGB(255, 255, 255)
IIIlllllIIllIlIIl.Font = Enum.Font.GothamBold
IIIlllllIIllIlIIl.TextSize = 14
IIIlllllIIllIlIIl.Parent = lllIIlIlIlIIlIIII
Instance.new("UICorner", IIIlllllIIllIlIIl).CornerRadius = UDim.new(0, 6)
local IIlIlllIlIIlIlIIl = Instance.new("TextButton")
IIlIlllIlIIlIlIIl.Position = UDim2.new(0.52, 5, 0, 324)
IIlIlllIlIIlIlIIl.Size = UDim2.new(0.48, -5, 0, 34)
IIlIlllIlIIlIlIIl.BackgroundColor3 = Color3.fromRGB(100, 0, 0)
IIlIlllIlIIlIlIIl.BorderSizePixel = 0
IIlIlllIlIIlIlIIl.Text = "■ DEACTIVATE"
IIlIlllIlIIlIlIIl.TextColor3 = Color3.fromRGB(255, 255, 255)
IIlIlllIlIIlIlIIl.Font = Enum.Font.GothamBold
IIlIlllIlIIlIlIIl.TextSize = 14
IIlIlllIlIIlIlIIl.Parent = lllIIlIlIlIIlIIII
Instance.new("UICorner", IIlIlllIlIIlIlIIl).CornerRadius = UDim.new(0, 6)
local IIIlllllllIIllIlI = Instance.new("TextButton")
IIIlllllllIIllIlI.Position = UDim2.new(0, 10, 0, 368)
IIIlllllllIIllIlI.Size = UDim2.new(0.48, -5, 0, 26)
IIIlllllllIIllIlI.BackgroundColor3 = Color3.fromRGB(30, 40, 50)
IIIlllllllIIllIlI.BorderSizePixel = 0
IIIlllllllIIllIlI.Text = "MARK ALL"
IIIlllllllIIllIlI.TextColor3 = Color3.fromRGB(0, 255, 80)
IIIlllllllIIllIlI.Font = Enum.Font.Gotham
IIIlllllllIIllIlI.TextSize = 11
IIIlllllllIIllIlI.Parent = lllIIlIlIlIIlIIII
Instance.new("UICorner", IIIlllllllIIllIlI).CornerRadius = UDim.new(0, 4)
local lIIIlllIlllllllII = Instance.new("TextButton")
lIIIlllIlllllllII.Position = UDim2.new(0.52, 5, 0, 368)
lIIIlllIlllllllII.Size = UDim2.new(0.48, -5, 0, 26)
lIIIlllIlllllllII.BackgroundColor3 = Color3.fromRGB(30, 40, 50)
lIIIlllIlllllllII.BorderSizePixel = 0
lIIIlllIlllllllII.Text = "CLEAR ALL"
lIIIlllIlllllllII.TextColor3 = Color3.fromRGB(255, 120, 120)
lIIIlllIlllllllII.Font = Enum.Font.Gotham
lIIIlllIlllllllII.TextSize = 11
lIIIlllIlllllllII.Parent = lllIIlIlIlIIlIIII
Instance.new("UICorner", lIIIlllIlllllllII).CornerRadius = UDim.new(0, 4)
local YkqUc = {}
local ppYSx = {}
local dUyrt = false
getgenv().OldPos = nil
getgenv().FPDH = workspace.FallenPartsDestroyHeight
local function lnuAp()
    for _, v in pairs(lIIlIlllIllIIlIlI:GetChildren()) do
        v:Destroy()
    end
    ppYSx = {}
    local pUxos = IlIlIllIIlIIlIIIl:GetPlayers()
    table.sort(pUxos, function(a, b) return a.Name:lower() < b.Name:lower() end)
    local y = 5
    for _, plr in pairs(pUxos) do
        if plr ~= lllllllllllllIIII then
            local row = Instance.new("Frame")
            row.Size = UDim2.new(1, -10, 0, 30)
            row.Position = UDim2.new(0, 5, 0, y)
            row.BackgroundColor3 = Color3.fromRGB(18, 24, 30)
            row.BorderSizePixel = 0
            row.Parent = lIIlIlllIllIIlIlI
            Instance.new("UICorner", row).CornerRadius = UDim.new(0, 6)
            local box = Instance.new("TextButton")
            box.Size = UDim2.new(0, 22, 0, 22)
            box.Position = UDim2.new(0, 6, 0.5, -11)
            box.BackgroundColor3 = Color3.fromRGB(30, 40, 50)
            box.BorderSizePixel = 0
            box.Text = ""
            box.Parent = row
            Instance.new("UICorner", box).CornerRadius = UDim.new(0, 4)
            local mark = Instance.new("TextLabel")
            mark.Size = UDim2.new(1, 0, 1, 0)
            mark.BackgroundTransparency = 1
            mark.Text = "●"
            mark.TextColor3 = Color3.fromRGB(0, 255, 80)
            mark.TextSize = 16
            mark.Visible = YkqUc[plr.Name] ~= nil
            mark.Parent = box
            local name = Instance.new("TextLabel")
            name.Size = UDim2.new(1, -40, 1, 0)
            name.Position = UDim2.new(0, 34, 0, 0)
            name.BackgroundTransparency = 1
            name.Text = plr.Name
            name.TextColor3 = Color3.fromRGB(200, 220, 240)
            name.TextSize = 13
            name.Font = Enum.Font.Gotham
            name.TextXAlignment = Enum.TextXAlignment.Left
            name.Parent = row
            local click = Instance.new("TextButton")
            click.Size = UDim2.new(1, 0, 1, 0)
            click.BackgroundTransparency = 1
            click.Text = ""
            click.ZIndex = 2
            click.Parent = row
            click.MouseButton1Click:Connect(function()
                if YkqUc[plr.Name] then
                    YkqUc[plr.Name] = nil
                    mark.Visible = false
                else
                    YkqUc[plr.Name] = plr
                    mark.Visible = true
                end
                CQpVN()
            end)
            ppYSx[plr.Name] = {Entry = row, Checkmark = mark}
            y = y + 36
        end
    end
    lIIlIlllIllIIlIlI.CanvasSize = UDim2.new(0, 0, 0, y + 10)
end
local function CQpVN()
    local f = 0
    for _ in pairs(YkqUc) do f = f + 1 end
    if dUyrt then
        IlIIIlIlllllllIll.Text = "EXECUTING | TARGETS: " .. f
        IlIIIlIlllllllIll.TextColor3 = Color3.fromRGB(255, 80, 80)
    else
        IlIIIlIlllllllIll.Text = "STANDING BY | TARGETS: " .. f
        IlIIIlIlllllllIll.TextColor3 = Color3.fromRGB(0, 255, 80)
    end
end
local function sUKZS(select)
    for _, plr in pairs(IlIlIllIIlIIlIIIl:GetPlayers()) do
        if plr ~= lllllllllllllIIII then
            local data = ppYSx[plr.Name]
            if data then
                if select then
                    YkqUc[plr.Name] = plr
                    data.Checkmark.Visible = true
                else
                    YkqUc[plr.Name] = nil
                    data.Checkmark.Visible = false
                end
            end
        end
    end
    CQpVN()
end
local function Message(Title, Text, Dur)
    game:GetService("StarterGui"):SetCore("SendNotification", {Title = Title, Text = Text, Duration = Dur or 5})
end
local function nPSTs(TargetPlayer)
    local Char = lllllllllllllIIII.Character
    local Hum = Char and Char:FindFirstChildOfClass("Humanoid")
    local Root = Hum and Hum.RootPart
    local TChar = TargetPlayer.Character
    if not TChar then return end
    local THum
    local TRoot
    local THead
    local Acc
    local Handle
    if TChar:FindFirstChildOfClass("Humanoid") then THum = TChar:FindFirstChildOfClass("Humanoid") end
    if THum and THum.RootPart then TRoot = THum.RootPart end
    if TChar:FindFirstChild("Head") then THead = TChar.Head end
    if TChar:FindFirstChildOfClass("Accessory") then Acc = TChar:FindFirstChildOfClass("Accessory") end
    if Acc and Acc:FindFirstChild("Handle") then Handle = Acc.Handle end
    if Char and Hum and Root then
        if Root.Velocity.Magnitude < 50 then getgenv().OldPos = Root.CFrame end
        if THum and THum.Sit then return Message("D3DSEC", "Target is seated", 2) end
        if THead then workspace.CurrentCamera.CameraSubject = THead
        elseif Handle then workspace.CurrentCamera.CameraSubject = Handle
        elseif THum and TRoot then workspace.CurrentCamera.CameraSubject = THum end
        if not TChar:FindFirstChildWhichIsA("BasePart") then return end
        local function ZdlkH(Base, Pos, Ang)
            Root.CFrame = CFrame.new(Base.Position) * Pos * Ang
            Char:SetPrimaryPartCFrame(CFrame.new(Base.Position) * Pos * Ang)
            Root.Velocity = Vector3.new(9e7, 9e7 * 10, 9e7)
            Root.RotVelocity = Vector3.new(9e8, 9e8, 9e8)
        end
        local function KTFLA(Base)
            local Start = tick()
            local Step = 0
            repeat
                if Root and THum then
                    if Base.Velocity.Magnitude < 50 then
                        Step = Step + 100
                        ZdlkH(Base, CFrame.new(0, 1.5, 0) + THum.MoveDirection * Base.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Step),0 ,0))
                        task.wait()
                        ZdlkH(Base, CFrame.new(0, -1.5, 0) + THum.MoveDirection * Base.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Step), 0, 0))
                        task.wait()
                        ZdlkH(Base, CFrame.new(0, 1.5, 0) + THum.MoveDirection * Base.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Step),0 ,0))
                        task.wait()
                        ZdlkH(Base, CFrame.new(0, -1.5, 0) + THum.MoveDirection * Base.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Step), 0, 0))
                        task.wait()
                        ZdlkH(Base, CFrame.new(0, 1.5, 0) + THum.MoveDirection, CFrame.Angles(math.rad(Step),0 ,0))
                        task.wait()
                        ZdlkH(Base, CFrame.new(0, -1.5, 0) + THum.MoveDirection, CFrame.Angles(math.rad(Step), 0, 0))
                        task.wait()
                    else
                        ZdlkH(Base, CFrame.new(0, 1.5, THum.WalkSpeed), CFrame.Angles(math.rad(90), 0, 0))
                        task.wait()
                        ZdlkH(Base, CFrame.new(0, -1.5, -THum.WalkSpeed), CFrame.Angles(0, 0, 0))
                        task.wait()
                        ZdlkH(Base, CFrame.new(0, 1.5, THum.WalkSpeed), CFrame.Angles(math.rad(90), 0, 0))
                        task.wait()
                        ZdlkH(Base, CFrame.new(0, -1.5, 0), CFrame.Angles(math.rad(90), 0, 0))
                        task.wait()
                        ZdlkH(Base, CFrame.new(0, -1.5, 0), CFrame.Angles(0, 0, 0))
                        task.wait()
                        ZdlkH(Base, CFrame.new(0, -1.5, 0), CFrame.Angles(math.rad(90), 0, 0))
                        task.wait()
                        ZdlkH(Base, CFrame.new(0, -1.5, 0), CFrame.Angles(0, 0, 0))
                        task.wait()
                    end
                end
            until Start + 2 < tick() or not dUyrt
        end
        workspace.FallenPartsDestroyHeight = 0/0
        local BV = Instance.new("BodyVelocity")
        BV.Parent = Root
        BV.Velocity = Vector3.new(0, 0, 0)
        BV.MaxForce = Vector3.new(9e9, 9e9, 9e9)
        Hum:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
        if TRoot then KTFLA(TRoot)
        elseif THead then KTFLA(THead)
        elseif Handle then KTFLA(Handle)
        else return Message("D3DSEC", "No valid collision point", 2) end
        BV:Destroy()
        Hum:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
        workspace.CurrentCamera.CameraSubject = Hum
        if getgenv().OldPos then
            repeat
                Root.CFrame = getgenv().OldPos * CFrame.new(0, .5, 0)
                Char:SetPrimaryPartCFrame(getgenv().OldPos * CFrame.new(0, .5, 0))
                Hum:ChangeState("GettingUp")
                for _, p in pairs(Char:GetChildren()) do
                    if p:IsA("BasePart") then p.Velocity, p.RotVelocity = Vector3.new(), Vector3.new() end
                end
                task.wait()
            until (Root.Position - getgenv().OldPos.p).Magnitude < 25
            workspace.FallenPartsDestroyHeight = getgenv().FPDH
        end
    else
        return Message("D3DSEC", "Character not ready", 2)
    end
end
local function jKMsJ()
    if dUyrt then return end
    local cnt = 0
    for _ in pairs(YkqUc) do cnt = cnt + 1 end
    if cnt == 0 then
        IlIIIlIlllllllIll.Text = "! NO TARGETS MARKED !"
        wait(1)
        CQpVN()
        return
    end
    dUyrt = true
    CQpVN()
    Message("D3DSEC", "Executing on " .. cnt .. " target(s)", 2)
    spawn(function()
        while dUyrt do
            local valid = {}
            for name, plr in pairs(YkqUc) do
                if plr and plr.Parent then valid[name] = plr else YkqUc[name] = nil end
            end
            for _, plr in pairs(valid) do
                if dUyrt then
                    nPSTs(plr)
                    wait(0.1)
                else break end
            end
            CQpVN()
            wait(0.5)
        end
    end)
end
local function uKDaT()
    if not dUyrt then return end
    dUyrt = false
    CQpVN()
    Message("D3DSEC", "System disengaged", 2)
end
IIIlllllIIllIlIIl.MouseButton1Click:Connect(jKMsJ)
IIlIlllIlIIlIlIIl.MouseButton1Click:Connect(uKDaT)
IIIlllllllIIllIlI.MouseButton1Click:Connect(function() sUKZS(true) end)
lIIIlllIlllllllII.MouseButton1Click:Connect(function() sUKZS(false) end)
IIIlllIllllIllllI.MouseButton1Click:Connect(function()
    uKDaT()
    IlIIIIIlllllIlIIl:Destroy()
end)
IlIlIllIIlIIlIIIl.PlayerAdded:Connect(lnuAp)
IlIlIllIIlIIlIIIl.PlayerRemoving:Connect(function(plr)
    if YkqUc[plr.Name] then YkqUc[plr.Name] = nil end
    lnuAp()
    CQpVN()
end)
lnuAp()
CQpVN()
Message("D3DSEC", "Vortex system online", 3)
