-- Gui to Lua
-- Version: 3.2

-- Instances:

local CoreGuiServices = Instance.new("ScreenGui")
local BG = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Title = Instance.new("TextLabel")
local AimBot = Instance.new("TextButton")
local InfStamina = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local Bar = Instance.new("TextLabel")
local UICorner_3 = Instance.new("UICorner")
local Circle = Instance.new("TextLabel")
local UICorner_4 = Instance.new("UICorner")

--Properties:

CoreGuiServices.Name = "CoreGuiServices"
CoreGuiServices.Parent = game:GetService("CoreGui")
CoreGuiServices.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

BG.Name = "BG"
BG.Parent = CoreGuiServices
BG.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
BG.Position = UDim2.new(0.0127272718, 0, 0.702026188, 0)
BG.Size = UDim2.new(0, 100, 0, 132)
BG.Active = true

UICorner.CornerRadius = UDim.new(0, 28)
UICorner.Parent = BG

Title.Name = "Title"
Title.Parent = BG
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0.180000007, 0, 0.106060609, 0)
Title.Size = UDim2.new(0, 63, 0, 24)
Title.Font = Enum.Font.GothamBlack
Title.Text = "TOYOTA"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 14.000

AimBot.Name = "AimBot"
AimBot.Parent = BG
AimBot.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AimBot.BackgroundTransparency = 1.000
AimBot.BorderColor3 = Color3.fromRGB(27, 42, 53)
AimBot.BorderSizePixel = 0
AimBot.Position = UDim2.new(0.173636377, 0, 0.401560247, 0)
AimBot.Size = UDim2.new(0, 63, 0, 25)
AimBot.ZIndex = 4
AimBot.Font = Enum.Font.SourceSans
AimBot.Text = ""
AimBot.TextColor3 = Color3.fromRGB(0, 0, 0)
AimBot.TextSize = 14.000

InfStamina.Name = "InfStamina"
InfStamina.Parent = BG
InfStamina.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
InfStamina.BackgroundTransparency = 1.000
InfStamina.Position = UDim2.new(0.173030317, 0, 0.691660106, 0)
InfStamina.Size = UDim2.new(0, 65, 0, 23)
InfStamina.Font = Enum.Font.GothamBlack
InfStamina.Text = "INF STAMINA"
InfStamina.TextColor3 = Color3.fromRGB(255, 255, 255)
InfStamina.TextSize = 12.000

UICorner_2.CornerRadius = UDim.new(1, 0)
UICorner_2.Parent = InfStamina

Bar.Name = "Bar"
Bar.Parent = BG
Bar.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
Bar.Position = UDim2.new(0.173636377, 0, 0.405135989, 0)
Bar.Size = UDim2.new(0, 63, 0, 22)
Bar.ZIndex = 2
Bar.Font = Enum.Font.SourceSans
Bar.Text = ""
Bar.TextColor3 = Color3.fromRGB(0, 0, 0)
Bar.TextSize = 14.000

UICorner_3.CornerRadius = UDim.new(1, 0)
UICorner_3.Parent = Bar

Circle.Name = "Circle"
Circle.Parent = Bar
Circle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Circle.Position = UDim2.new(0, 0, -0.13636364, 0)
Circle.Size = UDim2.new(0, 28, 0, 28)
Circle.ZIndex = 2
Circle.Font = Enum.Font.SourceSans
Circle.Text = ""
Circle.TextColor3 = Color3.fromRGB(0, 0, 0)
Circle.TextSize = 14.000

UICorner_4.CornerRadius = UDim.new(1, 0)
UICorner_4.Parent = Circle

-- Scripts:

local function LOCKY_fake_script() -- BG.Dragify 
	local script = Instance.new('LocalScript', BG)

	local UIS = game:GetService("UserInputService")
	function dragify(Frame)
		dragToggle = nil
		dragSpeed = 0.15
		dragInput = nil
		dragStart = nil
		dragPos = nil
		function updateInput(input)
			Delta = input.Position - dragStart
			Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
			game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.15), {Position = Position}):Play()
		end
		Frame.InputBegan:Connect(function(input)
			if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
				dragToggle = true
				dragStart = input.Position
				startPos = Frame.Position
				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragToggle = false
					end
				end)
			end
		end)
		Frame.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				dragInput = input
			end
		end)
		game:GetService("UserInputService").InputChanged:Connect(function(input)
			if input == dragInput and dragToggle then
				updateInput(input)
			end
		end)
	end
	dragify(script.Parent)
	
end
coroutine.wrap(LOCKY_fake_script)()
local function GNYGT_fake_script() -- AimBot.LocalScript 
	local script = Instance.new('LocalScript', AimBot)

	local button = script.Parent
	local bar = button.Parent.Bar
	local circle = bar.Circle
	local toggle = false
	_G.key = Enum.KeyCode.Break
	
	button.MouseButton1Click:Connect(function(plr)
		if toggle == false then
			toggle = true
			_G.key = Enum.KeyCode.R
			game:GetService("TweenService"):Create(circle, TweenInfo.new(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut), {Position = UDim2.new(0.556, 0,-0.136, 0)}):Play()
			game:GetService("TweenService"):Create(bar, TweenInfo.new(0.35, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut), {BackgroundColor3 = Color3.fromRGB(106, 226, 104)}):Play()
		else
			toggle = false
			_G.key = Enum.KeyCode.Break
			game:GetService("TweenService"):Create(circle, TweenInfo.new(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut), {Position = UDim2.new(0, 0,-0.136, 0)}):Play()
			game:GetService("TweenService"):Create(bar, TweenInfo.new(0.35, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut), {BackgroundColor3 = Color3.fromRGB(53, 53, 53)}):Play()
		end
	end)
	
	function onKeyPress(inputObject, gameProcessedEvent)
		if inputObject.KeyCode == _G.key then
			game.ReplicatedStorage.Ball.StartShooting:FireServer()
			wait(0.5)
			game.ReplicatedStorage.Ball.EndShooting:InvokeServer(true,"Perfect")
		end
	end
	
	game:GetService("UserInputService").InputBegan:connect(onKeyPress)
	
	game:GetService("UserInputService").TextBoxFocused:Connect(function(TextBox)
		if TextBox.Name == "ChatBar" then
			_G.key = Enum.KeyCode.Break
		end 
	end)
	
	game:GetService("UserInputService").TextBoxFocusReleased:Connect(function(TextBox)
		if TextBox.Name == "ChatBar" then
			if toggle == true then
				_G.key = Enum.KeyCode.R
			end
		end 
	end)
end
coroutine.wrap(GNYGT_fake_script)()
local function MIMKJ_fake_script() -- InfStamina.LocalScript 
	local script = Instance.new('LocalScript', InfStamina)

	script.Parent.MouseButton1Click:Connect(function()
		while wait() do
			game.Players.LocalPlayer.PlayerScripts.Events.Player.Stamina.Stamina.Value = 999999999999999
		end
	end)
end
coroutine.wrap(MIMKJ_fake_script)()
local function ITMLHFN_fake_script() -- CoreGuiServices.LocalScript 
	local script = Instance.new('LocalScript', CoreGuiServices)

	local Toggle2 = false
	
	local UIS = game:GetService("UserInputService")
	
	UIS.InputBegan:Connect(function(input)
		if input.KeyCode == Enum.KeyCode.RightAlt then
			if Toggle2 == false then
				Toggle2 = true
				script.Parent.Enabled = false
			else
				script.Parent.Enabled = true
				Toggle2 = false
			end
		end
	end)
end
coroutine.wrap(ITMLHFN_fake_script)()
