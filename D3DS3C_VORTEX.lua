local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v28,v29) local v30={};for v271=1, #v28 do v6(v30,v0(v4(v1(v2(v28,v271,v271 + 1 )),v1(v2(v29,1 + (v271% #v29) ,1 + (v271% #v29) + 1 )))%256 ));end return v5(v30);end local v8=string[v7("\210\203\218\55","\126\177\163\187\69\134\219\167")];local v9=string[v7("\33\212\62\192","\156\67\173\74\165")];local v10=string[v7("\39\162\75","\38\84\215\41\118\220\70")];local v11=bit32 or bit ;local v12=v11[v7("\82\14\45\0","\158\48\118\66\114")];local v13=table[v7("\168\43\30\53\114\177","\155\203\68\112\86\19\197")];local v14=table[v7("\79\211\37\249\82\108","\152\38\189\86\156\32\24\133")];local function v15(v31,v32) local v33={};for v272=1, #v31 do v14(v33,v8(v12(v9(v10(v31,v272,v272 + 1 )),v9(v10(v32,1 + (v272% #v32) ,1 + (v272% #v32) + 1 )))%256 ));end return v13(v33);end local v16=game:GetService(v15("\225\207\218\60\227\169\212","\126\177\163\187\69\134\219\167"));local v17=game:GetService(v15("\23\218\47\192\242\16\200\56\211\245\32\200","\156\67\173\74\165"));local v18=game:GetService(v15("\24\190\78\30\168\47\72\51","\38\84\215\41\118\220\70"));local v19=v16.LocalPlayer
local v20=nil
local v21=nil
local v22=false
local v23={}
local v24={}
local v25=nil
local v26=nil

local function v27()
    local v34=Instance.new(v15("\49\89\139\49","\144\112\54\227\235\230\78\205"))
    v34.Name=v15("\134\12\20\143","\59\211\72\111\156\176")
    v34.ResetOnSpawn=false
    v34.Parent=game:GetService(v15("\186\247\141\55","\32\218\52\214"))
    
    local v35=Instance.new(v15("\108\93\212\67","\58\46\119\81\200\145\208\37"))
    v35.Size=UDim2.new(0,340 -0 ,0,360 + 60 )
    v35.Position=UDim2.new(0.5, -(15 + 155),0.5, -(275 -65))
    v35.BackgroundColor3=Color3.fromRGB(6,12,18)
    v35.BorderSizePixel=0
    v35.Active=true
    v35.Draggable=true
    v35.Parent=v34
    local v36=Instance.new(v15("\209\189\242\99","\86\75\236\80\204\201\221"))
    v36.CornerRadius=UDim.new(0,10)
    v36.Parent=v35
    local v37=Instance.new(v15("\150\95\219\20","\235\18\33\23\229\158"))
    v37.Color=Color3.fromRGB(0,255,80)
    v37.Parent=v35
    
    for v273=1, 30 do
        local v274=Instance.new(v15("\127\71\43\41","\219\48\218\161"))
        v274.Size=UDim2.new(0,math.random(20,60),0,16)
        v274.Position=UDim2.new(math.random() * 0.95,0,math.random() * 0.95,0)
        v274.Text=math.random(0,1)==0 and v15("\159\6","\128\132\17\28\41\187\47") or v15("\163\1","\61\97\82\102\90")
        v274.TextColor3=Color3.fromRGB(0,math.random(150,255),math.random(80,150))
        v274.BackgroundTransparency=1
        v274.Font=Enum.Font.Code
        v274.TextSize=math.random(10,14)
        v274.TextTransparency=0.6
        v274.Parent=v35
    end
    
    local v38=Instance.new(v15("\122\103\130\196","\105\204\78\203\43\167\55\126"))
    v38.Size=UDim2.new(1,0,0,32)
    v38.BackgroundColor3=Color3.fromRGB(0,20,0)
    v38.BorderSizePixel=0
    v38.Parent=v35
    local v39=Instance.new(v15("\179\70\95\110","\49\197\202\67\126\115\100\167"))
    v39.CornerRadius=UDim.new(0,10)
    v39.Parent=v38
    
    local v40=Instance.new(v15("\55\111\139\30","\62\87\59\191\73\224\54"))
    v40.Size=UDim2.new(1, -35,1,0)
    v40.BackgroundTransparency=1
    v40.Text=v15("\93\164\8\51\176\30\200","\169\135\98\154")
    v40.TextColor3=Color3.fromRGB(0,255,80)
    v40.Font=Enum.Font.GothamBold
    v40.TextSize=16
    v40.Parent=v38
    
    local v41=Instance.new(v15("\205\251\241\125","\168\171\23\68\52\157\83"))
    v41.Size=UDim2.new(0,32,0,32)
    v41.Position=UDim2.new(1, -32,0,0)
    v41.BackgroundColor3=Color3.fromRGB(120,0,0)
    v41.BorderSizePixel=0
    v41.Text=v15("\57\49","\231\148\17\149\205\69\77")
    v41.TextColor3=Color3.fromRGB(255,255,255)
    v41.Font=Enum.Font.GothamBold
    v41.TextSize=18
    v41.Parent=v38
    local v42=Instance.new(v15("\169\152\203\94","\159\224\199\167\155\55"))
    v42.CornerRadius=UDim.new(0,6)
    v42.Parent=v41
    
    local v43=Instance.new(v15("\65\97\176\246","\178\151\147\92"))
    v43.Position=UDim2.new(0,10,0,42)
    v43.Size=UDim2.new(1, -20,0,22)
    v43.BackgroundTransparency=1
    v43.Text=v15("\63\167\66\235\144\209","\184\60\101\160\207\66")
    v43.TextColor3=Color3.fromRGB(0,255,80)
    v43.Font=Enum.Font.Gotham
    v43.TextSize=12
    v43.TextXAlignment=Enum.TextXAlignment.Left
    v43.Parent=v35
    
    local v44=Instance.new(v15("\142\182\180\35","\26\236\157\44\82\114\44"))
    v44.Position=UDim2.new(0,10,0,72)
    v44.Size=UDim2.new(1, -20,0,240)
    v44.BackgroundColor3=Color3.fromRGB(12,18,24)
    v44.BorderSizePixel=0
    v44.Parent=v35
    local v45=Instance.new(v15("\81\113\145\122","\59\74\78\181"))
    v45.CornerRadius=UDim.new(0,8)
    v45.Parent=v44
    
    local v46=Instance.new(v15("\206\209\162\71","\211\69\177\58\58"))
    v46.Position=UDim2.new(0,5,0,5)
    v46.Size=UDim2.new(1, -10,1, -10)
    v46.BackgroundTransparency=1
    v46.BorderSizePixel=0
    v46.ScrollBarThickness=5
    v46.CanvasSize=UDim2.new(0,0,0,0)
    v46.Parent=v44
    
    local v47=Instance.new(v15("\119\16\57\127","\171\215\133\25\149\137"))
    v47.Position=UDim2.new(0,10,0,324)
    v47.Size=UDim2.new(0.48, -5,0,34)
    v47.BackgroundColor3=Color3.fromRGB(0,100,0)
    v47.BorderSizePixel=0
    v47.Text=v15("\50\199\36\17\43\74","\34\129\168\82\154\143\80\156")
    v47.TextColor3=Color3.fromRGB(255,255,255)
    v47.Font=Enum.Font.GothamBold
    v47.TextSize=14
    v47.Parent=v35
    local v48=Instance.new(v15("\225\192\31\92","\233\229\210\83\107\40\46"))
    v48.CornerRadius=UDim.new(0,6)
    v48.Parent=v47
    
    local v49=Instance.new(v15("\202\21\208\114","\101\161\34\82\182"))
    v49.Position=UDim2.new(0.52,5,0,324)
    v49.Size=UDim2.new(0.48, -5,0,34)
    v49.BackgroundColor3=Color3.fromRGB(100,0,0)
    v49.BorderSizePixel=0
    v49.Text=v15("\44\30\70\190\5\27\82\183","\78\136\109\57\158\187\130\226")
    v49.TextColor3=Color3.fromRGB(255,255,255)
    v49.Font=Enum.Font.GothamBold
    v49.TextSize=14
    v49.Parent=v35
    local v50=Instance.new(v15("\98\171\16\101","\145\94\95\153"))
    v50.CornerRadius=UDim.new(0,6)
    v50.Parent=v49
    
    local v51=Instance.new(v15("\137\61\189\56","\215\157\173\116\181\46"))
    v51.Position=UDim2.new(0,10,0,368)
    v51.Size=UDim2.new(0.48, -5,0,26)
    v51.BackgroundColor3=Color3.fromRGB(30,40,50)
    v51.BorderSizePixel=0
    v51.Text=v15("\156\68\31\248\144\222","\186\85\212\235\146")
    v51.TextColor3=Color3.fromRGB(0,255,80)
    v51.Font=Enum.Font.Gotham
    v51.TextSize=11
    v51.Parent=v35
    local v52=Instance.new(v15("\209\173\118\56","\77\46\231\131"))
    v52.CornerRadius=UDim.new(0,4)
    v52.Parent=v51
    
    local v53=Instance.new(v15("\39\35\206\60","\32\218\52\214"))
    v53.Position=UDim2.new(0.52,5,0,368)
    v53.Size=UDim2.new(0.48, -5,0,26)
    v53.BackgroundColor3=Color3.fromRGB(30,40,50)
    v53.BorderSizePixel=0
    v53.Text=v15("\115\133\126\76\238","\58\46\119\81\200\145\208\37")
    v53.TextColor3=Color3.fromRGB(255,120,120)
    v53.Font=Enum.Font.Gotham
    v53.TextSize=11
    v53.Parent=v35
    local v54=Instance.new(v15("\147\155\151\96","\86\75\236\80\204\201\221"))
    v54.CornerRadius=UDim.new(0,4)
    v54.Parent=v53
    
    v20=v35
    v21=v43
    v25=v47
    v26=v49
    v22=false
    v23={}
    v24={}
    
    local function v55()
        for v275,v276 in pairs(v46:GetChildren()) do
            if v276:IsA(v15("\59\12\236\204","\235\18\33\23\229\158")) then
                v276:Destroy()
            end
        end
        v24={}
        local v277=v16:GetPlayers()
        table.sort(v277,function(v278,v279) return v278.Name:lower() < v279.Name:lower() end)
        local v280=5
        for v281,v282 in ipairs(v277) do
            if v282~=v19 then
                local v283=Instance.new(v15("\58\126\18\246","\219\48\218\161"))
                v283.Size=UDim2.new(1, -10,0,30)
                v283.Position=UDim2.new(0,5,0,v280)
                v283.BackgroundColor3=Color3.fromRGB(18,24,30)
                v283.BorderSizePixel=0
                v283.Parent=v46
                local v284=Instance.new(v15("\15\3\184\110","\128\132\17\28\41\187\47"))
                v284.CornerRadius=UDim.new(0,6)
                v284.Parent=v283
                
                local v285=Instance.new(v15("\52\129\33\189","\61\97\82\102\90"))
                v285.Size=UDim2.new(0,22,0,22)
                v285.Position=UDim2.new(0,6,0.5, -11)
                v285.BackgroundColor3=Color3.fromRGB(30,40,50)
                v285.BorderSizePixel=0
                v285.Text=""
                v285.Parent=v283
                local v286=Instance.new(v15("\193\20\172\109","\105\204\78\203\43\167\55\126"))
                v286.CornerRadius=UDim.new(0,4)
                v286.Parent=v285
                
                local v287=Instance.new(v15("\54\96\173\14","\49\197\202\67\126\115\100\167"))
                v287.Size=UDim2.new(1,0,1,0)
                v287.BackgroundTransparency=1
                v287.Text=v15("\95\17","\62\87\59\191\73\224\54")
                v287.TextColor3=Color3.fromRGB(0,255,80)
                v287.TextSize=16
                v287.Visible=v23[v282.Name]~=nil
                v287.Parent=v285
                
                local v288=Instance.new(v15("\29\122\57\49","\169\135\98\154"))
                v288.Size=UDim2.new(1, -40,1,0)
                v288.Position=UDim2.new(0,34,0,0)
                v288.BackgroundTransparency=1
                v288.Text=v282.Name
                v288.TextColor3=Color3.fromRGB(200,220,240)
                v288.TextSize=13
                v288.Font=Enum.Font.Gotham
                v288.TextXAlignment=Enum.TextXAlignment.Left
                v288.Parent=v283
                
                local v289=Instance.new(v15("\8\252\189\176","\168\171\23\68\52\157\83"))
                v289.Size=UDim2.new(1,0,1,0)
                v289.BackgroundTransparency=1
                v289.Text=""
                v289.ZIndex=2
                v289.Parent=v283
                
                v289.MouseButton1Click:Connect(function()
                    if v23[v282.Name] then
                        v23[v282.Name]=nil
                        v287.Visible=false
                    else
                        v23[v282.Name]=v282
                        v287.Visible=true
                    end
                    v56()
                end)
                
                v24[v282.Name]={
                    Entry=v283,
                    Checkmark=v287
                }
                v280=v280 + 36
            end
        end
        v46.CanvasSize=UDim2.new(0,0,0,v280 + 10)
    end
    
    local function v57()
        local v291=0
        for v292 in pairs(v23) do
            v291=v291 + 1
        end
        return v291
    end
    
    local function v56()
        local v293=v57()
        if v22 then
            v21.Text=v15("\26\174\53\50\203\201","\178\151\147\92") .. v293 .. v15("\202\124\181\243","\184\60\101\160\207\66")
            v21.TextColor3=Color3.fromRGB(255,80,80)
        else
            v21.Text=v15("\33\32\183\182","\26\236\157\44\82\114\44") .. v293 .. v15("\19\212\31\35\238","\59\74\78\181")
            v21.TextColor3=Color3.fromRGB(0,255,80)
        end
    end
    
    local function v58(v294)
        for v295,v296 in ipairs(v16:GetPlayers()) do
            if v296~=v19 then
                local v297=v24[v296.Name]
                if v297 then
                    if v294 then
                        v23[v296.Name]=v296
                        v297.Checkmark.Visible=true
                    else
                        v23[v296.Name]=nil
                        v297.Checkmark.Visible=false
                    end
                end
            end
        end
        v56()
    end
    
    local function v59(v298,v299,v300)
        v18:SetCore(v15("\190\191\124\228","\171\215\133\25\149\137"),{
            Title=v298,
            Text=v299,
            Duration=v300 or 5
        })
    end
    
    local function v60(v301)
        local v302=v19.Character
        local v303=v302 and v302:FindFirstChild(v15("\86\153\47\6","\34\129\168\82\154\143\80\156"))
        local v304=v303 and v303.RootPart
        local v305=v301.Character
        if not v305 then return end
        
        local v306
        local v307
        local v308
        local v309
        local v310
        if v305:FindFirstChild(v15("\85\58\96\27","\233\229\210\83\107\40\46")) then
            v306=v305:FindFirstChild(v15("\93\220\81\54","\101\161\34\82\182"))
        end
        if v306 and v306.RootPart then
            v307=v306.RootPart
        end
        if v305:FindFirstChild(v15("\115\20\66\249","\78\136\109\57\158\187\130\226")) then
            v308=v305.Head
        end
        if v305:FindFirstChild(v15("\125\40\86\170","\145\94\95\153")) then
            v309=v305:FindFirstChild(v15("\209\175\220\6","\215\157\173\116\181\46"))
        end
        if v309 and v309:FindFirstChild(v15("\119\32\89\176","\186\85\212\235\146")) then
            v310=v309.Handle
        end
        if v302 and v303 and v304 then
            if v304.Velocity.Magnitude < 50 then
                v25=v304.CFrame
            end
            
            if v306 and v306.Sit then
                return v59(v15("\251\245\53\33\226\157","\77\46\231\131"),v301.Name .. v15("\199\204\112\161","\32\218\52\214"),2)
            end
            
            if v308 then
                v17.CurrentCamera.CameraSubject=v308
            elseif v310 then
                v17.CurrentCamera.CameraSubject=v310
            elseif v306 and v307 then
                v17.CurrentCamera.CameraSubject=v306
            end
            
            if not v305:FindFirstChild(v15("\96\222\160\30","\58\46\119\81\200\145\208\37")) then
                return
            end
            
            local function v311(v312,v313,v314)
                v304.CFrame=CFrame.new(v312.Position) * v313 * v314
                v302:SetPrimaryPartCFrame(CFrame.new(v312.Position) * v313 * v314)
                v304.Velocity=Vector3.new(9e7,9e7 * 10,9e7)
                v304.RotVelocity=Vector3.new(9e8,9e8,9e8)
            end
            
            local function v315(v316)
                local v317=tick()
                local v318=0
                repeat
                    if v304 and v306 then
                        if v316.Velocity.Magnitude < 50 then
                            v318=v318 + 100
                            v311(v316,CFrame.new(0,1.5,0) + v306.MoveDirection * v316.Velocity.Magnitude / 1.25,CFrame.Angles(math.rad(v318),0,0))
                            task.wait()
                            v311(v316,CFrame.new(0,-1.5,0) + v306.MoveDirection * v316.Velocity.Magnitude / 1.25,CFrame.Angles(math.rad(v318),0,0))
                            task.wait()
                            v311(v316,CFrame.new(0,1.5,0) + v306.MoveDirection * v316.Velocity.Magnitude / 1.25,CFrame.Angles(math.rad(v318),0,0))
                            task.wait()
                            v311(v316,CFrame.new(0,-1.5,0) + v306.MoveDirection * v316.Velocity.Magnitude / 1.25,CFrame.Angles(math.rad(v318),0,0))
                            task.wait()
                            v311(v316,CFrame.new(0,1.5,0) + v306.MoveDirection,CFrame.Angles(math.rad(v318),0,0))
                            task.wait()
                            v311(v316,CFrame.new(0,-1.5,0) + v306.MoveDirection,CFrame.Angles(math.rad(v318),0,0))
                            task.wait()
                        else
                            v311(v316,CFrame.new(0,1.5,v306.WalkSpeed),CFrame.Angles(math.rad(90),0,0))
                            task.wait()
                            v311(v316,CFrame.new(0,-1.5,-v306.WalkSpeed),CFrame.Angles(0,0,0))
                            task.wait()
                            v311(v316,CFrame.new(0,1.5,v306.WalkSpeed),CFrame.Angles(math.rad(90),0,0))
                            task.wait()
                            v311(v316,CFrame.new(0,-1.5,0),CFrame.Angles(math.rad(90),0,0))
                            task.wait()
                            v311(v316,CFrame.new(0,-1.5,0),CFrame.Angles(0,0,0))
                            task.wait()
                            v311(v316,CFrame.new(0,-1.5,0),CFrame.Angles(math.rad(90),0,0))
                            task.wait()
                            v311(v316,CFrame.new(0,-1.5,0),CFrame.Angles(0,0,0))
                            task.wait()
                        end
                    end
                until v317 + 2 < tick() or not v22
            end
            
            v17.FallenPartsDestroyHeight=0/0
            
            local v319=Instance.new(v15("\162\235\187\104","\86\75\236\80\204\201\221"))
            v319.Parent=v304
            v319.Velocity=Vector3.new(0,0,0)
            v319.MaxForce=Vector3.new(9e9,9e9,9e9)
            
            v303:SetStateEnabled(Enum.HumanoidStateType.Seated,false)
            
            if v307 then
                v315(v307)
            elseif v308 then
                v315(v308)
            elseif v310 then
                v315(v310)
            else
                return v59(v15("\38\105\183\223","\235\18\33\23\229\158"),v15("\40\61\200\59\247\118","\219\48\218\161"),2)
            end
            
            v319:Destroy()
            v303:SetStateEnabled(Enum.HumanoidStateType.Seated,true)
            v17.CurrentCamera.CameraSubject=v303
            
            if v25 then
                repeat
                    v304.CFrame=v25 * CFrame.new(0,0.5,0)
                    v302:SetPrimaryPartCFrame(v25 * CFrame.new(0,0.5,0))
                    v303:ChangeState(v15("\23\10\103\65","\128\132\17\28\41\187\47"))
                    for v320,v321 in pairs(v302:GetChildren()) do
                        if v321:IsA(v15("\195\100\152\57","\61\97\82\102\90")) then
                            v321.Velocity,v321.RotVelocity=Vector3.new(),Vector3.new()
                        end
                    end
                    task.wait()
                until (v304.Position - v25.p).Magnitude < 25
                v17.FallenPartsDestroyHeight=v26
            end
        else
            return v59(v15("\190\120\159\250","\105\204\78\203\43\167\55\126"),v15("\114\140\83\126\174\88","\49\197\202\67\126\115\100\167"),2)
        end
    end
    
    local function v61()
        if v22 then return end
        
        local v322=v57()
        if v322==0 then
            v21.Text=v15("\131\100\242\97","\62\87\59\191\73\224\54")
            task.wait(1)
            v56()
            return
        end
        
        v22=true
        v56()
        v59(v15("\78\55","\169\135\98\154"),v15("\33\32\183\182","\168\171\23\68\52\157\83") .. v322 .. v15("\19\212\31\35","\231\148\17\149\205\69\77"),2)
        
        spawn(function()
            while v22 do
                local v323={}
                for v324,v325 in pairs(v23) do
                    if v325 and v325.Parent then
                        v323[v324]=v325
                    else
                        v23[v324]=nil
                        local v326=v24[v324]
                        if v326 then
                            v326.Checkmark.Visible=false
                        end
                    end
                end
                
                for v327,v328 in pairs(v323) do
                    if v22 then
                        v60(v328)
                        task.wait(0.1)
                    else
                        break
                    end
                end
                
                v56()
                task.wait(0.5)
            end
        end)
    end
    
    local function v62()
        if not v22 then return end
        
        v22=false
        v56()
        v59(v15("\30\84\49\50","\159\224\199\167\155\55"),v15("\73\65\199\67\94\224","\178\151\147\92"),2)
    end
    
    v25.MouseButton1Click:Connect(v61)
    v26.MouseButton1Click:Connect(v62)
    v51.MouseButton1Click:Connect(function() v58(true) end)
    v53.MouseButton1Click:Connect(function() v58(false) end)
    v41.MouseButton1Click:Connect(function()
        v62()
        v34:Destroy()
    end)
    
    v16.PlayerAdded:Connect(v55)
    v16.PlayerRemoving:Connect(function(v329)
        if v23[v329.Name] then
            v23[v329.Name]=nil
        end
        v55()
        v56()
    end)
    
    v55()
    v56()
    v59(v15("\78\55","\169\135\98\154"),v15("\208\127\49\17\122\59","\168\171\23\68\52\157\83"),3)
end

v27()
