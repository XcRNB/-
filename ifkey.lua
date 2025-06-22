local key = ""
local isExistance = false
local Notifyt = Instance.new("ScreenGui")
local NotificationParent = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local UIPadding = Instance.new("UIPadding")
local Notification = Instance.new("Frame")
local Container = Instance.new("ImageButton")
local Top = Instance.new("ImageLabel")
local Exit = Instance.new("Frame")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
local Icon = Instance.new("ImageLabel")
local Button = Instance.new("TextButton")
local Title = Instance.new("TextLabel")
local Accent = Instance.new("Frame")
local Body = Instance.new("Frame")
local Content = Instance.new("TextLabel")
local UIPadding_2 = Instance.new("UIPadding")
local UISizeConstraint = Instance.new("UISizeConstraint")

if game.CoreGui:FindFirstChild("Notifyt") then
	isExistance = true
	Notifyt = game.CoreGui.Notifyt
	NotificationParent = Notifyt.NotificationParent
	Notification = Notifyt.Notification
end

Notifyt.Name = "Notifyt"
Notifyt.Parent = game.CoreGui
Notifyt.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Notifyt.ResetOnSpawn = false

NotificationParent.Name = "NotificationParent"
NotificationParent.Parent = Notifyt
NotificationParent.AnchorPoint = Vector2.new(1, 0)
NotificationParent.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NotificationParent.BackgroundTransparency = 1.000
NotificationParent.BorderSizePixel = 0
NotificationParent.ClipsDescendants = false
NotificationParent.Position = UDim2.new(1, 0, 0, -25)
NotificationParent.Selectable = false
NotificationParent.Size = UDim2.new(0, 275, 1, 0)
NotificationParent.CanvasSize = UDim2.new(0, 0, 0, 0)
NotificationParent.ScrollBarThickness = 0
NotificationParent.ScrollingEnabled = false

UIListLayout.Parent = NotificationParent
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
UIListLayout.Padding = UDim.new(0, 5)

UIPadding.Parent = NotificationParent
UIPadding.PaddingRight = UDim.new(0, 25)

Notification.Name = "Notification"
Notification.Parent = Notifyt
Notification.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Notification.BackgroundTransparency = 1.000
Notification.BorderSizePixel = 0
Notification.Position = UDim2.new(1, 0, 0, 0)
Notification.Size = UDim2.new(0, 250, 0, 0)
Notification.Visible = false

Container.Name = "Container"
Container.Parent = Notification
Container.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Container.BackgroundTransparency = 1.000
Container.BorderSizePixel = 0
Container.Position = UDim2.new(1.14999998, 0, 0, 0)
Container.Size = UDim2.new(1, 0, 0, 0)
Container.Image = "rbxassetid://6296184185"
Container.ImageColor3 = Color3.fromRGB(0, 0, 0)
Container.ImageTransparency = 0.500
Container.ScaleType = Enum.ScaleType.Slice
Container.SliceCenter = Rect.new(512, 512, 512, 512)
Container.SliceScale = 0.012

Top.Name = "Top"
Top.Parent = Container
Top.BackgroundColor3 = Color3.fromRGB(248, 248, 248)
Top.BackgroundTransparency = 1.000
Top.BorderSizePixel = 0
Top.Size = UDim2.new(1, 0, 0, 32)
Top.ZIndex = 3
Top.Image = "rbxassetid://6276641225"
Top.ImageColor3 = Color3.fromRGB(0, 0, 0)
Top.ImageTransparency = 0.600
Top.ScaleType = Enum.ScaleType.Slice
Top.SliceCenter = Rect.new(256, 256, 256, 256)
Top.SliceScale = 0.022

Exit.Name = "Exit"
Exit.Parent = Top
Exit.AnchorPoint = Vector2.new(1, 0)
Exit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Exit.BackgroundTransparency = 1.000
Exit.BorderColor3 = Color3.fromRGB(27, 42, 53)
Exit.BorderSizePixel = 0
Exit.ClipsDescendants = true
Exit.LayoutOrder = 3
Exit.Position = UDim2.new(1, 0, 0, 0)
Exit.Size = UDim2.new(1, 0, 1, 0)

UIAspectRatioConstraint.Parent = Exit

Icon.Name = "Icon"
Icon.Parent = Exit
Icon.AnchorPoint = Vector2.new(0.5, 0.5)
Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Icon.BackgroundTransparency = 1.000
Icon.BorderSizePixel = 0
Icon.Position = UDim2.new(0.5, 0, 0.5, 0)
Icon.Size = UDim2.new(0.5, 0, 0.5, 0)
Icon.Image = "http://www.roblox.com/asset/?id=6415685859"
Icon.ScaleType = Enum.ScaleType.Fit

Button.Name = "Button"
Button.Parent = Exit
Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Button.BackgroundTransparency = 1.000
Button.BorderSizePixel = 0
Button.Size = UDim2.new(1, 0, 1, 0)
Button.ZIndex = 2
Button.Font = Enum.Font.SourceSans
Button.Text = ""
Button.TextColor3 = Color3.fromRGB(0, 0, 0)
Button.TextSize = 14.000

Title.Name = "Title"
Title.Parent = Top
Title.AnchorPoint = Vector2.new(1, 0)
Title.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
Title.BackgroundTransparency = 1.000
Title.BorderSizePixel = 0
Title.Position = UDim2.new(1, 0, 0, 0)
Title.Size = UDim2.new(1, -12, 1, 0)
Title.Font = Enum.Font.GothamSemibold
Title.Text = "Notification"
coroutine.wrap(function()
    local hue = 0
    while true do
         Title.TextColor3 = Color3.fromHSV(hue, 1, 1)
        hue = (hue + 0.015) % 1  
        task.wait(0.03)  
    end
end)()
Title.TextSize = 0
Title.TextWrapped = true
Title.TextXAlignment = Enum.TextXAlignment.Left

Accent.Name = "Accent"
Accent.Parent = Top
Accent.AnchorPoint = Vector2.new(0, 1)
Accent.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
Accent.BackgroundTransparency = 0.700
Accent.BorderSizePixel = 0
Accent.Position = UDim2.new(0, 0, 1, 0)
Accent.Size = UDim2.new(1, 0, 0, 1)

Body.Name = "Body"
Body.Parent = Container
Body.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Body.BackgroundTransparency = 1.000
Body.BorderSizePixel = 1
Body.ClipsDescendants = false
Body.Position = UDim2.new(0, 0, 0, 32)
Body.Size = UDim2.new(1, 0, 0, 0)

Content.Name = "Content"
Content.Parent = Body
Content.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Content.BackgroundTransparency = 1.000
Content.BorderSizePixel = 0
Content.Size = UDim2.new(1, 0, 1, 0)
Content.Font = Enum.Font.Gotham
Content.Text = "Message Here. This is an example message prompt."
Content.TextColor3 = Color3.fromRGB(255, 230, 230)
Content.TextSize = 14.000
Content.RichText = true
Content.TextWrapped = true
Content.TextXAlignment = Enum.TextXAlignment.Left
Content.TextYAlignment = Enum.TextYAlignment.Top

UIPadding_2.Parent = Body
UIPadding_2.PaddingBottom = UDim.new(0, 12)
UIPadding_2.PaddingLeft = UDim.new(0, 12)
UIPadding_2.PaddingRight = UDim.new(0, 12)
UIPadding_2.PaddingTop = UDim.new(0, 12)

UISizeConstraint.Parent = Container
UISizeConstraint.MaxSize = Vector2.new(math.huge, 1200)

Notification.AutomaticSize = Enum.AutomaticSize.Y
Container.AutomaticSize = Enum.AutomaticSize.Y
Body.AutomaticSize = Enum.AutomaticSize.Y

if isExistance then
	UIListLayout:Destroy()
	UIPadding:Destroy()
	Container:Destroy()
end

local T = game:GetService('TweenService')
local t = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
local tp = NotificationParent

function prompt(title, text, closeTime, close)
	local Prompt = Notification:Clone()
	local Sound = Instance.new('Sound', Notification)

	Prompt.Visible = true
	Prompt.Container.Top.Title.Text = title
	Prompt.Container.Body.Content.Text = text

	Prompt.Parent = NotificationParent
	Sound.SoundId = "rbxassetid://6518811702"
	Sound:Play()

    Prompt.Parent = NotificationParent
	Sound.SoundId = "rbxassetid://6518811702"
	Sound:Play()

    Prompt.Parent = NotificationParent
	Sound.SoundId = "rbxassetid://6518811702"
	Sound:Play()

    Prompt.Parent = NotificationParent
	Sound.SoundId = "rbxassetid://6518811702"
	Sound:Play()

    Prompt.Parent = NotificationParent
	Sound.SoundId = "rbxassetid://6518811702"
	Sound:Play()
	
	Prompt.Parent = NotificationParent
	Sound.SoundId = "rbxassetid://6518811702"
	Sound:Play()

    Prompt.Parent = NotificationParent
	Sound.SoundId = "rbxassetid://6518811702"
	Sound:Play()

    Prompt.Parent = NotificationParent
	Sound.SoundId = "rbxassetid://6518811702"
	Sound:Play()

    Prompt.Parent = NotificationParent
	Sound.SoundId = "rbxassetid://6518811702"
	Sound:Play()

    Prompt.Parent = NotificationParent
	Sound.SoundId = "rbxassetid://6518811702"
	Sound:Play()
	
	Prompt.Parent = NotificationParent
	Sound.SoundId = "rbxassetid://6518811702"
	Sound:Play()
	
	Prompt.Parent = NotificationParent
	Sound.SoundId = "rbxassetid://6518811702"
	Sound:Play()

    Prompt.Parent = NotificationParent
	Sound.SoundId = "rbxassetid://6518811702"
	Sound:Play()

    Prompt.Parent = NotificationParent
	Sound.SoundId = "rbxassetid://6518811702"
	Sound:Play()

    Prompt.Parent = NotificationParent
	Sound.SoundId = "rbxassetid://6518811702"
	Sound:Play()

    Prompt.Parent = NotificationParent
	Sound.SoundId = "rbxassetid://6518811702"
	Sound:Play()
	
	Prompt.Parent = NotificationParent
	Sound.SoundId = "rbxassetid://6518811702"
	Sound:Play()
	
	Prompt.Parent = NotificationParent
	Sound.SoundId = "rbxassetid://6518811702"
	Sound:Play()

    Prompt.Parent = NotificationParent
	Sound.SoundId = "rbxassetid://6518811702"
	Sound:Play()

    Prompt.Parent = NotificationParent
	Sound.SoundId = "rbxassetid://6518811702"
	Sound:Play()

    Prompt.Parent = NotificationParent
	Sound.SoundId = "rbxassetid://6518811702"
	Sound:Play()

    Prompt.Parent = NotificationParent
	Sound.SoundId = "rbxassetid://6518811702"
	Sound:Play()
	
	Prompt.Parent = NotificationParent
	Sound.SoundId = "rbxassetid://6518811702"
	Sound:Play()
	
	Prompt.Parent = NotificationParent
	Sound.SoundId = "rbxassetid://6518811702"
	Sound:Play()

    Prompt.Parent = NotificationParent
	Sound.SoundId = "rbxassetid://6518811702"
	Sound:Play()

    Prompt.Parent = NotificationParent
	Sound.SoundId = "rbxassetid://6518811702"
	Sound:Play()

    Prompt.Parent = NotificationParent
	Sound.SoundId = "rbxassetid://6518811702"
	Sound:Play()

    Prompt.Parent = NotificationParent
	Sound.SoundId = "rbxassetid://6518811702"
	Sound:Play()

    Prompt.Parent = NotificationParent
	Sound.SoundId = "rbxassetid://6518811702"
	Sound:Play()

	T:Create(Prompt.Container, t, {Position = UDim2.new(0, 0, 0, 0)}):Play()

	Prompt.AutomaticSize = Enum.AutomaticSize.Y
	Prompt.Container.AutomaticSize = Enum.AutomaticSize.Y
	Prompt.Container.Body.AutomaticSize = Enum.AutomaticSize.Y
	Prompt.Container.Body.Content.AutomaticSize = Enum.AutomaticSize.Y

	Prompt.Container.Top.Exit.Button.MouseButton1Click:Connect(function()
		T:Create(Prompt.Container, t, {Position = UDim2.new(1.15, 0, 0, 0)}):Play()
		wait(0.48)
		Prompt:Destroy()
	end)
	
	Prompt.Container.Top.Exit.Visible = close

	wait(1)

	Sound:Destroy()
	
	spawn(function()
		if typeof(closeTime) == "number" then
			task.wait(closeTime)
			local s = pcall(function()
				T:Create(Prompt.Container, t, {Position = UDim2.new(1.15, 0, 0, 0)}):Play()
				wait(0.48)
				Prompt:Destroy()
			end)
			if not s then
				print('Already closed.')
			end
		end
	end)
end

local lib = {}

function lib.prompt(title, description, closeTime)
    prompt(title, description, closeTime, true)
end

function errorkey()
lib.prompt('提示', '卡密错误', 5)
end
function nilkey()
lib.prompt('提示', '未填写卡密', 2)
end
local TW = game:GetService('TweenService')
local Players = game:GetService('Players')
local TweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)

local background = Instance.new("ScreenGui")
background.Name = "XCXKeySystem"
background.Parent = Players.LocalPlayer:WaitForChild("PlayerGui")
background.ResetOnSpawn = false

local Frame = Instance.new("Frame")
Frame.Parent = background
Frame.Active = true
Frame.Draggable = true
Frame.Position = UDim2.new(0, 220, 0, 50)
Frame.Size = UDim2.new(0, 300, 0, 200)
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 40)

local UICorner = Instance.new("UICorner")
UICorner.Parent = Frame
UICorner.CornerRadius = UDim.new(0, 8)

local title = Instance.new("TextLabel")
title.Parent = Frame
title.Text = "XCX卡密系统"
title.Position = UDim2.new(0.5, 0, 0, 12)
title.AnchorPoint = Vector2.new(0.5, 0)
title.TextSize = 16
title.BackgroundTransparency = 1
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.Font = Enum.Font.GothamSemibold

local TextBox = Instance.new("TextBox")
TextBox.Parent = Frame
TextBox.PlaceholderText = "输入密钥"
TextBox.Text = ""
TextBox.Position = UDim2.new(0.5, 0, 0.3, 0)
TextBox.AnchorPoint = Vector2.new(0.5, 0)
TextBox.Size = UDim2.new(0, 200, 0, 45)
TextBox.BackgroundColor3 = Color3.fromRGB(50, 50, 60)
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.Font = Enum.Font.Gotham
TextBox.ClearTextOnFocus = false

local textBoxCorner = Instance.new("UICorner")
textBoxCorner.Parent = TextBox
textBoxCorner.CornerRadius = UDim.new(0, 6)

local Button = Instance.new("TextButton")
Button.Parent = Frame
Button.Text = "验证密钥"
Button.Position = UDim2.new(0.5, 0, 0.75, 0)
Button.AnchorPoint = Vector2.new(0.5, 0)
Button.Size = UDim2.new(0, 120, 0, 35)
Button.BackgroundColor3 = Color3.fromRGB(70, 120, 200)
Button.TextColor3 = Color3.fromRGB(255, 255, 255)
Button.Font = Enum.Font.GothamSemibold

local buttonCorner = Instance.new("UICorner")
buttonCorner.Parent = Button
buttonCorner.CornerRadius = UDim.new(0, 6)

local closeBtn = Instance.new("TextButton")
closeBtn.Parent = Frame
closeBtn.Position = UDim2.new(1, -22, 0, 2)
closeBtn.Size = UDim2.new(0, 20, 0, 20)
closeBtn.BackgroundTransparency = 1
closeBtn.Text = "×"
closeBtn.TextSize = 18
closeBtn.TextColor3 = Color3.fromRGB(200, 200, 200)
closeBtn.Font = Enum.Font.GothamBold

local minimizeBtn = Instance.new("TextButton")
minimizeBtn.Parent = Frame
minimizeBtn.Position = UDim2.new(0, 2, 0, 2)
minimizeBtn.Size = UDim2.new(0, 20, 0, 20)
minimizeBtn.BackgroundTransparency = 1
minimizeBtn.Text = "-"
minimizeBtn.TextSize = 18
minimizeBtn.TextColor3 = Color3.fromRGB(200, 200, 200)
minimizeBtn.Font = Enum.Font.GothamBold

local maximizeBtn = Instance.new("TextButton")
maximizeBtn.Parent = Frame
maximizeBtn.Position = UDim2.new(0, 2, 0, 2)
maximizeBtn.Size = UDim2.new(0, 20, 0, 20)
maximizeBtn.BackgroundTransparency = 1
maximizeBtn.Text = "+"
maximizeBtn.TextSize = 16
maximizeBtn.TextColor3 = Color3.fromRGB(200, 200, 200)
maximizeBtn.Font = Enum.Font.GothamBold
maximizeBtn.Visible = false

local function animateButton(button)
    local originalSize = button.Size
    local originalColor = button.BackgroundColor3
    
    button.MouseEnter:Connect(function()
        TW:Create(button, TweenInfo, {Size = originalSize + UDim2.new(0, 5, 0, 5)}):Play()
    end)
    
    button.MouseLeave:Connect(function()
        TW:Create(button, TweenInfo, {Size = originalSize}):Play()
    end)
    
    button.MouseButton1Down:Connect(function()
        TW:Create(button, TweenInfo.new(0.1), {BackgroundColor3 = Color3.fromRGB(
            originalColor.R * 255 * 0.8,
            originalColor.G * 255 * 0.8,
            originalColor.B * 255 * 0.8
        )}):Play()
    end)
    
    button.MouseButton1Up:Connect(function()
        TW:Create(button, TweenInfo.new(0.1), {BackgroundColor3 = originalColor}):Play()
    end)
end

animateButton(Button)

Button.MouseButton1Click:Connect(function()
    if TextBox.Text == key then
        background:Destroy()
        --you script
        print("验证成功加载主脚本...")
    else
    if TextBox.Text == "" then
    nilkey()
    else
        errorkey()
        end
    end
end)

closeBtn.MouseButton1Click:Connect(function()
    TW:Create(Frame, TweenInfo, {
        Size = UDim2.new(0, 0, 0, 0),
        Position = UDim2.new(0, Frame.AbsolutePosition.X + Frame.AbsoluteSize.X/2, 0, Frame.AbsolutePosition.Y + Frame.AbsoluteSize.Y/2)
    }):Play()
    task.delay(0.5, function()
        background:Destroy()
    end)
end)

minimizeBtn.MouseButton1Click:Connect(function()
    TW:Create(Frame, TweenInfo, {
        Size = UDim2.new(0, 300, 0, 30)
    }):Play()
    
    TW:Create(Button, TweenInfo, {
        Size = UDim2.new(0, 0, 0, 0),
        TextTransparency = 1,
        BackgroundTransparency = 1
    }):Play()
    
    TW:Create(TextBox, TweenInfo, {
        Size = UDim2.new(0, 0, 0, 0),
        TextTransparency = 1,
        BackgroundTransparency = 1
    }):Play()
    
    minimizeBtn.Visible = false
    maximizeBtn.Visible = true
end)

maximizeBtn.MouseButton1Click:Connect(function()
    TW:Create(Frame, TweenInfo, {
        Size = UDim2.new(0, 300, 0, 200)
    }):Play()
    
    TW:Create(Button, TweenInfo, {
        Size = UDim2.new(0, 120, 0, 35),
        TextTransparency = 0,
        BackgroundTransparency = 0
    }):Play()
    
    TW:Create(TextBox, TweenInfo, {
        Size = UDim2.new(0, 200, 0, 45),
        TextTransparency = 0,
        BackgroundTransparency = 0
    }):Play()
    
    minimizeBtn.Visible = true
    maximizeBtn.Visible = false
end)

task.spawn(function()
    local hue = 0
    while true do
        hue = (hue + 0.005) % 1
        local color = Color3.fromHSV(hue, 0.7, 1)
        TW:Create(Frame, TweenInfo, {BackgroundColor3 = color}):Play()
        task.wait(0.1)
    end
end)