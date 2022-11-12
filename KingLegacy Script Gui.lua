local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Autofarm KingLegacy ", HidePremium = false, SaveConfig = true, ConfigFolder = "KcynkaPirates", IntroText = "WelcomeKcynka", IntroIcon = "rbxassetid://10804127546", Icon = "rbxassetid://10804127546" })
local Tab = Window:MakeTab({
    Name = "Scripts",
    Icon = "rbxassetid://10804127546",
    PremiumOnly = false
})
Tab:AddButton({
    Name = "Hyper",
    Callback = function()
            
pcall(function()
    repeat wait() until game:IsLoaded()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/DookDekDEE/Hyper/main/script.lua"))()
end)

      end
})
OrionLib:Init()

Tab:AddButton({
    Name = "Mukuro",
    Callback = function()
            
                 loadstring(game:HttpGet"https://raw.githubusercontent.com/xQuartyx/DonateMe/main/ScriptLoader")()

      end
})
OrionLib:Init()

Tab:AddButton({
    Name = "Cframe Hub",
    Callback = function()
            
                 loadstring(game:HttpGet("https://raw.githubusercontent.com/CFrame3310/CFrameHub/main/KingLegacy.lua"))()

      end
})
OrionLib:Init()


local Tab = Window:MakeTab({
    Name = "Camera",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name = "Key: L Camera:By Miloszurek",
    Callback = function()
              local Mouse = game:GetService("Players").LocalPlayer:GetMouse()
local pro = false
local witekmadowna = "l"

Mouse.KeyDown:Connect(function(Key)
    if Key == witekmadowna then
        if pro then
            pro = false
        else
            pro = true
            while pro and wait() do
                game:GetService("Workspace").Camera.CFrame = CFrame.new(-778.791687, 51.0170288, -1556.51135, 0.558143377, 0.817138314, -0.144086659, 0, 0.173651844, 0.984807074, 0.829744577, -0.549663544, 0.0969226286)
            end
        end
    end
end)
      end
})
OrionLib:Init()

Tab:AddButton({
    Name = "Key: K CameraPanty:By Miloszurek/qSname",
    Callback = function()
              local Mouse = game:GetService("Players").LocalPlayer:GetMouse()
local kol = false
local witekmadowna = "k"

Mouse.KeyDown:Connect(function(Key)
    if Key == witekmadowna then
        if kol then
            kol = false
        else
            kol = true
            while kol and wait() do
                game:GetService("Workspace").Camera.CFrame = CFrame.new(5397.24316, 34.2004318, -6460.03271, -0.962406754, -0.267484456, -0.0471745357, 0, 0.173683211, -0.984801531, 0.271612555, -0.947779655, -0.167153865)
            end
        end
    end
end)
      end
})
OrionLib:Init()

local Tab = Window:MakeTab({
    Name = "Lock",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
       
})
Tab:AddButton({
    Name = "Mouse/U Cant To Off THisd when u click this u must after rejoin",
    Callback = function()
            
                 local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
RunService.RenderStepped:Connect(function()
    UserInputService.MouseBehavior = Enum.MouseBehavior.LockCenter
end)

      end
})
local CharTab = Window:MakeTab({
	Name = "Character",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
 
local TargetWalkspeed
CharTab:AddSlider({
	Name = "Speed",
	Min = 16,
	Max = 250,
	Default = 5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	Callback = function(sigma)
        while wait() do
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = sigma
        end
    end
  
	 
})
 

local CharTab = Window:MakeTab({
	Name = "Clicker",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
 Tab:AddButton({
    Name = "Clicker",
    Callback = function()
            
--// Services \\--
local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local VirtualInputManager = game:GetService("VirtualInputManager")

--// Variables \\--
local Player = Players.LocalPlayer
local Enabled = false
local Mouse = Player:GetMouse()
local X, Y = 0, 0
local LastC = Color3.new(1, 0, 0)
local LastU = tick()

--// Exploit Fix \\--
if not pcall(function() return syn.protect_gui end) then
    syn = {}
    syn.protect_gui = function(A_1)
        A_1.Parent = CoreGui
    end
end

--// UI Library \\--
local Library = loadstring(game:HttpGetAsync('https://pastebin.com/raw/edJT9EGX'))()
local Window = Library:CreateWindow("AutoClicker by Ezpi")
Enabled_1 = Window:AddColor({
    text = 'Status:',
    flag = "Ezpi_1",
    color = Color3.new(1, 0, 0),
    callback = function(A_1)
        -- "Enabled" Color
        local NewColor = Color3.new(0, 1, 0)
        if Enabled == false then
            NewColor = Color3.new(1, 0, 0)
        end
        if NewColor ~= Last or A_1 ~= NewColor then
            Last = NewColor
            Enabled_1:SetColor(NewColor)
        end
    end
})
Window:AddBind({
    text = 'Toggle',
    callback = function()
        -- Toggle
        Enabled = not Enabled
        -- "Enabled" Color
        local NewColor = Color3.new(0, 1, 0)
        if Enabled == false then
            NewColor = Color3.new(1, 0, 0)
        end
        if NewColor ~= Last then
            Last = NewColor
            Enabled_1:SetColor(NewColor)
        end
        -- Click Position
        if Enabled then
            -- Update Mouse Pos
            X, Y = Mouse.X, Mouse.Y + 10
            -- Update Box
            Box_1:SetValue()
        else
            X, Y = 0, 0
            Box_1:SetValue()
        end
        -- AutoClick
        while Enabled do
            VirtualInputManager:SendMouseButtonEvent(X, Y, 0, true, game, 1)
            VirtualInputManager:SendMouseButtonEvent(X, Y, 0, false, game, 1)
            wait(Library.flags.Interval)
        end
    end
})
Window:AddSlider({
    text = 'Interval',
    min = 0.01,
    max = 2,
    value = 1,
    float = 0.01
})
Box_1 = Window:AddBox({
    text = "AutoClick Position:",
    value = "X: " .. X .. ", Y: " .. Y,
    callback = function()
        if tick()-LastU > 0.1 then
            LastU = tick()
            Box_1:SetValue("X: " .. X .. ", Y: " .. Y)
        end
    end
})
Library:Init()

      end
})

 
        
