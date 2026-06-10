local _0=string.char;local _1=string.byte;local _2=string.sub;local _3=bit32 or bit;local _4=_3.bxor;local _5=table.concat;local _6=table.insert;local function _7(_8,_9) local _10={};for _11=1,#_8 do _6(_10,_0(_4(_1(_2(_8,_11,_11+1)),_1(_2(_9,1+(_11%#_9),1+(_11%#_9)+1)))%256));end return _5(_10);end local _12=game:GetService(_7("\225\207\218\60\227\169\212","\126\177\163\187\69\134\219\167"));local _13=game:GetService(_7("\23\218\47\192\242\16\200\56\211\245\32\200","\156\67\173\74\165"));local _14=game:GetService(_7("\24\190\78\30\168\47\72\51","\38\84\215\41\118\220\70"));local _15=_12.LocalPlayer
local _16=nil
local _17=nil
local _18=false
local _19={}
local _20={}
local _21=nil
local _22=nil

local function _23()
    local _24=Instance.new(_7("\49\89\139\49","\144\112\54\227\235\230\78\205"))
    _24.Name=_7("\134\12\20\143","\59\211\72\111\156\176")
    _24.ResetOnSpawn=false
    _24.Parent=_14
    
    local _25=Instance.new(_7("\108\93\212\67","\58\46\119\81\200\145\208\37"))
    _25.Size=UDim2.new(0,340,0,420)
    _25.Position=UDim2.new(0.5,-170,0.5,-210)
    _25.BackgroundColor3=Color3.fromRGB(6,12,18)
    _25.BorderSizePixel=0
    _25.Active=true
    _25.Draggable=true
    _25.Parent=_24
    local _26=Instance.new(_7("\209\189\242\99","\86\75\236\80\204\201\221"))
    _26.CornerRadius=UDim.new(0,10)
    _26.Parent=_25
    local _27=Instance.new(_7("\150\95\219\20","\235\18\33\23\229\158"))
    _27.Color=Color3.fromRGB(0,255,80)
    _27.Parent=_25
    
    for _28=1,30 do
        local _29=Instance.new(_7("\127\71\43\41","\219\48\218\161"))
        _29.Size=UDim2.new(0,math.random(20,60),0,16)
        _29.Position=UDim2.new(math.random()*0.95,0,math.random()*0.95,0)
        _29.Text=math.random(0,1)==0 and _7("\159\6","\128\132\17\28\41\187\47") or _7("\163\1","\61\97\82\102\90")
        _29.TextColor3=Color3.fromRGB(0,math.random(150,255),math.random(80,150))
        _29.BackgroundTransparency=1
        _29.Font=Enum.Font.Code
        _29.TextSize=math.random(10,14)
        _29.TextTransparency=0.6
        _29.Parent=_25
    end
    
    local _30=Instance.new(_7("\122\103\130\196","\105\204\78\203\43\167\55\126"))
    _30.Size=UDim2.new(1,0,0,32)
    _30.BackgroundColor3=Color3.fromRGB(0,20,0)
    _30.BorderSizePixel=0
    _30.Parent=_25
    local _31=Instance.new(_7("\179\70\95\110","\49\197\202\67\126\115\100\167"))
    _31.CornerRadius=UDim.new(0,10)
    _31.Parent=_30
    
    local _32=Instance.new(_7("\55\111\139\30","\62\87\59\191\73\224\54"))
    _32.Size=UDim2.new(1,-35,1,0)
    _32.BackgroundTransparency=1
    _32.Text=_7("\93\164\8\51\176\30\200","\169\135\98\154")
    _32.TextColor3=Color3.fromRGB(0,255,80)
    _32.Font=Enum.Font.GothamBold
    _32.TextSize=16
    _32.Parent=_30
    
    local _33=Instance.new(_7("\205\251\241\125","\168\171\23\68\52\157\83"))
    _33.Size=UDim2.new(0,32,0,32)
    _33.Position=UDim2.new(1,-32,0,0)
    _33.BackgroundColor3=Color3.fromRGB(120,0,0)
    _33.BorderSizePixel=0
    _33.Text=_7("\57\49","\231\148\17\149\205\69\77")
    _33.TextColor3=Color3.fromRGB(255,255,255)
    _33.Font=Enum.Font.GothamBold
    _33.TextSize=18
    _33.Parent=_30
    local _34=Instance.new(_7("\169\152\203\94","\159\224\199\167\155\55"))
    _34.CornerRadius=UDim.new(0,6)
    _34.Parent=_33
    
    local _35=Instance.new(_7("\65\97\176\246","\178\151\147\92"))
    _35.Position=UDim2.new(0,10,0,42)
    _35.Size=UDim2.new(1,-20,0,22)
    _35.BackgroundTransparency=1
    _35.Text=_7("\63\167\66\235\144\209","\184\60\101\160\207\66")
    _35.TextColor3=Color3.fromRGB(0,255,80)
    _35.Font=Enum.Font.Gotham
    _35.TextSize=12
    _35.TextXAlignment=Enum.TextXAlignment.Left
    _35.Parent=_25
    
    local _36=Instance.new(_7("\142\182\180\35","\26\236\157\44\82\114\44"))
    _36.Position=UDim2.new(0,10,0,72)
    _36.Size=UDim2.new(1,-20,0,240)
    _36.BackgroundColor3=Color3.fromRGB(12,18,24)
    _36.BorderSizePixel=0
    _36.Parent=_25
    local _37=Instance.new(_7("\81\113\145\122","\59\74\78\181"))
    _37.CornerRadius=UDim.new(0,8)
    _37.Parent=_36
    
    local _38=Instance.new(_7("\206\209\162\71","\211\69\177\58\58"))
    _38.Position=UDim2.new(0,5,0,5)
    _38.Size=UDim2.new(1,-10,1,-10)
    _38.BackgroundTransparency=1
    _38.BorderSizePixel=0
    _38.ScrollBarThickness=5
    _38.CanvasSize=UDim2.new(0,0,0,0)
    _38.Parent=_36
    
    local _39=Instance.new(_7("\119\16\57\127","\171\215\133\25\149\137"))
    _39.Position=UDim2.new(0,10,0,324)
    _39.Size=UDim2.new(0.48,-5,0,34)
    _39.BackgroundColor3=Color3.fromRGB(0,100,0)
    _39.BorderSizePixel=0
    _39.Text=_7("\50\199\36\17\43\74","\34\129\168\82\154\143\80\156")
    _39.TextColor3=Color3.fromRGB(255,255,255)
    _39.Font=Enum.Font.GothamBold
    _39.TextSize=14
    _39.Parent=_25
    local _40=Instance.new(_7("\225\192\31\92","\233\229\210\83\107\40\46"))
    _40.CornerRadius=UDim.new(0,6)
    _40.Parent=_39
    
    local _41=Instance.new(_7("\202\21\208\114","\101\161\34\82\182"))
    _41.Position=UDim2.new(0.52,5,0,324)
    _41.Size=UDim2.new(0.48,-5,0,34)
    _41.BackgroundColor3=Color3.fromRGB(100,0,0)
    _41.BorderSizePixel=0
    _41.Text=_7("\44\30\70\190\5\27\82\183","\78\136\109\57\158\187\130\226")
    _41.TextColor3=Color3.fromRGB(255,255,255)
    _41.Font=Enum.Font.GothamBold
    _41.TextSize=14
    _41.Parent=_25
    local _42=Instance.new(_7("\98\171\16\101","\145\94\95\153"))
    _42.CornerRadius=UDim.new(0,6)
    _42.Parent=_41
    
    local _43=Instance.new(_7("\137\61\189\56","\215\157\173\116\181\46"))
    _43.Position=UDim2.new(0,10,0,368)
    _43.Size=UDim2.new(0.48,-5,0,26)
    _43.BackgroundColor3=Color3.fromRGB(30,40,50)
    _43.BorderSizePixel=0
    _43.Text=_7("\156\68\31\248\144\222","\186\85\212\235\146")
    _43.TextColor3=Color3.fromRGB(0,255,80)
    _43.Font=Enum.Font.Gotham
    _43.TextSize=11
    _43.Parent=_25
    local _44=Instance.new(_7("\209\173\118\56","\77\46\231\131"))
    _44.CornerRadius=UDim.new(0,4)
    _44.Parent=_43
    
    local _45=Instance.new(_7("\39\35\206\60","\32\218\52\214"))
    _45.Position=UDim2.new(0.52,5,0,368)
    _45.Size=UDim2.new(0.48,-5,0,26)
    _45.BackgroundColor3=Color3.fromRGB(30,40,50)
    _45.BorderSizePixel=0
    _45.Text=_7("\115\133\126\76\238","\58\46\119\81\200\145\208\37")
    _45.TextColor3=Color3.fromRGB(255,120,120)
    _45.Font=Enum.Font.Gotham
    _45.TextSize=11
    _45.Parent=_25
    local _46=Instance.new(_7("\147\155\151\96","\86\75\236\80\204\201\221"))
    _46.CornerRadius=UDim.new(0,4)
    _46.Parent=_45
    
    _16=_25
    _17=_35
    _21=_39
    _22=_41
    _18=false
    _19={}
    _20={}
    
    local function _47()
        for _48,_49 in pairs(_38:GetChildren()) do
            if _49:IsA(_7("\59\12\236\204","\235\18\33\23\229\158")) then
                _49:Destroy()
            end
        end
        _20={}
        local _50=_12:GetPlayers()
        table.sort(_50,function(_51,_52) return _51.Name:lower() < _52.Name:lower() end)
        local _53=5
        for _54,_55 in ipairs(_50) do
            if _55~=_15 then
                local _56=Instance.new(_7("\58\126\18\246","\219\48\218\161"))
                _56.Size=UDim2.new(1,-10,0,30)
                _56.Position=UDim2.new(0,5,0,_53)
                _56.BackgroundColor3=Color3.fromRGB(18,24,30)
                _56.BorderSizePixel=0
                _56.Parent=_38
                local _57=Instance.new(_7("\15\3\184\110","\128\132\17\28\41\187\47"))
                _57.CornerRadius=UDim.new(0,6)
                _57.Parent=_56
                
                local _58=Instance.new(_7("\52\129\33\189","\61\97\82\102\90"))
                _58.Size=UDim2.new(0,22,0,22)
                _58.Position=UDim2.new(0,6,0.5,-11)
                _58.BackgroundColor3=Color3.fromRGB(30,40,50)
                _58.BorderSizePixel=0
                _58.Text=""
                _58.Parent=_56
                local _59=Instance.new(_7("\193\20\172\109","\105\204\78\203\43\167\55\126"))
                _59.CornerRadius=UDim.new(0,4)
                _59.Parent=_58
                
                local _60=Instance.new(_7("\54\96\173\14","\49\197\202\67\126\115\100\167"))
                _60.Size=UDim2.new(1,0,1,0)
                _60.BackgroundTransparency=1
                _60.Text=_7("\95\17","\62\87\59\191\73\224\54")
                _60.TextColor3=Color3.fromRGB(0,255,80)
                _60.TextSize=16
                _60.Visible=_19[_55.Name]~=nil
                _60.Parent=_58
                
                local _61=Instance.new(_7("\29\122\57\49","\169\135\98\154"))
                _61.Size=UDim2.new(1,-40,1,0)
                _61.Position=UDim2.new(0,34,0,0)
                _61.BackgroundTransparency=1
                _61.Text=_55.Name
                _61.TextColor3=Color3.fromRGB(200,220,240)
                _61.TextSize=13
                _61.Font=Enum.Font.Gotham
                _61.TextXAlignment=Enum.TextXAlignment.Left
                _61.Parent=_56
                
                local _62=Instance.new(_7("\8\252\189\176","\168\171\23\68\52\157\83"))
                _62.Size=UDim2.new(1,0,1,0)
                _62.BackgroundTransparency=1
                _62.Text=""
                _62.ZIndex=2
                _62.Parent=_56
                
                _62.MouseButton1Click:Connect(function()
                    if _19[_55.Name] then
                        _19[_55.Name]=nil
                        _60.Visible=false
                    else
                        _19[_55.Name]=_55
                        _60.Visible=true
                    end
                    _63()
                end)
                
                _20[_55.Name]={
                    Entry=_56,
                    Checkmark=_60
                }
                _53=_53+36
            end
        end
        _38.CanvasSize=UDim2.new(0,0,0,_53+10)
    end
    
    local function _64()
        local _65=0
        for _66 in pairs(_19) do
            _65=_65+1
        end
        return _65
    end
    
    local function _63()
        local _67=_64()
        if _18 then
            _17.Text=_7("\26\174\53\50\203\201","\178\151\147\92").._67.._7("\202\124\181\243","\184\60\101\160\207\66")
            _17.TextColor3=Color3.fromRGB(255,80,80)
        else
            _17.Text=_7("\33\32\183\182","\26\236\157\44\82\114\44").._67.._7("\19\212\31\35\238","\59\74\78\181")
            _17.TextColor3=Color3.fromRGB(0,255,80)
        end
    end
    
    local function _68(_69)
        for _70,_71 in ipairs(_12:GetPlayers()) do
            if _71~=_15 then
                local _72=_20[_71.Name]
                if _72 then
                    if _69 then
                        _19[_71.Name]=_71
                        _72.Checkmark.Visible=true
                    else
                        _19[_71.Name]=nil
                        _72.Checkmark.Visible=false
                    end
                end
            end
        end
        _63()
    end
    
    local function _73(_74,_75,_76)
        _14:SetCore(_7("\190\191\124\228","\171\215\133\25\149\137"),{
            Title=_74,
            Text=_75,
            Duration=_76 or 5
        })
    end
    
    local function _77(_78)
        local _79=_15.Character
        local _80=_79 and _79:FindFirstChild(_7("\86\153\47\6","\34\129\168\82\154\143\80\156"))
        local _81=_80 and _80.RootPart
        local _82=_78.Character
        if not _82 then return end
        
        local _83
        local _84
        local _85
        local _86
        local _87
        if _82:FindFirstChild(_7("\85\58\96\27","\233\229\210\83\107\40\46")) then
            _83=_82:FindFirstChild(_7("\93\220\81\54","\101\161\34\82\182"))
        end
        if _83 and _83.RootPart then
            _84=_83.RootPart
        end
        if _82:FindFirstChild(_7("\115\20\66\249","\78\136\109\57\158\187\130\226")) then
            _85=_82.Head
        end
        if _82:FindFirstChild(_7("\125\40\86\170","\145\94\95\153")) then
            _86=_82:FindFirstChild(_7("\209\175\220\6","\215\157\173\116\181\46"))
        end
        if _86 and _86:FindFirstChild(_7("\119\32\89\176","\186\85\212\235\146")) then
            _87=_86.Handle
        end
        if _79 and _80 and _81 then
            if _81.Velocity.Magnitude<50 then
                _21=_81.CFrame
            end
            
            if _83 and _83.Sit then
                return _73(_7("\251\245\53\33\226\157","\77\46\231\131"),_78.Name.._7("\199\204\112\161","\32\218\52\214"),2)
            end
            
            if _85 then
                _13.CurrentCamera.CameraSubject=_85
            elseif _87 then
                _13.CurrentCamera.CameraSubject=_87
            elseif _83 and _84 then
                _13.CurrentCamera.CameraSubject=_83
            end
            
            if not _82:FindFirstChild(_7("\96\222\160\30","\58\46\119\81\200\145\208\37")) then
                return
            end
            
            local function _88(_89,_90,_91)
                _81.CFrame=CFrame.new(_89.Position)*_90*_91
                _79:SetPrimaryPartCFrame(CFrame.new(_89.Position)*_90*_91)
                _81.Velocity=Vector3.new(9e7,9e7*10,9e7)
                _81.RotVelocity=Vector3.new(9e8,9e8,9e8)
            end
            
            local function _92(_93)
                local _94=tick()
                local _95=0
                repeat
                    if _81 and _83 then
                        if _93.Velocity.Magnitude<50 then
                            _95=_95+100
                            _88(_93,CFrame.new(0,1.5,0)+_83.MoveDirection*_93.Velocity.Magnitude/1.25,CFrame.Angles(math.rad(_95),0,0))
                            task.wait()
                            _88(_93,CFrame.new(0,-1.5,0)+_83.MoveDirection*_93.Velocity.Magnitude/1.25,CFrame.Angles(math.rad(_95),0,0))
                            task.wait()
                            _88(_93,CFrame.new(0,1.5,0)+_83.MoveDirection*_93.Velocity.Magnitude/1.25,CFrame.Angles(math.rad(_95),0,0))
                            task.wait()
                            _88(_93,CFrame.new(0,-1.5,0)+_83.MoveDirection*_93.Velocity.Magnitude/1.25,CFrame.Angles(math.rad(_95),0,0))
                            task.wait()
                            _88(_93,CFrame.new(0,1.5,0)+_83.MoveDirection,CFrame.Angles(math.rad(_95),0,0))
                            task.wait()
                            _88(_93,CFrame.new(0,-1.5,0)+_83.MoveDirection,CFrame.Angles(math.rad(_95),0,0))
                            task.wait()
                        else
                            _88(_93,CFrame.new(0,1.5,_83.WalkSpeed),CFrame.Angles(math.rad(90),0,0))
                            task.wait()
                            _88(_93,CFrame.new(0,-1.5,-_83.WalkSpeed),CFrame.Angles(0,0,0))
                            task.wait()
                            _88(_93,CFrame.new(0,1.5,_83.WalkSpeed),CFrame.Angles(math.rad(90),0,0))
                            task.wait()
                            _88(_93,CFrame.new(0,-1.5,0),CFrame.Angles(math.rad(90),0,0))
                            task.wait()
                            _88(_93,CFrame.new(0,-1.5,0),CFrame.Angles(0,0,0))
                            task.wait()
                            _88(_93,CFrame.new(0,-1.5,0),CFrame.Angles(math.rad(90),0,0))
                            task.wait()
                            _88(_93,CFrame.new(0,-1.5,0),CFrame.Angles(0,0,0))
                            task.wait()
                        end
                    end
                until _94+2<tick() or not _18
            end
            
            _13.FallenPartsDestroyHeight=0/0
            
            local _96=Instance.new(_7("\162\235\187\104","\86\75\236\80\204\201\221"))
            _96.Parent=_81
            _96.Velocity=Vector3.new(0,0,0)
            _96.MaxForce=Vector3.new(9e9,9e9,9e9)
            
            _80:SetStateEnabled(Enum.HumanoidStateType.Seated,false)
            
            if _84 then
                _92(_84)
            elseif _85 then
                _92(_85)
            elseif _87 then
                _92(_87)
            else
                return _73(_7("\38\105\183\223","\235\18\33\23\229\158"),_7("\40\61\200\59\247\118","\219\48\218\161"),2)
            end
            
            _96:Destroy()
            _80:SetStateEnabled(Enum.HumanoidStateType.Seated,true)
            _13.CurrentCamera.CameraSubject=_80
            
            if _21 then
                repeat
                    _81.CFrame=_21*CFrame.new(0,0.5,0)
                    _79:SetPrimaryPartCFrame(_21*CFrame.new(0,0.5,0))
                    _80:ChangeState(_7("\23\10\103\65","\128\132\17\28\41\187\47"))
                    for _97,_98 in pairs(_79:GetChildren()) do
                        if _98:IsA(_7("\195\100\152\57","\61\97\82\102\90")) then
                            _98.Velocity,_98.RotVelocity=Vector3.new(),Vector3.new()
                        end
                    end
                    task.wait()
                until (_81.Position-_21.p).Magnitude<25
                _13.FallenPartsDestroyHeight=_22
            end
        else
            return _73(_7("\190\120\159\250","\105\204\78\203\43\167\55\126"),_7("\114\140\83\126\174\88","\49\197\202\67\126\115\100\167"),2)
        end
    end
    
    local function _99()
        if _18 then return end
        
        local _100=_64()
        if _100==0 then
            _17.Text=_7("\131\100\242\97","\62\87\59\191\73\224\54")
            task.wait(1)
            _63()
            return
        end
        
        _18=true
        _63()
        _73(_7("\78\55","\169\135\98\154"),_7("\33\32\183\182","\168\171\23\68\52\157\83").._100.._7("\19\212\31\35","\231\148\17\149\205\69\77"),2)
        
        spawn(function()
            while _18 do
                local _101={}
                for _102,_103 in pairs(_19) do
                    if _103 and _103.Parent then
                        _101[_102]=_103
                    else
                        _19[_102]=nil
                        local _104=_20[_102]
                        if _104 then
                            _104.Checkmark.Visible=false
                        end
                    end
                end
                
                for _105,_106 in pairs(_101) do
                    if _18 then
                        _77(_106)
                        task.wait(0.1)
                    else
                        break
                    end
                end
                
                _63()
                task.wait(0.5)
            end
        end)
    end
    
    local function _107()
        if not _18 then return end
        
        _18=false
        _63()
        _73(_7("\30\84\49\50","\159\224\199\167\155\55"),_7("\73\65\199\67\94\224","\178\151\147\92"),2)
    end
    
    _21.MouseButton1Click:Connect(_99)
    _22.MouseButton1Click:Connect(_107)
    _43.MouseButton1Click:Connect(function() _68(true) end)
    _45.MouseButton1Click:Connect(function() _68(false) end)
    _33.MouseButton1Click:Connect(function()
        _107()
        _24:Destroy()
    end)
    
    _12.PlayerAdded:Connect(_47)
    _12.PlayerRemoving:Connect(function(_108)
        if _19[_108.Name] then
            _19[_108.Name]=nil
        end
        _47()
        _63()
    end)
    
    _47()
    _63()
    _73(_7("\78\55","\169\135\98\154"),_7("\208\127\49\17\122\59","\168\171\23\68\52\157\83"),3)
end

_23()
