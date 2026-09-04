local _v1 = game:GetService("Players")
local _v2 = game:GetService("TweenService")
local _v3 = game:GetService("UserInputService")
local _v4 = game:GetService("RunService")
local _v5 = game:GetService("Workspace")
local _v6 = game:GetService("Lighting")
local _v7 = game:GetService("MarketplaceService")
local _v8 = game:GetService("GuiService")
local _v9 = game:GetService("SoundService")
local _v10 = game:GetService("TeleportService")
local _v11 = game:GetService("HttpService")

local _v12 = _v1.LocalPlayer
local _v13 = true
local _v14 = {}
local _v15 = {}

local _v16 = false

local function _f1(_p1)
    table.insert(_v14, _p1)
    return _p1
end

local function _f2(_p1)
    table.insert(_v15, _p1)
    return _p1
end

local _v17 = {
    {Name = "Jerk Off R15", URL = "https://pastefy.app/YZoglOyJ/raw", IsR6 = false},
    {Name = "Jerk Off R6", URL = "https://pastefy.app/wa3v2Vgm/raw", IsR6 = true}
}

local _v18 = _v12:WaitForChild("PlayerGui"):FindFirstChild("Vulnsec_Hub_Gui")
if _v18 then _v18:Destroy() end

local _v19 = Instance.new("ScreenGui")
_v19.Name = "Vulnsec_Hub_Gui"
_v19.ResetOnSpawn = false
_v19.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

if syn and syn.protect_gui then 
    syn.protect_gui(_v19) 
elseif gethui then
    _v19.Parent = gethui()
else
    _v19.Parent = _v12:WaitForChild("PlayerGui")
end

local _v20 = Instance.new("Frame")
_v20.Name = "MainFrame"
_v20.Size = UDim2.new(0, 480, 0, 330) 
_v20.Position = UDim2.new(0.5, -240, 0.5, -200)
_v20.BackgroundColor3 = Color3.fromRGB(15, 15, 18)
_v20.BorderSizePixel = 0
_v20.ClipsDescendants = false
_v20.Visible = true
_v20.Parent = _v19

local _v21 = Instance.new("UICorner")
_v21.CornerRadius = UDim.new(0, 14)
_v21.Parent = _v20

local _v22 = Instance.new("UIStroke")
_v22.Color = Color3.fromRGB(0, 180, 255)
_v22.Thickness = 1.5
_v22.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
_v22.Parent = _v20

local _v23 = Instance.new("Frame")
_v23.Name = "NotificationContainer"
_v23.Size = UDim2.new(0, 240, 1, -40)
_v23.Position = UDim2.new(1, -250, 0, 20)
_v23.BackgroundTransparency = 1
_v23.Parent = _v19

local _v24 = Instance.new("UIListLayout")
_v24.VerticalAlignment = Enum.VerticalAlignment.Bottom
_v24.SortOrder = Enum.SortOrder.LayoutOrder
_v24.Padding = UDim.new(0, 6)
_v24.Parent = _v23

local function _f3(_p1, _p2)
    if not _v13 then return end
    local _v25 = Instance.new("Frame")
    _v25.Size = UDim2.new(1, 0, 0, 0)
    _v25.BackgroundColor3 = Color3.fromRGB(18, 18, 22)
    _v25.BorderSizePixel = 0
    _v25.ClipsDescendants = true
    _v25.Parent = _v23

    local _v26 = Instance.new("UICorner")
    _v26.CornerRadius = UDim.new(0, 6)
    _v26.Parent = _v25

    local _v27 = Instance.new("UIStroke")
    _v27.Color = _p2 or Color3.fromRGB(0, 180, 255)
    _v27.Thickness = 1.5
    _v27.Parent = _v25

    local _v28 = Instance.new("TextLabel")
    _v28.Size = UDim2.new(1, -16, 1, 0)
    _v28.Position = UDim2.new(0, 8, 0, 0)
    _v28.BackgroundTransparency = 1
    _v28.Text = _p1
    _v28.TextColor3 = Color3.fromRGB(255, 255, 255)
    _v28.Font = Enum.Font.GothamMedium
    _v28.TextSize = 11
    _v28.TextXAlignment = Enum.TextXAlignment.Left
    _v28.TextWrapped = true
    _v28.Parent = _v25

    _v2:Create(_v25, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(1, 0, 0, 36)}):Play()

    task.spawn(function()
        task.wait(2.5)
        if _v25 and _v25.Parent then
            local _v29 = _v2:Create(_v25, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {Size = UDim2.new(1, 0, 0, 0)})
            _v29:Play()
            _v29.Completed:Connect(function()
                if _v25 then _v25:Destroy() end
            end)
        end
    end)
end

_f1(task.spawn(function()
    while _v13 and _v20 and _v20.Parent do
        local _v30 = _v2:Create(_v22, TweenInfo.new(1.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {Thickness = 2.5, Color = Color3.fromRGB(0, 255, 200)})
        _v30:Play()
        _v30.Completed:Wait()
        if not _v13 then break end
        local _v31 = _v2:Create(_v22, TweenInfo.new(1.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {Thickness = 1.5, Color = Color3.fromRGB(0, 150, 255)})
        _v31:Play()
        _v31.Completed:Wait()
    end
end))

local _v32 = Instance.new("Frame")
_v32.Name = "TopBar"
_v32.Size = UDim2.new(1, 0, 0, 38)
_v32.BackgroundColor3 = Color3.fromRGB(22, 22, 26)
_v32.BorderSizePixel = 0
_v32.Parent = _v20

local _v33 = Instance.new("UICorner")
_v33.CornerRadius = UDim.new(0, 14)
_v33.Parent = _v32

local _v34 = Instance.new("Frame")
_v34.Size = UDim2.new(1, 0, 0, 14)
_v34.Position = UDim2.new(0, 0, 1, -14)
_v34.BackgroundColor3 = Color3.fromRGB(22, 22, 26)
_v34.BorderSizePixel = 0
_v34.Parent = _v32

local _v35 = Instance.new("TextLabel")
_v35.Size = UDim2.new(0, 200, 1, 0)
_v35.Position = UDim2.new(0, 16, 0, 0)
_v35.BackgroundTransparency = 1
_v35.Text = "VULNSEC HUB"
_v35.TextColor3 = Color3.fromRGB(255, 255, 255)
_v35.Font = Enum.Font.GothamBold
_v35.TextSize = 13
_v35.TextXAlignment = Enum.TextXAlignment.Left
_v35.Parent = _v32

local _v36 = Instance.new("TextButton")
_v36.Size = UDim2.new(0, 18, 0, 18)
_v36.Position = UDim2.new(1, -26, 0.5, -9)
_v36.BackgroundColor3 = Color3.fromRGB(250, 70, 70)
_v36.Text = "×"
_v36.TextColor3 = Color3.fromRGB(255, 255, 255)
_v36.Font = Enum.Font.GothamBold
_v36.TextSize = 14
_v36.Parent = _v32

local _v37 = Instance.new("UICorner")
_v37.CornerRadius = UDim.new(0, 4)
_v37.Parent = _v36

local _v38 = Instance.new("TextButton")
_v38.Size = UDim2.new(0, 18, 0, 18)
_v38.Position = UDim2.new(1, -48, 0.5, -9)
_v38.BackgroundColor3 = Color3.fromRGB(250, 180, 50)
_v38.Text = "−"
_v38.TextColor3 = Color3.fromRGB(255, 255, 255)
_v38.Font = Enum.Font.GothamBold
_v38.TextSize = 14
_v38.Parent = _v32

local _v39 = Instance.new("UICorner")
_v39.CornerRadius = UDim.new(0, 4)
_v39.Parent = _v38

local _v40 = Instance.new("ImageButton")
_v40.Name = "DragBubble"
_v40.Size = UDim2.new(0, 44, 0, 44)
_v40.Position = UDim2.new(0.05, 0, 0.2, 0)
_v40.BackgroundColor3 = Color3.fromRGB(22, 22, 26)
_v40.Visible = false
_v40.Parent = _v19

local _v41 = false
pcall(function()
    if typeof(isfile) == "function" and typeof(writefile) == "function" and typeof(getcustomasset) == "function" then
        local _v42 = "Vulnsec_Bubble_Logo.png"
        if not isfile(_v42) then
            local _v43, _v44 = pcall(function()
                return game:HttpGet("https://raw.githubusercontent.com/leos00281-eng/Rbx/refs/heads/main/56Tryup.png")
            end)
            if _v43 and _v44 then
                writefile(_v42, _v44)
            end
        end
        _v40.Image = getcustomasset(_v42)
        _v41 = true
    end
end)

if not _v41 then
    _v40.Image = "rbxassetid://106037704812001" 
end

local _v45 = Instance.new("UICorner")
_v45.CornerRadius = UDim.new(1, 0)
_v45.Parent = _v40

local _v46 = Instance.new("UIStroke")
_v46.Color = Color3.fromRGB(0, 180, 255)
_v46.Thickness = 1.5
_v46.Parent = _v40

local _v47 = Instance.new("Frame")
_v47.Size = UDim2.new(1, 0, 1, -38)
_v47.Position = UDim2.new(0, 0, 0, 38)
_v47.BackgroundTransparency = 1
_v47.Parent = _v20

_f1(_v38.MouseButton1Click:Connect(function()
    _v2:Create(_v20, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 0, 0, 0), Position = UDim2.new(0.5, 0, 0.5, -35)}):Play()
    task.wait(0.23)
    _v20.Visible = false
    _v40.Visible = true
    _v40.Size = UDim2.new(0,0,0,0)
    _v2:Create(_v40, TweenInfo.new(0.35, Enum.EasingStyle.Elastic, Enum.EasingDirection.Out), {Size = UDim2.new(0, 44, 0, 44)}):Play()
end))

_f1(_v40.MouseButton1Click:Connect(function()
    _v40.Visible = false
    _v20.Visible = true
    _v2:Create(_v20, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Size = UDim2.new(0, 480, 0, 330), Position = UDim2.new(0.5, -240, 0.5, -200)}):Play()
end))

local _v48 = Instance.new("Frame")
_v48.Size = UDim2.new(0, 120, 1, 0)
_v48.BackgroundColor3 = Color3.fromRGB(11, 11, 14)
_v48.BorderSizePixel = 0
_v48.Parent = _v47

local _v49 = Instance.new("UICorner")
_v49.CornerRadius = UDim.new(0, 14)
_v49.Parent = _v48

local _v50 = Instance.new("Frame")
_v50.Size = UDim2.new(0, 15, 1, 0)
_v50.Position = UDim2.new(1, -15, 0, 0)
_v50.BackgroundColor3 = Color3.fromRGB(11, 11, 14)
_v50.BorderSizePixel = 0
_v50.Parent = _v48

local _v51 = Instance.new("Frame")
_v51.Size = UDim2.new(1, 0, 0, 15)
_v51.BackgroundColor3 = Color3.fromRGB(11, 11, 14)
_v51.BorderSizePixel = 0
_v51.Parent = _v48

local _v52 = Instance.new("ImageLabel")
_v52.Size = UDim2.new(0, 52, 0, 52)
_v52.Position = UDim2.new(0.5, -26, 0, 12)
_v52.BackgroundColor3 = Color3.fromRGB(22, 22, 26)
_v52.Parent = _v48

local _v53 = Instance.new("UICorner")
_v53.CornerRadius = UDim.new(1, 0)
_v53.Parent = _v52

local _v54 = Instance.new("UIStroke")
_v54.Color = Color3.fromRGB(35, 35, 40)
_v54.Thickness = 1
_v54.Parent = _v52

pcall(function()
    _v52.Image = _v1:GetUserThumbnailAsync(_v12.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size150x150)
end)

local _v55 = Instance.new("TextLabel")
_v55.Size = UDim2.new(1, -16, 0, 16)
_v55.Position = UDim2.new(0, 8, 0, 70)
_v55.BackgroundTransparency = 1
_v55.Text = "@" .. _v12.DisplayName
_v55.TextColor3 = Color3.fromRGB(180, 180, 185)
_v55.Font = Enum.Font.GothamMedium
_v55.TextSize = 10
_v55.TextScaled = true
_v55.Parent = _v48

local _v56 = Instance.new("Frame")
_v56.Size = UDim2.new(1, 0, 0, 160)
_v56.Position = UDim2.new(0, 0, 0, 92)
_v56.BackgroundTransparency = 1
_v56.Parent = _v48

local _v57 = Instance.new("UIListLayout")
_v57.Padding = UDim.new(0, 4)
_v57.HorizontalAlignment = Enum.HorizontalAlignment.Center
_v57.Parent = _v56

local _v58 = Instance.new("Folder")
_v58.Name = "Pages"
_v58.Parent = _v47

local function _f4(_p1)
    local _v59 = Instance.new("ScrollingFrame")
    _v59.Name = _p1 .. "Page"
    _v59.Size = UDim2.new(1, -132, 1, -20)
    _v59.Position = UDim2.new(0, 126, 0, 10)
    _v59.BackgroundTransparency = 1
    _v59.CanvasSize = UDim2.new(0, 0, 0, 0)
    _v59.ScrollBarThickness = 3
    _v59.ScrollBarImageColor3 = Color3.fromRGB(60, 60, 65)
    _v59.Visible = false
    _v59.Parent = _v58

    local _v60 = Instance.new("UIListLayout")
    _v60.Padding = UDim.new(0, 6)
    _v60.SortOrder = Enum.SortOrder.LayoutOrder
    _v60.Parent = _v59

    _f1(_v60:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
        _v59.CanvasSize = UDim2.new(0, 0, 0, _v60.AbsoluteContentSize.Y + 15)
    end))

    return _v59
end

local _v61 = _f4("Main")
local _v62 = _f4("Custom")
local _v63 = _f4("Teleport")
local _v64 = _f4("Boombox")
local _v65 = _f4("BoomboxIDs")
local _v66 = _f4("UpdateLogs")
local _v67 = _f4("About")

local _v68 = nil

local function _f5(_p1, _p2)
    local _v69 = Instance.new("TextButton")
    _v69.Size = UDim2.new(0, 106, 0, 22)
    _v69.BackgroundColor3 = Color3.fromRGB(20, 20, 24)
    _v69.Text = _p1
    _v69.TextColor3 = Color3.fromRGB(160, 160, 165)
    _v69.Font = Enum.Font.GothamMedium
    _v69.TextSize = 10
    _v69.Parent = _v56

    local _v70 = Instance.new("UICorner")
    _v70.CornerRadius = UDim.new(0, 6)
    _v70.Parent = _v69

    local _v71 = Instance.new("UIStroke")
    _v71.Color = Color3.fromRGB(28, 28, 32)
    _v71.Thickness = 1
    _v71.Parent = _v69

    _f1(_v69.MouseButton1Click:Connect(function()
        if _v68 == _v69 then return end
        
        if _v68 then
            _v2:Create(_v68, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(20, 20, 24), TextColor3 = Color3.fromRGB(160, 160, 165)}):Play()
            local _v72 = _v68:FindFirstChildOfClass("UIStroke")
            if _v72 then _v2:Create(_v72, TweenInfo.new(0.2), {Color = Color3.fromRGB(28, 28, 32)}):Play() end
        end
        
        for _, _v73 in pairs(_v58:GetChildren()) do _v73.Visible = false end
        
        _v68 = _v69
        _p2.Visible = true
        
        _v2:Create(_v69, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(28, 28, 35), TextColor3 = Color3.fromRGB(0, 255, 200)}):Play()
        _v2:Create(_v71, TweenInfo.new(0.2), {Color = Color3.fromRGB(0, 180, 255)}):Play()
    end))
    
    if _p1 == "Main Scripts" then
        _v68 = _v69
        _p2.Visible = true
        _v69.BackgroundColor3 = Color3.fromRGB(28, 28, 35)
        _v69.TextColor3 = Color3.fromRGB(0, 255, 200)
        _v71.Color = Color3.fromRGB(0, 180, 255)
    end
end

_f5("Main Scripts", _v61)
_f5("Custom Scripts", _v62)
_f5("Teleport", _v63)
_f5("Boombox Logger", _v64)
_f5("Boombox IDs", _v65)
_f5("Update Logs", _v66)
_f5("About Script", _v67)

local _v74 = Instance.new("TextLabel")
_v74.Size = UDim2.new(1, 0, 0, 25)
_v74.Position = UDim2.new(0, 0, 1, -25)
_v74.BackgroundTransparency = 1
_v74.Text = "12:00:00 AM"
_v74.TextColor3 = Color3.fromRGB(0, 255, 200)
_v74.Font = Enum.Font.Code
_v74.TextSize = 11
_v74.Parent = _v48

_f1(task.spawn(function()
    while _v13 and task.wait(1) do
        if _v74 and _v74.Parent then
            _v74.Text = os.date("%I:%M:%S %p")
        end
    end
end))

local function _f6(_p1, _p2)
    local _v75 = Instance.new("Frame")
    _v75.Size = UDim2.new(1, -8, 0, 24)
    _v75.BackgroundTransparency = 1
    _v75.Parent = _p2

    local _v76 = Instance.new("UIListLayout")
    _v76.FillDirection = Enum.FillDirection.Horizontal
    _v76.SortOrder = Enum.SortOrder.LayoutOrder
    _v76.VerticalAlignment = Enum.VerticalAlignment.Center
    _v76.Padding = UDim.new(0, 10)
    _v76.Parent = _v75

    local _v77 = Instance.new("TextLabel")
    _v77.BackgroundTransparency = 1
    _v77.Text = _p1:upper()
    _v77.TextColor3 = Color3.fromRGB(0, 180, 255)
    _v77.Font = Enum.Font.GothamBold
    _v77.TextSize = 11
    _v77.AutomaticSize = Enum.AutomaticSize.X
    _v77.Size = UDim2.new(0, 0, 1, 0)
    _v77.LayoutOrder = 1
    _v77.Parent = _v75
    
    local _v78 = Instance.new("Frame")
    _v78.Size = UDim2.new(1, 0, 0, 1)
    _v78.BackgroundColor3 = Color3.fromRGB(28, 28, 32)
    _v78.BorderSizePixel = 0
    _v78.LayoutOrder = 2
    _v78.Parent = _v75

    _f1(_v75:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
        local _v79 = _v77.AbsoluteSize.X
        local _v80 = _v75.AbsoluteSize.X
        local _v81 = _v80 - _v79 - 10
        if _v81 > 0 then
            _v78.Size = UDim2.new(0, _v81, 0, 1)
        else
            _v78.Size = UDim2.new(0, 0, 0, 1)
        end
    end))
end

local function _f7(_p1, _p2, _p3, _p4)
    local _v82 = Instance.new("Frame")
    _v82.Size = UDim2.new(1, -8, 0, 36)
    _v82.BackgroundColor3 = Color3.fromRGB(20, 20, 24)
    _v82.BorderSizePixel = 0
    _v82.Parent = _p3

    local _v83 = Instance.new("UICorner")
    _v83.CornerRadius = UDim.new(0, 6)
    _v83.Parent = _v82

    local _v84 = Instance.new("UIStroke")
    _v84.Color = Color3.fromRGB(28, 28, 32)
    _v84.Thickness = 1
    _v84.Parent = _v82

    local _v85 = Instance.new("TextLabel")
    _v85.Size = UDim2.new(0.7, 0, 1, 0)
    _v85.Position = UDim2.new(0, 12, 0, 0)
    _v85.BackgroundTransparency = 1
    _v85.Text = _p1
    _v85.TextColor3 = Color3.fromRGB(225, 225, 230)
    _v85.Font = Enum.Font.GothamMedium
    _v85.TextSize = 11
    _v85.TextXAlignment = Enum.TextXAlignment.Left
    _v85.Parent = _v82

    local _v86 = Instance.new("TextButton")
    _v86.Size = UDim2.new(0, 32, 0, 16)
    _v86.Position = UDim2.new(1, -42, 0.5, -8)
    _v86.BackgroundColor3 = _p2 and Color3.fromRGB(0, 180, 255) or Color3.fromRGB(45, 45, 50)
    _v86.Text = ""
    _v86.Parent = _v82

    local _v87 = Instance.new("UICorner")
    _v87.CornerRadius = UDim.new(1, 0)
    _v87.Parent = _v86

    local _v88 = Instance.new("Frame")
    _v88.Size = UDim2.new(0, 10, 0, 10)
    _v88.Position = _p2 and UDim2.new(1, -13, 0.5, -5) or UDim2.new(0, 3, 0.5, -5)
    _v88.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    _v88.BorderSizePixel = 0
    _v88.Parent = _v86

    local _v89 = Instance.new("UICorner")
    _v89.CornerRadius = UDim.new(1, 0)
    _v89.Parent = _v88

    local _v90 = _p2
    _f1(_v86.MouseButton1Click:Connect(function()
        if not _v13 then return end
        _v90 = not _v90
        local _v91 = _v90 and Color3.fromRGB(0, 255, 180) or Color3.fromRGB(45, 45, 50)
        local _v92 = _v90 and UDim2.new(1, -13, 0.5, -5) or UDim2.new(0, 3, 0.5, -5)
        
        _v2:Create(_v86, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = _v91}):Play()
        _v2:Create(_v88, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Position = _v92}):Play()
        _v2:Create(_v84, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Color = _v90 and Color3.fromRGB(0, 255, 180) or Color3.fromRGB(28, 28, 32)}):Play()
        
        _p4(_v90)
    end))
end

local function _f8(_p1, _p2, _p3)
    local _v93 = Instance.new("Frame")
    _v93.Size = UDim2.new(1, -8, 0, 36)
    _v93.BackgroundColor3 = Color3.fromRGB(20, 20, 24)
    _v93.Parent = _p2

    local _v94 = Instance.new("UICorner")
    _v94.CornerRadius = UDim.new(0, 6)
    _v94.Parent = _v93

    local _v95 = Instance.new("UIStroke")
    _v95.Color = Color3.fromRGB(28, 28, 32)
    _v95.Thickness = 1
    _v95.Parent = _v93

    local _v96 = Instance.new("TextButton")
    _v96.Size = UDim2.new(1, 0, 1, 0)
    _v96.BackgroundTransparency = 1
    _v96.Text = _p1
    _v96.TextColor3 = Color3.fromRGB(225, 225, 230)
    _v96.Font = Enum.Font.GothamMedium
    _v96.TextSize = 11
    _v96.Parent = _v93

    _f1(_v96.MouseButton1Click:Connect(function()
        if not _v13 then return end
        _v2:Create(_v93, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(28, 28, 35)}):Play()
        _v2:Create(_v95, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Color = Color3.fromRGB(0, 180, 255)}):Play()
        _v96.TextColor3 = Color3.fromRGB(0, 255, 200)
        task.wait(0.12)
        if not _v13 then return end
        _v2:Create(_v93, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(20, 20, 24)}):Play()
        _v2:Create(_v95, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Color = Color3.fromRGB(28, 28, 32)}):Play()
        _v96.TextColor3 = Color3.fromRGB(225, 225, 230)
        _p3()
    end))
end

local function _f9(_p1, _p2, _p3, _p4)
    local _v97 = Instance.new("Frame")
    _v97.Size = UDim2.new(1, -8, 0, 36)
    _v97.BackgroundColor3 = Color3.fromRGB(20, 20, 24)
    _v97.Parent = _p3

    local _v98 = Instance.new("UICorner")
    _v98.CornerRadius = UDim.new(0, 6)
    _v98.Parent = _v97

    local _v99 = Instance.new("UIStroke")
    _v99.Color = Color3.fromRGB(28, 28, 32)
    _v99.Thickness = 1
    _v99.Parent = _v97

    local _v100 = Instance.new("TextLabel")
    _v100.Size = UDim2.new(0.6, 0, 1, 0)
    _v100.Position = UDim2.new(0, 12, 0, 0)
    _v100.BackgroundTransparency = 1
    _v100.Text = _p1
    _v100.TextColor3 = Color3.fromRGB(225, 225, 230)
    _v100.Font = Enum.Font.GothamMedium
    _v100.TextSize = 11
    _v100.TextXAlignment = Enum.TextXAlignment.Left
    _v100.Parent = _v97

    local _v101 = Instance.new("TextBox")
    _v101.Size = UDim2.new(0, 46, 0, 20)
    _v101.Position = UDim2.new(1, -54, 0.5, -10)
    _v101.BackgroundColor3 = Color3.fromRGB(30, 30, 36)
    _v101.Text = tostring(_p2)
    _v101.TextColor3 = Color3.fromRGB(255, 255, 255)
    _v101.Font = Enum.Font.GothamBold
    _v101.TextSize = 10
    _v101.Parent = _v97

    local _v102 = Instance.new("UICorner")
    _v102.CornerRadius = UDim.new(0, 4)
    _v102.Parent = _v101
    
    local _v103 = Instance.new("UIStroke")
    _v103.Color = Color3.fromRGB(45, 45, 50)
    _v103.Thickness = 1
    _v103.Parent = _v101

    _f1(_v101.Focused:Connect(function()
        _v2:Create(_v103, TweenInfo.new(0.15), {Color = Color3.fromRGB(0, 180, 255)}):Play()
    end))

    _f1(_v101.FocusLost:Connect(function()
        _v2:Create(_v103, TweenInfo.new(0.15), {Color = Color3.fromRGB(45, 45, 50)}):Play()
        local _v104 = tonumber(_v101.Text)
        if _v104 then
            _p4(_v104)
        else
            _v101.Text = tostring(_p2)
        end
    end))
end

local function _f10()
    local _v105 = _v12.Character
    if not _v105 then return nil, nil, nil end
    local _v106 = _v105:FindFirstChild("HumanoidRootPart")
    local _v107 = _v105:FindFirstChildOfClass("Humanoid")
    return _v105, _v106, _v107
end

local _v108 = false
local _v109 = 50

_f6("Auto Exec", _v61)

local function _f11()
    local _v110 = (syn and syn.queue_on_teleport) or queue_on_teleport or (fluxus and fluxus.queue_on_teleport)
    if _v110 then
        pcall(function()
            _v110('loadstring(game:HttpGet("https://raw.githubusercontent.com/leos00281-eng/Rbx/refs/heads/main/VulnHub.lua"))()')
        end)
    end
end

_f7("Auto Exec (Rejoin / Change Game)", false, _v61, function(_p1)
    _v16 = _p1
    if _p1 then
        _f11()
        _f3("Auto Exec Enabled", Color3.fromRGB(0, 255, 200))
    else
        _f3("Auto Exec Disabled", Color3.fromRGB(255, 80, 80))
    end
end)

_f6("Server Info & Player Monitoring", _v61)

local _v111 = Instance.new("Frame")
_v111.Size = UDim2.new(1, -8, 0, 85)
_v111.BackgroundColor3 = Color3.fromRGB(20, 20, 24)
_v111.Parent = _v61

Instance.new("UICorner", _v111).CornerRadius = UDim.new(0, 6)
local _v112 = Instance.new("UIStroke", _v111)
_v112.Color = Color3.fromRGB(28, 28, 32)
_v112.Thickness = 1

local _v113 = Instance.new("TextLabel")
_v113.Size = UDim2.new(1, -16, 1, -8)
_v113.Position = UDim2.new(0, 8, 0, 4)
_v113.BackgroundTransparency = 1
_v113.TextColor3 = Color3.fromRGB(225, 225, 230)
_v113.Font = Enum.Font.GothamMedium
_v113.TextSize = 10
_v113.TextXAlignment = Enum.TextXAlignment.Left
_v113.TextYAlignment = Enum.TextYAlignment.Top
_v113.TextWrapped = true
_v113.Parent = _v111

_f8("Copy Server Link", _v61, function()
    local _v114 = "https://www.roblox.com/games/" .. tostring(game.PlaceId) .. "?jobId=" .. tostring(game.JobId)
    pcall(function()
        if setclipboard then
            setclipboard(_v114)
            _f3("Server Link Copied!", Color3.fromRGB(0, 255, 200))
        end
    end)
end)

_f8("Rejoin Current Server", _v61, function()
    pcall(function()
        _v10:TeleportToPlaceInstance(game.PlaceId, game.JobId, _v12)
    end)
end)

local _v115 = {}

local function _f12()
    local _v116 = _v1:GetPlayers()
    local _v117 = _v1.MaxPlayers
    local _v118 = {}
    
    for _, _v119 in ipairs(_v116) do
        if _v119 ~= _v12 then
            pcall(function()
                if _v12:IsFriendsWith(_v119.UserId) then
                    table.insert(_v118, _v119.DisplayName .. " (@" .. _v119.Name .. ")")
                end
            end)
        end
    end

    local _v120 = #_v118 > 0 and table.concat(_v118, ", ") or "None"
    
    _v113.Text = string.format(
        "Place ID: %d\nJob ID: %s\nPlayer Count: %d/%d\nFriend Count Joined (%d): %s",
        game.PlaceId,
        game.JobId ~= "" and game.JobId or "N/A",
        #_v116,
        _v117,
        #_v118,
        _v120
    )
end

_f1(_v1.PlayerAdded:Connect(function(_p1)
    task.wait(1)
    pcall(function()
        if _v12:IsFriendsWith(_p1.UserId) then
            _f3("Friend Joined: " .. _p1.DisplayName .. " (@" .. _p1.Name .. ")", Color3.fromRGB(0, 255, 180))
        end
    end)
    _f12()
end))

_f1(_v1.PlayerRemoving:Connect(function(_p1)
    _f12()
end))

_f1(task.spawn(function()
    while _v13 do
        _f12()
        task.wait(2)
    end
end))

_f6("Movement", _v61)

_f7("Enable Speed Hack", false, _v61, function(_p1)
    _v108 = _p1
    local _, _, _v121 = _f10()
    if _v121 then _v121.WalkSpeed = _p1 and _v109 or 16 end
end)

_f9("Walk Speed", 50, _v61, function(_p1)
    _v109 = _p1
    local _, _, _v122 = _f10()
    if _v108 and _v122 then _v122.WalkSpeed = _p1 end
end)

_f1(_v4.Heartbeat:Connect(function()
    if _v13 and _v108 then
        local _, _, _v123 = _f10()
        if _v123 and _v123.WalkSpeed ~= _v109 then
            _v123.WalkSpeed = _v109
        end
    end
end))

local _v124 = false
_f1(_v4.Stepped:Connect(function()
    if _v13 and _v124 and _v12.Character then
        for _, _v125 in pairs(_v12.Character:GetDescendants()) do
            if _v125:IsA("BasePart") then _v125.CanCollide = false end
        end
    end
end))

_f7("Enable Noclip", false, _v61, function(_p1) _v124 = _p1 end)

local _v126 = false
local _v127 = 50
local _v128 = nil

_f7("Enable Fly Mode", false, _v61, function(_p1)
    _v126 = _p1
    _v128 = nil
    local _, _v129, _v130 = _f10()
    if _v130 then
        _v130.PlatformStand = _p1
    end
    if not _p1 and _v129 then
        _v129.Velocity = Vector3.new(0,0,0)
    end
end)

_f9("Fly Speed", 50, _v61, function(_p1)
    _v127 = _p1
end)

_f1(_v4.Heartbeat:Connect(function()
    if _v13 and _v126 then
        local _, _v131, _v132 = _f10()
        if _v131 and _v132 then
            _v132.PlatformStand = true
            
            local _v133 = _v5.CurrentCamera
            if _v133 then
                local _v134 = _v132.MoveDirection
                local _v135 = _v133.CFrame.LookVector
                
                if _v134.Magnitude > 0 then
                    _v128 = nil
                    local _v136 = _v133.CFrame.RightVector
                    local _v137 = _v133.CFrame:VectorToObjectSpace(_v134)
                    local _v138 = Vector3.new(_v137.X, 0, _v137.Z).Unit
                    local _v139 = ((_v135 * -_v138.Z) + (_v136 * _v138.X)).Unit
                    
                    _v131.Velocity = _v139 * _v127
                    _v131.CFrame = CFrame.new(_v131.Position, _v131.Position + _v135)
                else
                    if not _v128 then
                        _v128 = _v131.Position
                    end
                    _v131.Velocity = Vector3.new(0, 0, 0)
                    _v131.CFrame = CFrame.new(_v128, _v128 + _v135)
                end
            end
        end
    end
end))

_f6("Stealth & Visuals", _v61)

_f7("Day Mode", false, _v61, function(_p1)
    if _p1 then
        _v6.ClockTime = 14
    end
end)

_f7("Night Mode", false, _v61, function(_p1)
    if _p1 then
        _v6.ClockTime = 0
    else
        _v6.ClockTime = 14
    end
end)

local _v140 = false

local function _f13(_p1)
    if _p1 == _v12 then return end
    
    local function _v141()
        if not _v13 then return end
        local _v142 = _p1.Character or _p1.CharacterAdded:Wait()
        local _v143 = _v142:WaitForChild("Head", 5)
        if not _v143 or not _v13 then return end

        if _v142:FindFirstChild("ESPHighlight") then _v142.ESPHighlight:Destroy() end
        if _v143:FindFirstChild("ESPBBG") then _v143.ESPBBG:Destroy() end

        local _v144 = Instance.new("Highlight")
        _v144.Name = "ESPHighlight"
        _v144.FillTransparency = 0.6
        _v144.FillColor = Color3.fromRGB(0, 255, 150)
        _v144.OutlineColor = Color3.fromRGB(255, 255, 255)
        _v144.Enabled = _v140
        _v144.Parent = _v142

        local _v145 = Instance.new("BillboardGui")
        _v145.Name = "ESPBBG"
        _v145.Size = UDim2.new(0, 200, 0, 50)
        _v145.AlwaysOnTop = true
        _v145.ExtentsOffset = Vector3.new(0, 3, 0)
        _v145.Enabled = _v140
        _v145.Parent = _v143

        local _v146 = Instance.new("TextLabel")
        _v146.Size = UDim2.new(1, 0, 1, 0)
        _v146.BackgroundTransparency = 1
        _v146.Text = _p1.DisplayName
        _v146.TextColor3 = Color3.fromRGB(255, 50, 50)
        _v146.Font = Enum.Font.GothamBold
        _v146.TextSize = 14
        _v146.Parent = _v145
    end

    _v141()
    _f1(_p1.CharacterAdded:Connect(_v141))
end

_f7("Enable Player ESP", false, _v61, function(_p1)
    _v140 = _p1
    for _, _v147 in pairs(_v1:GetPlayers()) do
        if _v147.Character then
            local _v148 = _v147.Character:FindFirstChild("ESPHighlight")
            local _v149 = _v147.Character:FindFirstChild("Head")
            local _v150 = _v149 and _v149:FindFirstChild("ESPBBG")
            if _v148 then _v148.Enabled = _p1 end
            if _v150 then _v150.Enabled = _p1 end
        end
    end
end)

for _, _v151 in pairs(_v1:GetPlayers()) do _f13(_v151) end
_f1(_v1.PlayerAdded:Connect(_f13))

_f8("Anti-Lag (FPS Boost)", _v61, function()
    for _, _v152 in pairs(_v5:GetDescendants()) do
        if _v152:IsA("BasePart") and not _v152:IsDescendantOf(_v12.Character) then
            _v152.Material = Enum.Material.SmoothPlastic
            if _v152:IsA("MeshPart") or _v152:IsA("UnionOperation") then _v152.Reflectance = 0 end
        elseif _v152:IsA("Decal") or _v152:IsA("Texture") then
            _v152.Transparency = 1
        elseif _v152:IsA("ParticleEmitter") or _v152:IsA("Trail") then
            _v152.Enabled = false
        end
    end
    _f3("Anti-Lag Applied!", Color3.fromRGB(0, 255, 200))
end)

local function _f14()
    for _, _v153 in pairs(_v1:GetPlayers()) do
        if _v153.Character then
            local _v154 = _v153.Character:FindFirstChild("ESPHighlight")
            if _v154 then _v154:Destroy() end
            local _v155 = _v153.Character:FindFirstChild("Head")
            local _v156 = _v155 and _v155:FindFirstChild("ESPBBG")
            if _v156 then _v156:Destroy() end
        end
    end
end

_f1(_v36.MouseButton1Click:Connect(function()
    _v126 = false
    _v108 = false
    _v124 = false
    _v140 = false
    _v128 = nil
    
    for _, _v157 in ipairs(_v14) do
        pcall(function() _v157:Disconnect() end)
    end
    _v14 = {}

    _f14()
    
    local _, _v158, _v159 = _f10()
    if _v159 then
        _v159.PlatformStand = false
        _v159.WalkSpeed = 16
    end
    if _v158 then
        _v158.Velocity = Vector3.new(0,0,0)
    end
    
    _v2:Create(_v20, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {Size = UDim2.new(0,0,0,0), Position = UDim2.new(0.5, 0, 0.5, -35), BackgroundTransparency = 1}):Play()
    task.wait(0.2)
    _v19:Destroy()
end))

local function _f15(_p1, _p2, _p3)
    _f1(task.spawn(function()
        local _v160 = false
        local _v161, _v162 = pcall(function()
            if not _v13 then return end
            if _p3 then
                loadstring(game:HttpGet(_p1))("Spider Script")
            else
                loadstring(game:HttpGet(_p1))()
            end
            _v160 = true
        end)
        
        if _v161 and _v160 then
            _f3("💥 " .. _p2:upper() .. " ACTIVE 💥", Color3.fromRGB(0, 255, 200))
        else
            _f3("Execution Failed!", Color3.fromRGB(255, 80, 80))
            warn("Failed structural execution stack: " .. tostring(_v162))
        end
    end))
end

_f6("Custom Scripts", _v62)

for _, _v163 in pairs(_v17) do
    _f8(_v163.Name, _v62, function()
        _f15(_v163.URL, _v163.Name, _v163.IsR6)
    end)
end

_f6("Selected Target", _v63)

local _v164 = nil
local _v165 = Instance.new("TextLabel")
_v165.Size = UDim2.new(1, -8, 0, 36)
_v165.BackgroundColor3 = Color3.fromRGB(20, 20, 24)
_v165.TextColor3 = Color3.fromRGB(0, 255, 200)
_v165.Font = Enum.Font.GothamBold
_v165.TextSize = 11
_v165.Text = "  Selected: None"
_v165.TextXAlignment = Enum.TextXAlignment.Left
_v165.Parent = _v63
Instance.new("UICorner", _v165).CornerRadius = UDim.new(0, 6)
local _v166 = Instance.new("UIStroke", _v165)
_v166.Color = Color3.fromRGB(28, 28, 32)
_v166.Thickness = 1

_f6("Search Players", _v63)

local _v167 = Instance.new("TextBox")
_v167.Size = UDim2.new(1, -8, 0, 32)
_v167.BackgroundColor3 = Color3.fromRGB(20, 20, 24)
_v167.PlaceholderText = "Search player name..."
_v167.PlaceholderColor3 = Color3.fromRGB(100, 100, 105)
_v167.Text = ""
_v167.TextColor3 = Color3.fromRGB(255, 255, 255)
_v167.Font = Enum.Font.GothamMedium
_v167.TextSize = 11
_v167.TextXAlignment = Enum.TextXAlignment.Left
_v167.Parent = _v63
Instance.new("UICorner", _v167).CornerRadius = UDim.new(0, 6)
local _v168 = Instance.new("UIStroke", _v167)
_v168.Color = Color3.fromRGB(28, 28, 32)
_v168.Thickness = 1

_f1(_v167.Focused:Connect(function()
    _v2:Create(_v168, TweenInfo.new(0.15), {Color = Color3.fromRGB(0, 180, 255)}):Play()
end))

_f1(_v167.FocusLost:Connect(function()
    _v2:Create(_v168, TweenInfo.new(0.15), {Color = Color3.fromRGB(28, 28, 32)}):Play()
end))

_f6("Player List", _v63)

local _v169 = Instance.new("ScrollingFrame")
_v169.Size = UDim2.new(1, -8, 0, 110)
_v169.BackgroundTransparency = 1
_v169.CanvasSize = UDim2.new(0, 0, 0, 0)
_v169.ScrollBarThickness = 3
_v169.ScrollBarImageColor3 = Color3.fromRGB(60, 60, 65)
_v169.Parent = _v63

local _v170 = Instance.new("UIListLayout")
_v170.Padding = UDim.new(0, 4)
_v170.SortOrder = Enum.SortOrder.LayoutOrder
_v170.Parent = _v169

_f1(_v170:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
    _v169.CanvasSize = UDim2.new(0, 0, 0, _v170.AbsoluteContentSize.Y + 5)
end))

local function _f16()
    for _, _v171 in pairs(_v169:GetChildren()) do
        if _v171:IsA("TextButton") then
            _v171:Destroy()
        end
    end
    
    local _v172 = _v167.Text:lower()
    
    for _, _v173 in pairs(_v1:GetPlayers()) do
        if _v173 ~= _v12 then
            local _v174 = _v173.DisplayName
            local _v175 = _v173.Name
            local _v176 = (_v174 .. " " .. _v175):lower()
            
            if _v172 == "" or string.find(_v176, _v172, 1, true) then
                local _v177 = Instance.new("TextButton")
                _v177.Size = UDim2.new(1, 0, 0, 32)
                _v177.BackgroundColor3 = Color3.fromRGB(20, 20, 24)
                _v177.Text = "  " .. _v174 .. " (@" .. _v175 .. ")"
                _v177.TextColor3 = Color3.fromRGB(225, 225, 230)
                _v177.Font = Enum.Font.GothamMedium
                _v177.TextSize = 11
                _v177.TextXAlignment = Enum.TextXAlignment.Left
                _v177.Parent = _v169
                
                Instance.new("UICorner", _v177).CornerRadius = UDim.new(0, 6)
                local _v178 = Instance.new("UIStroke", _v177)
                _v178.Color = Color3.fromRGB(28, 28, 32)
                _v178.Thickness = 1
                
                _f1(_v177.MouseButton1Click:Connect(function()
                    if not _v13 then return end
                    _v164 = _v173
                    _v165.Text = "  Selected: " .. _v174
                    _v2:Create(_v178, TweenInfo.new(0.2), {Color = Color3.fromRGB(0, 180, 255)}):Play()
                end))
            end
        end
    end
end

_f1(_v167:GetPropertyChangedSignal("Text"):Connect(function()
    _f16()
end))

_f8("Refresh Player List", _v63, function()
    _f16()
end)

_f6("Teleport & Spectate Actions", _v63)

local _v179 = false
local _v180 = 0.4

_f9("Tween Duration", 0.4, _v63, function(_p1)
    _v180 = _p1
end)

_f7("Enable Loop Tween to Target", false, _v63, function(_p1)
    _v179 = _p1
    if _p1 then
        _f1(task.spawn(function()
            while _v179 and _v13 do
                if _v164 and _v164.Character then
                    local _v181 = _v164.Character:FindFirstChild("HumanoidRootPart")
                    local _, _v182, _ = _f10()
                    if _v181 and _v182 then
                        local _v183 = TweenInfo.new(_v180, Enum.EasingStyle.Linear)
                        local _v184 = _v2:Create(_v182, _v183, {CFrame = _v181.CFrame + Vector3.new(0, 3, 0)})
                        _v184:Play()
                        
                        local _v185 = false
                        local _v186
                        _v186 = _v184.Completed:Connect(function()
                            _v185 = true
                            if _v186 then _v186:Disconnect() end
                        end)
                        
                        while not _v185 and _v179 and _v13 do
                            task.wait(0.05)
                        end
                        if not _v179 then
                            _v184:Cancel()
                            if _v186 then _v186:Disconnect() end
                        end
                    else
                        task.wait(0.2)
                    end
                else
                    task.wait(0.5)
                end
            end
        end))
    end
end)

_f8("Teleport to Target (Once)", _v63, function()
    if _v164 and _v164.Character then
        local _v187 = _v164.Character:FindFirstChild("HumanoidRootPart")
        local _, _v188, _ = _f10()
        if _v187 and _v188 then
            _v188.CFrame = _v187.CFrame + Vector3.new(0, 3, 0)
            _f3("Teleported to " .. _v164.DisplayName, Color3.fromRGB(0, 255, 200))
        else
            _f3("Target has no character!", Color3.fromRGB(255, 80, 80))
        end
    else
        _f3("No player selected or offline!", Color3.fromRGB(255, 80, 80))
    end
end)

local _v189 = false
_f7("Enable Spectate", false, _v63, function(_p1)
    _v189 = _p1
    local _v190 = _v5.CurrentCamera
    if _v190 then
        if _p1 then
            if _v164 and _v164.Character then
                local _v191 = _v164.Character:FindFirstChildOfClass("Humanoid")
                if _v191 then
                    _v190.CameraSubject = _v191
                    _f3("Spectating " .. _v164.DisplayName, Color3.fromRGB(0, 255, 200))
                else
                    _v190.CameraSubject = _v164.Character
                end
            else
                _f3("No player selected for spectate!", Color3.fromRGB(255, 80, 80))
            end
        else
            local _, _, _v192 = _f10()
            if _v192 then
                _v190.CameraSubject = _v192
            end
            _f3("Spectate Disabled", Color3.fromRGB(0, 180, 255))
        end
    end
end)

_f16()

_f6("Boombox Control", _v64)

local _v193 = false
local _v194 = {} 

local _v195 = Instance.new("Sound")
_v195.Name = "VulnSec_AudioPreview"
_v195.Parent = game:GetService("SoundService")
local _v196 = nil

_f7("Enable Boombox Logger", false, _v64, function(_p1)
    _v193 = _p1
    if _p1 then
        _f3("Boombox Logger Active", Color3.fromRGB(0, 255, 200))
    else
        _f3("Boombox Logger Paused", Color3.fromRGB(255, 180, 50))
        if _v195.IsPlaying then
            _v195:Stop()
        end
    end
end)

_f6("Search Boombox Logs", _v64)

local _v197 = Instance.new("TextBox")
_v197.Size = UDim2.new(1, -8, 0, 32)
_v197.BackgroundColor3 = Color3.fromRGB(20, 20, 24)
_v197.PlaceholderText = "Search player or song..."
_v197.PlaceholderColor3 = Color3.fromRGB(100, 100, 105)
_v197.Text = ""
_v197.TextColor3 = Color3.fromRGB(255, 255, 255)
_v197.Font = Enum.Font.GothamMedium
_v197.TextSize = 11
_v197.TextXAlignment = Enum.TextXAlignment.Left
_v197.Parent = _v64
Instance.new("UICorner", _v197).CornerRadius = UDim.new(0, 6)
local _v198 = Instance.new("UIStroke", _v197)
_v198.Color = Color3.fromRGB(28, 28, 32)
_v198.Thickness = 1

_f1(_v197.Focused:Connect(function()
    _v2:Create(_v198, TweenInfo.new(0.15), {Color = Color3.fromRGB(0, 180, 255)}):Play()
end))

_f1(_v197.FocusLost:Connect(function()
    _v2:Create(_v198, TweenInfo.new(0.15), {Color = Color3.fromRGB(28, 28, 32)}):Play()
end))

_f6("Logged IDs & Songs", _v64)

local _v199 = Instance.new("ScrollingFrame")
_v199.Size = UDim2.new(1, -8, 0, 80)
_v199.BackgroundTransparency = 1
_v199.CanvasSize = UDim2.new(0, 0, 0, 0)
_v199.ScrollBarThickness = 3
_v199.ScrollBarImageColor3 = Color3.fromRGB(60, 60, 65)
_v199.Parent = _v64

local _v200 = Instance.new("UIListLayout")
_v200.Padding = UDim.new(0, 4)
_v200.SortOrder = Enum.SortOrder.LayoutOrder
_v200.Parent = _v199

_f1(_v200:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
    _v199.CanvasSize = UDim2.new(0, 0, 0, _v200.AbsoluteContentSize.Y + 5)
end))

local function _f17()
    local _v201 = _v197.Text:lower()
    for _, _v202 in ipairs(_v194) do
        if _v202.Frame and _v202.Frame.Parent then
            local _v203 = (_v202.Player .. " " .. _v202.Title .. " " .. _v202.ID):lower()
            if _v201 == "" or string.find(_v203, _v201, 1, true) then
                _v202.Frame.Visible = true
            else
                _v202.Frame.Visible = false
            end
        end
    end
end

_f1(_v197:GetPropertyChangedSignal("Text"):Connect(function()
    _f17()
end))

local function _f18(_p1, _p2)
    if not _v13 then return end
    local _v204 = _p2:match("%d+")
    if not _v204 or _v204 == "" then return end
    
    for _, _v205 in ipairs(_v194) do
        if _v205.ID == _v204 then return end
    end
    
    local _v206 = Instance.new("Frame")
    _v206.Size = UDim2.new(1, 0, 0, 32)
    _v206.BackgroundColor3 = Color3.fromRGB(20, 20, 24)
    _v206.Parent = _v199
    
    Instance.new("UICorner", _v206).CornerRadius = UDim.new(0, 6)
    local _v207 = Instance.new("UIStroke", _v206)
    _v207.Color = Color3.fromRGB(28, 28, 32)
    _v207.Thickness = 1
    
    local _v208 = Instance.new("TextButton")
    _v208.Size = UDim2.new(1, -64, 1, 0)
    _v208.BackgroundTransparency = 1
    _v208.Text = "  " .. _p1 .. " -> Loading Song..."
    _v208.TextColor3 = Color3.fromRGB(0, 255, 200)
    _v208.Font = Enum.Font.GothamMedium
    _v208.TextSize = 11
    _v208.TextXAlignment = Enum.TextXAlignment.Left
    _v208.Parent = _v206
    
    local _v209 = Instance.new("TextButton")
    _v209.Size = UDim2.new(0, 24, 0, 24)
    _v209.Position = UDim2.new(1, -56, 0.5, -12)
    _v209.BackgroundColor3 = Color3.fromRGB(30, 30, 36)
    _v209.Text = "📋"
    _v209.TextColor3 = Color3.fromRGB(0, 255, 200)
    _v209.Font = Enum.Font.GothamBold
    _v209.TextSize = 10
    _v209.Parent = _v206
    Instance.new("UICorner", _v209).CornerRadius = UDim.new(0, 4)
    local _v210 = Instance.new("UIStroke", _v209)
    _v210.Color = Color3.fromRGB(45, 45, 50)
    _v210.Thickness = 1

    local _v211 = Instance.new("TextButton")
    _v211.Size = UDim2.new(0, 24, 0, 24)
    _v211.Position = UDim2.new(1, -28, 0.5, -12)
    _v211.BackgroundColor3 = Color3.fromRGB(30, 30, 36)
    _v211.Text = "▶"
    _v211.TextColor3 = Color3.fromRGB(0, 255, 200)
    _v211.Font = Enum.Font.GothamBold
    _v211.TextSize = 10
    _v211.Parent = _v206
    Instance.new("UICorner", _v211).CornerRadius = UDim.new(0, 4)
    local _v212 = Instance.new("UIStroke", _v211)
    _v212.Color = Color3.fromRGB(45, 45, 50)
    _v212.Thickness = 1

    local _v213 = {Player = _p1, Title = "Loading Song...", ID = _v204, Frame = _v206}
    table.insert(_v194, _v213)
    _f17()
    
    _f2(task.spawn(function()
        local _v214, _v215 = pcall(function()
            return _v7:GetProductInfo(tonumber(_v204))
        end)
        if _v214 and _v215 and _v215.Name and _v13 then
            _v213.Title = _v215.Name
            if _v208 and _v208.Parent then
                _v208.Text = "  " .. _p1 .. " -> " .. _v215.Name .. " (" .. _v204 .. ")"
            end
        elseif _v13 then
            _v213.Title = "Unknown Song"
            if _v208 and _v208.Parent then
                _v208.Text = "  " .. _p1 .. " -> ID: " .. _v204
            end
        end
        _f17()
    end))
    
    _f1(_v209.MouseButton1Click:Connect(function()
        pcall(function()
            if setclipboard then
                setclipboard(_v204)
                _f3("Copied ID: " .. _v204, Color3.fromRGB(0, 255, 200))
            end
        end)
    end))
    
    _f1(_v211.MouseButton1Click:Connect(function()
        if _v195.IsPlaying and _v196 == _v204 then
            _v195:Stop()
            _v196 = nil
            _v211.Text = "▶"
        else
            _v195.SoundId = "rbxassetid://" .. _v204
            _v195:Play()
            _v196 = _v204
            _v211.Text = "⏹"
        end
    end))
end

local function _f19(_p1)
    if _p1:IsA("Sound") then
        local function _v216()
            if not _v13 or not _v193 then return end
            if _p1.SoundId ~= "" and _p1.Playing then
                local _v217 = _p1.Parent
                local _v218 = "Game / Ambient"
                
                while _v217 and _v217 ~= game do
                    if _v217:IsA("Model") and _v1:GetPlayerFromCharacter(_v217) then
                        _v218 = _v1:GetPlayerFromCharacter(_v217).Name
                        break
                    elseif _v217:IsA("Player") then
                        _v218 = _v217.Name
                        break
                    elseif _v217 == _v9 then
                        _v218 = "SoundService (BGM)"
                        break
                    end
                    _v217 = _v217.Parent
                end
                
                if _v218 == "Game / Ambient" and _p1:IsDescendantOf(_v12.Character or workspace) then
                    _v218 = _v12.Name
                end
                
                _f18(_v218, _p1.SoundId)
            end
        end

        _f2(_p1.Changed:Connect(function(_p2)
            if _p2 == "SoundId" or _p2 == "Playing" then
                if _p1.Playing then
                    _v216()
                end
            end
        end))
        
        if _p1.Playing then
            _v216()
        end
    end
end

for _, _v219 in pairs(_v5:GetDescendants()) do
    _f19(_v219)
end
_f2(_v5.DescendantAdded:Connect(_f19))

for _, _v220 in pairs(_v9:GetDescendants()) do
    _f19(_v220)
end
_f2(_v9.DescendantAdded:Connect(_f19))

_f8("Copy All Logged IDs", _v64, function()
    local _v221 = {}
    for _, _v222 in ipairs(_v194) do
        table.insert(_v221, _v222.Title .. " - " .. _v222.ID)
    end
    local _v223 = table.concat(_v221, "\n")
    pcall(function()
        if setclipboard then
            setclipboard(_v223)
            _f3("Songs & IDs Copied!", Color3.fromRGB(0, 255, 200))
        end
    end)
end)

_f8("Clear Log List", _v64, function()
    if _v195.IsPlaying then
        _v195:Stop()
    end
    _v194 = {}
    for _, _v224 in pairs(_v199:GetChildren()) do
        if _v224:IsA("Frame") then
            _v224:Destroy()
        end
    end
    _f3("Logs Cleared!", Color3.fromRGB(255, 180, 50))
end)

_f6("Boombox IDs", _v65)

local _v225 = Instance.new("TextBox")
_v225.Size = UDim2.new(1, -8, 0, 32)
_v225.BackgroundColor3 = Color3.fromRGB(20, 20, 24)
_v225.PlaceholderText = "Search IDs or songs..."
_v225.PlaceholderColor3 = Color3.fromRGB(100, 100, 105)
_v225.Text = ""
_v225.TextColor3 = Color3.fromRGB(255, 255, 255)
_v225.Font = Enum.Font.GothamMedium
_v225.TextSize = 11
_v225.TextXAlignment = Enum.TextXAlignment.Left
_v225.Parent = _v65
Instance.new("UICorner", _v225).CornerRadius = UDim.new(0, 6)
local _v226 = Instance.new("UIStroke", _v225)
_v226.Color = Color3.fromRGB(28, 28, 32)
_v226.Thickness = 1

_f1(_v225.Focused:Connect(function()
    _v2:Create(_v226, TweenInfo.new(0.15), {Color = Color3.fromRGB(0, 180, 255)}):Play()
end))

_f1(_v225.FocusLost:Connect(function()
    _v2:Create(_v226, TweenInfo.new(0.15), {Color = Color3.fromRGB(28, 28, 32)}):Play()
end))

_f6("ID List", _v65)

local _v227 = Instance.new("ScrollingFrame")
_v227.Size = UDim2.new(1, -8, 0, 140)
_v227.BackgroundTransparency = 1
_v227.CanvasSize = UDim2.new(0, 0, 0, 0)
_v227.ScrollBarThickness = 3
_v227.ScrollBarImageColor3 = Color3.fromRGB(60, 60, 65)
_v227.Parent = _v65

local _v228 = Instance.new("UIListLayout")
_v228.Padding = UDim.new(0, 4)
_v228.SortOrder = Enum.SortOrder.LayoutOrder
_v228.Parent = _v227

_f1(_v228:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
    _v227.CanvasSize = UDim2.new(0, 0, 0, _v228.AbsoluteContentSize.Y + 5)
end))

local _v229 = {}

local function _f20()
    local _v230 = _v225.Text:lower()
    for _, _v231 in ipairs(_v229) do
        if _v231.Frame and _v231.Frame.Parent then
            local _v232 = (_v231.Title .. " " .. _v231.ID):lower()
            if _v230 == "" or string.find(_v232, _v230, 1, true) then
                _v231.Frame.Visible = true
            else
                _v231.Frame.Visible = false
            end
        end
    end
end

_f1(_v225:GetPropertyChangedSignal("Text"):Connect(function()
    _f20()
end))

local function _f21()
    for _, _v233 in pairs(_v227:GetChildren()) do
        if _v233:IsA("Frame") then
            _v233:Destroy()
        end
    end
    _v229 = {}
    
    _f2(task.spawn(function()
        local _v234, _v235 = pcall(function()
            return game:HttpGet("https://raw.githubusercontent.com/leos00281-eng/Rbx/refs/heads/main/ID")
        end)
        
        if _v234 and _v235 and _v13 then
            for _v236 in _v235:gmatch("[^\r\n]+") do
                if not _v13 then break end
                if _v236 ~= "" then
                    local _v237 = _v236:match("%d+")
                    if _v237 then
                        local _v238 = Instance.new("Frame")
                        _v238.Size = UDim2.new(1, 0, 0, 32)
                        _v238.BackgroundColor3 = Color3.fromRGB(20, 20, 24)
                        _v238.Parent = _v227
                        
                        Instance.new("UICorner", _v238).CornerRadius = UDim.new(0, 6)
                        local _v239 = Instance.new("UIStroke", _v238)
                        _v239.Color = Color3.fromRGB(28, 28, 32)
                        _v239.Thickness = 1
                        
                        local _v240 = Instance.new("TextButton")
                        _v240.Size = UDim2.new(1, -64, 1, 0)
                        _v240.BackgroundTransparency = 1
                        _v240.Text = "  Loading Song... (" .. _v237 .. ")"
                        _v240.TextColor3 = Color3.fromRGB(0, 255, 200)
                        _v240.Font = Enum.Font.GothamMedium
                        _v240.TextSize = 11
                        _v240.TextXAlignment = Enum.TextXAlignment.Left
                        _v240.Parent = _v238
                        
                        local _v241 = Instance.new("TextButton")
                        _v241.Size = UDim2.new(0, 24, 0, 24)
                        _v241.Position = UDim2.new(1, -56, 0.5, -12)
                        _v241.BackgroundColor3 = Color3.fromRGB(30, 30, 36)
                        _v241.Text = "📋"
                        _v241.TextColor3 = Color3.fromRGB(0, 255, 200)
                        _v241.Font = Enum.Font.GothamBold
                        _v241.TextSize = 10
                        _v241.Parent = _v238
                        Instance.new("UICorner", _v241).CornerRadius = UDim.new(0, 4)
                        local _v242 = Instance.new("UIStroke", _v241)
                        _v242.Color = Color3.fromRGB(45, 45, 50)
                        _v242.Thickness = 1

                        local _v243 = Instance.new("TextButton")
                        _v243.Size = UDim2.new(0, 24, 0, 24)
                        _v243.Position = UDim2.new(1, -28, 0.5, -12)
                        _v243.BackgroundColor3 = Color3.fromRGB(30, 30, 36)
                        _v243.Text = "▶"
                        _v243.TextColor3 = Color3.fromRGB(0, 255, 200)
                        _v243.Font = Enum.Font.GothamBold
                        _v243.TextSize = 10
                        _v243.Parent = _v238
                        Instance.new("UICorner", _v243).CornerRadius = UDim.new(0, 4)
                        local _v244 = Instance.new("UIStroke", _v243)
                        _v244.Color = Color3.fromRGB(45, 45, 50)
                        _v244.Thickness = 1

                        local _v245 = {Title = "Loading Song...", ID = _v237, Frame = _v238}
                        table.insert(_v229, _v245)
                        _f20()
                        
                        _f2(task.spawn(function()
                            local _v246, _v247 = pcall(function()
                                return _v7:GetProductInfo(tonumber(_v237))
                            end)
                            if _v246 and _v247 and _v247.Name and _v13 then
                                _v245.Title = _v247.Name
                                if _v240 and _v240.Parent then
                                    _v240.Text = "  " .. _v247.Name .. " (" .. _v237 .. ")"
                                end
                            elseif _v13 then
                                _v245.Title = "Unknown Song"
                                if _v240 and _v240.Parent then
                                    _v240.Text = "  ID: " .. _v237
                                end
                            end
                            _f20()
                        end))
                        
                        _f1(_v241.MouseButton1Click:Connect(function()
                            pcall(function()
                                if setclipboard then
                                    setclipboard(_v237)
                                    _f3("Copied ID: " .. _v237, Color3.fromRGB(0, 255, 200))
                                end
                            end)
                        end))
                        
                        _f1(_v243.MouseButton1Click:Connect(function()
                            if _v195.IsPlaying and _v196 == _v237 then
                                _v195:Stop()
                                _v196 = nil
                                _v243.Text = "▶"
                            else
                                _v195.SoundId = "rbxassetid://" .. _v237
                                _v195:Play()
                                _v196 = _v237
                                _v243.Text = "⏹"
                            end
                        end))
                    end
                end
            end
            _f20()
        end
    end))
end

_f8("Refresh IDs", _v65, function()
    _f21()
    _f3("IDs Refreshed!", Color3.fromRGB(0, 255, 200))
end)

_f21()

_f6("Changelog & Updates", _v66)

local _v248 = Instance.new("ScrollingFrame")
_v248.Size = UDim2.new(1, -8, 0, 180)
_v248.BackgroundTransparency = 1
_v248.CanvasSize = UDim2.new(0, 0, 0, 0)
_v248.ScrollBarThickness = 3
_v248.ScrollBarImageColor3 = Color3.fromRGB(60, 60, 65)
_v248.Parent = _v66

local _v249 = Instance.new("UIListLayout")
_v249.Padding = UDim.new(0, 4)
_v249.SortOrder = Enum.SortOrder.LayoutOrder
_v249.Parent = _v248

_f1(_v249:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
    _v248.CanvasSize = UDim2.new(0, 0, 0, _v249.AbsoluteContentSize.Y + 5)
end))

local function _f22()
    for _, _v250 in pairs(_v248:GetChildren()) do
        if _v250:IsA("TextLabel") or _v250:IsA("Frame") then
            _v250:Destroy()
        end
    end
    
    _f2(task.spawn(function()
        local _v251, _v252 = pcall(function()
            return game:HttpGet("https://raw.githubusercontent.com/leos00281-eng/Rbx/refs/heads/main/Logs")
        end)
        
        if _v251 and _v252 and _v13 then
            for _v253 in _v252:gmatch("[^\r\n]+") do
                if not _v13 then break end
                if _v253 ~= "" then
                    local _v254 = Instance.new("TextLabel")
                    _v254.Size = UDim2.new(1, -10, 0, 0)
                    _v254.AutomaticSize = Enum.AutomaticSize.Y
                    _v254.BackgroundTransparency = 1
                    _v254.Text = "  " .. _v253
                    _v254.TextColor3 = Color3.fromRGB(0, 255, 200)
                    _v254.Font = Enum.Font.GothamMedium
                    _v254.TextSize = 11
                    _v254.TextWrapped = true
                    _v254.TextXAlignment = Enum.TextXAlignment.Left
                    _v254.Parent = _v248
                end
            end
        elseif _v13 then
            local _v255 = Instance.new("TextLabel")
            _v255.Size = UDim2.new(1, -10, 0, 0)
            _v255.AutomaticSize = Enum.AutomaticSize.Y
            _v255.BackgroundTransparency = 1
            _v255.Text = "  Failed to fetch update logs"
            _v255.TextColor3 = Color3.fromRGB(255, 80, 80)
            _v255.Font = Enum.Font.GothamMedium
            _v255.TextSize = 11
            _v255.TextWrapped = true
            _v255.TextXAlignment = Enum.TextXAlignment.Left
            _v255.Parent = _v248
        end
    end))
end

_f8("Refresh Update Logs", _v66, function()
    _f22()
    _f3("Update Logs Refreshed!", Color3.fromRGB(0, 255, 200))
end)

_f22()

_f6("Project Information", _v67)

local _v256 = Instance.new("TextLabel")
_v256.Size = UDim2.new(1, -8, 0, 110)
_v256.BackgroundTransparency = 1
_v256.Text = "VulnSec Hub represents an advanced, high-performance runtime modification environment engineered for optimal system delivery. This deployment is currently operating within an active, closed BETA developmental stage.\n\nOur system infrastructure remains subject to continuous refactoring, performance optimization updates, and structural engine enhancements designed to maintain peak stability."
_v256.TextColor3 = Color3.fromRGB(180, 185, 195)
_v256.Font = Enum.Font.GothamMedium
_v256.TextSize = 11
_v256.TextWrapped = true
_v256.TextYAlignment = Enum.TextYAlignment.Top
_v256.TextXAlignment = Enum.TextXAlignment.Left
_v256.Parent = _v67

_f6("Official Developers Link", _v67)

local _v257 = Instance.new("ImageButton")
_v257.Size = UDim2.new(0,48,0,48)
_v257.Position = UDim2.new(0.5,-24,0,0)
_v257.BackgroundColor3 = Color3.fromRGB(20,20,24)
_v257.Parent = _v67

pcall(function()
    if typeof(isfile) == "function" and typeof(writefile) == "function" and typeof(getcustomasset) == "function" then
        local _v258 = "Vulnsec_FB_Logo.png"
        if not isfile(_v258) then
            local _v259, _v260 = pcall(function()
                return game:HttpGet("https://raw.githubusercontent.com/leos00281-eng/Rbx/refs/heads/main/0gFm6_6mwp0.png")
            end)
            if _v259 and _v260 then
                writefile(_v258, _v260)
            end
        end
        _v257.Image = getcustomasset(_v258)
    end
end)

local _v261 = Instance.new("UICorner")
_v261.CornerRadius = UDim.new(1,0)
_v261.Parent = _v257

local _v262 = Instance.new("UIStroke")
_v262.Color = Color3.fromRGB(28,28,32)
_v262.Thickness = 1
_v262.Parent = _v257

local _v263 = Instance.new("TextLabel")
_v263.Size = UDim2.new(1,-8,0,24)
_v263.Position = UDim2.new(0,0,0,54)
_v263.BackgroundTransparency = 1
_v263.Text = "Facebook"
_v263.TextColor3 = Color3.fromRGB(0,180,255)
_v263.Font = Enum.Font.Code
_v263.TextSize = 10
_v263.Parent = _v67

_f1(_v257.MouseButton1Click:Connect(function()
    pcall(function()
        if setclipboard then
            setclipboard("https://www.facebook.com/vulnsec.legion")
        end
    end)
    pcall(function()
        _v8:OpenBrowserWindow("https://www.facebook.com/vulnsec.legion")
    end)
    local _v264 = _v263.Text
    _v263.Text = "Link Copied!"
    task.wait(1.5)
    _v263.Text = _v264
end))

local function _f23(_p1, _p2)
    local _v265, _v266, _v267, _v268
    _f1(_p1.InputBegan:Connect(function(_p3)
        if _p3.UserInputType == Enum.UserInputType.MouseButton1 or _p3.UserInputType == Enum.UserInputType.Touch then
            _v265 = true
            _v266 = _p3.Position
            _v267 = _p2.Position
            _f1(_p3.Changed:Connect(function()
                if _p3.UserInputState == Enum.UserInputState.End then _v265 = false end
            end))
        end
    end))
    _f1(_p1.InputChanged:Connect(function(_p3)
        if _p3.UserInputType == Enum.UserInputType.MouseMovement or _p3.UserInputType == Enum.UserInputType.Touch then _v268 = _p3 end
    end))
    _f1(_v3.InputChanged:Connect(function(_p3)
        if _p3 == _v268 and _v265 then
            local _v269 = _p3.Position - _v266
            _v2:Create(_p2, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                Position = UDim2.new(_v267.X.Scale, _v267.X.Offset + _v269.X, _v267.Y.Scale, _v267.Y.Offset + _v269.Y)
            }):Play()
        end
    end))
end

_f23(_v32, _v20)
_f23(_v40, _v40)

local function _f24()
    _v20.Size = UDim2.new(0, 0, 0, 0)
    _v20.Position = UDim2.new(0.5, 0, 0.5, -35)
    _v20.BackgroundTransparency = 1
    _v47.Visible = false
    _v32.BackgroundTransparency = 1
    _v35.TextTransparency = 1
    _v36.BackgroundTransparency = 1
    _v38.BackgroundTransparency = 1
    _v22.Enabled = false
    
    task.wait(0.1)
    if not _v13 then return end
    _v22.Enabled = true
    _v22.Thickness = 5
    _v22.Color = Color3.fromRGB(0, 255, 200)
    
    local _v270 = _v2:Create(_v20, TweenInfo.new(0.4, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {
        BackgroundTransparency = 0.4,
        Size = UDim2.new(0, 480, 0, 3),
        Position = UDim2.new(0.5, -240, 0.5, -200)
    })
    _v270:Play()
    _v270.Completed:Wait()
    if not _v13 then return end
    
    local _v271 = _v2:Create(_v20, TweenInfo.new(0.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
        Size = UDim2.new(0, 480, 0, 330),
        Position = UDim2.new(0.5, -240, 0.5, -200),
        BackgroundTransparency = 0
    })
    local _v272 = _v2:Create(_v22, TweenInfo.new(0.6, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        Thickness = 1.5,
        Color = Color3.fromRGB(0, 180, 255)
    })
    
    _v271:Play()
    _v272:Play()
    
    _v2:Create(_v32, TweenInfo.new(0.3), {BackgroundTransparency = 0}):Play()
    _v2:Create(_v35, TweenInfo.new(0.3), {TextTransparency = 0}):Play()
    _v2:Create(_v36, TweenInfo.new(0.3), {BackgroundTransparency = 0}):Play()
    _v2:Create(_v38, TweenInfo.new(0.3), {BackgroundTransparency = 0}):Play()
    
    _v271.Completed:Wait()
    if _v13 then
        _v47.Visible = true
        _f3("VulnSec Hub Loaded Successfully", Color3.fromRGB(0, 255, 200))
    end
end

_f24()
