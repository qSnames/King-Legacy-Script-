local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Autofarm KingLegacy ", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
local Tab = Window:MakeTab({
    Name = "Scripts",
    Icon = "rbxassetid://4483345998",
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
                game:GetService("Workspace").Camera.CFrame = CFrame.new(-1185.89905, 11.1568031, 2142.18872, 0.344180286, 0.924639881, 0.163037166, 0, 0.173646346, -0.984808087, -0.93890363, 0.338951528, 0.0597656444)
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
local Tab = Window:MakeTab({
    Name = "Misc",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

OrionLib:Init()

Tab:AddButton({
    Name = "Walkspeed",
    Callback = function()
            
                local TargetWalkspeed
CharTab:AddSlider({
	Name = "Speed",
	Min = 0,
	Max = 50,
	Default = 5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	Callback = function(Value)
		TargetWalkspeed = Value
	end    
})
 
local pcl = Instance.new("SpotLight")
pcl.Brightness = 1
pcl.Face = Enum.NormalId.Front
pcl.Range = 90
pcl.Parent = game.Players.LocalPlayer.Character.Head
pcl.Enabled = false 

      end
})
OrionLib:Init()

        
