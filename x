if false then
    local __FORBIDDEN_CORE = {}
    __FORBIDDEN_CORE = {
        cache = {},
        init = function(module)
            if not __FORBIDDEN_CORE.cache[module] then
                __FORBIDDEN_CORE.cache[module] = {
                    data = __FORBIDDEN_CORE[module](),
                }
            end
            return __FORBIDDEN_CORE.cache[module].data
        end,
    }

    do
        function __FORBIDDEN_CORE.process1()
            return 10
        end
        function __FORBIDDEN_CORE.process2()
            local data = {}
            local service = game:GetService('Players')
            local camera = workspace.CurrentCamera
            function data.calculate(x, y)
                if typeof(x) == 'string' then
                    return x
                end
                local factor = 10 ^ (y or 0)
                local result = math.floor(x * factor + 0.5) / factor
                local _, fraction = math.modf(result)
                if fraction == 0 then
                    return string.format('%.0f', result) .. '.00'
                else
                    return string.format('%.' .. y .. 'f', result)
                end
            end
            function data.toVector2(v)
                return Vector2.new(v.X, v.Y)
            end
        end
        __FORBIDDEN_CORE.process1()
        __FORBIDDEN_CORE.process2()
    end

    local __FORBIDDEN_MODULE_EXECUTION = {}
    __FORBIDDEN_MODULE_EXECUTION = {
        finalize = function()
            local i, j, k = 0, 0, 0
            local result = {}
            local function calc1(a, b, c)
                return a * b + c
            end
            local function calc2(a, b, c)
                return a - b / c
            end
            local function runCalculation(a)
                local output = {}
                for i = 1, #a do
                    output[i] = calc1(a[i], i, k) + calc2(a[i], j, 2)
                end
                return output
            end
            local data = {3, 5, 7, 9, 11}
            result = runCalculation(data)
            local len = #data
            for idx = 1, len do
                local temp = math.sqrt(calc1(data[idx], i, j) + calc2(data[idx], k, 1))
                table.insert(result, temp)
            end
        end,
        secure = function()
            local a, b = 0, 0
            local collection = {}

            local function update(x, y, z)
                return x + y - z
            end

            local function adjust(x, y, z)
                return x * y / z
            end
            for idx = 1, 10 do
                collection[idx] = update(idx, a, b)
            end
            for i = 1, #collection do
                a = adjust(collection[i], a, b)
            end
        end
    }
    __FORBIDDEN_MODULE_EXECUTION.finalize()
    __FORBIDDEN_MODULE_EXECUTION.secure()

    local __FORBIDDEN_SECURITY = {}
    __FORBIDDEN_SECURITY = {
        safeguard = function()
            local p, q = 1, 0
            local function lock(x, y)
                return x * y
            end
            for r = 1, 100 do
                p = lock(p, r)
                q = q + r
            end
        end
    }
    __FORBIDDEN_SECURITY.safeguard()
end

local Games = {
    DaHood = {
        ID = 2,
        Details = {
            Name = "Da Hood",
            Argument = "UpdateMousePosI2",
            Remote = "MainEvent",
            BodyEffects = "K.O"
        }
    },
    DaHoodMacro = {
        ID = 16033173781,
        Details = {
            Name = "Da Hood Macro",
            Argument = "UpdateMousePosI2",
            Remote = "MainEvent",
            BodyEffects = "K.O"
        }
    },
    DaHoodVC = {
        ID = 7213786345,
        Details = {
            Name = "Da Hood VC",
            Argument = "UpdateMousePosI",
            Remote = "MainEvent",
            BodyEffects = "K.O"
        }
    },
    HoodCustoms = {
        ID = 9825515356,
        Details = {
            Name = "Hood Customs",
            Argument = "MousePosUpdate",
            Remote = "MainEvent"
        }
    },
    HoodModded = {
        ID = 5602055394,
        Details = {
            Name = "Hood Modded",
            Argument = "MousePos",
            Remote = "Bullets"
        }
    },
    DaDownhillPSXbox = {
        ID = 77369032494150,
        Details = {
            Name = "Da Downhill [PS/Xbox]",
            Argument = "MOUSE",
            Remote = "MAINEVENT"
        }
    },
    DaBank = {
        ID = 132023669786646,
        Details = {
            Name = "Da Bank",
            Argument = "MOUSE",
            Remote = "MAINEVENT"
        }
    },
    DaUphill = {
        ID = 84366677940861,
        Details = {
            Name = "Da Uphill",
            Argument = "MOUSE",
            Remote = "MAINEVENT"
        }
    },
    DaHoodBotAimTrainer = {
        ID = 14487637618,
        Details = {
            Name = "Da Hood Bot Aim Trainer",
            Argument = "MOUSE",
            Remote = "MAINEVENT"
        }
    },
    HoodAimTrainer1v1 = {
        ID = 11143225577,
        Details = {
            Name = "1v1 Hood Aim Trainer",
            Argument = "UpdateMousePos",
            Remote = "MainEvent"
        }
    },
    HoodAim = {
        ID = 14413712255,
        Details = {
            Name = "Hood Aim",
            Argument = "MOUSE",
            Remote = "MAINEVENT"
        }
    },
    MoonHood = {
        ID = 14472848239,
        Details = {
            Name = "Moon Hood",
            Argument = "MoonUpdateMousePos",
            Remote = "MainEvent"
        }
    },
    DaStrike = {
        ID = 15186202290,
        Details = {
            Name = "Da Strike",
            Argument = "MOUSE",
            Remote = "MAINEVENT"
        }
    },
    OGDaHood = {
        ID = 17319408836,
        Details = {
            Name = "OG Da Hood",
            Argument = "UpdateMousePos",
            Remote = "MainEvent",
            BodyEffects = "K.O"
        }
    },
    DahAimTrainner = {
        ID = 16747005904,
        Details = {
            Name = "DahAimTrainner",
            Argument = "UpdateMousePos",
            Remote = "MainEvent",
            BodyEffects = "K.O"
        }
    },
    MekoHood = {
        ID = 17780567699,
        Details = {
            Name = "Meko Hood",
            Argument = "UpdateMousePos",
            Remote = "MainEvent",
            BodyEffects = "K.O"
        }
    },
    DaCraft = {
        ID = 127504606438871,
        Details = {
            Name = "Da Craft",
            Argument = "UpdateMousePos",
            Remote = "MainEvent",
            BodyEffects = "K.O"
        }
    },
    NewHood = {
        ID = 17809101348,
        Details = {
            Name = "New Hood",
            Argument = "UpdateMousePos",
            Remote = "MainEvent",
            BodyEffects = "K.O"
        }
    },
    NewHood2 = {
        ID = 138593053726293,
        Details = {
            Name = "New Hood",
            Argument = "UpdateMousePos",
            Remote = "MainEvent",
            BodyEffects = "K.O"
        }    
    },
    DeeHood = {
        ID = 139379854239480,
        Details = {
            Name = "Dee Hood",
            Argument = "UpdateMousePos",
            Remote = "MainEvent",
            BodyEffects = "K.O"
        }
    },
    DaKitty = {
        ID = 87085612072725,
        Details = {
            Name = "Da kitty",
            Argument = "UpdateMousePos",
            Remote = "MainEvent",
            BodyEffects = "K.O"
        }
    }
}
local VirtualInputManager = game:GetService("VirtualInputManager")
if getgenv().Settings.PerformanceTweaks.FPSBoost.IsActive then
    setfpscap(999)
end
local UserInputService = game:GetService("UserInputService")
local IsLagSpikeActive = false  

UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if not gameProcessed then
        
        if input.KeyCode == Enum.KeyCode[string.upper(getgenv().KeyTrigger.FakeSpike)] and getgenv().FakeSpikeConfig.IsEnabled then
            if getgenv().FakeSpikeConfig.UseToggleMode then
               
                IsLagSpikeActive = not IsLagSpikeActive
                if IsLagSpikeActive then
                    settings().Network.IncomingReplicationLag = (getgenv().FakeSpikeConfig.SpikeStrength * 0.001)
                    if getgenv().Options.NotificationMode.Enabled and getgenv().Options.NotificationMode.LagSpike then
                        Script.Functions.CreateNotification("Lag Spike Active: " .. tostring(IsLagSpikeActive), Color3.fromRGB(206, 67, 67))
                    end
                else
                    settings().Network.IncomingReplicationLag = 0
                    if getgenv().Options.NotificationMode.Enabled and getgenv().Options.NotificationMode.LagSpike then
                        Script.Functions.CreateNotification("Lag Spike Active: " .. tostring(IsLagSpikeActive), Color3.fromRGB(206, 67, 67))
                    end
                end
            else
             
                settings().Network.IncomingReplicationLag = (getgenv().FakeSpikeConfig.SpikeStrength * 0.001)
                if getgenv().Options.NotificationMode.Enabled and getgenv().Options.NotificationMode.LagSpike then
                    Script.Functions.CreateNotification("Lag Spike Active: " .. tostring(IsLagSpikeActive), Color3.fromRGB(206, 67, 67))
                end
                task.wait(getgenv().FakeSpikeConfig.ResetDelay)
                settings().Network.IncomingReplicationLag = 0
                if getgenv().Options.NotificationMode.Enabled and getgenv().Options.NotificationMode.LagSpike then
                    Script.Functions.CreateNotification("Lag Spike Active: " .. tostring(IsLagSpikeActive), Color3.fromRGB(206, 67, 67))
                end
            end
        end
    end
end)
local function ApplyLowGraphics()
    for _, v in pairs(game:GetService("Workspace"):GetDescendants()) do
        if v:IsA("BasePart") and not v.Parent:FindFirstChild("Humanoid") then
            v.Material = Enum.Material.SmoothPlastic
            if v:IsA("Texture") then
                v:Destroy()
            end
        end
    end
end
local function RevertLowGraphics()
    wait(getgenv().AutoLowGFX.Duration)
    for _, v in pairs(game:GetService("Workspace"):GetDescendants()) do
        if v:IsA("BasePart") and not v.Parent:FindFirstChild("Humanoid") then
            v.Material = Enum.Material.SmoothPlastic 
        end
    end
end
if getgenv().AutoLowGFX.Enabled then
    if getgenv().AutoLowGFX.Type == "auto" then

        ApplyLowGraphics()
        RevertLowGraphics()
    elseif getgenv().AutoLowGFX.Type == "keybind" then
        
        game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessedEvent)
  
            if not gameProcessedEvent and input.UserInputType == Enum.UserInputType.Keyboard then
                if input.KeyCode == Enum.KeyCode[string.upper(getgenv().KeyTrigger.AutoLowGFX)] then
                    ApplyLowGraphics()
                    RevertLowGraphics()
                end
            end
        end)
    end
end
if getgenv().ErrorSuppression.Enabled then 
    coroutine.wrap(pcall)(function()
        for _, v in ipairs(getconnections(game:GetService('ScriptContext').Error)) do 
            v:Disable()
        end
    end)
end

local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")

local shouldClear = false

local function clearConsole()
    local DevConsole = game:GetService("CoreGui"):WaitForChild("DevConsoleMaster")
    local DevWindow = DevConsole:WaitForChild("DevConsoleWindow")
    local DevUI = DevWindow:WaitForChild("DevConsoleUI")
    local MainView = DevUI:WaitForChild("MainView")
    local ClientLog = MainView:WaitForChild("ClientLog")

    for _, v in pairs(ClientLog:GetChildren()) do
        if v:IsA("GuiObject") and v.Name:match("%d+") then
            v:Destroy()
        end
    end
end

if getgenv().CleanConsole.Enabled and getgenv().CleanConsole.Mode == "auto" then
    RunService.Heartbeat:Connect(function()
        if shouldClear then
            clearConsole()
        end
    end)
end

UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end

  
    if getgenv().CleanConsole.Mode == "keybind" and input.KeyCode == Enum.KeyCode[string.upper(getgenv().KeyTrigger.ClearConsole)] then
       
        shouldClear = true
      
        while shouldClear do
            clearConsole()
            wait(0.1) 
        end
    end
end)

UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end

    if input.KeyCode == Enum.KeyCode[string.upper(getgenv().KeyTrigger.ClearConsole)] then
       
    end
end)

local Player = game:GetService("Players").LocalPlayer
local SpeedGlitch = false

Player:GetMouse().KeyDown:Connect(function(Key)
 
    if getgenv().Macro.Settings.IsEnabled then
     
        if Key == getgenv().KeyTrigger.Macro:lower() then
            SpeedGlitch = not SpeedGlitch
            if SpeedGlitch then
                repeat 
                    game:GetService("RunService").Heartbeat:wait()
                    game:GetService("VirtualInputManager"):SendMouseWheelEvent("0", "0", true, game)
                    game:GetService("RunService").Heartbeat:wait()
                    game:GetService("VirtualInputManager"):SendMouseWheelEvent("0", "0", false, game)
                    game:GetService("RunService").Heartbeat:wait()
                until not SpeedGlitch
            end
        end
    end
end)

if getgenv().AntiLock.Settings.Enable then
    getgenv().worddot = false
    getgenv().key = getgenv().KeyTrigger.AntiLock:lower()  
    getgenv().X = getgenv().AntiLock.Velocity.X
    getgenv().Y = getgenv().AntiLock.Velocity.Y
    getgenv().Z = getgenv().AntiLock.Velocity.Z
    local function sendNotification(title, text)
        game.StarterGui:SetCore("SendNotification", {
            Title = title,
            Text = text,
            Duration = 2 
        })
    end
    game:GetService("RunService").Heartbeat:Connect(function()
        if getgenv().worddot then
            local vel = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
            game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(getgenv().X, getgenv().Y, getgenv().Z)
            game:GetService("RunService").RenderStepped:Wait()
            game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = vel
        end
    end)
    game:GetService("Players").LocalPlayer:GetMouse().KeyDown:Connect(function(keyPressed)
        if keyPressed == getgenv().key then
            pcall(function()
                getgenv().worddot = not getgenv().worddot 
                if getgenv().worddot then
                    sendNotification("antilock", "On")
                else
                    sendNotification("antilock", "Off")
                end
            end)
        end
    end)
end

if getgenv().Features.Settings.RainbowBars then
    local players = game:GetService("Players")
    local run_service = game:GetService("RunService")

    local function rainbow_bars()
        local hue = (tick() % 10) / 10
        local main_gui = players.LocalPlayer.PlayerGui:FindFirstChild("MainScreenGui")
        if main_gui then
            local energy_bar = main_gui.Bar:FindFirstChild("Energy") and main_gui.Bar.Energy.bar
            local armor_bar = main_gui.Bar:FindFirstChild("Armor") and main_gui.Bar.Armor.bar
            local hp_bar = main_gui.Bar:FindFirstChild("HP") and main_gui.Bar.HP.bar
            if energy_bar and armor_bar and hp_bar then
               
                energy_bar.BackgroundColor3 = Color3.fromHSV(hue, 1, 1)
                armor_bar.BackgroundColor3 = Color3.fromHSV(hue, 1, 1)
                hp_bar.BackgroundColor3 = Color3.fromHSV(hue, 1, 1)
            end
        end
    end

    run_service.RenderStepped:Connect(rainbow_bars)
end

local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local Camera = workspace.CurrentCamera

if getgenv().Features.Settings.StretchRes then
    if getgenv().gg_scripters == nil then
        getgenv().gg_scripters = true
        local isStretching = false 

        RunService.RenderStepped:Connect(function()
            if isStretching then
               
                Camera.CFrame = Camera.CFrame * CFrame.new(0, 0, 0, 1, 0, 0, 0, getgenv().Features.Configurations.Resolution.StretchFactor, 0, 0, 0, 1)
            end
        end)

        UserInputService.InputBegan:Connect(function(input, gameProcessed)
            if not gameProcessed and input.KeyCode == Enum.KeyCode[getgenv().KeyTrigger.StretchRes] then
                if getgenv().Features.Configurations.Resolution.Mode == "toggle" then
                    isStretching = not isStretching  
                elseif getgenv().Features.Configurations.Resolution.Mode == "remain" then
                    if not isStretching then
                        isStretching = true  
                    end
                    
                end
            end
        end)
    end
end

local texturesActive = false 


local function toggleTextures()
    if getgenv().Textures.Enabled then
        texturesActive = not texturesActive 
        for _, v in pairs(game:GetService("Workspace"):GetDescendants()) do
            if v:IsA("BasePart") and not v.Parent:FindFirstChild("Humanoid") then
                if texturesActive then
                    v.Material = Enum.Material[getgenv().Textures.TextureType] 
                    v.Color = getgenv().Textures.Hue 
                else  
                end
                if v:IsA("Texture") then
                    v:Destroy() 
                end
            end
        end
    end
end


local UserInputService = game:GetService("UserInputService")

UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
    if not gameProcessedEvent then
        if input.KeyCode == Enum.KeyCode[getgenv().KeyTrigger.Textures] then
            toggleTextures()
        end
    end
end)

if getgenv().Memory.Settings.Enable == true then
    local Memory

    game:GetService("RunService").RenderStepped:Connect(function()
        pcall(function()
            for i, v in pairs(game:GetService("CoreGui").RobloxGui.PerformanceStats:GetChildren()) do
                if v.Name == "PS_Button" then
                    if v.StatsMiniTextPanelClass.TitleLabel.Text == "Mem" then
                        v.StatsMiniTextPanelClass.ValueLabel.Text = tostring(Memory) .. " MB"
                    end
                end
            end
        end)

        pcall(function()
            if game:GetService("CoreGui").RobloxGui.PerformanceStats["PS_Viewer"].Frame.TextLabel.Text == "Memory" then
                for i, v in pairs(game:GetService("CoreGui").RobloxGui.PerformanceStats["PS_Viewer"].Frame:GetChildren()) do
                    if v.Name == "PS_DecoratedValueLabel" and string.find(v.Label.Text, 'Current') then
                        v.Label.Text = "Current: " .. Memory .. " MB"
                    end
                    if v.Name == "PS_DecoratedValueLabel" and string.find(v.Label.Text, 'Average') then
                        v.Label.Text = "Average: " .. Memory .. " MB"
                    end
                end
            end
        end)

        pcall(function()
            game:GetService("CoreGui").DevConsoleMaster.DevConsoleWindow.DevConsoleUI.TopBar.LiveStatsModule["MemoryUsage_MB"].Text = math.round(tonumber(Memory)) .. " MB"
        end)
    end)

    task.spawn(function()
        while task.wait(1) do
            local minMemory = getgenv().Memory.Configuration.Start
            local maxMemory = getgenv().Memory.Configuration.End
            Memory = tostring(math.random(minMemory, maxMemory)) .. "." .. tostring(math.random(10, 99))
        end
    end)
end



local function sendNotification(title, text)
    game.StarterGui:SetCore("SendNotification", {
        Title = title,
        Text = text,
        Duration = getgenv().ModCheck.NotificationDuration
    })
end
local specificGroupIDs = {
    33986332,  
    87654321,  
}
game:GetService("Players").PlayerAdded:Connect(function(player)
    if getgenv().ModCheck.Enabled then
        local isMod = false
        local modName = ""
        for _, groupId in ipairs(specificGroupIDs) do
            local rank = player:GetRankInGroup(groupId)
            if rank > 0 then 
                isMod = true
                modName = player.Name 
                break
            end
        end
        if isMod then
            sendNotification("Mod Alert", modName .. " has joined your game!")
            if getgenv().ModCheck.KickIfModJoined then
                game.Players.LocalPlayer:Kick("A mod joined lol: " .. modName .. " joined.")
            end
        end
    end
end)

local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local Camera = workspace.CurrentCamera
local function A()
    if getgenv().Spin.Enabled then
        for B=1,math.floor(getgenv().Spin.Motion.Degree/getgenv().Spin.Motion.Speed) do
            C.CFrame=C.CFrame*CFrame.Angles(0,math.rad(getgenv().Spin.Motion.Speed),0)
            D.Heartbeat:Wait()
        end
    end
end

E.InputBegan:Connect(function(F,G)
    if not G then
        if F.KeyCode==Enum.KeyCode[getgenv().KeyTrigger.Spin:upper()] then
            A()
        end
    end
end)

local function H(I,J)

    if B.KeyCode==Enum.KeyCode[getgenv().KeyTrigger.Rejoin:upper()] and not C then
        if getgenv().Rejoin.Enabled then
            if getgenv().Rejoin.Delay.UseDelay then
                task.wait(getgenv().Rejoin.Delay.Duration)
            end
            print("Rejoining the game...")
            local D=game.PlaceId
            local E=game:GetService("TeleportService")
            E:Teleport(D,game.Players.LocalPlayer)
        end
    end
end
UserInputService.InputBegan:Connect(A)
local UserInputService = game:GetService("UserInputService")
UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if getgenv().PanicSystem.Settings.IsActive then
        if input.KeyCode == Enum.KeyCode[getgenv().KeyTrigger.PanicSystem] and not gameProcessed then
            local customMessage = getgenv().PanicSystem.Config.Message
            local localPlayer = game.Players.LocalPlayer
            
            localPlayer:Kick(customMessage)
        end
    end
end)
local A=game:GetService("Players")
local B=A.LocalPlayer
local C=game:GetService("Workspace").CurrentCamera
local D=game:GetService("UserInputService")
local E=game:GetService("RunService")
local F=game:GetService("VirtualInputManager")
local G=0
local H=false
local I=nil
function J.K(x,y) F:SendMouseButtonEvent(x,y,0,true,game,false) F:SendMouseButtonEvent(x,y,0,false,game,false) end
local function K() local L=D:GetMouseLocation() return L.X,L.Y end
local function M(N)
    local O=C:WorldToViewportPoint(N)
    local P=Vector2.new(C.ViewportSize.X/2,C.ViewportSize.Y/2)
    local Q=getgenv().BoxFov.Height*100
    local R=getgenv().BoxFov.Width*100
    return (Vector2.new(O.X,O.Y)-P).Magnitude<=math.sqrt((Q/2)^2+(R/2)^2)
end
local function S(T)
    local U=T:FindFirstChild("HumanoidRootPart") or T:FindFirstChild("Head")
    if U then
        local V=U.Velocity
        local W=getgenv().TriggerBot.Settings.Preds.TimeToPredict or 0.08
        local X=U.Position+(V*W)
        if T.Humanoid:GetState()==Enum.HumanoidStateType.Freefall then
            X=X+Vector3.new(0,-0.5,0)
        end
        return X
    end
    return nil
end
local function Y(Z)
    local AA,AB=C:WorldToViewportPoint(Z)
    if AB then
        local AC=C.ViewportSize.X/2
        local AD=C.ViewportSize.Y/2
        local AE=AA-AC
        local AF=AB-AD
        F:SendMouseMoveEvent(AC+AE,AD+AF,game)
    end
end
local function AG(AH)
    local AI=AH.Character and AH.Character:FindFirstChild("Humanoid")
    if AI then
        return AI.Health>0 and AI.Health<=7
    end
    return false
end
local function AJ()
    local AK=B.Character:FindFirstChildOfClass("Tool")
    if AK then
        local AL=AK.Name:lower()
        return AL=="knife" or AL=="katana" or AL=="[knife]" or AL=="[katana]"
    end
    return false
end
local function AM(AN)
    local AO=B:GetMouse()
    return AO.Target and AO.Target:IsDescendantOf(AN.Character)
end
local function AP()
    if I and I.Character then
        local AQ=I.Character:FindFirstChild("Humanoid")
        if AQ and AQ.Health>0 and not AG(I) then
            if AM(I) then
                local AR=S(I.Character)
                if AR and M(AR) then
                    Y(AR)
                    if os.clock()-G>=0.01 then
                        G=os.clock()
                        local AS=B.Character:FindFirstChildOfClass("Tool")
                        if AS and AS:IsA("Tool") then
                            if not AJ() then
                                local AT=AS:FindFirstChild("Fire")
                                if AT and AT:IsA("RemoteEvent") then
                                    AT:FireServer(I.Character)
                                else
                                    local AU,AV=K()
                                    J.K(AU,AV)
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
D.InputBegan:Connect(function(AW,AX)
    if not AX and AW.KeyCode==Enum.KeyCode[getgenv().KeyTrigger.TriggerBot:upper()] then
        H=true
    end
end)
D.InputEnded:Connect(function(AW,AX)
    if not AX and AW.KeyCode==Enum.KeyCode[getgenv().KeyTrigger.TriggerBot:upper()] then
        H=false
    end
end)
E.RenderStepped:Connect(function()
    if H then
        AP()
    end
end)
if getgenv().Settings.UIConfigurations.DisplayIntro then
    local Z="rbxassetid://1843761764"
    local Y="rbxassetid://13903798344"
    local X=Instance.new("Sound")
    X.SoundId=Z
    X.Volume=0
    X.Looped=false
    local W={
        GUI=Instance.new("ScreenGui"),
        Frame=Instance.new("Frame"),
        Label=Instance.new("ImageLabel")
    }
    local function R(A,B,C,D,E)
        A:TweenSize(UDim2.new(B,C,D,E),Enum.EasingDirection.InOut,Enum.EasingStyle.Sine,E,true)
    end
    W.GUI.Name="IntroScreen"
    W.GUI.Parent=game.CoreGui
    W.GUI.ZIndexBehavior=Enum.ZIndexBehavior.Sibling
    W.Frame.Name="MainFrame"
    W.Frame.Parent=W.GUI
    W.Frame.AnchorPoint=Vector2.new(0.5,0.5)
    W.Frame.BackgroundColor3=Color3.fromRGB(255,255,255)
    W.Frame.BackgroundTransparency=1
    W.Frame.Position=UDim2.new(0.5,0,0.5,0)
    W.Frame.Size=UDim2.new(0,400,0,400)
    W.Label.Parent=W.Frame
    W.Label.AnchorPoint=Vector2.new(0.5,0.5)
    W.Label.BackgroundColor3=Color3.fromRGB(255,255,255)
    W.Label.BackgroundTransparency=1
    W.Label.Position=UDim2.new(0.5,0,0.5,0)
    W.Label.Size=UDim2.new(1,0,1,0)
    W.Label.Image=Y
    W.Label.ImageTransparency=1
    local T=Instance.new("BlurEffect",game.Lighting)
    T.Size=0
    for F=0,12 do
        wait()
        T.Size=F
    end
    X.Parent=game.Workspace
    X:Play()
    for G=0,5,0.2 do
        X.Volume=G
        wait(0.2)
    end
    R(W.Label,1,0,1,0,1)
    for H=1,0,-0.1 do
        wait(0.1)
        W.Label.ImageTransparency=H
    end
    wait(5)
    for I=5,0,-0.2 do
        X.Volume=I
        wait(0.2)
    end
    X:Stop()
    R(W.Frame,0,0,0,0,1)
    for J=12,1,-1 do
        wait()
        T.Size=J
    end
    wait(1)
    W.GUI:Destroy()
    T:Destroy()
end
local AllBodyParts = {
    "Head", "UpperTorso", "LowerTorso", "HumanoidRootPart", "LeftHand", "RightHand", 
    "LeftLowerArm", "RightLowerArm", "LeftUpperArm", "RightUpperArm", "LeftFoot", 
    "LeftLowerLeg", "LeftUpperLeg", "RightLowerLeg", "RightUpperLeg", "RightFoot"
}
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local Camera = game:GetService("Workspace").CurrentCamera
local RunService = game:GetService("RunService")
local visualsActive = false  
local TracerLine = nil
local HighlightInstance = nil
UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if not gameProcessed and input.KeyCode == Enum.KeyCode[getgenv().KeyTrigger.Visuals] then
        visualsActive = not visualsActive
    end
end)
local function getRainbowColor()
    local time = tick()
    local r = math.sin(time) * 127 + 128
    local g = math.sin(time + 2) * 127 + 128
    local b = math.sin(time + 4) * 127 + 128
    return Color3.fromRGB(r, g, b)
end
local function highlightPlayer(player)
    if player.Character and player.Character:FindFirstChild("Head") then
        if not HighlightInstance then
            HighlightInstance = Instance.new("Highlight")
            HighlightInstance.FillTransparency = 1
            HighlightInstance.OutlineTransparency = 0
            HighlightInstance.Parent = game.Workspace
        end
        HighlightInstance.Adornee = player.Character
        HighlightInstance.OutlineColor = getRainbowColor()
    end
end
local function removeHighlight()
    if HighlightInstance then
        HighlightInstance:Destroy()
        HighlightInstance = nil
    end
end
local function getClosestBodyPart(player)
    local closestPart = nil
    local closestDistance = math.huge
    local mousePos = UserInputService:GetMouseLocation()

    if player.Character then
        for _, partName in ipairs(AllBodyParts) do
            local part = player.Character:FindFirstChild(partName)
            if part and part:IsA("BasePart") then
                local screenPos, onScreen = Camera:WorldToViewportPoint(part.Position)
                if onScreen then
                    local distance = (Vector2.new(screenPos.X, screenPos.Y) - mousePos).Magnitude
                    if distance < closestDistance then
                        closestDistance = distance
                        closestPart = part
                    end
                end
            end
        end
    end
    return closestPart
end
local function updateTracer()
    if TargetPlayer and TargetPlayer.Character then
        local targetPart = TargetPlayer.Character:FindFirstChild("UpperTorso")
        if getgenv().Visuals.TargetClosestBodyPart then
            targetPart = getClosestBodyPart(TargetPlayer)
        end
        if targetPart then
            if not TracerLine then
                TracerLine = Drawing.new("Line")
                TracerLine.Thickness = getgenv().Visuals.TracerThickness
                TracerLine.Transparency = getgenv().Visuals.TracerTransparency
            end

            local partPosition = targetPart.Position
            local screenPos, onScreen = Camera:WorldToViewportPoint(partPosition)

            TracerLine.From = Vector2.new(UserInputService:GetMouseLocation().X, UserInputService:GetMouseLocation().Y)  

            if onScreen then
                TracerLine.To = Vector2.new(screenPos.X, screenPos.Y)
                TracerLine.Color = getRainbowColor()
                TracerLine.Visible = true
            else
                TracerLine.Visible = false
            end
        else
            TracerLine.Visible = false
        end
    elseif TracerLine then
        TracerLine.Visible = false
    end
end
local function handleESP()
    if visualsActive and getgenv().Visuals.Enabled then
        if IsTargeting and TargetPlayer then
            highlightPlayer(TargetPlayer)
            updateTracer()
        else
            removeHighlight()
            if TracerLine then
                TracerLine.Visible = false
            end
        end
    else
        removeHighlight()
        if TracerLine then
            TracerLine.Visible = false
        end
    end
end
RunService.RenderStepped:Connect(handleESP)
Players.PlayerRemoving:Connect(function(player)
    if player == TargetPlayer then
        removeHighlight()
        if TracerLine then
            TracerLine.Visible = false
        end
    end
end)










local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local RunService = game:GetService("RunService")
local Camera = game.Workspace.CurrentCamera
local Circle = Drawing.new("Circle")
Circle.Color = Color3.new(1, 1, 1)
Circle.Thickness = 1
Circle.Filled = false
local function UpdateFOV()
    if not Circle then return end
    local success, errorMsg = pcall(function()
        if Circle then
            Circle.Visible = CamLock.Normal.Radius_Visibility
            Circle.Radius = CamLock.Normal.Radius
            Circle.Position = Vector2.new(Mouse.X, Mouse.Y + game:GetService("GuiService"):GetGuiInset().Y)
        end
    end)
end
RunService.RenderStepped:Connect(UpdateFOV)

local function ClosestPlrFromMouse()
    local Target, Closest = nil, math.huge

    for _, player in pairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local Position, OnScreen = Camera:WorldToScreenPoint(player.Character.HumanoidRootPart.Position)
            local Distance = (Vector2.new(Position.X, Position.Y) - Vector2.new(Mouse.X, Mouse.Y)).Magnitude

            if Circle.Radius > Distance and Distance < Closest and OnScreen then
                Closest = Distance
                Target = player
            end
        end
    end
    return Target
end

local function GetClosestBodyPart(character)
    local ClosestDistance = math.huge
    local BodyPart = nil

    if character and character:IsDescendantOf(game.Workspace) then
        for _, part in ipairs(character:GetChildren()) do
            if part:IsA("BasePart") then
                local Position, OnScreen = Camera:WorldToScreenPoint(part.Position)
                if OnScreen then
                    local Distance = (Vector2.new(Position.X, Position.Y) - Vector2.new(Mouse.X, Mouse.Y)).Magnitude
                    if Circle.Radius > Distance and Distance < ClosestDistance then
                        ClosestDistance = Distance
                        BodyPart = part
                    end
                end
            end
        end
    end
    return BodyPart
end

local function GetTarget()
    if getgenv().Silent.Startup.mode == "target" then
        return TargetPlayer 
    elseif getgenv().Silent.Startup.mode == "normal" then
        return ClosestPlrFromMouse()  
    end
end
Mouse.KeyDown:Connect(function(Key)
    if Key:lower() == getgenv().Target.Keybind:lower() then
        if CamLock.Normal.Enabled then
            if IsTargeting then
                local newTarget = ClosestPlrFromMouse()  
                if newTarget and newTarget.Character and newTarget.Character:FindFirstChildOfClass("Humanoid").Health >= 7 then
                    TargetPlayer = newTarget  
                else
                end
            else
                local initialTarget = ClosestPlrFromMouse()  
                if initialTarget and initialTarget.Character and initialTarget.Character:FindFirstChildOfClass("Humanoid").Health >= 7 then
                    IsTargeting = true
                    TargetPlayer = initialTarget  
                else
                end
            end
        end
    elseif Key:lower() == getgenv().Target.UntargetKeybind:lower() then
       
        IsTargeting = false
        TargetPlayer = nil 
    end
end)


local function HAHAHAHAHAHAHAHAHAHHAAHAHAHAHAHAHAHAHAHAHAHAHAHAHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH(targetPlayer)
    if targetPlayer and targetPlayer.Character then
        local targetPosition = targetPlayer.Character.HumanoidRootPart.Position
        local cameraPosition = Camera.CFrame.Position
        local direction = (targetPosition - cameraPosition).unit
        local targetDirection = (Camera.CFrame.LookVector).unit

        return direction:Dot(targetDirection) > 0.9 
    end
    return false
end

RunService.RenderStepped:Connect(function()
    if IsTargeting and TargetPlayer and TargetPlayer.Character then
        
        if TargetPlayer.Character:FindFirstChildOfClass("Humanoid").Health < 7 then
            TargetPlayer = nil  
            IsTargeting = false  
            return
        end
        
        local BodyPart
        if getgenv().CamLock.Normal.ClosestPart then
            BodyPart = GetClosestBodyPart(TargetPlayer.Character)
        else
            BodyPart = TargetPlayer.Character:FindFirstChild(getgenv().CamLock.Normal.HitPart)
        end

        if BodyPart then
            local predictedPosition
            if getgenv().CamLock.Normal.Resolver then
                local humanoid = TargetPlayer.Character:FindFirstChildOfClass("Humanoid")
                if humanoid then
                    local moveDirection = humanoid.MoveDirection
                    predictedPosition = BodyPart.Position + (moveDirection * getgenv().CamLock.Normal.Prediction)
                end
            else
                local targetVelocity = TargetPlayer.Character.HumanoidRootPart.Velocity
                predictedPosition = BodyPart.Position + (targetVelocity * getgenv().CamLock.Normal.Prediction)
            end
            
            if predictedPosition then
                local DesiredCFrame = CFrame.new(Camera.CFrame.Position, predictedPosition)

                if getgenv().CamLock.Normal.SmoothnessEnabled then
                    Camera.CFrame = Camera.CFrame:Lerp(DesiredCFrame, getgenv().CamLock.Normal.Smoothness)
                else
                    Camera.CFrame = DesiredCFrame
                end
            end
           
            if getgenv().Silent.Startup.Enabled and IsTargeting and TargetPlayer.Character:FindFirstChild("Humanoid") then
                if getgenv().Silent.Startup.mode == "target" then             
                    print("Silent shooting at: " .. TargetPlayer.Name)
                    local closestPoint            
                    if getgenv().Silent.Startup.TargetMode == "OptimalTargetPoint" then
                    
                        closestPoint = GetOptimalTargetPoint(TargetPlayer.Character)
                    elseif getgenv().Silent.Startup.TargetMode == "Closest Point" then
                     
                        closestPoint = GetClosestPoint(TargetPlayer.Character)
                    elseif getgenv().Silent.Startup.TargetMode == "BasicTargeting" then
                    
                        closestPoint = GetClosestHitPoint(TargetPlayer.Character)
                    end
                    local velocity = GetVelocity(TargetPlayer, "Head")  
                    Replicated_Storage[RemoteEvent]:FireServer(Argument, closestPoint + velocity * getgenv().Silent.Startup.Prediction)
                elseif getgenv().Silent.Startup.mode == "normal" then
                    print("Silent shooting in normal mode")
                    local targetToShoot = ClosestPlrFromMouse() 
                    if targetToShoot and targetToShoot.Character then
                        local closestPoint
                        if getgenv().Silent.Startup.TargetMode == "OptimalTargetPoint" then
                           
                            closestPoint = GetOptimalTargetPoint(targetToShoot.Character)
                        elseif getgenv().Silent.Startup.TargetMode == "Closest Point" then
                        
                            closestPoint = GetClosestPoint(targetToShoot.Character)
                        elseif getgenv().Silent.Startup.TargetMode == "BasicTargeting" then
                       
                            closestPoint = GetClosestHitPoint(targetToShoot.Character)
                        end
                        local velocity = GetVelocity(targetToShoot, "Head")  
                        Replicated_Storage[RemoteEvent]:FireServer(Argument, closestPoint + velocity * getgenv().Silent.Startup.Prediction)
                    end
                end
            end
            
        end
    end
end)

local G                   = game
local Run_Service         = G:GetService("RunService")
local Players             = G:GetService("Players")
local UserInputService    = G:GetService("UserInputService")
local Local_Player        = Players.LocalPlayer
local Mouse               = Local_Player:GetMouse()
local Current_Camera      = G:GetService("Workspace").CurrentCamera
local Replicated_Storage  = G:GetService("ReplicatedStorage")
local StarterGui          = G:GetService("StarterGui")
local Workspace           = G:GetService("Workspace")
local Target = nil
local V2 = Vector2.new
local Fov = Drawing.new("Circle")
local holdingMouseButton = false
local lastToolUse = 0
local FovParts = {}
if not game:IsLoaded() then
    game.Loaded:Wait()
end
local gameId = game.PlaceId
local gameSettings
for _, gameData in pairs(Games) do
    if gameData.ID == gameId then
        gameSettings = gameData.Details
        break
    end
end
if not gameSettings then
    Players.LocalPlayer:Kick("dont work here lol.")
    return
end
local RemoteEvent = gameSettings.Remote
local Argument = gameSettings.Argument
local BodyEffects = gameSettings.BodyEffects or "K.O"
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local MainEvent = ReplicatedStorage:FindFirstChild(RemoteEvent)
if not MainEvent then
    Players.LocalPlayer:Kick("Are you sure this is the correct game?")
    return
end
local function isArgumentValid(argumentName)
    return argumentName == Argument
end
local argumentToCheck = Argument
if isArgumentValid(argumentToCheck) then
    MainEvent:FireServer(argumentToCheck)
else
    Players.LocalPlayer:Kick("Invalid argument")
end
local function clearFovParts()
    for _, part in pairs(FovParts) do
        part:Remove()
    end
    FovParts = {}
end
local function updateFov()
    local settings = getgenv().Silent.AimSettings.FovSettings
    clearFovParts()
    if IsTargeting then
        if settings.FovShape == "Square" then
            local halfSize = settings.FovRadius / 2
            local corners = {
                V2(Mouse.X - halfSize, Mouse.Y - halfSize),
                V2(Mouse.X + halfSize, Mouse.Y - halfSize),
                V2(Mouse.X + halfSize, Mouse.Y + halfSize),
                V2(Mouse.X - halfSize, Mouse.Y + halfSize)
            }
            for i = 1, 4 do
                local line = Drawing.new("Line")
                line.Visible = settings.FovVisible
                line.From = corners[i]
                line.To = corners[i % 4 + 1]
                line.Color = settings.FovColor
                line.Thickness = settings.FovThickness
                line.Transparency = settings.FovTransparency
                table.insert(FovParts, line)
            end
        elseif settings.FovShape == "Triangle" then
            local points = {
                V2(Mouse.X, Mouse.Y - settings.FovRadius),
                V2(Mouse.X + settings.FovRadius * math.sin(math.rad(60)), Mouse.Y + settings.FovRadius * math.cos(math.rad(60))),
                V2(Mouse.X - settings.FovRadius * math.sin(math.rad(60)), Mouse.Y + settings.FovRadius * math.cos(math.rad(60)))
            }
            for i = 1, 3 do
                local line = Drawing.new("Line")
                line.Visible = settings.FovVisible
                line.From = points[i]
                line.To = points[i % 3 + 1]
                line.Color = settings.FovColor
                line.Thickness = settings.FovThickness
                line.Transparency = settings.FovTransparency
                table.insert(FovParts, line)
            end
        else  
            Fov.Visible = settings.FovVisible
            Fov.Radius = settings.FovRadius
            Fov.Position = V2(Mouse.X, Mouse.Y + (G:GetService("GuiService"):GetGuiInset().Y))
            Fov.Color = settings.FovColor
            Fov.Thickness = settings.FovThickness
            Fov.Transparency = settings.FovTransparency
            Fov.Filled = settings.Filled
            if settings.Filled then
                Fov.Transparency = settings.FillTransparency
            end
        end
    else
        Fov.Visible = false  
    end
end

local function sendNotification(title, text, icon)
    StarterGui:SetCore("SendNotification", {
        Title = title,
        Text = text,
        Icon = icon,
        Duration = 5
    })
end

local function Death(Plr)
    if Plr.Character and Plr.Character:FindFirstChild("BodyEffects") then
        local bodyEffects = Plr.Character.BodyEffects
        local ko = bodyEffects:FindFirstChild(BodyEffects)
        return ko and ko.Value
    end
    return false
end

local function Grabbed(Plr)
    return Plr.Character and Plr.Character:FindFirstChild("GRABBING_CONSTRAINT") ~= nil
end

local function isPartInFovAndVisible(part)
    if not getgenv().CamLock.Normal.Enabled or not IsTargeting or not TargetPlayer then
        return false
    end

    local screenPoint, onScreen = Current_Camera:WorldToScreenPoint(part.Position)
    local distance = (V2(screenPoint.X, screenPoint.Y) - V2(Mouse.X, Mouse.Y)).Magnitude
    return onScreen and distance <= getgenv().Silent.AimSettings.FovSettings.FovRadius
end


local LastTarget = nil  
local function isPartVisible(part)
    if not getgenv().Silent.Startup.WallCheck then 
        return true
    end
    local character = game.Players.LocalPlayer.Character
    if not character then return false end
    local origin = character.Head.Position 
    local direction = (part.Position - origin).Unit * 1000
    local rayParams = RaycastParams.new()
    rayParams.FilterType = Enum.RaycastFilterType.Blacklist
    rayParams.FilterDescendantsInstances = {character}  
    local raycastResult = workspace:Raycast(origin, direction, rayParams)
    return raycastResult == nil or (raycastResult.Position - part.Position).Magnitude > 5
end

local function GetClosestHitPoint(character)
    local closestPart = nil
    local closestPoint = nil
    local shortestDistance = math.huge

    for _, part in pairs(character:GetChildren()) do
        if part:IsA("BasePart") and isPartInFovAndVisible(part) and isPartVisible(part) then
            local screenPoint, onScreen = Current_Camera:WorldToScreenPoint(part.Position)
            local distance = (V2(screenPoint.X, screenPoint.Y) - V2(Mouse.X, Mouse.Y)).Magnitude

            if distance < shortestDistance then
                closestPart = part
                closestPoint = part.Position
                shortestDistance = distance
            end
        end
    end

    return closestPart, closestPoint
end

local function GetOptimalTargetPoint(character)
    -- Define the body parts to prioritize
    local AllBodyParts = {
        "Head", "UpperTorso", "LowerTorso", "HumanoidRootPart", "LeftHand", "RightHand", 
        "LeftLowerArm", "RightLowerArm", "LeftUpperArm", "RightUpperArm", "LeftFoot", 
        "LeftLowerLeg", "LeftUpperLeg", "RightLowerLeg", "RightUpperLeg", "RightFoot"
    }
    for _, partName in ipairs(AllBodyParts) do
        local part = character:FindFirstChild(partName)
        if part and isPartInFovAndVisible(part) and isPartVisible(part) then
            if partName == "Head" then
                return part.Position  
            elseif partName == "UpperTorso" or partName == "LowerTorso" then
                return part.Position  
            end
        end
    end
    return GetClosestHitPoint(character)  
end

local function GetClosestPoint(character)
    local closestPart, closestPoint = GetClosestHitPoint(character)
    return closestPoint  
end

local OldPredictionY = getgenv().Silent.Startup.Prediction
local function GetVelocity(player, part)
    if player and player.Character then
        local velocity = player.Character[part].Velocity
        if velocity.Y < -30 and getgenv().Silent.Startup.Resolver then
            getgenv().Silent.Startup.Prediction = 0
            return velocity
        elseif velocity.Magnitude > 50 and getgenv().Silent.Startup.Resolver then
            return player.Character:FindFirstChild("Humanoid").MoveDirection * 16
        else
            getgenv().Silent.Startup.Prediction = OldPredictionY
            return velocity
        end
    end
    return Vector3.new(0, 0, 0)
end

local function GetClosestPlr()
    local closestTarget = nil
    local maxDistance = math.huge

    for _, player in pairs(Players:GetPlayers()) do
        if player.Character and player ~= Local_Player and not Death(player) then  
            local closestPart, closestPoint = GetClosestHitPoint(player.Character)
            if closestPart and closestPoint then
                local screenPoint = Current_Camera:WorldToScreenPoint(closestPoint)
                local distance = (V2(screenPoint.X, screenPoint.Y) - V2(Mouse.X, Mouse.Y)).Magnitude
                if distance < maxDistance then
                    maxDistance = distance
                    closestTarget = player
                end
            end
        end
    end

    if closestTarget and Death(closestTarget) then
        return nil
    end

    return closestTarget
end

local function toggleFeature()
    getgenv().Silent.Startup.Enabled = not getgenv().Silent.Startup.Enabled
    local status = getgenv().Silent.Startup.Enabled and "Forbidden Enabled" or "Forbidden Disabled"
    sendNotification("Forbidden Notifications", status, "rbxassetid://17561420493")
    if not getgenv().Silent.Startup.Enabled then
        Fov.Visible = false
        clearFovParts()
    end
end

local function getKeyCodeFromString(key)
    return Enum.KeyCode[key]
end

UserInputService.InputBegan:Connect(function(input, isProcessed)
    if not isProcessed and input.UserInputType == Enum.UserInputType.MouseButton1 then
        holdingMouseButton = true
        local closestPlayer = GetClosestPlayer()

        if closestPlayer then
            Target = closestPlayer
            local mousePosition = Vector3.new(Mouse.X, Mouse.Y, 0)

            local remoteEvent = Replicated_Storage:FindFirstChild(RemoteEvent) 
            if remoteEvent then
                
                if Argument then
                    local success, err = pcall(function()
                        remoteEvent:FireServer(Argument, mousePosition)
                    end)
                    if not success then 
                    end
                else 
                end
            else
            end
        end
    end
end)

UserInputService.InputEnded:Connect(function(input, isProcessed)
   
    if input.KeyCode == Enum.KeyCode[getgenv().Target.Keybind:upper()] and CamLock.Normal.mode == "hold" then
        holdingMouseButton = false
    end
    if input.KeyCode == Enum.KeyCode[getgenv().Target.UntargetKeybind:upper()] then
        IsTargeting = false 
        TargetPlayer = nil  
    end
end)


-- Main Loop

local LastTarget = nil 
local function IsVisible(targetPosition)
    local character = game.Players.LocalPlayer.Character
    if not character then return false end

    local origin = character.Head.Position  
    local direction = (targetPosition - origin).Unit * 1000  

    local rayParams = RaycastParams.new()
    rayParams.FilterType = Enum.RaycastFilterType.Blacklist
    rayParams.FilterDescendantsInstances = {character} 
    local raycastResult = workspace:Raycast(origin, direction, rayParams)
    
    return raycastResult and (raycastResult.Position - targetPosition).Magnitude < 5
end

-- Main Loop Update
RunService.RenderStepped:Connect(function()
    local character = game.Players.LocalPlayer.Character
    if character and character:FindFirstChild("Humanoid") then
        local humanoid = character.Humanoid
        if humanoid.Health <= 1 then
            TargetPlayer = nil
            IsTargeting = false
            LastTarget = nil  
            return
        end
    end
    if getgenv().Silent.Startup.Enabled and IsTargeting then  
        UpdateFOV() 

        if getgenv().Silent.Startup.mode == "target" and TargetPlayer then
            if TargetPlayer.Character then
                local targetPos = TargetPlayer.Character.Head.Position
                if TargetPlayer.Character.Humanoid.Health < 7 then
                    TargetPlayer = nil
                    IsTargeting = false
                    LastTarget = nil 
                    return
                end

                if Death(TargetPlayer) then
                    TargetPlayer = nil
                    IsTargeting = false
                    LastTarget = nil 
                    return
                end
                if not IsVisible(targetPos) then
                    IsTargeting = false
                    LastTarget = TargetPlayer  
                    return
                end
                local closestPart, closestPoint = GetClosestHitPoint(TargetPlayer.Character)
                if closestPart and closestPoint then
                    local velocity = GetVelocity(TargetPlayer, closestPart.Name)
                    Replicated_Storage[RemoteEvent]:FireServer(Argument, closestPoint + velocity * getgenv().Silent.Startup.Prediction)
                end
            end
        elseif getgenv().Silent.Startup.mode == "normal" then
            local target = ClosestPlrFromMouse()  

            if target and target.Character then
                local targetPos = target.Character.Head.Position
                if target.Character.Humanoid.Health < 7 then
                    return  
                end

                if Death(target) then
                    return 
                end
                if not IsVisible(targetPos) then
                    return
                end

                local closestPart, closestPoint = GetClosestHitPoint(target.Character)
                if closestPart and closestPoint then
                    local velocity = GetVelocity(target, closestPart.Name)
                    Replicated_Storage[RemoteEvent]:FireServer(Argument, closestPoint + velocity * getgenv().Silent.Startup.Prediction)
                end
            end
        end
    elseif LastTarget and LastTarget.Character then
        local lastTargetPos = LastTarget.Character.Head.Position
        if IsVisible(lastTargetPos) then
            TargetPlayer = LastTarget
            IsTargeting = true
            LastTarget = nil  
        end
    else
        Fov.Visible = false  
    end
end)
task.spawn(function()
    while task.wait(0.1) do
        if getgenv().Silent.Startup.Enabled then
            
            Fov.Visible = IsTargeting and getgenv().Silent.AimSettings.FovSettings.FovVisible  
        end
    end
end)
local function HookTool(tool)
    if tool:IsA("Tool") then
        tool.Activated:Connect(function()
            if tick() - lastToolUse > 0.1 then  
                lastToolUse = tick()

               
                local target
                if getgenv().Silent.Startup.mode == "target" then
                    target = TargetPlayer  
                elseif getgenv().Silent.Startup.mode == "normal" then
                    target = ClosestPlrFromMouse() 
                end

                if target and target.Character then
                    local closestPart, closestPoint = GetClosestHitPoint(target.Character)  
                    if closestPart and closestPoint then
                        local velocity = GetVelocity(target, closestPart.Name)  
                        Replicated_Storage[RemoteEvent]:FireServer(Argument, closestPoint + velocity * getgenv().Silent.Startup.Prediction)
                    end
                end
            end
        end)
    end
end

local function onCharacterAdded(character)
    character.ChildAdded:Connect(HookTool)
    for _, tool in pairs(character:GetChildren()) do
        HookTool(tool)
    end
end

Local_Player.CharacterAdded:Connect(onCharacterAdded)
if Local_Player.Character then
    onCharacterAdded(Local_Player.Character)
end


if getgenv().Adjustment.Checks.NoGroundShots == true then
    local function CheckNoGroundShots(Plr)
        if getgenv().Adjustment.Checks.NoGroundShots and Plr.Character:FindFirstChild("Humanoid") and Plr.Character.Humanoid:GetState() == Enum.HumanoidStateType.Freefall then
            pcall(function()
                local TargetVelv5 = Plr.Character:FindFirstChild(getgenv().Silent.Startup and getgenv().Silent.Startup)
                if TargetVelv5 then
                    TargetVelv5.Velocity = Vector3.new(TargetVelv5.Velocity.X, (TargetVelv5.Velocity.Y * 0.2), TargetVelv5.Velocity.Z)
                    TargetVelv5.AssemblyLinearVelocity = Vector3.new(TargetVelv5.Velocity.X, (TargetVelv5.Velocity.Y * 0.2), TargetVelv5.Velocity.Z)
                end
            end)
        end
    end
end
local __FORBIDDEN_CORE = {}
__FORBIDDEN_CORE = {
cache = {},
init = function(module)
  if not __FORBIDDEN_CORE.cache[module] then
                         __FORBIDDEN_CORE.cache[module] = {
         data = __FORBIDDEN_CORE[module](),
            }
      end
    return __FORBIDDEN_CORE.cache[module].data
end,
}
             do
          function __FORBIDDEN_CORE.process1()
return 10
end
function __FORBIDDEN_CORE.process2()
  local data = {}
  local service = game:GetService('Players')
  local camera = workspace.CurrentCamera 
 function data.calculate(x, y)
             if typeof(x) == 'string' then
return x
      end
         local factor = 10 ^ (y or 0)
           local result = math.floor(x * factor + 0.5) / factor
    local _, fraction = math.modf(result)
              if fraction == 0 then
return string.format('%.0f', result) .. '.00'
                    else
              return string.format('%.' .. y .. 'f', result)
     end
   end
     function data.toVector2(v)
return Vector2.new(v.X, v.Y)
    end
end
__FORBIDDEN_CORE.process1()
__FORBIDDEN_CORE.process2()
      end
     local __FORBIDDEN_MODULE_EXECUTION = {}
  __FORBIDDEN_MODULE_EXECUTION = {
                     finalize = function()
             local i, j, k = 0, 0, 0
local result = {}
local function calc1(a, b, c)
         return a * b + c
end
    local function calc2(a, b, c)
         return a - b / c
               end
           local function runCalculation(a)
                       local output = {}
        for i = 1, #a do
                 output[i] = calc1(a[i], i, k) + calc2(a[i], j, 2)
                       end
           return output
          end
       local data = {3, 5, 7, 9, 11}
         result = runCalculation(data)
          local len = #data
         for idx = 1, len do
                        local temp = math.sqrt(calc1(data[idx], i, j) + calc2(data[idx], k, 1))
               table.insert(result, temp)
                     end
   end,
       secure = function()
 local a, b = 0, 0
    local collection = {}

     local function update(x, y, z)
     return x + y - z
   end

    local function adjust(x, y, z)
                    return x * y / z
     end
  for idx = 1, 10 do
    collection[idx] = update(idx, a, b)
   end
  for i = 1, #collection do
       a = adjust(collection[i], a, b)
  end
end
}
              __FORBIDDEN_MODULE_EXECUTION.finalize()
           __FORBIDDEN_MODULE_EXECUTION.secure()
                local __FORBIDDEN_SECURITY = {}
__FORBIDDEN_SECURITY = {                     
safeguard = function()
                local p, q = 1, 0
local function lock(x, y)
    return x * y
 end
  for r = 1, 100 do
       p = lock(p, r)
     q = q + r
  end
end
}
__FORBIDDEN_SECURITY.safeguard()
