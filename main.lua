--==================================================
-- SoftwareShopz Script (leaked version - better)
--==================================================
--==================================================
-- Feel free to paste
--==================================================

--anti cheat megbaszó

local LoaderFinished = Instance.new("BindableEvent")


task.spawn(function()
	local TweenService = game:GetService("TweenService")

	local loadTime = math.random(10, 15)

	-- GUI
	local gui = Instance.new("ScreenGui", game.CoreGui)
	gui.Name = "LoadingMessage"
	gui.ResetOnSpawn = false

	local frame = Instance.new("Frame", gui)
	frame.Size = UDim2.new(0, 420, 0, 80)
	frame.Position = UDim2.new(0.5, -210, 0.15, 0)
	frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	frame.BackgroundTransparency = 1
	Instance.new("UICorner", frame).CornerRadius = UDim.new(0, 12)

	local stroke = Instance.new("UIStroke", frame)
	stroke.Color = Color3.fromRGB(255, 90, 90)
	stroke.Thickness = 2
	stroke.Transparency = 1

	local text = Instance.new("TextLabel", frame)
	text.Size = UDim2.new(1, -20, 0, 40)
	text.Position = UDim2.new(0, 10, 0, 5)
	text.BackgroundTransparency = 1
	text.Text = "ˇ Anti-Cheat Bypassed & Bypasser by Grandma ˇ"
	text.Font = Enum.Font.GothamBold
	text.TextSize = 16
	text.TextColor3 = Color3.fromRGB(255, 120, 120)
	text.TextTransparency = 1

	local barBack = Instance.new("Frame", frame)
	barBack.Size = UDim2.new(1, -40, 0, 10)
	barBack.Position = UDim2.new(0, 20, 0, 55)
	barBack.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	barBack.BackgroundTransparency = 1
	Instance.new("UICorner", barBack)

	local barFill = Instance.new("Frame", barBack)
	barFill.Size = UDim2.new(0, 0, 1, 0)
	barFill.BackgroundColor3 = Color3.fromRGB(255, 90, 90)
	Instance.new("UICorner", barFill)

	TweenService:Create(frame, TweenInfo.new(0.4), {
		BackgroundTransparency = 0
	}):Play()

	TweenService:Create(stroke, TweenInfo.new(0.4), {
		Transparency = 0
	}):Play()

	TweenService:Create(text, TweenInfo.new(0.4), {
		TextTransparency = 0
	}):Play()

	TweenService:Create(barBack, TweenInfo.new(0.4), {
		BackgroundTransparency = 0
	}):Play()

	-- load bar realisztikus esku
	local progress = 0
	local startTime = tick()

	while progress < 1 do
		
		local jump = math.random(5, 20) / 100
		progress = math.clamp(progress + jump, 0, 1)

		TweenService:Create(
			barFill,
			TweenInfo.new(
				math.random(10, 30) / 100,
				Enum.EasingStyle.Quad,
				Enum.EasingDirection.Out
			),
			{ Size = UDim2.new(progress, 0, 1, 0) }
		):Play()

		
		task.wait(math.random(10, 60) / 100)

		-- ne baszodjal el
		if tick() - startTime >= loadTime then
			break
		end
	end

	-- vege elott 100%
	TweenService:Create(
		barFill,
		TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
		{ Size = UDim2.new(1, 0, 1, 0) }
	):Play()

	task.wait(0.4)

	-- elhalvanyulas
	TweenService:Create(frame, TweenInfo.new(0.4), {
		BackgroundTransparency = 1
	}):Play()

	TweenService:Create(stroke, TweenInfo.new(0.4), {
		Transparency = 1
	}):Play()

	TweenService:Create(text, TweenInfo.new(0.4), {
		TextTransparency = 1
	}):Play()

	TweenService:Create(barBack, TweenInfo.new(0.4), {
		BackgroundTransparency = 1
	}):Play()

	task.wait(0.5)
	LoaderFinished:Fire()

task.wait(0.5)
gui:Destroy()

LoaderFinished:Fire()
end)

LoaderFinished.Event:Wait()


-- SERVICES
local Players = game:GetService("Players")
local UIS = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local Player = Players.LocalPlayer
local Camera = workspace.CurrentCamera

-- CHARACTER
local function getChar()
	local c = Player.Character or Player.CharacterAdded:Wait()
	return c, c:WaitForChild("Humanoid"), c:WaitForChild("HumanoidRootPart")
end

local Character, Humanoid, HRP = getChar()

Player.CharacterAdded:Connect(function()
	task.wait(0.4)
	Character, Humanoid, HRP = getChar()
end)

-- CONFIG doenst work
local Config = {
	Fly = false,
	Noclip = false,
	InfiniteJump = false,
	Spinbot = false,
	BunnyHop = false,

	WalkSpeed = 16,
	JumpPower = 16,
	FlySpeed = 60,
	FOV = 150,

	Chams = false,
	TeamCheck = false,

	FakeHeadless = false,
	FakeKorblox = false,
	SuperHappy = false
}

-- FILE SUPPORT just delelte ts at this point
local hasFS = writefile and readfile and isfile
local folder = "SoftwareShopz"

local function saveConfig(name)
	if not hasFS then return end
	if not isfolder(folder) then makefolder(folder) end
	writefile(folder.."/"..name..".json", HttpService:JSONEncode(Config))
end

local function loadConfig(name)
	if not hasFS then return end
	local path = folder.."/"..name..".json"
	if not isfile(path) then return end
	Config = HttpService:JSONDecode(readfile(path))
end

-- REMOVE OLD UI PLSS
pcall(function()
	game.CoreGui.SoftwareShopzPremium:Destroy()
end)

-- GUI
local gui = Instance.new("ScreenGui", game.CoreGui)
gui.Name = "ShitwareShopz Premium shit V2.2 leaked by main scripter Grandma"
gui.ResetOnSpawn = false

local main = Instance.new("Frame", gui)
main.Size = UDim2.new(0,560,0,380)
main.Position = UDim2.new(0.5,-280,0.5,-190)
main.BackgroundColor3 = Color3.fromRGB(18,18,18)
main.Active = true
main.Draggable = true
Instance.new("UICorner",main).CornerRadius = UDim.new(0,14)

local stroke = Instance.new("UIStroke",main)
stroke.Color = Color3.fromRGB(140,90,255)
stroke.Thickness = 2

local title = Instance.new("TextLabel",main)
title.Size = UDim2.new(1,0,0,36)
title.BackgroundTransparency = 1
title.Text = "ShitwareShopz Premium shit V2.2 leaked by main scripter Grandma"
title.Font = Enum.Font.GothamBold
title.TextSize = 18
title.TextColor3 = Color3.fromRGB(180,140,255)

-- SIDEBAR
local side = Instance.new("Frame",main)
side.Position = UDim2.new(0,0,0,36)
side.Size = UDim2.new(0,150,1,-36)
side.BackgroundColor3 = Color3.fromRGB(22,22,22)

-- CONTENT
local content = Instance.new("Frame",main)
content.Position = UDim2.new(0,160,0,46)
content.Size = UDim2.new(1,-170,1,-56)
content.BackgroundTransparency = 1

local pages = {}
local function newPage()
	local f = Instance.new("Frame",content)
	f.Size = UDim2.new(1,0,1,0)
	f.BackgroundTransparency = 1
	f.Visible = false
	table.insert(pages,f)
	return f
end

local function show(p)
	for _,v in ipairs(pages) do v.Visible=false end
	p.Visible=true
end

local function sideBtn(txt,y,cb)
	local b = Instance.new("TextButton",side)
	b.Size = UDim2.new(1,-12,0,34)
	b.Position = UDim2.new(0,6,0,y)
	b.Text = txt
	b.Font = Enum.Font.Gotham
	b.TextSize = 14
	b.BackgroundColor3 = Color3.fromRGB(35,35,35)
	b.TextColor3 = Color3.new(1,1,1)
	Instance.new("UICorner",b)
	b.MouseButton1Click:Connect(cb)
end

local function toggle(parent,text,y,cb)
	local b = Instance.new("TextButton",parent)
	b.Size = UDim2.new(0.9,0,0,30)
	b.Position = UDim2.new(0.05,0,0,y)
	b.BackgroundColor3 = Color3.fromRGB(40,40,40)
	b.TextColor3 = Color3.new(1,1,1)
	b.Font = Enum.Font.Gotham
	Instance.new("UICorner",b)
	local on=false
	b.Text=text.." : OFF"
	b.MouseButton1Click:Connect(function()
		on=not on
		b.Text=text.." : "..(on and "ON" or "OFF")
		cb(on)
	end)
end

local function box(parent,y,text,cb)
	local t = Instance.new("TextBox",parent)
	t.Size = UDim2.new(0.9,0,0,30)
	t.Position = UDim2.new(0.05,0,0,y)
	t.Text = tostring(text)
	t.BackgroundColor3 = Color3.fromRGB(40,40,40)
	t.TextColor3 = Color3.new(1,1,1)
	Instance.new("UICorner",t)
	t.FocusLost:Connect(function()
		local v = tonumber(t.Text)
		if v then cb(v) end
	end)
end

-- PAGES
local Visual = newPage()
local Fake = newPage()
local Options = newPage()
local Scripts = newPage()
local Credits = newPage()
local Misc = newPage()
local Movement = newPage()
show(Visual)

sideBtn("Movement",130,function() show(Movement) end)
sideBtn("Visuals",90,function() show(Visual) end)
sideBtn("FakeStuffs",210,function() show(Fake) end)
sideBtn("Options",250,function() show(Options) end)
sideBtn("Misc",170,function() show(Misc) end)
sideBtn("Our Scripts",50,function() show(Scripts) end)
sideBtn("Credits",10,function() show(Credits) end)

-- VISUAL(S) i removed everything that dosent work so only chams


local ChamsEnabled = false

local function addChams(character)
	if not ChamsEnabled then return end
	if character:FindFirstChild("SS_Chams") then return end

	local h = Instance.new("Highlight")
	h.Name = "SS_Chams"
	h.FillTransparency = 0.5
	h.OutlineTransparency = 0
	h.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
	h.Parent = character
end

local function removeChams(character)
	local h = character:FindFirstChild("SS_Chams")
	if h then h:Destroy() end
end

local function setupChamsForPlayer(plr)
	if plr == Player then return end

	if plr.Character then
		addChams(plr.Character)
	end

	plr.CharacterAdded:Connect(function(char)
		task.wait(0.2)
		addChams(char)
	end)
end

-- meglévő playerek
for _,plr in ipairs(Players:GetPlayers()) do
	setupChamsForPlayer(plr)
end

-- újonnan belépők
Players.PlayerAdded:Connect(setupChamsForPlayer)


toggle(Visual,"Chams *Fixed by Grandma",10,function(state)
	Config.Chams = state
	ChamsEnabled = state

	for _,plr in ipairs(Players:GetPlayers()) do
		if plr ~= Player and plr.Character then
			if state then
				addChams(plr.Character)
			else
				removeChams(plr.Character)
			end
		end
	end
end)


-- FAKE
toggle(Fake,"Fake Headless",10,function(v)
	Config.FakeHeadless=v
	if Character:FindFirstChild("Head") then
		Character.Head.Transparency=v and 1 or 0
	end
end)

toggle(Fake,"Fake Korblox Deathspeaker",50,function(v)
	Config.FakeKorblox = v

	if not Character then return end

	for _,part in ipairs(Character:GetDescendants()) do
		if part:IsA("BasePart") then
			-- Korblox Deathspeaker = RIGHT LOWER LEG
			if part.Name == "RightLowerLeg" or part.Name == "Right Leg" then
				part.Transparency = v and 1 or 0
				part.LocalTransparencyModifier = v and 1 or 0
			end
		end
	end
end)


toggle(Fake,"Fake Korblox (just removes leg)",50,function(v)
	Config.FakeKorblox=v
	for _,p in ipairs(Character:GetDescendants()) do
		if p:IsA("MeshPart") and p.Name:lower():find("leg") then
			p.Transparency=v and 1 or 0
		end
	end
end)

toggle(Fake,"Super Happy Face - fixed by Grandma",90,function(v)
	Config.SuperHappy=v
	local face=Character.Head:FindFirstChild("face")
	if face then
		face.Texture = v and "rbxassetid://494290547" or face.Texture
	end
end)

-- OPTIONS
local cfgBox=Instance.new("TextBox",Options)
cfgBox.Size=UDim2.new(0.6,0,0,30)
cfgBox.Position=UDim2.new(0.2,0,0,20)
cfgBox.Text="config_name"
cfgBox.BackgroundColor3=Color3.fromRGB(40,40,40)
cfgBox.TextColor3=Color3.new(1,1,1)

local save=Instance.new("TextButton",Options)
save.Text="Save Config"
save.Size=UDim2.new(0.6,0,0,30)
save.Position=UDim2.new(0.2,0,0,60)
save.MouseButton1Click:Connect(function()
	saveConfig(cfgBox.Text)
end)

local load=Instance.new("TextButton",Options)
load.Text="Load Config"
load.Size=UDim2.new(0.6,0,0,30)
load.Position=UDim2.new(0.2,0,0,100)
load.MouseButton1Click:Connect(function()
	loadConfig(cfgBox.Text)
end)

-- OTHERS
toggle(Misc,"Fly fixed by guess who",10,function(v) Config.Fly=v end)
toggle(Misc,"Noclip shit made by 도쿄다이드",50,function(v) Config.Noclip=v end)
toggle(Misc,"Infinite Jump fixed by guess who",90,function(v) Config.InfiniteJump=v end)
toggle(Misc,"Spinbot fixed by guess who",130,function(v) Config.Spinbot=v end)
toggle(Misc,"BunnyHop 도쿄다이드 were able to code automatic jumping",170,function(v) Config.BunnyHop=v end)


box(Movement,10,Config.WalkSpeed,function(v) Config.WalkSpeed=v end)
box(Movement,90,Config.JumpPower,function(v) Config.JumpPower=v end)
box(Misc,290,Config.FlySpeed,function(v) Config.FlySpeed=v end)
box(Movement,170,Config.FOV,function(v) Config.FOV=math.clamp(v,60,200) end)

-- Movement
box(Movement,10,Config.WalkSpeed,function(v) Config.WalkSpeed=v end)

local wsBtn = Instance.new("TextButton",Movement)
wsBtn.Size = UDim2.new(0.9,0,0,30)
wsBtn.Position = UDim2.new(0.05,0,0,50)
wsBtn.Text = "Walk Speed"
wsBtn.BackgroundColor3 = Color3.fromRGB(40,40,40)
wsBtn.TextColor3 = Color3.new(1,1,1)
Instance.new("UICorner",wsBtn)

box(Movement,90,Config.JumpPower,function(v) Config.JumpPower=v end)

local jpBtn = Instance.new("TextButton",Movement)
jpBtn.Size = UDim2.new(0.9,0,0,30)
jpBtn.Position = UDim2.new(0.05,0,0,130)
jpBtn.Text = "Jump Power"
jpBtn.BackgroundColor3 = Color3.fromRGB(40,40,40)
jpBtn.TextColor3 = Color3.new(1,1,1)
Instance.new("UICorner",jpBtn)

box(Movement,170,Config.FOV,function(v) Config.FOV=math.clamp(v,60,200) end)

local fovBtn = Instance.new("TextButton",Movement)
fovBtn.Size = UDim2.new(0.9,0,0,30)
fovBtn.Position = UDim2.new(0.05,0,0,210)
fovBtn.Text = "FOV"
fovBtn.BackgroundColor3 = Color3.fromRGB(40,40,40)
fovBtn.TextColor3 = Color3.new(1,1,1)
Instance.new("UICorner",fovBtn)

-- OUR SCRIPTS
local paid=Instance.new("TextLabel",Scripts)
paid.Size=UDim2.new(1,0,0,80)
paid.TextWrapped=true
paid.Text="🔒 SoftwareShopz Paid Universal Script\nhttps://softwareshopz.mysellauth.com/product/universal-script-lifetime Dont buy ts✌️"
paid.TextColor3=Color3.fromRGB(255,80,80)

-- CREDITS
local c=Instance.new("TextLabel",Credits)
c.Size=UDim2.new(1,0,0,80)
c.Text="Creator: 도쿄다이드 a.k.a. crybaby mr.boss idiot nigga nScripter: Grandma \nAdded Aimbot: Grandma\nAdded (fake) Rivals anti-cheat bypass: Grandma"
c.TextColor3=Color3.fromRGB(200, 0, 0)

-- CORE LOGIC
UIS.JumpRequest:Connect(function()
	if Config.InfiniteJump then
		Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
	end
end)

RunService.RenderStepped:Connect(function(dt)
	if Humanoid then
		Humanoid.WalkSpeed = Config.WalkSpeed
		Humanoid.JumpPower = Config.JumpPower
	end

	if Config.Noclip and Character then
		for _,p in ipairs(Character:GetDescendants()) do
			if p:IsA("BasePart") then p.CanCollide=false end
		end
	end

	if Config.Fly and HRP then
		local dir = Vector3.zero
		if UIS:IsKeyDown(Enum.KeyCode.W) then dir += Camera.CFrame.LookVector end
		if UIS:IsKeyDown(Enum.KeyCode.S) then dir -= Camera.CFrame.LookVector end
		if UIS:IsKeyDown(Enum.KeyCode.A) then dir -= Camera.CFrame.RightVector end
		if UIS:IsKeyDown(Enum.KeyCode.D) then dir += Camera.CFrame.RightVector end
		HRP.Velocity = dir * Config.FlySpeed
	end

	if Config.Spinbot and HRP then
		HRP.CFrame *= CFrame.Angles(0,math.rad(720*dt),0)
	end

	if Config.BunnyHop and Humanoid.FloorMaterial ~= Enum.Material.Air then
		Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
	end

	circle.Position = Vector2.new(Camera.ViewportSize.X/2,Camera.ViewportSize.Y/2)
	circle.Radius = Config.FOV
	circle.Visible = true
end)

-- TOGGLE UI
UIS.InputBegan:Connect(function(i,g)
	if g then return end
	if i.KeyCode==Enum.KeyCode.RightShift then
		main.Visible=not main.Visible
	end
end)


-- AIMBOT FULL + SMOOTHING INPUT (0-10)


pcall(function()
	getgenv().Aimbot.Functions:Exit()
end)

getgenv().Aimbot = {}
local Aimbot = getgenv().Aimbot

-- services
local Players = game:GetService("Players")
local UIS = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local Camera = workspace.CurrentCamera
local LocalPlayer = Players.LocalPlayer
local Drawing = Drawing

-- settings
Aimbot.Enabled = false
Aimbot.Running = false
Aimbot.Locked = nil
Aimbot.LockPart = "Head"
Aimbot.FOV = 150
Aimbot.SmoothInput = 2 -- 0-10
Aimbot.Smoothness = Aimbot.SmoothInput / 10

-- GUI
local gui = Instance.new("ScreenGui", game.CoreGui)
gui.Name = "AimbotWindow"
gui.ResetOnSpawn = false

local main = Instance.new("Frame", gui)
main.Size = UDim2.new(0,260,0,300)
main.Position = UDim2.new(0.5,320,0.5,-150)
main.BackgroundColor3 = Color3.fromRGB(20,20,20)
main.Active = true
main.Draggable = true
Instance.new("UICorner", main).CornerRadius = UDim.new(0,12)

local stroke = Instance.new("UIStroke", main)
stroke.Color = Color3.fromRGB(255,90,90)
stroke.Thickness = 2

local title = Instance.new("TextLabel", main)
title.Size = UDim2.new(1,0,0,32)
title.BackgroundTransparency = 1
title.Text = "Aimbot Version 1.3 By Grandma"
title.Font = Enum.Font.GothamBold
title.TextSize = 16
title.TextColor3 = Color3.fromRGB(255,120,120)

-- toggle
local toggle = Instance.new("TextButton", main)
toggle.Size = UDim2.new(0.85,0,0,32)
toggle.Position = UDim2.new(0.075,0,0,44)
toggle.BackgroundColor3 = Color3.fromRGB(40,40,40)
toggle.Font = Enum.Font.Gotham
toggle.TextSize = 14
toggle.TextColor3 = Color3.new(1,1,1)
toggle.Text = "Aimbot : OFF"
Instance.new("UICorner", toggle)

toggle.MouseButton1Click:Connect(function()
	Aimbot.Enabled = not Aimbot.Enabled
	toggle.Text = "Aimbot : "..(Aimbot.Enabled and "ON" or "OFF")
	FOVCircle.Visible = Aimbot.Enabled
end)

-- target part
local partBtn = Instance.new("TextButton", main)
partBtn.Size = UDim2.new(0.85,0,0,30)
partBtn.Position = UDim2.new(0.075,0,0,86)
partBtn.BackgroundColor3 = Color3.fromRGB(40,40,40)
partBtn.Font = Enum.Font.Gotham
partBtn.TextSize = 14
partBtn.TextColor3 = Color3.new(1,1,1)
partBtn.Text = "Target : Head"
Instance.new("UICorner", partBtn)

partBtn.MouseButton1Click:Connect(function()
	Aimbot.LockPart = (Aimbot.LockPart == "Head") and "HumanoidRootPart" or "Head"
	partBtn.Text = "Target : "..Aimbot.LockPart
end)

-- FOV
local fovLabel = Instance.new("TextLabel", main)
fovLabel.Size = UDim2.new(1,0,0,20)
fovLabel.Position = UDim2.new(0,0,0,126)
fovLabel.BackgroundTransparency = 1
fovLabel.Text = "FOV"
fovLabel.Font = Enum.Font.Gotham
fovLabel.TextSize = 13
fovLabel.TextColor3 = Color3.new(1,1,1)

local fovBox = Instance.new("TextBox", main)
fovBox.Size = UDim2.new(0.85,0,0,30)
fovBox.Position = UDim2.new(0.075,0,0,150)
fovBox.BackgroundColor3 = Color3.fromRGB(40,40,40)
fovBox.TextColor3 = Color3.new(1,1,1)
fovBox.Font = Enum.Font.Gotham
fovBox.TextSize = 14
fovBox.Text = tostring(Aimbot.FOV)
fovBox.ClearTextOnFocus = false
Instance.new("UICorner", fovBox)

fovBox.FocusLost:Connect(function()
	local v = tonumber(fovBox.Text)
	if v then
		Aimbot.FOV = math.clamp(v,1,1000)
	end
	fovBox.Text = tostring(Aimbot.FOV)
end)

-- SMOOTHING INPUT (0-10)
local smoothLabel = Instance.new("TextLabel", main)
smoothLabel.Size = UDim2.new(1,0,0,20)
smoothLabel.Position = UDim2.new(0,0,0,190)
smoothLabel.BackgroundTransparency = 1
smoothLabel.Text = "Smoothing (0 - 10)"
smoothLabel.Font = Enum.Font.Gotham
smoothLabel.TextSize = 13
smoothLabel.TextColor3 = Color3.new(1,1,1)

local smoothBox = Instance.new("TextBox", main)
smoothBox.Size = UDim2.new(0.85,0,0,30)
smoothBox.Position = UDim2.new(0.075,0,0,214)
smoothBox.BackgroundColor3 = Color3.fromRGB(40,40,40)
smoothBox.TextColor3 = Color3.new(1,1,1)
smoothBox.Font = Enum.Font.Gotham
smoothBox.TextSize = 14
smoothBox.Text = tostring(Aimbot.SmoothInput)
smoothBox.ClearTextOnFocus = false
Instance.new("UICorner", smoothBox)

smoothBox.FocusLost:Connect(function()
	local v = tonumber(smoothBox.Text)
	if v then
		v = math.clamp(v,0,10)
		Aimbot.SmoothInput = v
		Aimbot.Smoothness = v / 10
	end
	smoothBox.Text = tostring(Aimbot.SmoothInput)
end)

-- FOV circle
local FOVCircle = Drawing.new("Circle")
FOVCircle.Thickness = 1
FOVCircle.Color = Color3.fromRGB(255,90,90)
FOVCircle.NumSides = 100
FOVCircle.Transparency = 0.5
FOVCircle.Filled = false

-- aim logic
local function GetClosest()
	Aimbot.Locked = nil
	local closest = math.huge

	for _,plr in ipairs(Players:GetPlayers()) do
		if plr ~= LocalPlayer
			and plr.Character
			and plr.Character:FindFirstChild(Aimbot.LockPart)
			and plr.Character:FindFirstChildOfClass("Humanoid")
			and plr.Character.Humanoid.Health > 0 then

			local pos, onScreen = Camera:WorldToViewportPoint(
				plr.Character[Aimbot.LockPart].Position
			)

			if onScreen then
				local dist = (
					Vector2.new(UIS:GetMouseLocation().X, UIS:GetMouseLocation().Y)
					- Vector2.new(pos.X, pos.Y)
				).Magnitude

				if dist < closest and dist <= Aimbot.FOV then
					closest = dist
					Aimbot.Locked = plr
				end
			end
		end
	end
end

RunService.RenderStepped:Connect(function()
	FOVCircle.Position = UIS:GetMouseLocation()
	FOVCircle.Radius = Aimbot.FOV
	FOVCircle.Visible = Aimbot.Enabled

	if Aimbot.Enabled and Aimbot.Running then
		GetClosest()
		if Aimbot.Locked then
			local targetPos = Aimbot.Locked.Character[Aimbot.LockPart].Position
			local cf = Camera.CFrame
			local targetCF = CFrame.new(cf.Position, targetPos)
			Camera.CFrame = cf:Lerp(targetCF, Aimbot.Smoothness)
		end
	end
end)

-- inputs
UIS.InputBegan:Connect(function(input, gp)
	if gp then return end
	if input.UserInputType == Enum.UserInputType.MouseButton2 then
		Aimbot.Running = true
	end
	if input.KeyCode == Enum.KeyCode.RightShift then
		main.Visible = not main.Visible
	end
end)

UIS.InputEnded:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton2 then
		Aimbot.Running = false
		Aimbot.Locked = nil
	end
end)

-- exit
Aimbot.Functions = {}
function Aimbot.Functions:Exit()
	FOVCircle:Remove()
	gui:Destroy()
	getgenv().Aimbot = nil
end
