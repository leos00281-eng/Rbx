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

local _v16 = true

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
            _v110('loadstring(game:HttpGet("https://raw.githubusercontent.com/leos00281-eng/Rbx/refs/heads/main/VulnHub1.lua"))()')
        end)
    end
end

_f11()

_f7("Auto Exec (Rejoin / Change Game)", true, _v61, function(_p1)
    _v16 = _p1
    local _v110 = (syn and syn.queue_on_teleport) or queue_on_teleport or (fluxus and fluxus.queue_on_teleport)
    
    if _p1 then
        _f11()
        _f3("Auto Exec Enabled", Color3.fromRGB(0, 255, 200))
    else
        
        pcall(function()
            if _v110 then
                _v110("") 
            end
        end)
        _f3("Auto Exec Disabled", Color3.fromRGB(255, 80, 80))
    end
end)


_f6("Server Info", _v61)

local _v111 = Instance.new("Frame")
_v111.Size = UDim2.new(1, -8, 0, 52)
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
    
    local _v114 = string.format("roblox://experiences/start?placeId=%d&gameInstanceId=%s", game.PlaceId, game.JobId)
    pcall(function()
        if setclipboard then
            setclipboard(_v114)
            _f3("Roblox Protocol Link Copied!", Color3.fromRGB(0, 255, 200))
        end
    end)
end)

_f8("Rejoin Current Server", _v61, function()
    pcall(function()
        _v10:TeleportToPlaceInstance(game.PlaceId, game.JobId, _v12)
    end)
end)

_f6("Friends Joined Count", _v61)

local _v115 = Instance.new("Frame")
_v115.Size = UDim2.new(1, -8, 0, 36)
_v115.BackgroundColor3 = Color3.fromRGB(20, 20, 24)
_v115.Parent = _v61

Instance.new("UICorner", _v115).CornerRadius = UDim.new(0, 6)
local _v116 = Instance.new("UIStroke", _v115)
_v116.Color = Color3.fromRGB(28, 28, 32)
_v116.Thickness = 1

local _v117 = Instance.new("TextLabel")
_v117.Size = UDim2.new(1, -16, 1, 0)
_v117.Position = UDim2.new(0, 8, 0, 0)
_v117.BackgroundTransparency = 1
_v117.TextColor3 = Color3.fromRGB(0, 255, 200)
_v117.Font = Enum.Font.GothamBold
_v117.TextSize = 11
_v117.TextXAlignment = Enum.TextXAlignment.Left
_v117.Text = "  Friends Joined: 0"
_v117.Parent = _v115

_f6("Search Friends", _v61)

local _v118 = Instance.new("TextBox")
_v118.Size = UDim2.new(1, -8, 0, 32)
_v118.BackgroundColor3 = Color3.fromRGB(20, 20, 24)
_v118.PlaceholderText = "Search joined friend..."
_v118.PlaceholderColor3 = Color3.fromRGB(100, 100, 105)
_v118.Text = ""
_v118.TextColor3 = Color3.fromRGB(255, 255, 255)
_v118.Font = Enum.Font.GothamMedium
_v118.TextSize = 11
_v118.TextXAlignment = Enum.TextXAlignment.Left
_v118.Parent = _v61
Instance.new("UICorner", _v118).CornerRadius = UDim.new(0, 6)
local _v119 = Instance.new("UIStroke", _v118)
_v119.Color = Color3.fromRGB(28, 28, 32)
_v119.Thickness = 1

_f1(_v118.Focused:Connect(function()
    _v2:Create(_v119, TweenInfo.new(0.15), {Color = Color3.fromRGB(0, 180, 255)}):Play()
end))

_f1(_v118.FocusLost:Connect(function()
    _v2:Create(_v119, TweenInfo.new(0.15), {Color = Color3.fromRGB(28, 28, 32)}):Play()
end))

_f6("Joined Friends List", _v61)

local _v120 = Instance.new("ScrollingFrame")
_v120.Size = UDim2.new(1, -8, 0, 90)
_v120.BackgroundTransparency = 1
_v120.CanvasSize = UDim2.new(0, 0, 0, 0)
_v120.ScrollBarThickness = 3
_v120.ScrollBarImageColor3 = Color3.fromRGB(60, 60, 65)
_v120.Parent = _v61

local _v121 = Instance.new("UIListLayout")
_v121.Padding = UDim.new(0, 4)
_v121.SortOrder = Enum.SortOrder.LayoutOrder
_v121.Parent = _v120

_f1(_v121:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
    _v120.CanvasSize = UDim2.new(0, 0, 0, _v121.AbsoluteContentSize.Y + 5)
end))

local function _f12()
    local _v122 = _v1:GetPlayers()
    local _v123 = _v1.MaxPlayers
    
    _v113.Text = string.format(
        "Place ID: %d\nJob ID: %s\nPlayer Count: %d/%d",
        game.PlaceId,
        game.JobId ~= "" and game.JobId or "N/A",
        #_v122,
        _v123
    )

    for _, _v124 in pairs(_v120:GetChildren()) do
        if _v124:IsA("Frame") then
            _v124:Destroy()
        end
    end

    local _v125 = {}
    for _, _v126 in ipairs(_v122) do
        if _v126 ~= _v12 then
            pcall(function()
                if _v12:IsFriendsWith(_v126.UserId) then
                    table.insert(_v125, _v126)
                end
            end)
        end
    end

    _v117.Text = "  Friends Joined: " .. tostring(#_v125)

    local _v127 = _v118.Text:lower()

    for _, _v128 in ipairs(_v125) do
        local _v129 = _v128.DisplayName
        local _v130 = _v128.Name
        local _v131 = (_v129 .. " " .. _v130):lower()

        if _v127 == "" or string.find(_v131, _v127, 1, true) then
            local _v132 = Instance.new("Frame")
            _v132.Size = UDim2.new(1, 0, 0, 32)
            _v132.BackgroundColor3 = Color3.fromRGB(20, 20, 24)
            _v132.Parent = _v120

            Instance.new("UICorner", _v132).CornerRadius = UDim.new(0, 6)
            local _v133 = Instance.new("UIStroke", _v132)
            _v133.Color = Color3.fromRGB(28, 28, 32)
            _v133.Thickness = 1

            local _v134 = Instance.new("TextLabel")
            _v134.Size = UDim2.new(1, -12, 1, 0)
            _v134.Position = UDim2.new(0, 6, 0, 0)
            _v134.BackgroundTransparency = 1
            _v134.Text = "  " .. _v129 .. " (@" .. _v130 .. ")"
            _v134.TextColor3 = Color3.fromRGB(0, 255, 180)
            _v134.Font = Enum.Font.GothamMedium
            _v134.TextSize = 11
            _v134.TextXAlignment = Enum.TextXAlignment.Left
            _v134.Parent = _v132
        end
    end
end

_f1(_v118:GetPropertyChangedSignal("Text"):Connect(function()
    _f12()
end))

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
    local _, _, _v135 = _f10()
    if _v135 then _v135.WalkSpeed = _p1 and _v109 or 16 end
end)

_f9("Walk Speed", 50, _v61, function(_p1)
    _v109 = _p1
    local _, _, _v136 = _f10()
    if _v108 and _v136 then _v136.WalkSpeed = _p1 end
end)

_f1(_v4.Heartbeat:Connect(function()
    if _v13 and _v108 then
        local _, _, _v137 = _f10()
        if _v137 and _v137.WalkSpeed ~= _v109 then
            _v137.WalkSpeed = _v109
        end
    end
end))

local _v138 = false
_f1(_v4.Stepped:Connect(function()
    if _v13 and _v138 and _v12.Character then
        for _, _v139 in pairs(_v12.Character:GetDescendants()) do
            if _v139:IsA("BasePart") then _v139.CanCollide = false end
        end
    end
end))

_f7("Enable Noclip", false, _v61, function(_p1) _v138 = _p1 end)

local _v140 = false
local _v141 = 50
local _v142 = nil

_f7("Enable Fly Mode", false, _v61, function(_p1)
    _v140 = _p1
    _v142 = nil
    local _, _v143, _v144 = _f10()
    if _v144 then
        _v144.PlatformStand = _p1
    end
    if not _p1 and _v143 then
        _v143.Velocity = Vector3.new(0,0,0)
    end
end)

_f9("Fly Speed", 50, _v61, function(_p1)
    _v141 = _p1
end)

_f1(_v4.Heartbeat:Connect(function()
    if _v13 and _v140 then
        local _, _v145, _v146 = _f10()
        if _v145 and _v146 then
            _v146.PlatformStand = true
            
            local _v147 = _v5.CurrentCamera
            if _v147 then
                local _v148 = _v146.MoveDirection
                local _v149 = _v147.CFrame.LookVector
                
                if _v148.Magnitude > 0 then
                    _v142 = nil
                    local _v150 = _v147.CFrame.RightVector
                    local _v151 = _v147.CFrame:VectorToObjectSpace(_v148)
                    local _v152 = Vector3.new(_v151.X, 0, _v151.Z).Unit
                    local _v153 = ((_v149 * -_v152.Z) + (_v150 * _v152.X)).Unit
                    
                    _v145.Velocity = _v153 * _v141
                    _v145.CFrame = CFrame.new(_v145.Position, _v145.Position + _v149)
                else
                    if not _v142 then
                        _v142 = _v145.Position
                    end
                    _v145.Velocity = Vector3.new(0, 0, 0)
                    _v145.CFrame = CFrame.new(_v142, _v142 + _v149)
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

local _v154 = false

local function _f13(_p1)
    if _p1 == _v12 then return end
    
    local function _v155()
        if not _v13 then return end
        local _v156 = _p1.Character or _p1.CharacterAdded:Wait()
        local _v157 = _v156:WaitForChild("Head", 5)
        if not _v157 or not _v13 then return end

        if _v156:FindFirstChild("ESPHighlight") then _v156.ESPHighlight:Destroy() end
        if _v157:FindFirstChild("ESPBBG") then _v157.ESPBBG:Destroy() end

        local _v158 = Instance.new("Highlight")
        _v158.Name = "ESPHighlight"
        _v158.FillTransparency = 0.6
        _v158.FillColor = Color3.fromRGB(0, 255, 150)
        _v158.OutlineColor = Color3.fromRGB(255, 255, 255)
        _v158.Enabled = _v154
        _v158.Parent = _v156

        local _v159 = Instance.new("BillboardGui")
        _v159.Name = "ESPBBG"
        _v159.Size = UDim2.new(0, 200, 0, 50)
        _v159.AlwaysOnTop = true
        _v159.ExtentsOffset = Vector3.new(0, 3, 0)
        _v159.Enabled = _v154
        _v159.Parent = _v157

        local _v160 = Instance.new("TextLabel")
        _v160.Size = UDim2.new(1, 0, 1, 0)
        _v160.BackgroundTransparency = 1
        _v160.Text = _p1.DisplayName
        _v160.TextColor3 = Color3.fromRGB(255, 50, 50)
        _v160.Font = Enum.Font.GothamBold
        _v160.TextSize = 14
        _v160.Parent = _v159
    end

    _v155()
    _f1(_p1.CharacterAdded:Connect(_v155))
end

_f7("Enable Player ESP", false, _v61, function(_p1)
    _v154 = _p1
    for _, _v161 in pairs(_v1:GetPlayers()) do
        if _v161.Character then
            local _v162 = _v161.Character:FindFirstChild("ESPHighlight")
            local _v163 = _v161.Character:FindFirstChild("Head")
            local _v164 = _v163 and _v163:FindFirstChild("ESPBBG")
            if _v162 then _v162.Enabled = _p1 end
            if _v164 then _v164.Enabled = _p1 end
        end
    end
end)

for _, _v165 in pairs(_v1:GetPlayers()) do _f13(_v165) end
_f1(_v1.PlayerAdded:Connect(_f13))

_f8("Anti-Lag (FPS Boost)", _v61, function()
    for _, _v166 in pairs(_v5:GetDescendants()) do
        if _v166:IsA("BasePart") and not _v166:IsDescendantOf(_v12.Character) then
            _v166.Material = Enum.Material.SmoothPlastic
            if _v166:IsA("MeshPart") or _v166:IsA("UnionOperation") then _v166.Reflectance = 0 end
        elseif _v166:IsA("Decal") or _v166:IsA("Texture") then
            _v166.Transparency = 1
        elseif _v166:IsA("ParticleEmitter") or _v166:IsA("Trail") then
            _v166.Enabled = false
        end
    end
    _f3("Anti-Lag Applied!", Color3.fromRGB(0, 255, 200))
end)

local function _f14()
    for _, _v167 in pairs(_v1:GetPlayers()) do
        if _v167.Character then
            local _v168 = _v167.Character:FindFirstChild("ESPHighlight")
            if _v168 then _v168:Destroy() end
            local _v169 = _v167.Character:FindFirstChild("Head")
            local _v170 = _v169 and _v169:FindFirstChild("ESPBBG")
            if _v170 then _v170:Destroy() end
        end
    end
end

_f1(_v36.MouseButton1Click:Connect(function()
    _v140 = false
    _v108 = false
    _v138 = false
    _v154 = false
    _v142 = nil
    
    for _, _v171 in ipairs(_v14) do
        pcall(function() _v171:Disconnect() end)
    end
    _v14 = {}

    _f14()
    
    local _, _v172, _v173 = _f10()
    if _v173 then
        _v173.PlatformStand = false
        _v173.WalkSpeed = 16
    end
    if _v172 then
        _v172.Velocity = Vector3.new(0,0,0)
    end
    
    _v2:Create(_v20, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {Size = UDim2.new(0,0,0,0), Position = UDim2.new(0.5, 0, 0.5, -35), BackgroundTransparency = 1}):Play()
    task.wait(0.2)
    _v19:Destroy()
end))

local function _f15(_p1, _p2, _p3)
    _f1(task.spawn(function()
        local _v174 = false
        local _v175, _v176 = pcall(function()
            if not _v13 then return end
            if _p3 then
                loadstring(game:HttpGet(_p1))("Spider Script")
            else
                loadstring(game:HttpGet(_p1))()
            end
            _v174 = true
        end)
        
        if _v175 and _v174 then
            _f3("💥 " .. _p2:upper() .. " ACTIVE 💥", Color3.fromRGB(0, 255, 200))
        else
            _f3("Execution Failed!", Color3.fromRGB(255, 80, 80))
            warn("Failed structural execution stack: " .. tostring(_v176))
        end
    end))
end

_f6("Custom Scripts", _v62)

for _, _v177 in pairs(_v17) do
    _f8(_v177.Name, _v62, function()
        _f15(_v177.URL, _v177.Name, _v177.IsR6)
    end)
end

_f6("Selected Target", _v63)

local _v178 = nil
local _v179 = Instance.new("TextLabel")
_v179.Size = UDim2.new(1, -8, 0, 36)
_v179.BackgroundColor3 = Color3.fromRGB(20, 20, 24)
_v179.TextColor3 = Color3.fromRGB(0, 255, 200)
_v179.Font = Enum.Font.GothamBold
_v179.TextSize = 11
_v179.Text = "  Selected: None"
_v179.TextXAlignment = Enum.TextXAlignment.Left
_v179.Parent = _v63
Instance.new("UICorner", _v179).CornerRadius = UDim.new(0, 6)
local _v180 = Instance.new("UIStroke", _v179)
_v180.Color = Color3.fromRGB(28, 28, 32)
_v180.Thickness = 1

_f6("Search Players", _v63)

local _v181 = Instance.new("TextBox")
_v181.Size = UDim2.new(1, -8, 0, 32)
_v181.BackgroundColor3 = Color3.fromRGB(20, 20, 24)
_v181.PlaceholderText = "Search player name..."
_v181.PlaceholderColor3 = Color3.fromRGB(100, 100, 105)
_v181.Text = ""
_v181.TextColor3 = Color3.fromRGB(255, 255, 255)
_v181.Font = Enum.Font.GothamMedium
_v181.TextSize = 11
_v181.TextXAlignment = Enum.TextXAlignment.Left
_v181.Parent = _v63
Instance.new("UICorner", _v181).CornerRadius = UDim.new(0, 6)
local _v182 = Instance.new("UIStroke", _v181)
_v182.Color = Color3.fromRGB(28, 28, 32)
_v182.Thickness = 1

_f1(_v181.Focused:Connect(function()
    _v2:Create(_v182, TweenInfo.new(0.15), {Color = Color3.fromRGB(0, 180, 255)}):Play()
end))

_f1(_v181.FocusLost:Connect(function()
    _v2:Create(_v182, TweenInfo.new(0.15), {Color = Color3.fromRGB(28, 28, 32)}):Play()
end))

_f6("Player List", _v63)

local _v183 = Instance.new("ScrollingFrame")
_v183.Size = UDim2.new(1, -8, 0, 110)
_v183.BackgroundTransparency = 1
_v183.CanvasSize = UDim2.new(0, 0, 0, 0)
_v183.ScrollBarThickness = 3
_v183.ScrollBarImageColor3 = Color3.fromRGB(60, 60, 65)
_v183.Parent = _v63

local _v184 = Instance.new("UIListLayout")
_v184.Padding = UDim.new(0, 4)
_v184.SortOrder = Enum.SortOrder.LayoutOrder
_v184.Parent = _v183

_f1(_v184:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
    _v183.CanvasSize = UDim2.new(0, 0, 0, _v184.AbsoluteContentSize.Y + 5)
end))

local function _f16()
    for _, _v185 in pairs(_v183:GetChildren()) do
        if _v185:IsA("TextButton") then
            _v185:Destroy()
        end
    end
    
    local _v186 = _v181.Text:lower()
    
    for _, _v187 in pairs(_v1:GetPlayers()) do
        if _v187 ~= _v12 then
            local _v188 = _v187.DisplayName
            local _v189 = _v187.Name
            local _v190 = (_v188 .. " " .. _v189):lower()
            
            if _v186 == "" or string.find(_v190, _v186, 1, true) then
                local _v191 = Instance.new("TextButton")
                _v191.Size = UDim2.new(1, 0, 0, 32)
                _v191.BackgroundColor3 = Color3.fromRGB(20, 20, 24)
                _v191.Text = "  " .. _v188 .. " (@" .. _v189 .. ")"
                _v191.TextColor3 = Color3.fromRGB(225, 225, 230)
                _v191.Font = Enum.Font.GothamMedium
                _v191.TextSize = 11
                _v191.TextXAlignment = Enum.TextXAlignment.Left
                _v191.Parent = _v183
                
                Instance.new("UICorner", _v191).CornerRadius = UDim.new(0, 6)
                local _v192 = Instance.new("UIStroke", _v191)
                _v192.Color = Color3.fromRGB(28, 28, 32)
                _v192.Thickness = 1
                
                _f1(_v191.MouseButton1Click:Connect(function()
                    if not _v13 then return end
                    _v178 = _v187
                    _v179.Text = "  Selected: " .. _v188
                    _v2:Create(_v192, TweenInfo.new(0.2), {Color = Color3.fromRGB(0, 180, 255)}):Play()
                end))
            end
        end
    end
end

_f1(_v181:GetPropertyChangedSignal("Text"):Connect(function()
    _f16()
end))

_f8("Refresh Player List", _v63, function()
    _f16()
end)

_f6("Teleport & Spectate Actions", _v63)

local _v193 = false
local _v194 = 0.4

_f9("Tween Duration", 0.4, _v63, function(_p1)
    _v194 = _p1
end)

_f7("Enable Loop Tween to Target", false, _v63, function(_p1)
    _v193 = _p1
    if _p1 then
        _f1(task.spawn(function()
            while _v193 and _v13 do
                if _v178 and _v178.Character then
                    local _v195 = _v178.Character:FindFirstChild("HumanoidRootPart")
                    local _, _v196, _ = _f10()
                    if _v195 and _v196 then
                        local _v197 = TweenInfo.new(_v194, Enum.EasingStyle.Linear)
                        local _v198 = _v2:Create(_v196, _v197, {CFrame = _v195.CFrame + Vector3.new(0, 3, 0)})
                        _v198:Play()
                        
                        local _v199 = false
                        local _v200
                        _v200 = _v198.Completed:Connect(function()
                            _v199 = true
                            if _v200 then _v200:Disconnect() end
                        end)
                        
                        while not _v199 and _v193 and _v13 do
                            task.wait(0.05)
                        end
                        if not _v193 then
                            _v198:Cancel()
                            if _v200 then _v200:Disconnect() end
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
    if _v178 and _v178.Character then
        local _v201 = _v178.Character:FindFirstChild("HumanoidRootPart")
        local _, _v202, _ = _f10()
        if _v201 and _v202 then
            _v202.CFrame = _v201.CFrame + Vector3.new(0, 3, 0)
            _f3("Teleported to " .. _v178.DisplayName, Color3.fromRGB(0, 255, 200))
        else
            _f3("Target has no character!", Color3.fromRGB(255, 80, 80))
        end
    else
        _f3("No player selected or offline!", Color3.fromRGB(255, 80, 80))
    end
end)

local _v203 = false
_f7("Enable Spectate", false, _v63, function(_p1)
    _v203 = _p1
    local _v204 = _v5.CurrentCamera
    if _v204 then
        if _p1 then
            if _v178 and _v178.Character then
                local _v205 = _v178.Character:FindFirstChildOfClass("Humanoid")
                if _v205 then
                    _v204.CameraSubject = _v205
                    _f3("Spectating " .. _v178.DisplayName, Color3.fromRGB(0, 255, 200))
                else
                    _v204.CameraSubject = _v178.Character
                end
            else
                _f3("No player selected for spectate!", Color3.fromRGB(255, 80, 80))
            end
        else
            local _, _, _v206 = _f10()
            if _v206 then
                _v204.CameraSubject = _v206
            end
            _f3("Spectate Disabled", Color3.fromRGB(0, 180, 255))
        end
    end
end)

_f16()

_f6("Boombox Control", _v64)

local _v207 = false
local _v208 = {} 

local _v209 = Instance.new("Sound")
_v209.Name = "VulnSec_AudioPreview"
_v209.Parent = game:GetService("SoundService")
local _v210 = nil

_f7("Enable Boombox Logger", false, _v64, function(_p1)
    _v207 = _p1
    if _p1 then
        _f3("Boombox Logger Active", Color3.fromRGB(0, 255, 200))
    else
        _f3("Boombox Logger Paused", Color3.fromRGB(255, 180, 50))
        if _v209.IsPlaying then
            _v209:Stop()
        end
    end
end)

_f6("Search Boombox Logs", _v64)

local _v211 = Instance.new("TextBox")
_v211.Size = UDim2.new(1, -8, 0, 32)
_v211.BackgroundColor3 = Color3.fromRGB(20, 20, 24)
_v211.PlaceholderText = "Search player or song..."
_v211.PlaceholderColor3 = Color3.fromRGB(100, 100, 105)
_v211.Text = ""
_v211.TextColor3 = Color3.fromRGB(255, 255, 255)
_v211.Font = Enum.Font.GothamMedium
_v211.TextSize = 11
_v211.TextXAlignment = Enum.TextXAlignment.Left
_v211.Parent = _v64
Instance.new("UICorner", _v211).CornerRadius = UDim.new(0, 6)
local _v212 = Instance.new("UIStroke", _v211)
_v212.Color = Color3.fromRGB(28, 28, 32)
_v212.Thickness = 1

_f1(_v211.Focused:Connect(function()
    _v2:Create(_v212, TweenInfo.new(0.15), {Color = Color3.fromRGB(0, 180, 255)}):Play()
end))

_f1(_v211.FocusLost:Connect(function()
    _v2:Create(_v212, TweenInfo.new(0.15), {Color = Color3.fromRGB(28, 28, 32)}):Play()
end))

_f6("Logged IDs & Songs", _v64)

local _v213 = Instance.new("ScrollingFrame")
_v213.Size = UDim2.new(1, -8, 0, 80)
_v213.BackgroundTransparency = 1
_v213.CanvasSize = UDim2.new(0, 0, 0, 0)
_v213.ScrollBarThickness = 3
_v213.ScrollBarImageColor3 = Color3.fromRGB(60, 60, 65)
_v213.Parent = _v64

local _v214 = Instance.new("UIListLayout")
_v214.Padding = UDim.new(0, 4)
_v214.SortOrder = Enum.SortOrder.LayoutOrder
_v214.Parent = _v213

_f1(_v214:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
    _v213.CanvasSize = UDim2.new(0, 0, 0, _v214.AbsoluteContentSize.Y + 5)
end))

local function _f17()
    local _v215 = _v211.Text:lower()
    for _, _v216 in ipairs(_v208) do
        if _v216.Frame and _v216.Frame.Parent then
            local _v217 = (_v216.Player .. " " .. _v216.Title .. " " .. _v216.ID):lower()
            if _v215 == "" or string.find(_v217, _v215, 1, true) then
                _v216.Frame.Visible = true
            else
                _v216.Frame.Visible = false
            end
        end
    end
end

_f1(_v211:GetPropertyChangedSignal("Text"):Connect(function()
    _f17()
end))

local function _f18(_p1, _p2)
    if not _v13 then return end
    local _v218 = _p2:match("%d+")
    if not _v218 or _v218 == "" then return end
    
    for _, _v219 in ipairs(_v208) do
        if _v219.ID == _v218 then return end
    end
    
    local _v220 = Instance.new("Frame")
    _v220.Size = UDim2.new(1, 0, 0, 32)
    _v220.BackgroundColor3 = Color3.fromRGB(20, 20, 24)
    _v220.Parent = _v213
    
    Instance.new("UICorner", _v220).CornerRadius = UDim.new(0, 6)
    local _v221 = Instance.new("UIStroke", _v220)
    _v221.Color = Color3.fromRGB(28, 28, 32)
    _v221.Thickness = 1
    
    local _v222 = Instance.new("TextButton")
    _v222.Size = UDim2.new(1, -64, 1, 0)
    _v222.BackgroundTransparency = 1
    _v222.Text = "  " .. _p1 .. " -> Loading Song..."
    _v222.TextColor3 = Color3.fromRGB(0, 255, 200)
    _v222.Font = Enum.Font.GothamMedium
    _v222.TextSize = 11
    _v222.TextXAlignment = Enum.TextXAlignment.Left
    _v222.Parent = _v220
    
    local _v223 = Instance.new("TextButton")
    _v223.Size = UDim2.new(0, 24, 0, 24)
    _v223.Position = UDim2.new(1, -56, 0.5, -12)
    _v223.BackgroundColor3 = Color3.fromRGB(30, 30, 36)
    _v223.Text = "📋"
    _v223.TextColor3 = Color3.fromRGB(0, 255, 200)
    _v223.Font = Enum.Font.GothamBold
    _v223.TextSize = 10
    _v223.Parent = _v220
    Instance.new("UICorner", _v223).CornerRadius = UDim.new(0, 4)
    local _v224 = Instance.new("UIStroke", _v223)
    _v224.Color = Color3.fromRGB(45, 45, 50)
    _v224.Thickness = 1

    local _v225 = Instance.new("TextButton")
    _v225.Size = UDim2.new(0, 24, 0, 24)
    _v225.Position = UDim2.new(1, -28, 0.5, -12)
    _v225.BackgroundColor3 = Color3.fromRGB(30, 30, 36)
    _v225.Text = "▶"
    _v225.TextColor3 = Color3.fromRGB(0, 255, 200)
    _v225.Font = Enum.Font.GothamBold
    _v225.TextSize = 10
    _v225.Parent = _v220
    Instance.new("UICorner", _v225).CornerRadius = UDim.new(0, 4)
    local _v226 = Instance.new("UIStroke", _v225)
    _v226.Color = Color3.fromRGB(45, 45, 50)
    _v226.Thickness = 1

    local _v227 = {Player = _p1, Title = "Loading Song...", ID = _v218, Frame = _v220}
    table.insert(_v208, _v227)
    _f17()
    
    _f2(task.spawn(function()
        local _v228, _v229 = pcall(function()
            return _v7:GetProductInfo(tonumber(_v218))
        end)
        if _v228 and _v229 and _v229.Name and _v13 then
            _v227.Title = _v229.Name
            if _v222 and _v222.Parent then
                _v222.Text = "  " .. _p1 .. " -> " .. _v229.Name .. " (" .. _v218 .. ")"
            end
        elseif _v13 then
            _v227.Title = "Unknown Song"
            if _v222 and _v222.Parent then
                _v222.Text = "  " .. _p1 .. " -> ID: " .. _v218
            end
        end
        _f17()
    end))
    
    _f1(_v223.MouseButton1Click:Connect(function()
        pcall(function()
            if setclipboard then
                setclipboard(_v218)
                _f3("Copied ID: " .. _v218, Color3.fromRGB(0, 255, 200))
            end
        end)
    end))
    
    _f1(_v225.MouseButton1Click:Connect(function()
        if _v209.IsPlaying and _v210 == _v218 then
            _v209:Stop()
            _v210 = nil
            _v225.Text = "▶"
        else
            _v209.SoundId = "rbxassetid://" .. _v218
            _v209:Play()
            _v210 = _v218
            _v225.Text = "⏹"
        end
    end))
end

local function _f19(_p1)
    if _p1:IsA("Sound") then
        local function _v230()
            if not _v13 or not _v207 then return end
            if _p1.SoundId ~= "" and _p1.Playing then
                local _v231 = _p1.Parent
                local _v232 = "Game / Ambient"
                
                while _v231 and _v231 ~= game do
                    if _v231:IsA("Model") and _v1:GetPlayerFromCharacter(_v231) then
                        _v232 = _v1:GetPlayerFromCharacter(_v231).Name
                        break
                    elseif _v231:IsA("Player") then
                        _v232 = _v231.Name
                        break
                    elseif _v231 == _v9 then
                        _v232 = "SoundService (BGM)"
                        break
                    end
                    _v231 = _v231.Parent
                end
                
                if _v232 == "Game / Ambient" and _p1:IsDescendantOf(_v12.Character or workspace) then
                    _v232 = _v12.Name
                end
                
                _f18(_v232, _p1.SoundId)
            end
        end

        _f2(_p1.Changed:Connect(function(_p2)
            if _p2 == "SoundId" or _p2 == "Playing" then
                if _p1.Playing then
                    _v230()
                end
            end
        end))
        
        if _p1.Playing then
            _v230()
        end
    end
end

for _, _v233 in pairs(_v5:GetDescendants()) do
    _f19(_v233)
end
_f2(_v5.DescendantAdded:Connect(_f19))

for _, _v234 in pairs(_v9:GetDescendants()) do
    _f19(_v234)
end
_f2(_v9.DescendantAdded:Connect(_f19))

_f8("Copy All Logged IDs", _v64, function()
    local _v235 = {}
    for _, _v236 in ipairs(_v208) do
        table.insert(_v235, _v236.Title .. " - " .. _v236.ID)
    end
    local _v237 = table.concat(_v235, "\n")
    pcall(function()
        if setclipboard then
            setclipboard(_v237)
            _f3("Songs & IDs Copied!", Color3.fromRGB(0, 255, 200))
        end
    end)
end)

_f8("Clear Log List", _v64, function()
    if _v209.IsPlaying then
        _v209:Stop()
    end
    _v208 = {}
    for _, _v238 in pairs(_v213:GetChildren()) do
        if _v238:IsA("Frame") then
            _v238:Destroy()
        end
    end
    _f3("Logs Cleared!", Color3.fromRGB(255, 180, 50))
end)

_f6("Boombox IDs", _v65)

local _v239 = Instance.new("TextBox")
_v239.Size = UDim2.new(1, -8, 0, 32)
_v239.BackgroundColor3 = Color3.fromRGB(20, 20, 24)
_v239.PlaceholderText = "Search IDs or songs..."
_v239.PlaceholderColor3 = Color3.fromRGB(100, 100, 105)
_v239.Text = ""
_v239.TextColor3 = Color3.fromRGB(255, 255, 255)
_v239.Font = Enum.Font.GothamMedium
_v239.TextSize = 11
_v239.TextXAlignment = Enum.TextXAlignment.Left
_v239.Parent = _v65
Instance.new("UICorner", _v239).CornerRadius = UDim.new(0, 6)
local _v240 = Instance.new("UIStroke", _v239)
_v240.Color = Color3.fromRGB(28, 28, 32)
_v240.Thickness = 1

_f1(_v239.Focused:Connect(function()
    _v2:Create(_v240, TweenInfo.new(0.15), {Color = Color3.fromRGB(0, 180, 255)}):Play()
end))

_f1(_v239.FocusLost:Connect(function()
    _v2:Create(_v240, TweenInfo.new(0.15), {Color = Color3.fromRGB(28, 28, 32)}):Play()
end))

_f6("ID List", _v65)

local _v241 = Instance.new("ScrollingFrame")
_v241.Size = UDim2.new(1, -8, 0, 140)
_v241.BackgroundTransparency = 1
_v241.CanvasSize = UDim2.new(0, 0, 0, 0)
_v241.ScrollBarThickness = 3
_v241.ScrollBarImageColor3 = Color3.fromRGB(60, 60, 65)
_v241.Parent = _v65

local _v242 = Instance.new("UIListLayout")
_v242.Padding = UDim.new(0, 4)
_v242.SortOrder = Enum.SortOrder.LayoutOrder
_v242.Parent = _v241

_f1(_v242:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
    _v241.CanvasSize = UDim2.new(0, 0, 0, _v242.AbsoluteContentSize.Y + 5)
end))

local _v243 = {}

local function _f20()
    local _v244 = _v239.Text:lower()
    for _, _v245 in ipairs(_v243) do
        if _v245.Frame and _v245.Frame.Parent then
            local _v246 = (_v245.Title .. " " .. _v245.ID):lower()
            if _v244 == "" or string.find(_v246, _v244, 1, true) then
                _v245.Frame.Visible = true
            else
                _v245.Frame.Visible = false
            end
        end
    end
end

_f1(_v239:GetPropertyChangedSignal("Text"):Connect(function()
    _f20()
end))

local function _f21()
    for _, _v247 in pairs(_v241:GetChildren()) do
        if _v247:IsA("Frame") then
            _v247:Destroy()
        end
    end
    _v243 = {}
    
    _f2(task.spawn(function()
        local _v248, _v249 = pcall(function()
            return game:HttpGet("https://raw.githubusercontent.com/leos00281-eng/Rbx/refs/heads/main/ID")
        end)
        
        if _v248 and _v249 and _v13 then
            for _v250 in _v249:gmatch("[^\r\n]+") do
                if not _v13 then break end
                if _v250 ~= "" then
                    local _v251 = _v250:match("%d+")
                    if _v251 then
                        local _v252 = Instance.new("Frame")
                        _v252.Size = UDim2.new(1, 0, 0, 32)
                        _v252.BackgroundColor3 = Color3.fromRGB(20, 20, 24)
                        _v252.Parent = _v241
                        
                        Instance.new("UICorner", _v252).CornerRadius = UDim.new(0, 6)
                        local _v253 = Instance.new("UIStroke", _v252)
                        _v253.Color = Color3.fromRGB(28, 28, 32)
                        _v253.Thickness = 1
                        
                        local _v254 = Instance.new("TextButton")
                        _v254.Size = UDim2.new(1, -64, 1, 0)
                        _v254.BackgroundTransparency = 1
                        _v254.Text = "  Loading Song... (" .. _v251 .. ")"
                        _v254.TextColor3 = Color3.fromRGB(0, 255, 200)
                        _v254.Font = Enum.Font.GothamMedium
                        _v254.TextSize = 11
                        _v254.TextXAlignment = Enum.TextXAlignment.Left
                        _v254.Parent = _v252
                        
                        local _v255 = Instance.new("TextButton")
                        _v255.Size = UDim2.new(0, 24, 0, 24)
                        _v255.Position = UDim2.new(1, -56, 0.5, -12)
                        _v255.BackgroundColor3 = Color3.fromRGB(30, 30, 36)
                        _v255.Text = "📋"
                        _v255.TextColor3 = Color3.fromRGB(0, 255, 200)
                        _v255.Font = Enum.Font.GothamBold
                        _v255.TextSize = 10
                        _v255.Parent = _v252
                        Instance.new("UICorner", _v255).CornerRadius = UDim.new(0, 4)
                        local _v256 = Instance.new("UIStroke", _v255)
                        _v256.Color = Color3.fromRGB(45, 45, 50)
                        _v256.Thickness = 1

                        local _v257 = Instance.new("TextButton")
                        _v257.Size = UDim2.new(0, 24, 0, 24)
                        _v257.Position = UDim2.new(1, -28, 0.5, -12)
                        _v257.BackgroundColor3 = Color3.fromRGB(30, 30, 36)
                        _v257.Text = "▶"
                        _v257.TextColor3 = Color3.fromRGB(0, 255, 200)
                        _v257.Font = Enum.Font.GothamBold
                        _v257.TextSize = 10
                        _v257.Parent = _v252
                        Instance.new("UICorner", _v257).CornerRadius = UDim.new(0, 4)
                        local _v258 = Instance.new("UIStroke", _v257)
                        _v258.Color = Color3.fromRGB(45, 45, 50)
                        _v258.Thickness = 1

                        local _v259 = {Title = "Loading Song...", ID = _v251, Frame = _v252}
                        table.insert(_v243, _v259)
                        _f20()
                        
                        _f2(task.spawn(function()
                            local _v260, _v261 = pcall(function()
                                return _v7:GetProductInfo(tonumber(_v251))
                            end)
                            if _v260 and _v261 and _v261.Name and _v13 then
                                _v259.Title = _v261.Name
                                if _v254 and _v254.Parent then
                                    _v254.Text = "  " .. _v261.Name .. " (" .. _v251 .. ")"
                                end
                            elseif _v13 then
                                _v259.Title = "Unknown Song"
                                if _v254 and _v254.Parent then
                                    _v254.Text = "  ID: " .. _v251
                                end
                            end
                            _f20()
                        end))
                        
                        _f1(_v255.MouseButton1Click:Connect(function()
                            pcall(function()
                                if setclipboard then
                                    setclipboard(_v251)
                                    _f3("Copied ID: " .. _v251, Color3.fromRGB(0, 255, 200))
                                end
                            end)
                        end))
                        
                        _f1(_v257.MouseButton1Click:Connect(function()
                            if _v209.IsPlaying and _v210 == _v251 then
                                _v209:Stop()
                                _v210 = nil
                                _v257.Text = "▶"
                            else
                                _v209.SoundId = "rbxassetid://" .. _v251
                                _v209:Play()
                                _v210 = _v251
                                _v257.Text = "⏹"
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

local _v262 = Instance.new("ScrollingFrame")
_v262.Size = UDim2.new(1, -8, 0, 180)
_v262.BackgroundTransparency = 1
_v262.CanvasSize = UDim2.new(0, 0, 0, 0)
_v262.ScrollBarThickness = 3
_v262.ScrollBarImageColor3 = Color3.fromRGB(60, 60, 65)
_v262.Parent = _v66

local _v263 = Instance.new("UIListLayout")
_v263.Padding = UDim.new(0, 4)
_v263.SortOrder = Enum.SortOrder.LayoutOrder
_v263.Parent = _v262

_f1(_v263:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
    _v262.CanvasSize = UDim2.new(0, 0, 0, _v263.AbsoluteContentSize.Y + 5)
end))

local function _f22()
    for _, _v264 in pairs(_v262:GetChildren()) do
        if _v264:IsA("TextLabel") or _v264:IsA("Frame") then
            _v264:Destroy()
        end
    end
    
    _f2(task.spawn(function()
        local _v265, _v266 = pcall(function()
            return game:HttpGet("https://raw.githubusercontent.com/leos00281-eng/Rbx/refs/heads/main/Logs")
        end)
        
        if _v265 and _v266 and _v13 then
            for _v267 in _v266:gmatch("[^\r\n]+") do
                if not _v13 then break end
                if _v267 ~= "" then
                    local _v268 = Instance.new("TextLabel")
                    _v268.Size = UDim2.new(1, -10, 0, 0)
                    _v268.AutomaticSize = Enum.AutomaticSize.Y
                    _v268.BackgroundTransparency = 1
                    _v268.Text = "  " .. _v267
                    _v268.TextColor3 = Color3.fromRGB(0, 255, 200)
                    _v268.Font = Enum.Font.GothamMedium
                    _v268.TextSize = 11
                    _v268.TextWrapped = true
                    _v268.TextXAlignment = Enum.TextXAlignment.Left
                    _v268.Parent = _v262
                end
            end
        elseif _v13 then
            local _v269 = Instance.new("TextLabel")
            _v269.Size = UDim2.new(1, -10, 0, 0)
            _v269.AutomaticSize = Enum.AutomaticSize.Y
            _v269.BackgroundTransparency = 1
            _v269.Text = "  Failed to fetch update logs"
            _v269.TextColor3 = Color3.fromRGB(255, 80, 80)
            _v269.Font = Enum.Font.GothamMedium
            _v269.TextSize = 11
            _v269.TextWrapped = true
            _v269.TextXAlignment = Enum.TextXAlignment.Left
            _v269.Parent = _v262
        end
    end))
end

_f8("Refresh Update Logs", _v66, function()
    _f22()
    _f3("Update Logs Refreshed!", Color3.fromRGB(0, 255, 200))
end)

_f22()

_f6("Project Information", _v67)

local _v270 = Instance.new("TextLabel")
_v270.Size = UDim2.new(1, -8, 0, 110)
_v270.BackgroundTransparency = 1
_v270.Text = "VulnSec Hub represents an advanced, high-performance runtime modification environment engineered for optimal system delivery. This deployment is currently operating within an active, closed BETA developmental stage.\n\nOur system infrastructure remains subject to continuous refactoring, performance optimization updates, and structural engine enhancements designed to maintain peak stability."
_v270.TextColor3 = Color3.fromRGB(180, 185, 195)
_v270.Font = Enum.Font.GothamMedium
_v270.TextSize = 11
_v270.TextWrapped = true
_v270.TextYAlignment = Enum.TextYAlignment.Top
_v270.TextXAlignment = Enum.TextXAlignment.Left
_v270.Parent = _v67

_f6("Official Developers Link", _v67)

local _v271 = Instance.new("ImageButton")
_v271.Size = UDim2.new(0,48,0,48)
_v271.Position = UDim2.new(0.5,-24,0,0)
_v271.BackgroundColor3 = Color3.fromRGB(20,20,24)
_v271.Parent = _v67

pcall(function()
    if typeof(isfile) == "function" and typeof(writefile) == "function" and typeof(getcustomasset) == "function" then
        local _v272 = "Vulnsec_FB_Logo.png"
        if not isfile(_v272) then
            local _v273, _v274 = pcall(function()
                return game:HttpGet("https://raw.githubusercontent.com/leos00281-eng/Rbx/refs/heads/main/0gFm6_6mwp0.png")
            end)
            if _v273 and _v274 then
                writefile(_v272, _v274)
            end
        end
        _v271.Image = getcustomasset(_v272)
    end
end)

local _v275 = Instance.new("UICorner")
_v275.CornerRadius = UDim.new(1,0)
_v275.Parent = _v271

local _v276 = Instance.new("UIStroke")
_v276.Color = Color3.fromRGB(28,28,32)
_v276.Thickness = 1
_v276.Parent = _v271

local _v277 = Instance.new("TextLabel")
_v277.Size = UDim2.new(1,-8,0,24)
_v277.Position = UDim2.new(0,0,0,54)
_v277.BackgroundTransparency = 1
_v277.Text = "Facebook"
_v277.TextColor3 = Color3.fromRGB(0,180,255)
_v277.Font = Enum.Font.Code
_v277.TextSize = 10
_v277.Parent = _v67

_f1(_v271.MouseButton1Click:Connect(function()
    pcall(function()
        if setclipboard then
            setclipboard("https://www.facebook.com/vulnsec.legion")
        end
    end)
    pcall(function()
        _v8:OpenBrowserWindow("https://www.facebook.com/vulnsec.legion")
    end)
    local _v278 = _v277.Text
    _v277.Text = "Link Copied!"
    task.wait(1.5)
    _v277.Text = _v278
end))

local function _f23(_p1, _p2)
    local _v279, _v280, _v281, _v282
    _f1(_p1.InputBegan:Connect(function(_p3)
        if _p3.UserInputType == Enum.UserInputType.MouseButton1 or _p3.UserInputType == Enum.UserInputType.Touch then
            _v279 = true
            _v280 = _p3.Position
            _v281 = _p2.Position
            _f1(_p3.Changed:Connect(function()
                if _p3.UserInputState == Enum.UserInputState.End then _v279 = false end
            end))
        end
    end))
    _f1(_p1.InputChanged:Connect(function(_p3)
        if _p3.UserInputType == Enum.UserInputType.MouseMovement or _p3.UserInputType == Enum.UserInputType.Touch then _v282 = _p3 end
    end))
    _f1(_v3.InputChanged:Connect(function(_p3)
        if _p3 == _v282 and _v279 then
            local _v283 = _p3.Position - _v280
            _v2:Create(_p2, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                Position = UDim2.new(_v281.X.Scale, _v281.X.Offset + _v283.X, _v281.Y.Scale, _v281.Y.Offset + _v283.Y)
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
