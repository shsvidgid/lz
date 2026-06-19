if getgenv().SpyLoaded then if game.CoreGui:FindFirstChild("RemoteSpy") then game.CoreGui.RemoteSpy:Destroy() end end
getgenv().SpyLoaded=true
local C=game:GetService("CoreGui")
local U=game:GetService("UserInputService")
_G.Raw=""
local Q={}
local Slow=false

local G=Instance.new("ScreenGui")
G.Name="RemoteSpy"
G.Parent=C
G.ResetOnSpawn=false

local M=Instance.new("Frame")
M.Parent=G
M.BackgroundColor3=Color3.fromRGB(35,37,43)
M.BorderSizePixel=0
M.Position=UDim2.new(0.5,-250,0.5,-175)
M.Size=UDim2.new(0,550,0,350)
M.Active=true
Instance.new("UICorner",M).CornerRadius=UDim.new(0,8)

local T=Instance.new("Frame",M)
T.BackgroundColor3=Color3.fromRGB(25,27,33)
T.BorderSizePixel=0
T.Size=UDim2.new(1,0,0,30)
Instance.new("UICorner",T).CornerRadius=UDim.new(0,8)

local L=Instance.new("TextLabel",T)
L.BackgroundTransparency=1
L.Position=UDim2.new(0,15,0,0)
L.Size=UDim2.new(0.5,0,1,0)
L.Font=Enum.Font.GothamBold
L.Text="🕵️ 远程监听 V1.7"
L.TextColor3=Color3.fromRGB(255,255,255)
L.TextSize=14
L.TextXAlignment=Enum.TextXAlignment.Left

local X=Instance.new("TextButton",T)
X.BackgroundTransparency=1
X.Position=UDim2.new(1,-30,0,0)
X.Size=UDim2.new(0,30,1,0)
X.Font=Enum.Font.GothamBold
X.Text="✕"
X.TextColor3=Color3.fromRGB(200,200,200)
X.TextSize=14

local R=Instance.new("ScrollingFrame",M)
R.Active=true
R.BackgroundColor3=Color3.fromRGB(28,30,36)
R.BorderSizePixel=0
R.Position=UDim2.new(0,10,0,40)
R.Size=UDim2.new(0,180,1,-50)
R.CanvasSize=UDim2.new(0,0,0,0)
R.ScrollBarThickness=4
R.ScrollBarImageColor3=Color3.fromRGB(80,80,80)
Instance.new("UICorner",R).CornerRadius=UDim.new(0,6)

local UIL=Instance.new("UIListLayout",R)
UIL.SortOrder=Enum.SortOrder.LayoutOrder
UIL.Padding=UDim.new(0,5)

local D=Instance.new("TextLabel",M)
D.BackgroundColor3=Color3.fromRGB(40,42,54)
D.BorderSizePixel=0
D.Position=UDim2.new(0,200,0,40)
D.Size=UDim2.new(1,-210,1,-90)
D.Font=Enum.Font.Code
D.Text="<font color=\"#7A828B\">-- 等待事件...</font>"
D.TextColor3=Color3.fromRGB(248,248,242)
D.TextSize=14
D.TextXAlignment=Enum.TextXAlignment.Left
D.TextYAlignment=Enum.TextYAlignment.Top
D.RichText=true
D.TextWrapped=true
Instance.new("UICorner",D).CornerRadius=UDim.new(0,6)
local P=Instance.new("UIPadding",D)
P.PaddingTop=UDim.new(0,10)
P.PaddingLeft=UDim.new(0,10)

local B1=Instance.new("TextButton",M)
B1.BackgroundColor3=Color3.fromRGB(45,100,200)
B1.Position=UDim2.new(0,200,1,-40)
B1.Size=UDim2.new(0,110,0,30)
B1.Font=Enum.Font.GothamBold
B1.Text="📋 复制"
B1.TextColor3=Color3.fromRGB(255,255,255)
B1.TextSize=13
Instance.new("UICorner",B1).CornerRadius=UDim.new(0,6)

local B2=Instance.new("TextButton",M)
B2.BackgroundColor3=Color3.fromRGB(120,120,120)
B2.Position=UDim2.new(0,315,1,-40)
B2.Size=UDim2.new(0,110,0,30)
B2.Font=Enum.Font.GothamBold
B2.Text="🐢 慢速:关"
B2.TextColor3=Color3.fromRGB(255,255,255)
B2.TextSize=13
Instance.new("UICorner",B2).CornerRadius=UDim.new(0,6)

local B3=Instance.new("TextButton",M)
B3.BackgroundColor3=Color3.fromRGB(200,60,60)
B3.Position=UDim2.new(0,430,1,-40)
B3.Size=UDim2.new(0,110,0,30)
B3.Font=Enum.Font.GothamBold
B3.Text="🗑️ 清空"
B3.TextColor
