local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local Workspace = game:GetService("Workspace")

local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local existingGui = playerGui:FindFirstChild("FlyTestGui")
if existingGui then
	existingGui:Destroy()
end

-- State
local flying = false
local flySpeed = 50
local holdPos = nil
local connections = {}

-- Physics movers
local lv = nil
local bv = nil
local ao = nil
local att = nil

local function getRootAndHum()
	local char = player.Character
	if not char then return nil, nil end
	local hrp = char:FindFirstChild("HumanoidRootPart")
	local hum = char:FindFirstChildOfClass("Humanoid")
	return hrp, hum
end

local function clearMovers()
	if lv then lv:Destroy() lv = nil end
	if bv then bv:Destroy() bv = nil end
	if ao then ao:Destroy() ao = nil end
	if att then att:Destroy() att = nil end
end

local function setupMovers(hrp)
	clearMovers()
	att = Instance.new("Attachment")
	att.Name = "FlyTestAttachment"
	att.Parent = hrp

	-- Prefer LinearVelocity; fallback to BodyVelocity if unavailable
	local ok = pcall(function()
		lv = Instance.new("LinearVelocity")
		lv.Name = "FlyTestLinearVelocity"
		lv.Attachment0 = att
		lv.MaxForce = math.huge
		lv.VelocityConstraintMode = Enum.VelocityConstraintMode.Vector
		lv.VectorVelocity = Vector3.zero
		lv.Parent = hrp

		ao = Instance.new("AlignOrientation")
		ao.Name = "FlyTestAlignOrientation"
		ao.Attachment0 = att
		ao.Mode = Enum.OrientationAlignmentMode.OneAttachment
		ao.MaxTorque = math.huge
		ao.Responsiveness = 25
		ao.CFrame = hrp.CFrame
		ao.Parent = hrp
	end)

	if not ok or not lv then
		clearMovers()
		att = Instance.new("Attachment")
		att.Name = "FlyTestAttachment"
		att.Parent = hrp

		bv = Instance.new("BodyVelocity")
		bv.Name = "FlyTestBodyVelocity"
		bv.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
		bv.Velocity = Vector3.zero
		bv.Parent = hrp
	end
end

local function setVelocity(hrp, vel)
	if lv then
		lv.VectorVelocity = vel
	elseif bv then
		bv.Velocity = vel
	else
		hrp.AssemblyLinearVelocity = vel
	end
end

local function setOrientation(hrp, lookDir)
	if ao then
		ao.CFrame = CFrame.lookAt(hrp.Position, hrp.Position + lookDir)
	end
end

local function setFlyState(state)
	flying = state
	holdPos = nil
	local hrp, hum = getRootAndHum()

	if flying then
		if hrp and hum then
			hum.PlatformStand = true
			setupMovers(hrp)
		end
	else
		clearMovers()
		if hum then
			hum.PlatformStand = false
		end
		if hrp then
			hrp.AssemblyLinearVelocity = Vector3.zero
		end
	end
end

-- Fly movement loop (follows camera LookVector including vertical climb)
table.insert(connections, RunService.Heartbeat:Connect(function()
	if not flying then return end
	local hrp, hum = getRootAndHum()
	local cam = Workspace.CurrentCamera
	if not hrp or not hum or not cam then return end

	if not (lv or bv) then
		setupMovers(hrp)
	end

	hum.PlatformStand = true
	local moveDir = hum.MoveDirection
	local look = cam.CFrame.LookVector
	local right = cam.CFrame.RightVector

	if moveDir.Magnitude > 0.05 then
		holdPos = nil
		local rel = cam.CFrame:VectorToObjectSpace(moveDir)
		-- rel.Z < 0 means forward; rel.X > 0 means right
		local forwardFactor = -rel.Z
		local rightFactor = rel.X

		-- Full 3D direction along camera look + right so looking up climbs smoothly
		local desired = (look * forwardFactor) + (right * rightFactor)
		if desired.Magnitude > 0 then
			desired = desired.Unit * flySpeed
		end

		setVelocity(hrp, desired)
		setOrientation(hrp, look)
	else
		-- Hover cleanly without drifting
		if not holdPos then
			holdPos = hrp.Position
		end
		setVelocity(hrp, Vector3.zero)
		setOrientation(hrp, look)
	end
end))

-- Re-apply movers on respawn if fly stays toggled on
table.insert(connections, player.CharacterAdded:Connect(function(char)
	task.wait(0.2)
	if flying then
		local hrp, hum = getRootAndHum()
		if hrp and hum then
			hum.PlatformStand = true
			setupMovers(hrp)
		end
	end
end))

-- GUI
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "FlyTestGui"
screenGui.ResetOnSpawn = false
screenGui.Parent = playerGui

local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 230, 0, 127)
mainFrame.Position = UDim2.new(0.5, -115, 0.35, 0)
mainFrame.BackgroundColor3 = Color3.fromRGB(18, 18, 22)
mainFrame.BorderSizePixel = 0
mainFrame.Parent = screenGui

Instance.new("UICorner", mainFrame).CornerRadius = UDim.new(0, 10)
local stroke = Instance.new("UIStroke", mainFrame)
stroke.Color = Color3.fromRGB(0, 180, 255)
stroke.Thickness = 1.5

local topBar = Instance.new("Frame")
topBar.Size = UDim2.new(1, 0, 0, 30)
topBar.BackgroundColor3 = Color3.fromRGB(26, 26, 32)
topBar.BorderSizePixel = 0
topBar.Parent = mainFrame
Instance.new("UICorner", topBar).CornerRadius = UDim.new(0, 10)

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, -36, 1, 0)
title.Position = UDim2.new(0, 10, 0, 0)
title.BackgroundTransparency = 1
title.Text = "FLY BYPASS"
title.TextColor3 = Color3.fromRGB(0, 255, 200)
title.Font = Enum.Font.GothamBold
title.TextSize = 12
title.TextXAlignment = Enum.TextXAlignment.Left
title.Parent = topBar

local closeBtn = Instance.new("TextButton")
closeBtn.Size = UDim2.new(0, 22, 0, 22)
closeBtn.Position = UDim2.new(1, -26, 0.5, -11)
closeBtn.BackgroundColor3 = Color3.fromRGB(220, 60, 60)
closeBtn.Text = "×"
closeBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
closeBtn.Font = Enum.Font.GothamBold
closeBtn.TextSize = 14
closeBtn.Parent = topBar
Instance.new("UICorner", closeBtn).CornerRadius = UDim.new(0, 5)

local flyBtn = Instance.new("TextButton")
flyBtn.Size = UDim2.new(1, -20, 0, 32)
flyBtn.Position = UDim2.new(0, 10, 0, 38)
flyBtn.BackgroundColor3 = Color3.fromRGB(32, 32, 40)
flyBtn.Text = "Fly: OFF"
flyBtn.TextColor3 = Color3.fromRGB(235, 235, 240)
flyBtn.Font = Enum.Font.GothamBold
flyBtn.TextSize = 12
flyBtn.Parent = mainFrame
Instance.new("UICorner", flyBtn).CornerRadius = UDim.new(0, 6)

local speedBox = Instance.new("TextBox")
speedBox.Size = UDim2.new(1, -20, 0, 28)
speedBox.Position = UDim2.new(0, 10, 0, 78)
speedBox.BackgroundColor3 = Color3.fromRGB(28, 28, 36)
speedBox.Text = tostring(flySpeed)
speedBox.PlaceholderText = "Speed"
speedBox.TextColor3 = Color3.fromRGB(0, 255, 200)
speedBox.Font = Enum.Font.GothamBold
speedBox.TextSize = 11
speedBox.Parent = mainFrame
Instance.new("UICorner", speedBox).CornerRadius = UDim.new(0, 6)

flyBtn.MouseButton1Click:Connect(function()
	setFlyState(not flying)
	flyBtn.Text = flying and "Fly: ON" or "Fly: OFF"
	flyBtn.BackgroundColor3 = flying and Color3.fromRGB(0, 140, 110) or Color3.fromRGB(32, 32, 40)
end)

speedBox.FocusLost:Connect(function()
	local n = tonumber(speedBox.Text)
	if n and n > 0 then
		flySpeed = n
	end
	speedBox.Text = tostring(flySpeed)
end)

closeBtn.MouseButton1Click:Connect(function()
	setFlyState(false)
	for _, conn in ipairs(connections) do
		pcall(function() conn:Disconnect() end)
	end
	table.clear(connections)
	screenGui:Destroy()
end)

-- Dragging support (mouse + touch)
local dragging, dragInput, dragStart, startPos
topBar.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = input.Position
		startPos = mainFrame.Position
		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end)
topBar.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
		dragInput = input
	end
end)
UserInputService.InputChanged:Connect(function(input)
	if input == dragInput and dragging then
		local delta = input.Position - dragStart
		mainFrame.Position = UDim2.new(
			startPos.X.Scale,
			startPos.X.Offset + delta.X,
			startPos.Y.Scale,
			startPos.Y.Offset + delta.Y
		)
	end
end)
