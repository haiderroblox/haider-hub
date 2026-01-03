-- [[ HAIDER HUB - OFFICIAL PREMIUM VERSION ]] --
-- AUTHENTICATION: 6103031279

local _0xHaidarID = 6103031279 
if game.Players.LocalPlayer.UserId ~= _0xHaidarID then 
    game.Players.LocalPlayer:Kick("Haider Hub: Unauthorized User!") 
    return 
end

local _0x1 = game:GetService("Players").LocalPlayer
local _0x2 = Instance.new("ScreenGui", _0x1:WaitForChild("PlayerGui"))
_0x2.Name = "Haider_Secure_" .. math.random(1000)
_0x2.ResetOnSpawn = false

-- UI BUTTON CONTROL
local _0x3 = Instance.new("TextButton", _0x2)
_0x3.Size = UDim2.new(0, 35, 0, 35)
_0x3.Position = UDim2.new(0, 10, 0.45, 0)
_0x3.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
_0x3.Text = "H"; _0x3.TextColor3 = Color3.new(1, 1, 1)
_0x3.Font = Enum.Font.GothamBold; _0x3.TextSize = 18
Instance.new("UICorner", _0x3).CornerRadius = UDim.new(1, 0)
Instance.new("UIStroke", _0x3).Color = Color3.new(1,1,1)

-- DRAG SYSTEM
local _0xD, _0xI, _0xS, _0xP
_0x3.InputBegan:Connect(function(i) if not _0xD and (i.UserInputType == Enum.UserInputType.MouseButton1 or i.UserInputType == Enum.UserInputType.Touch) then _0xD = true; _0xS = i.Position; _0xP = _0x3.Position i.Changed:Connect(function() if i.UserInputState == Enum.UserInputState.End then _0xD = false end end) end end)
game:GetService("UserInputService").InputChanged:Connect(function(i) if _0xD and (i.UserInputType == Enum.UserInputType.MouseMovement or i.UserInputType == Enum.UserInputType.Touch) then local d = i.Position - _0xS _0x3.Position = UDim2.new(_0xP.X.Scale, _0xP.X.Offset + d.X, _0xP.Y.Scale, _0xP.Y.Offset + d.Y) end end)

-- MAIN INTERFACE
local _0xM = Instance.new("Frame", _0x2)
_0xM.Visible = false; _0xM.Size = UDim2.new(0, 420, 0, 320)
_0xM.Position = UDim2.new(0.5, -210, 0.5, -160)
_0xM.BackgroundColor3 = Color3.fromRGB(10, 10, 10); Instance.new("UICorner", _0xM)

_0x3.MouseButton1Click:Connect(function() _0xM.Visible = not _0xM.Visible end)

-- INTERACTIVE COMPONENTS
local _0xB = Instance.new("TextBox", _0xM)
_0xB.Size = UDim2.new(0, 280, 0, 45); _0xB.Position = UDim2.new(0.05, 0, 0.28, 0)
_0xB.BackgroundColor3 = Color3.fromRGB(30, 30, 30); _0xB.TextColor3 = Color3.new(1, 1, 1)
_0xB.PlaceholderText = "ضع اسم الاعب"; _0xB.Text = ""; Instance.new("UICorner", _0xB)

local _0xG = Instance.new("TextButton", _0xM)
_0xG.Size = UDim2.new(0, 80, 0, 45); _0xG.Position = UDim2.new(0.75, 0, 0.28, 0)
_0xG.Text = "ابحث"; _0xG.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
_0xG.TextColor3 = Color3.new(1, 1, 1); Instance.new("UICorner", _0xG)

-- END OF CORE LOGIC --
