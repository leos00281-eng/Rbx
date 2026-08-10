local _v5 = game:GetService("TweenService")
local _p9 = game:GetService("Players")
local _l1 = _p9.LocalPlayer
local _u8 = "https://raw.githubusercontent.com/leos00281-eng/Rbx/refs/heads/main/K.txt"

local _s2 = Instance.new("ScreenGui")
_s2.Name = "AUTH_GUI"
_s2.Parent = game:GetService("CoreGui")

local _m7 = Instance.new("Frame")
_m7.Size = UDim2.new(0, 320, 0, 240)
_m7.Position = UDim2.new(0.5, -160, 0.5, -120)
_m7.BackgroundColor3 = Color3.fromRGB(15, 15, 18)
_m7.BorderSizePixel = 0
_m7.Parent = _s2
Instance.new("UICorner", _m7).CornerRadius = UDim.new(0, 14)

local _g3 = Instance.new("UIStroke", _m7)
_g3.Color = Color3.fromRGB(0, 180, 255)
_g3.Thickness = 1.5

local _top = Instance.new("Frame", _m7)
_top.Size = UDim2.new(1, 0, 0, 38)
_top.BackgroundColor3 = Color3.fromRGB(22, 22, 26)
_top.BorderSizePixel = 0
Instance.new("UICorner", _top).CornerRadius = UDim.new(0, 14)

local _line = Instance.new("Frame", _top)
_line.Size = UDim2.new(1, 0, 0, 14)
_line.Position = UDim2.new(0, 0, 1, -14)
_line.BackgroundColor3 = Color3.fromRGB(22, 22, 26)
_line.BorderSizePixel = 0

local _title = Instance.new("TextLabel", _top)
_title.Size = UDim2.new(0, 250, 1, 0)
_title.Position = UDim2.new(0, 16, 0, 0)
_title.BackgroundTransparency = 1
_title.Text = "VULNSEC HUB KEYSYSTEM"
_title.TextColor3 = Color3.fromRGB(255, 255, 255)
_title.Font = Enum.Font.GothamBold
_title.TextSize = 13
_title.TextXAlignment = Enum.TextXAlignment.Left

local _x4 = Instance.new("TextButton", _top)
_x4.Size = UDim2.new(0, 18, 0, 18)
_x4.Position = UDim2.new(1, -26, 0.5, -9)
_x4.BackgroundColor3 = Color3.fromRGB(250, 70, 70)
_x4.Text = "×"
_x4.TextColor3 = Color3.fromRGB(255, 255, 255)
_x4.Font = Enum.Font.GothamBold
_x4.TextSize = 14
Instance.new("UICorner", _x4).CornerRadius = UDim.new(0, 4)
_x4.MouseButton1Click:Connect(function() _s2:Destroy() end)

local _i6 = Instance.new("ImageLabel", _m7)
_i6.Size = UDim2.new(0, 50, 0, 50)
_i6.Position = UDim2.new(0.5, -25, 0, 55)
_i6.BackgroundColor3 = Color3.fromRGB(22, 22, 26)
_i6.Image = _p9:GetUserThumbnailAsync(_l1.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size150x150)
Instance.new("UICorner", _i6).CornerRadius = UDim.new(1, 0)

local _u9 = Instance.new("TextLabel", _m7)
_u9.Size = UDim2.new(1, 0, 0, 20)
_u9.Position = UDim2.new(0, 0, 0, 110)
_u9.BackgroundTransparency = 1
_u9.Text = "@" .. _l1.Name
_u9.TextColor3 = Color3.fromRGB(180, 180, 185)
_u9.Font = Enum.Font.GothamMedium
_u9.TextSize = 12

local _t6 = Instance.new("TextBox", _m7)
_t6.Size = UDim2.new(0.85, 0, 0, 35)
_t6.Position = UDim2.new(0.075, 0, 0.6, 0)
_t6.BackgroundColor3 = Color3.fromRGB(22, 22, 26)
_t6.PlaceholderText = "Enter Access Key"
_t6.Text = ""
_t6.TextColor3 = Color3.fromRGB(255, 255, 255)
Instance.new("UICorner", _t6).CornerRadius = UDim.new(0, 6)

local _b2 = Instance.new("TextButton", _m7)
_b2.Size = UDim2.new(0.85, 0, 0, 35)
_b2.Position = UDim2.new(0.075, 0, 0.8, 0)
_b2.BackgroundColor3 = Color3.fromRGB(28, 28, 35)
_b2.Text = "AUTHENTICATE"
_b2.TextColor3 = Color3.fromRGB(0, 255, 200)
_b2.Font = Enum.Font.GothamBold
Instance.new("UICorner", _b2).CornerRadius = UDim.new(0, 6)

_b2.MouseButton1Click:Connect(function()
    local _ok, _res = pcall(function() return game:HttpGet(_u8) end)
    if _ok and string.gsub(_res, "%s+", "") == _t6.Text then
        _b2.Text = "SUCCESS!"
        task.wait(0.5)
        _s2:Destroy()
      local _k9 = {
    {Name = "Jerk Off R15", URL = "https://pastefy.app/YZoglOyJ/raw", IsR6 = false},
    {Name = "Jerk Off R6", URL = "https://pastefy.app/wa3v2Vgm/raw", IsR6 = true}
}

local _p2 = game:GetService("Players")
local _t5 = game:GetService("TweenService")
local _u1 = game:GetService("UserInputService")
local _r4 = game:GetService("RunService")
local _w8 = game:GetService("Workspace")

local _l0 = _p2.LocalPlayer

local _e3 = _l0:WaitForChild("PlayerGui"):FindFirstChild("Vulnsec_Hub_Gui")
if _e3 then _e3:Destroy() end

local _s7 = Instance.new("ScreenGui")
_s7.Name = "Vulnsec_Hub_Gui"
_s7.ResetOnSpawn = false
_s7.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

if syn and syn.protect_gui then 
    syn.protect_gui(_s7) 
elseif gethui then
    _s7.Parent = gethui()
else
    _s7.Parent = _l0:WaitForChild("PlayerGui")
end

local _m4 = Instance.new("Frame")
_m4.Name = "MainFrame"
_m4.Size = UDim2.new(0, 480, 0, 330) 
_m4.Position = UDim2.new(0.5, -240, 0.5, -165)
_m4.BackgroundColor3 = Color3.fromRGB(15, 15, 18)
_m4.BorderSizePixel = 0
_m4.ClipsDescendants = false
_m4.Visible = true
_m4.Parent = _s7

local _c2 = Instance.new("UICorner")
_c2.CornerRadius = UDim.new(0, 14)
_c2.Parent = _m4

local _g6 = Instance.new("UIStroke")
_g6.Color = Color3.fromRGB(0, 180, 255)
_g6.Thickness = 1.5
_g6.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
_g6.Parent = _m4

local _v4 = true

task.spawn(function()
    while _v4 and _m4 and _m4.Parent do
        local _x1 = _t5:Create(_g6, TweenInfo.new(1.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {Thickness = 2.5, Color = Color3.fromRGB(0, 255, 200)})
        _x1:Play()
        _x1.Completed:Wait()
        local _x2 = _t5:Create(_g6, TweenInfo.new(1.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {Thickness = 1.5, Color = Color3.fromRGB(0, 150, 255)})
        _x2:Play()
        _x2.Completed:Wait()
    end
end)

local _b9 = Instance.new("Frame")
_b9.Name = "TopBar"
_b9.Size = UDim2.new(1, 0, 0, 38)
_b9.BackgroundColor3 = Color3.fromRGB(22, 22, 26)
_b9.BorderSizePixel = 0
_b9.Parent = _m4

local _c3 = Instance.new("UICorner")
_c3.CornerRadius = UDim.new(0, 14)
_c3.Parent = _b9

local _f2 = Instance.new("Frame")
_f2.Size = UDim2.new(1, 0, 0, 14)
_f2.Position = UDim2.new(0, 0, 1, -14)
_f2.BackgroundColor3 = Color3.fromRGB(22, 22, 26)
_f2.BorderSizePixel = 0
_f2.Parent = _b9

local _t1 = Instance.new("TextLabel")
_t1.Size = UDim2.new(0, 200, 1, 0)
_t1.Position = UDim2.new(0, 16, 0, 0)
_t1.BackgroundTransparency = 1
_t1.Text = "VULNSEC HUB"
_t1.TextColor3 = Color3.fromRGB(255, 255, 255)
_t1.Font = Enum.Font.GothamBold
_t1.TextSize = 13
_t1.TextXAlignment = Enum.TextXAlignment.Left
_t1.Parent = _b9

local _e1 = Instance.new("TextButton")
_e1.Size = UDim2.new(0, 18, 0, 18)
_e1.Position = UDim2.new(1, -26, 0.5, -9)
_e1.BackgroundColor3 = Color3.fromRGB(250, 70, 70)
_e1.Text = "×"
_e1.TextColor3 = Color3.fromRGB(255, 255, 255)
_e1.Font = Enum.Font.GothamBold
_e1.TextSize = 14
_e1.Parent = _b9

local _c4 = Instance.new("UICorner")
_c4.CornerRadius = UDim.new(0, 4)
_c4.Parent = _e1

local _m2 = Instance.new("TextButton")
_m2.Size = UDim2.new(0, 18, 0, 18)
_m2.Position = UDim2.new(1, -48, 0.5, -9)
_m2.BackgroundColor3 = Color3.fromRGB(250, 180, 50)
_m2.Text = "−"
_m2.TextColor3 = Color3.fromRGB(255, 255, 255)
_m2.Font = Enum.Font.GothamBold
_m2.TextSize = 14
_m2.Parent = _b9

local _c5 = Instance.new("UICorner")
_c5.CornerRadius = UDim.new(0, 4)
_c5.Parent = _m2

local _o3 = Instance.new("ImageButton")
_o3.Name = "DragBubble"
_o3.Size = UDim2.new(0, 44, 0, 44)
_o3.Position = UDim2.new(0.05, 0, 0.2, 0)
_o3.BackgroundColor3 = Color3.fromRGB(22, 22, 26)
_o3.Visible = false
_o3.Parent = _s7

local _a1 = false
pcall(function()
    local name = "Vulnsec_Bubble_Logo.png"
    if not isfile(name) then
        writefile(name, game:HttpGet("https://raw.githubusercontent.com/leos00281-eng/Rbx/refs/heads/main/56Tryup.png"))
    end
    _o3.Image = getcustomasset(name)
    _a1 = true
end)

if not _a1 then
    _o3.Image = "rbxassetid://106037704812001" 
end

local _c6 = Instance.new("UICorner")
_c6.CornerRadius = UDim.new(1, 0)
_c6.Parent = _o3

local _s1 = Instance.new("UIStroke")
_s1.Color = Color3.fromRGB(0, 180, 255)
_s1.Thickness = 1.5
_s1.Parent = _o3

local _z2 = Instance.new("Frame")
_z2.Size = UDim2.new(1, 0, 1, -38)
_z2.Position = UDim2.new(0, 0, 0, 38)
_z2.BackgroundTransparency = 1
_z2.Parent = _m4

_m2.MouseButton1Click:Connect(function()
    _t5:Create(_m4, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 0, 0, 0), Position = UDim2.new(0.5, 0, 0.5, 0)}):Play()
    task.wait(0.23)
    _m4.Visible = false
    _o3.Visible = true
    _o3.Size = UDim2.new(0,0,0,0)
    _t5:Create(_o3, TweenInfo.new(0.35, Enum.EasingStyle.Elastic, Enum.EasingDirection.Out), {Size = UDim2.new(0, 44, 0, 44)}):Play()
end)

_o3.MouseButton1Click:Connect(function()
    _o3.Visible = false
    _m4.Visible = true
    _t5:Create(_m4, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Size = UDim2.new(0, 480, 0, 330), Position = UDim2.new(0.5, -240, 0.5, -165)}):Play()
end)

local _q1 = Instance.new("Frame")
_q1.Size = UDim2.new(0, 120, 1, 0)
_q1.BackgroundColor3 = Color3.fromRGB(11, 11, 14)
_q1.BorderSizePixel = 0
_q1.Parent = _z2

local _c7 = Instance.new("UICorner")
_c7.CornerRadius = UDim.new(0, 14)
_c7.Parent = _q1

local _f3 = Instance.new("Frame")
_f3.Size = UDim2.new(0, 15, 1, 0)
_f3.Position = UDim2.new(1, -15, 0, 0)
_f3.BackgroundColor3 = Color3.fromRGB(11, 11, 14)
_f3.BorderSizePixel = 0
_f3.Parent = _q1

local _f4 = Instance.new("Frame")
_f4.Size = UDim2.new(1, 0, 0, 15)
_f4.BackgroundColor3 = Color3.fromRGB(11, 11, 14)
_f4.BorderSizePixel = 0
_f4.Parent = _q1

local _a2 = Instance.new("ImageLabel")
_a2.Size = UDim2.new(0, 52, 0, 52)
_a2.Position = UDim2.new(0.5, -26, 0, 12)
_a2.BackgroundColor3 = Color3.fromRGB(22, 22, 26)
_a2.Parent = _q1

local _c8 = Instance.new("UICorner")
_c8.CornerRadius = UDim.new(1, 0)
_c8.Parent = _a2

local _s2 = Instance.new("UIStroke")
_s2.Color = Color3.fromRGB(35, 35, 40)
_s2.Thickness = 1
_s2.Parent = _a2

pcall(function()
    _a2.Image = _p2:GetUserThumbnailAsync(_l0.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size150x150)
end)

local _u2 = Instance.new("TextLabel")
_u2.Size = UDim2.new(1, -16, 0, 16)
_u2.Position = UDim2.new(0, 8, 0, 70)
_u2.BackgroundTransparency = 1
_u2.Text = "@" .. _l0.DisplayName
_u2.TextColor3 = Color3.fromRGB(180, 180, 185)
_u2.Font = Enum.Font.GothamMedium
_u2.TextSize = 10
_u2.TextScaled = true
_u2.Parent = _q1

local _t2 = Instance.new("Frame")
_t2.Size = UDim2.new(1, 0, 0, 150)
_t2.Position = UDim2.new(0, 0, 0, 92)
_t2.BackgroundTransparency = 1
_t2.Parent = _q1

local _l1 = Instance.new("UIListLayout")
_l1.Padding = UDim.new(0, 4)
_l1.HorizontalAlignment = Enum.HorizontalAlignment.Center
_l1.Parent = _t2

local _y7 = Instance.new("Folder")
_y7.Name = "Pages"
_y7.Parent = _z2

local function _cr(name)
    local frame = Instance.new("ScrollingFrame")
    frame.Name = name .. "Page"
    frame.Size = UDim2.new(1, -132, 1, -20)
    frame.Position = UDim2.new(0, 126, 0, 10)
    frame.BackgroundTransparency = 1
    frame.CanvasSize = UDim2.new(0, 0, 0, 0)
    frame.ScrollBarThickness = 3
    frame.ScrollBarImageColor3 = Color3.fromRGB(60, 60, 65)
    frame.Visible = false
    frame.Parent = _y7

    local layout = Instance.new("UIListLayout")
    layout.Padding = UDim.new(0, 6)
    layout.SortOrder = Enum.SortOrder.LayoutOrder
    layout.Parent = frame

    layout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
        frame.CanvasSize = UDim2.new(0, 0, 0, layout.AbsoluteContentSize.Y + 15)
    end)

    return frame
end

local _p3 = _cr("Main")
local _p4 = _cr("Custom")
local _p6 = _cr("Teleport")
local _p7 = _cr("Boombox")
local _p5 = _cr("About")

local _t3 = nil

local function _tb(name, target)
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(0, 106, 0, 24)
    btn.BackgroundColor3 = Color3.fromRGB(20, 20, 24)
    btn.Text = name
    btn.TextColor3 = Color3.fromRGB(160, 160, 165)
    btn.Font = Enum.Font.GothamMedium
    btn.TextSize = 11
    btn.Parent = _t2

    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 6)
    corner.Parent = btn

    local stroke = Instance.new("UIStroke")
    stroke.Color = Color3.fromRGB(28, 28, 32)
    stroke.Thickness = 1
    stroke.Parent = btn

    btn.MouseButton1Click:Connect(function()
        if _t3 == btn then return end
        
        if _t3 then
            _t5:Create(_t3, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(20, 20, 24), TextColor3 = Color3.fromRGB(160, 160, 165)}):Play()
            local old = _t3:FindFirstChildOfClass("UIStroke")
            if old then _t5:Create(old, TweenInfo.new(0.2), {Color = Color3.fromRGB(28, 28, 32)}):Play() end
        end
        
        for _, p in pairs(_y7:GetChildren()) do p.Visible = false end
        
        _t3 = btn
        target.Visible = true
        
        _t5:Create(btn, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(28, 28, 35), TextColor3 = Color3.fromRGB(0, 255, 200)}):Play()
        _t5:Create(stroke, TweenInfo.new(0.2), {Color = Color3.fromRGB(0, 180, 255)}):Play()
    end)
    
    if name == "Main Scripts" then
        _t3 = btn
        target.Visible = true
        btn.BackgroundColor3 = Color3.fromRGB(28, 28, 35)
        btn.TextColor3 = Color3.fromRGB(0, 255, 200)
        stroke.Color = Color3.fromRGB(0, 180, 255)
    end
end

_tb("Main Scripts", _p3)
_tb("Custom Scripts", _p4)
_tb("Teleport", _p6)
_tb("Boombox Logger", _p7)
_tb("About Script", _p5)

local _l4 = Instance.new("TextLabel")
_l4.Size = UDim2.new(1, 0, 0, 25)
_l4.Position = UDim2.new(0, 0, 1, -25)
_l4.BackgroundTransparency = 1
_l4.Text = "12:00:00 AM"
_l4.TextColor3 = Color3.fromRGB(0, 255, 200)
_l4.Font = Enum.Font.Code
_l4.TextSize = 11
_l4.Parent = _q1

task.spawn(function()
    while _v4 and task.wait(1) do
        if _l4 and _l4.Parent then
            _l4.Text = os.date("%I:%M:%S %p")
        end
    end
end)

local function _sh(name, parent)
    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(1, -8, 0, 24)
    frame.BackgroundTransparency = 1
    frame.Parent = parent

    local lay = Instance.new("UIListLayout")
    lay.FillDirection = Enum.FillDirection.Horizontal
    lay.SortOrder = Enum.SortOrder.LayoutOrder
    lay.VerticalAlignment = Enum.VerticalAlignment.Center
    lay.Padding = UDim.new(0, 10)
    lay.Parent = frame

    local lbl = Instance.new("TextLabel")
    lbl.BackgroundTransparency = 1
    lbl.Text = name:upper()
    lbl.TextColor3 = Color3.fromRGB(0, 180, 255)
    lbl.Font = Enum.Font.GothamBold
    lbl.TextSize = 11
    lbl.AutomaticSize = Enum.AutomaticSize.X
    lbl.Size = UDim2.new(0, 0, 1, 0)
    lbl.LayoutOrder = 1
    lbl.Parent = frame
    
    local line = Instance.new("Frame")
    line.Size = UDim2.new(1, 0, 0, 1)
    line.BackgroundColor3 = Color3.fromRGB(28, 28, 32)
    line.BorderSizePixel = 0
    line.LayoutOrder = 2
    line.Parent = frame

    frame:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
        local lw = lbl.AbsoluteSize.X
        local fw = frame.AbsoluteSize.X
        local rw = fw - lw - 10
        if rw > 0 then
            line.Size = UDim2.new(0, rw, 0, 1)
        else
            line.Size = UDim2.new(0, 0, 0, 1)
        end
    end)
end

local function _tg(name, def, parent, cb)
    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(1, -8, 0, 36)
    frame.BackgroundColor3 = Color3.fromRGB(20, 20, 24)
    frame.BorderSizePixel = 0
    frame.Parent = parent

    local corn = Instance.new("UICorner")
    corn.CornerRadius = UDim.new(0, 6)
    corn.Parent = frame

    local strk = Instance.new("UIStroke")
    strk.Color = Color3.fromRGB(28, 28, 32)
    strk.Thickness = 1
    strk.Parent = frame

    local txt = Instance.new("TextLabel")
    txt.Size = UDim2.new(0.7, 0, 1, 0)
    txt.Position = UDim2.new(0, 12, 0, 0)
    txt.BackgroundTransparency = 1
    txt.Text = name
    txt.TextColor3 = Color3.fromRGB(225, 225, 230)
    txt.Font = Enum.Font.GothamMedium
    txt.TextSize = 11
    txt.TextXAlignment = Enum.TextXAlignment.Left
    txt.Parent = frame

    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(0, 32, 0, 16)
    btn.Position = UDim2.new(1, -42, 0.5, -8)
    btn.BackgroundColor3 = def and Color3.fromRGB(0, 180, 255) or Color3.fromRGB(45, 45, 50)
    btn.Text = ""
    btn.Parent = frame

    local bc = Instance.new("UICorner")
    bc.CornerRadius = UDim.new(1, 0)
    bc.Parent = btn

    local circ = Instance.new("Frame")
    circ.Size = UDim2.new(0, 10, 0, 10)
    circ.Position = def and UDim2.new(1, -13, 0.5, -5) or UDim2.new(0, 3, 0.5, -5)
    circ.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    circ.BorderSizePixel = 0
    circ.Parent = btn

    local cc = Instance.new("UICorner")
    cc.CornerRadius = UDim.new(1, 0)
    cc.Parent = circ

    local state = def
    btn.MouseButton1Click:Connect(function()
        state = not state
        local tc = state and Color3.fromRGB(0, 255, 180) or Color3.fromRGB(45, 45, 50)
        local tp = state and UDim2.new(1, -13, 0.5, -5) or UDim2.new(0, 3, 0.5, -5)
        
        _t5:Create(btn, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = tc}):Play()
        _t5:Create(circ, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Position = tp}):Play()
        _t5:Create(strk, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Color = state and Color3.fromRGB(0, 255, 180) or Color3.fromRGB(28, 28, 32)}):Play()
        
        cb(state)
    end)
end

local function _bt(name, parent, cb)
    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(1, -8, 0, 36)
    frame.BackgroundColor3 = Color3.fromRGB(20, 20, 24)
    frame.Parent = parent

    local corn = Instance.new("UICorner")
    corn.CornerRadius = UDim.new(0, 6)
    corn.Parent = frame

    local strk = Instance.new("UIStroke")
    strk.Color = Color3.fromRGB(28, 28, 32)
    strk.Thickness = 1
    strk.Parent = frame

    local abtn = Instance.new("TextButton")
    abtn.Size = UDim2.new(1, 0, 1, 0)
    abtn.BackgroundTransparency = 1
    abtn.Text = name
    abtn.TextColor3 = Color3.fromRGB(225, 225, 230)
    abtn.Font = Enum.Font.GothamMedium
    abtn.TextSize = 11
    abtn.Parent = frame

    abtn.MouseButton1Click:Connect(function()
        _t5:Create(frame, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(28, 28, 35)}):Play()
        _t5:Create(strk, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Color = Color3.fromRGB(0, 180, 255)}):Play()
        abtn.TextColor3 = Color3.fromRGB(0, 255, 200)
        task.wait(0.12)
        _t5:Create(frame, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(20, 20, 24)}):Play()
        _t5:Create(strk, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Color = Color3.fromRGB(28, 28, 32)}):Play()
        abtn.TextColor3 = Color3.fromRGB(225, 225, 230)
        cb()
    end)
end

local function _ta(name, def, parent, cb)
    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(1, -8, 0, 36)
    frame.BackgroundColor3 = Color3.fromRGB(20, 20, 24)
    frame.Parent = parent

    local corn = Instance.new("UICorner")
    corn.CornerRadius = UDim.new(0, 6)
    corn.Parent = frame

    local strk = Instance.new("UIStroke")
    strk.Color = Color3.fromRGB(28, 28, 32)
    strk.Thickness = 1
    strk.Parent = frame

    local txt = Instance.new("TextLabel")
    txt.Size = UDim2.new(0.6, 0, 1, 0)
    txt.Position = UDim2.new(0, 12, 0, 0)
    txt.BackgroundTransparency = 1
    txt.Text = name
    txt.TextColor3 = Color3.fromRGB(225, 225, 230)
    txt.Font = Enum.Font.GothamMedium
    txt.TextSize = 11
    txt.TextXAlignment = Enum.TextXAlignment.Left
    txt.Parent = frame

    local box = Instance.new("TextBox")
    box.Size = UDim2.new(0, 46, 0, 20)
    box.Position = UDim2.new(1, -54, 0.5, -10)
    box.BackgroundColor3 = Color3.fromRGB(30, 30, 36)
    box.Text = tostring(def)
    box.TextColor3 = Color3.fromRGB(255, 255, 255)
    box.Font = Enum.Font.GothamBold
    box.TextSize = 10
    box.Parent = frame

    local bc = Instance.new("UICorner")
    bc.CornerRadius = UDim.new(0, 4)
    bc.Parent = box
    
    local bs = Instance.new("UIStroke")
    bs.Color = Color3.fromRGB(45, 45, 50)
    bs.Thickness = 1
    bs.Parent = box

    box.Focused:Connect(function()
        _t5:Create(bs, TweenInfo.new(0.15), {Color = Color3.fromRGB(0, 180, 255)}):Play()
    end)

    box.FocusLost:Connect(function()
        _t5:Create(bs, TweenInfo.new(0.15), {Color = Color3.fromRGB(45, 45, 50)}):Play()
        local val = tonumber(box.Text)
        if val then
            cb(val)
        else
            box.Text = tostring(def)
        end
    end)
end

local function _ge()
    local char = _l0.Character
    if not char then return nil, nil, nil end
    local root = char:FindFirstChild("HumanoidRootPart")
    local hum = char:FindFirstChildOfClass("Humanoid")
    return char, root, hum
end

local _se = false
local _sv = 50

_sh("Movement", _p3)

_tg("Enable Speed Hack", false, _p3, function(state)
    _se = state
    local _, _, hum = _ge()
    if hum then hum.WalkSpeed = state and _sv or 16 end
end)

_ta("Walk Speed", 50, _p3, function(value)
    _sv = value
    local _, _, hum = _ge()
    if _se and hum then hum.WalkSpeed = value end
end)

_r4.Heartbeat:Connect(function()
    if _v4 and _se then
        local _, _, hum = _ge()
        if hum and hum.WalkSpeed ~= _sv then
            hum.WalkSpeed = _sv
        end
    end
end)

local _nc = false
_r4.Stepped:Connect(function()
    if _v4 and _nc and _l0.Character then
        for _, part in pairs(_l0.Character:GetDescendants()) do
            if part:IsA("BasePart") then part.CanCollide = false end
        end
    end
end)

_tg("Enable Noclip", false, _p3, function(state) _nc = state end)

local _fe = false
local _fv = 50
local _sp = nil

_tg("Enable Fly Mode", false, _p3, function(state)
    _fe = state
    _sp = nil
    local _, root, hum = _ge()
    if hum then
        hum.PlatformStand = state
    end
    if not state and root then
        root.Velocity = Vector3.new(0,0,0)
    end
end)

_ta("Fly Speed", 50, _p3, function(value)
    _fv = value
end)

_r4.Heartbeat:Connect(function()
    if _v4 and _fe then
        local _, root, hum = _ge()
        if root and hum then
            hum.PlatformStand = true
            
            local cam = _w8.CurrentCamera
            local joy = hum.MoveDirection
            local look = cam.CFrame.LookVector
            
            if joy.Magnitude > 0 then
                _sp = nil
                local right = cam.CFrame.RightVector
                local lmd = cam.CFrame:VectorToObjectSpace(joy)
                local nm = Vector3.new(lmd.X, 0, lmd.Z).Unit
                local final = ((look * -nm.Z) + (right * nm.X)).Unit
                
                root.Velocity = final * _fv
                root.CFrame = CFrame.new(root.Position, root.Position + look)
            else
                if not _sp then
                    _sp = root.Position
                end
                root.Velocity = Vector3.new(0, 0, 0)
                root.CFrame = CFrame.new(_sp, _sp + look)
            end
        end
    end
end)

_sh("Visuals & Performance", _p3)

local _ee = false

local function _ae(player)
    if player == _l0 then return end
    
    local function _me()
        local char = player.Character or player.CharacterAdded:Wait()
        local head = char:WaitForChild("Head", 5)
        if not head then return end

        if char:FindFirstChild("ESPHighlight") then char.ESPHighlight:Destroy() end
        if head:FindFirstChild("ESPBBG") then head.ESPBBG:Destroy() end

        local hl = Instance.new("Highlight")
        hl.Name = "ESPHighlight"
        hl.FillTransparency = 0.6
        hl.FillColor = Color3.fromRGB(0, 255, 150)
        hl.OutlineColor = Color3.fromRGB(255, 255, 255)
        hl.Enabled = _ee
        hl.Parent = char

        local bbg = Instance.new("BillboardGui")
        bbg.Name = "ESPBBG"
        bbg.Size = UDim2.new(0, 200, 0, 50)
        bbg.AlwaysOnTop = true
        bbg.ExtentsOffset = Vector3.new(0, 3, 0)
        bbg.Enabled = _ee
        bbg.Parent = head

        local lbl = Instance.new("TextLabel")
        lbl.Size = UDim2.new(1, 0, 1, 0)
        lbl.BackgroundTransparency = 1
        lbl.Text = player.DisplayName
        lbl.TextColor3 = Color3.fromRGB(255, 50, 50)
        lbl.Font = Enum.Font.GothamBold
        lbl.TextSize = 14
        lbl.Parent = bbg
    end

    _me()
    player.CharacterAdded:Connect(_me)
end

_tg("Enable Player ESP", false, _p3, function(state)
    _ee = state
    for _, p in pairs(_p2:GetPlayers()) do
        if p.Character then
            local hl = p.Character:FindFirstChild("ESPHighlight")
            local head = p.Character:FindFirstChild("Head")
            local bbg = head and head:FindFirstChild("ESPBBG")
            if hl then hl.Enabled = state end
            if bbg then bbg.Enabled = state end
        end
    end
end)

for _, p in pairs(_p2:GetPlayers()) do _ae(p) end
_p2.PlayerAdded:Connect(_ae)

_bt("Anti-Lag (FPS Boost)", _p3, function()
    for _, v in pairs(_w8:GetDescendants()) do
        if v:IsA("BasePart") and not v:IsDescendantOf(_l0.Character) then
            v.Material = Enum.Material.SmoothPlastic
            if v:IsA("MeshPart") or v:IsA("UnionOperation") then v.Reflectance = 0 end
        elseif v:IsA("Decal") or v:IsA("Texture") then
            v.Transparency = 1
        elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
            v.Enabled = false
        end
    end
    _t1.Text = "Anti-Lag Applied!"
    task.wait(1.5)
    _t1.Text = "VULNSEC HUB"
end)

local function _re()
    for _, p in pairs(_p2:GetPlayers()) do
        if p.Character then
            local hl = p.Character:FindFirstChild("ESPHighlight")
            if hl then hl:Destroy() end
            local head = p.Character:FindFirstChild("Head")
            local bbg = head and head:FindFirstChild("ESPBBG")
            if bbg then bbg:Destroy() end
        end
    end
end

_e1.MouseButton1Click:Connect(function()
    _v4 = false
    _fe = false
    _se = false
    _nc = false
    _ee = false
    _sp = nil
    
    _re()
    
    local _, root, hum = _ge()
    if hum then
        hum.PlatformStand = false
        hum.WalkSpeed = 16
    end
    if root then
        root.Velocity = Vector3.new(0,0,0)
    end
    
    _t5:Create(_m4, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {Size = UDim2.new(0,0,0,0), Position = UDim2.new(0.5, 0, 0.5, 0), BackgroundTransparency = 1}):Play()
    task.wait(0.2)
    _s7:Destroy()
end)

local function _er(url, name, isR6)
    task.spawn(function()
        _t1.Text = "Fetching Script Core..."
        local exec = false
        local success, err = pcall(function()
            if isR6 then
                loadstring(game:HttpGet(url))("Spider Script")
            else
                loadstring(game:HttpGet(url))()
            end
            exec = true
        end)
        
        if success and exec then
            _t1.Text = "💥 " .. name:upper() .. " ACTIVE 💥"
            local flash = _t5:Create(_g6, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 3, true), {Color = Color3.fromRGB(255, 230, 0), Thickness = 4})
            flash:Play()
            flash.Completed:Wait()
        else
            _t1.Text = "Execution Failed!"
            warn("Failed structural execution stack: " .. tostring(err))
        end
        task.wait(2)
        _t1.Text = "VULNSEC HUB"
    end)
end

_sh("Custom Scripts", _p4)

for _, d in pairs(_k9) do
    _bt(d.Name, _p4, function()
        _er(d.URL, d.Name, d.IsR6)
    end)
end

-- ================= TELEPORT TAB =================
_sh("Selected Target", _p6)

local _selectedTarget = nil
local _targetLabel = Instance.new("TextLabel")
_targetLabel.Size = UDim2.new(1, -8, 0, 36)
_targetLabel.BackgroundColor3 = Color3.fromRGB(20, 20, 24)
_targetLabel.TextColor3 = Color3.fromRGB(0, 255, 200)
_targetLabel.Font = Enum.Font.GothamBold
_targetLabel.TextSize = 11
_targetLabel.Text = "  Selected: None"
_targetLabel.TextXAlignment = Enum.TextXAlignment.Left
_targetLabel.Parent = _p6
Instance.new("UICorner", _targetLabel).CornerRadius = UDim.new(0, 6)
local _tStrk = Instance.new("UIStroke", _targetLabel)
_tStrk.Color = Color3.fromRGB(28, 28, 32)
_tStrk.Thickness = 1

_sh("Player List", _p6)

local _listContainer = Instance.new("ScrollingFrame")
_listContainer.Size = UDim2.new(1, -8, 0, 110)
_listContainer.BackgroundTransparency = 1
_listContainer.CanvasSize = UDim2.new(0, 0, 0, 0)
_listContainer.ScrollBarThickness = 3
_listContainer.ScrollBarImageColor3 = Color3.fromRGB(60, 60, 65)
_listContainer.Parent = _p6

local _listLayout = Instance.new("UIListLayout")
_listLayout.Padding = UDim.new(0, 4)
_listLayout.SortOrder = Enum.SortOrder.LayoutOrder
_listLayout.Parent = _listContainer

_listLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
    _listContainer.CanvasSize = UDim2.new(0, 0, 0, _listLayout.AbsoluteContentSize.Y + 5)
end)

local function refreshPlayerList()
    for _, child in pairs(_listContainer:GetChildren()) do
        if child:IsA("TextButton") then
            child:Destroy()
        end
    end
    
    for _, p in pairs(_p2:GetPlayers()) do
        if p ~= _l0 then
            local pBtn = Instance.new("TextButton")
            pBtn.Size = UDim2.new(1, 0, 0, 32)
            pBtn.BackgroundColor3 = Color3.fromRGB(20, 20, 24)
            pBtn.Text = "  " .. p.DisplayName .. " (@" .. p.Name .. ")"
            pBtn.TextColor3 = Color3.fromRGB(225, 225, 230)
            pBtn.Font = Enum.Font.GothamMedium
            pBtn.TextSize = 11
            pBtn.TextXAlignment = Enum.TextXAlignment.Left
            pBtn.Parent = _listContainer
            
            local c = Instance.new("UICorner", pBtn)
            c.CornerRadius = UDim.new(0, 6)
            local s = Instance.new("UIStroke", pBtn)
            s.Color = Color3.fromRGB(28, 28, 32)
            s.Thickness = 1
            
            pBtn.MouseButton1Click:Connect(function()
                _selectedTarget = p
                _targetLabel.Text = "  Selected: " .. p.DisplayName
                _t5:Create(s, TweenInfo.new(0.2), {Color = Color3.fromRGB(0, 180, 255)}):Play()
            end)
        end
    end
end

_bt("Refresh Player List", _p6, function()
    refreshPlayerList()
end)

_bt("Teleport to Target", _p6, function()
    if _selectedTarget and _selectedTarget.Character then
        local tRoot = _selectedTarget.Character:FindFirstChild("HumanoidRootPart")
        local _, lRoot, _ = _ge()
        if tRoot and lRoot then
            lRoot.CFrame = tRoot.CFrame + Vector3.new(0, 3, 0)
            _t1.Text = "Teleported to " .. _selectedTarget.DisplayName
            task.wait(1.5)
            _t1.Text = "VULNSEC HUB"
        else
            _t1.Text = "Target has no character!"
            task.wait(1.5)
            _t1.Text = "VULNSEC HUB"
        end
    else
        _t1.Text = "No player selected or offline!"
        task.wait(1.5)
        _t1.Text = "VULNSEC HUB"
    end
end)

refreshPlayerList()
-- ===============================================

-- ================= BOOMBOX LOGGER TAB =================
_sh("Boombox Control", _p7)

local _isBoomboxLogging = false
local _loggedAudioIds = {}

_tg("Enable Boombox Logger", false, _p7, function(state)
    _isBoomboxLogging = state
    if state then
        _t1.Text = "Boombox Logger Active"
    else
        _t1.Text = "Boombox Logger Paused"
    end
    task.wait(1.5)
    _t1.Text = "VULNSEC HUB"
end)

_sh("Logged IDs", _p7)

local _bbListContainer = Instance.new("ScrollingFrame")
_bbListContainer.Size = UDim2.new(1, -8, 0, 110)
_bbListContainer.BackgroundTransparency = 1
_bbListContainer.CanvasSize = UDim2.new(0, 0, 0, 0)
_bbListContainer.ScrollBarThickness = 3
_bbListContainer.ScrollBarImageColor3 = Color3.fromRGB(60, 60, 65)
_bbListContainer.Parent = _p7

local _bbListLayout = Instance.new("UIListLayout")
_bbListLayout.Padding = UDim.new(0, 4)
_bbListLayout.SortOrder = Enum.SortOrder.LayoutOrder
_bbListLayout.Parent = _bbListContainer

_bbListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
    _bbListContainer.CanvasSize = UDim2.new(0, 0, 0, _bbListLayout.AbsoluteContentSize.Y + 5)
end)

local function logBoomboxSound(playerName, soundId)
    local cleanId = soundId:match("%d+")
    if not cleanId or cleanId == "" then return end
    
    local entryString = playerName .. " : " .. cleanId
    for _, existing in ipairs(_loggedAudioIds) do
        if existing == entryString then return end
    end
    table.insert(_loggedAudioIds, entryString)
    
    local entryBtn = Instance.new("TextButton")
    entryBtn.Size = UDim2.new(1, 0, 0, 32)
    entryBtn.BackgroundColor3 = Color3.fromRGB(20, 20, 24)
    entryBtn.Text = "  " .. playerName .. " -> " .. cleanId
    entryBtn.TextColor3 = Color3.fromRGB(0, 255, 200)
    entryBtn.Font = Enum.Font.GothamMedium
    entryBtn.TextSize = 11
    entryBtn.TextXAlignment = Enum.TextXAlignment.Left
    entryBtn.Parent = _bbListContainer
    
    Instance.new("UICorner", entryBtn).CornerRadius = UDim.new(0, 6)
    local s = Instance.new("UIStroke", entryBtn)
    s.Color = Color3.fromRGB(28, 28, 32)
    s.Thickness = 1
    
    entryBtn.MouseButton1Click:Connect(function()
        pcall(function()
            if setclipboard then
                setclipboard(cleanId)
                _t1.Text = "Copied ID: " .. cleanId
                task.wait(1.5)
                _t1.Text = "VULNSEC HUB"
            end
        end)
    end)
end

local function monitorSoundInstance(sound)
    if sound:IsA("Sound") then
        sound.Changed:Connect(function(prop)
            if _isBoomboxLogging and prop == "SoundId" and sound.SoundId ~= "" then
                local parent = sound.Parent
                local pName = "Unknown"
                while parent and parent ~= game do
                    if parent:IsA("Model") and _p2:GetPlayerFromCharacter(parent) then
                        pName = _p2:GetPlayerFromCharacter(parent).Name
                        break
                    elseif parent:IsA("Player") then
                        pName = parent.Name
                        break
                    end
                    parent = parent.Parent
                end
                if pName ~= _l0.Name then
                    logBoomboxSound(pName, sound.SoundId)
                end
            end
        end)
        
        if _isBoomboxLogging and sound.SoundId ~= "" then
            local parent = sound.Parent
            local pName = "Unknown"
            while parent and parent ~= game do
                if parent:IsA("Model") and _p2:GetPlayerFromCharacter(parent) then
                    pName = _p2:GetPlayerFromCharacter(parent).Name
                    break
                elseif parent:IsA("Player") then
                    pName = parent.Name
                    break
                end
                parent = parent.Parent
            end
            if pName ~= _l0.Name then
                logBoomboxSound(pName, sound.SoundId)
            end
        end
    end
end

for _, desc in pairs(_w8:GetDescendants()) do
    monitorSoundInstance(desc)
end
_w8.DescendantAdded:Connect(monitorSoundInstance)

_bt("Copy All Logged IDs", _p7, function()
    local combined = table.concat(_loggedAudioIds, "\n")
    pcall(function()
        if setclipboard then
            setclipboard(combined)
            _t1.Text = "All IDs Copied!"
        end
    end)
    task.wait(1.5)
    _t1.Text = "VULNSEC HUB"
end)

_bt("Clear Log List", _p7, function()
    _loggedAudioIds = {}
    for _, child in pairs(_bbListContainer:GetChildren()) do
        if child:IsA("TextButton") then
            child:Destroy()
        end
    end
    _t1.Text = "Logs Cleared!"
    task.wait(1.5)
    _t1.Text = "VULNSEC HUB"
end)
-- ===============================================

_sh("Project Information", _p5)

local _ad = Instance.new("TextLabel")
_ad.Size = UDim2.new(1, -8, 0, 110)
_ad.BackgroundTransparency = 1
_ad.Text = "VulnSec Hub represents an advanced, high-performance runtime modification environment engineered for optimal system delivery. This deployment is currently operating within an active, closed BETA developmental stage.\n\nOur system infrastructure remains subject to continuous refactoring, performance optimization updates, and structural engine enhancements designed to maintain peak stability."
_ad.TextColor3 = Color3.fromRGB(180, 185, 195)
_ad.Font = Enum.Font.GothamMedium
_ad.TextSize = 11
_ad.TextWrapped = true
_ad.TextYAlignment = Enum.TextYAlignment.Top
_ad.TextXAlignment = Enum.TextXAlignment.Left
_ad.Parent = _p5

_sh("Official Developers Link", _p5)

local _dl = Instance.new("ImageButton")
_dl.Size = UDim2.new(0,48,0,48)
_dl.Position = UDim2.new(0.5,-24,0,0)
_dl.BackgroundColor3 = Color3.fromRGB(20,20,24)
_dl.Parent = _p5

pcall(function()
    local name = "Vulnsec_FB_Logo.png"
    if not isfile(name) then
        writefile(name, game:HttpGet("https://raw.githubusercontent.com/leos00281-eng/Rbx/refs/heads/main/0gFm6_6mwp0.png"))
    end
    _dl.Image = getcustomasset(name)
end)

local _dc = Instance.new("UICorner")
_dc.CornerRadius = UDim.new(1,0)
_dc.Parent = _dl

local _ds = Instance.new("UIStroke")
_ds.Color = Color3.fromRGB(28,28,32)
_ds.Thickness = 1
_ds.Parent = _dl

local _tip = Instance.new("TextLabel")
_tip.Size = UDim2.new(1,-8,0,24)
_tip.Position = UDim2.new(0,0,0,54)
_tip.BackgroundTransparency = 1
_tip.Text = "Facebook"
_tip.TextColor3 = Color3.fromRGB(0,180,255)
_tip.Font = Enum.Font.Code
_tip.TextSize = 10
_tip.Parent = _p5

_dl.MouseButton1Click:Connect(function()
    pcall(function()
        if setclipboard then
            setclipboard("https://www.facebook.com/vulnsec.legion")
        end
    end)
    pcall(function()
        game:GetService("GuiService"):OpenBrowserWindow("https://www.facebook.com/vulnsec.legion")
    end)
    local old=_tip.Text
    _tip.Text="Link Copied!"
    task.wait(1.5)
    _tip.Text=old
end)

local function _sd(frame, obj)
    local drag, input, start, pos
    frame.InputBegan:Connect(function(i)
        if i.UserInputType == Enum.UserInputType.MouseButton1 or i.UserInputType == Enum.UserInputType.Touch then
            drag = true
            start = i.Position
            pos = obj.Position
            i.Changed:Connect(function()
                if i.UserInputState == Enum.UserInputState.End then drag = false end
            end)
        end
    end)
    frame.InputChanged:Connect(function(i)
        if i.UserInputType == Enum.UserInputType.MouseMovement or i.UserInputType == Enum.UserInputType.Touch then input = i end
    end)
    _u1.InputChanged:Connect(function(i)
        if i == input and drag then
            local delta = i.Position - start
            _t5:Create(obj, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                Position = UDim2.new(pos.X.Scale, pos.X.Offset + delta.X, pos.Y.Scale, pos.Y.Offset + delta.Y)
            }):Play()
        end
    end)
end

_sd(_b9, _m4)
_sd(_o3, _o3)

local function _pi()
    _m4.Size = UDim2.new(0, 0, 0, 0)
    _m4.Position = UDim2.new(0.5, 0, 0.5, 0)
    _m4.BackgroundTransparency = 1
    _z2.Visible = false
    _b9.BackgroundTransparency = 1
    _t1.TextTransparency = 1
    _e1.BackgroundTransparency = 1
    _m2.BackgroundTransparency = 1
    _g6.Enabled = false
    
    task.wait(0.1)
    _g6.Enabled = true
    _g6.Thickness = 5
    _g6.Color = Color3.fromRGB(0, 255, 200)
    
    local s1 = _t5:Create(_m4, TweenInfo.new(0.4, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {
        BackgroundTransparency = 0.4,
        Size = UDim2.new(0, 480, 0, 3),
        Position = UDim2.new(0.5, -240, 0.5, -1.5)
    })
    s1:Play()
    s1.Completed:Wait()
    
    local s2 = _t5:Create(_m4, TweenInfo.new(0.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
        Size = UDim2.new(0, 480, 0, 330),
        Position = UDim2.new(0.5, -240, 0.5, -165),
        BackgroundTransparency = 0
    })
    local sf = _t5:Create(_g6, TweenInfo.new(0.6, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        Thickness = 1.5,
        Color = Color3.fromRGB(0, 180, 255)
    })
    
    s2:Play()
    sf:Play()
    
    _t5:Create(_b9, TweenInfo.new(0.3), {BackgroundTransparency = 0}):Play()
    _t5:Create(_t1, TweenInfo.new(0.3), {TextTransparency = 0}):Play()
    _t5:Create(_e1, TweenInfo.new(0.3), {BackgroundTransparency = 0}):Play()
    _t5:Create(_m2, TweenInfo.new(0.3), {BackgroundTransparency = 0}):Play()
    
    s2.Completed:Wait()
    _z2.Visible = true
end

_pi()

    else
        _t6.Text = ""
        _t6.PlaceholderText = "INVALID KEY!"
        _v5:Create(_b2, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(255, 70, 70)}):Play()
        task.wait(1)
        _v5:Create(_b2, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(28, 28, 35)}):Play()
        _t6.PlaceholderText = "Enter Access Key"
    end
end)

task.spawn(function()
    while _m7 and _m7.Parent do
        _v5:Create(_g3, TweenInfo.new(1.5), {Thickness = 2.5, Color = Color3.fromRGB(0, 255, 200)}):Play()
        task.wait(1.5)
        _v5:Create(_g3, TweenInfo.new(1.5), {Thickness = 1.5, Color = Color3.fromRGB(0, 180, 255)}):Play()
        task.wait(1.5)
    end
end)
