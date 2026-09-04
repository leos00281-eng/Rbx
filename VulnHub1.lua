local queueOnTeleport = (syn and syn.queue_on_teleport) or queue_on_teleport or (fluxus and fluxus.queue_on_teleport)
if queueOnTeleport then
    pcall(function()
        queueOnTeleport('loadstring(game:HttpGet("https://raw.githubusercontent.com/leos00281-eng/Rbx/refs/heads/main/loader.lua"))()')
    end)
end

local v_a1 = game:GetService("Players")
local v_b2 = game:GetService("TweenService")
local v_c3 = game:GetService("UserInputService")
local v_d4 = game:GetService("RunService")
local v_e5 = game:GetService("Workspace")
local v_f6 = game:GetService("Lighting")
local v_g7 = game:GetService("MarketplaceService")
local v_h8 = game:GetService("GuiService")
local SoundService = game:GetService("SoundService")

local v_i9 = v_a1.LocalPlayer
local v_j0 = true
local v_k1 = {}
local v_l2 = {}

local function v_m3(conn)
    table.insert(v_k1, conn)
    return conn
end

local function v_n4(conn)
    table.insert(v_l2, conn)
    return conn
end

local v_o5 = {
    {Name = "Jerk Off R15", URL = "https://pastefy.app/YZoglOyJ/raw", IsR6 = false},
    {Name = "Jerk Off R6", URL = "https://pastefy.app/wa3v2Vgm/raw", IsR6 = true}
}

local v_p6 = v_i9:WaitForChild("PlayerGui"):FindFirstChild("Vulnsec_Hub_Gui")
if v_p6 then v_p6:Destroy() end

local v_q7 = Instance.new("ScreenGui")
v_q7.Name = "Vulnsec_Hub_Gui"
v_q7.ResetOnSpawn = false
v_q7.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

if syn and syn.protect_gui then 
    syn.protect_gui(v_q7) 
elseif gethui then
    v_q7.Parent = gethui()
else
    v_q7.Parent = v_i9:WaitForChild("PlayerGui")
end

local v_r8 = Instance.new("Frame")
v_r8.Name = "MainFrame"
v_r8.Size = UDim2.new(0, 480, 0, 330) 
v_r8.Position = UDim2.new(0.5, -240, 0.5, -200)
v_r8.BackgroundColor3 = Color3.fromRGB(15, 15, 18)
v_r8.BorderSizePixel = 0
v_r8.ClipsDescendants = false
v_r8.Visible = true
v_r8.Parent = v_q7

local v_s9 = Instance.new("UICorner")
v_s9.CornerRadius = UDim.new(0, 14)
v_s9.Parent = v_r8

local v_t0 = Instance.new("UIStroke")
v_t0.Color = Color3.fromRGB(0, 180, 255)
v_t0.Thickness = 1.5
v_t0.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
v_t0.Parent = v_r8

local v_u1 = Instance.new("Frame")
v_u1.Name = "NotificationContainer"
v_u1.Size = UDim2.new(0, 240, 1, -40)
v_u1.Position = UDim2.new(1, -250, 0, 20)
v_u1.BackgroundTransparency = 1
v_u1.Parent = v_q7

local v_u2 = Instance.new("UIListLayout")
v_u2.VerticalAlignment = Enum.VerticalAlignment.Bottom
v_u2.SortOrder = Enum.SortOrder.LayoutOrder
v_u2.Padding = UDim.new(0, 6)
v_u2.Parent = v_u1

local function v_u3(v_u4, v_u5)
    if not v_j0 then return end
    local v_u6 = Instance.new("Frame")
    v_u6.Size = UDim2.new(1, 0, 0, 0)
    v_u6.BackgroundColor3 = Color3.fromRGB(18, 18, 22)
    v_u6.BorderSizePixel = 0
    v_u6.ClipsDescendants = true
    v_u6.Parent = v_u1

    local v_u7 = Instance.new("UICorner")
    v_u7.CornerRadius = UDim.new(0, 6)
    v_u7.Parent = v_u6

    local v_u8 = Instance.new("UIStroke")
    v_u8.Color = v_u5 or Color3.fromRGB(0, 180, 255)
    v_u8.Thickness = 1.5
    v_u8.Parent = v_u6

    local v_u9 = Instance.new("TextLabel")
    v_u9.Size = UDim2.new(1, -16, 1, 0)
    v_u9.Position = UDim2.new(0, 8, 0, 0)
    v_u9.BackgroundTransparency = 1
    v_u9.Text = v_u4
    v_u9.TextColor3 = Color3.fromRGB(255, 255, 255)
    v_u9.Font = Enum.Font.GothamMedium
    v_u9.TextSize = 11
    v_u9.TextXAlignment = Enum.TextXAlignment.Left
    v_u9.TextWrapped = true
    v_u9.Parent = v_u6

    v_b2:Create(v_u6, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(1, 0, 0, 36)}):Play()

    task.spawn(function()
        task.wait(2.5)
        if v_u6 and v_u6.Parent then
            local v_tw = v_b2:Create(v_u6, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {Size = UDim2.new(1, 0, 0, 0)})
            v_tw:Play()
            v_tw.Completed:Connect(function()
                if v_u6 then v_u6:Destroy() end
            end)
        end
    end)
end

v_m3(task.spawn(function()
    while v_j0 and v_r8 and v_r8.Parent do
        local v_v1 = v_b2:Create(v_t0, TweenInfo.new(1.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {Thickness = 2.5, Color = Color3.fromRGB(0, 255, 200)})
        v_v1:Play()
        v_v1.Completed:Wait()
        if not v_j0 then break end
        local v_v2 = v_b2:Create(v_t0, TweenInfo.new(1.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {Thickness = 1.5, Color = Color3.fromRGB(0, 150, 255)})
        v_v2:Play()
        v_v2.Completed:Wait()
    end
end))

local v_v3 = Instance.new("Frame")
v_v3.Name = "TopBar"
v_v3.Size = UDim2.new(1, 0, 0, 38)
v_v3.BackgroundColor3 = Color3.fromRGB(22, 22, 26)
v_v3.BorderSizePixel = 0
v_v3.Parent = v_r8

local v_v4 = Instance.new("UICorner")
v_v4.CornerRadius = UDim.new(0, 14)
v_v4.Parent = v_v3

local v_v5 = Instance.new("Frame")
v_v5.Size = UDim2.new(1, 0, 0, 14)
v_v5.Position = UDim2.new(0, 0, 1, -14)
v_v5.BackgroundColor3 = Color3.fromRGB(22, 22, 26)
v_v5.BorderSizePixel = 0
v_v5.Parent = v_v3

local v_v6 = Instance.new("TextLabel")
v_v6.Size = UDim2.new(0, 200, 1, 0)
v_v6.Position = UDim2.new(0, 16, 0, 0)
v_v6.BackgroundTransparency = 1
v_v6.Text = "VULNSEC HUB"
v_v6.TextColor3 = Color3.fromRGB(255, 255, 255)
v_v6.Font = Enum.Font.GothamBold
v_v6.TextSize = 13
v_v6.TextXAlignment = Enum.TextXAlignment.Left
v_v6.Parent = v_v3

local v_v7 = Instance.new("TextButton")
v_v7.Size = UDim2.new(0, 18, 0, 18)
v_v7.Position = UDim2.new(1, -26, 0.5, -9)
v_v7.BackgroundColor3 = Color3.fromRGB(250, 70, 70)
v_v7.Text = "×"
v_v7.TextColor3 = Color3.fromRGB(255, 255, 255)
v_v7.Font = Enum.Font.GothamBold
v_v7.TextSize = 14
v_v7.Parent = v_v3

local v_v8 = Instance.new("UICorner")
v_v8.CornerRadius = UDim.new(0, 4)
v_v8.Parent = v_v7

local v_v9 = Instance.new("TextButton")
v_v9.Size = UDim2.new(0, 18, 0, 18)
v_v9.Position = UDim2.new(1, -48, 0.5, -9)
v_v9.BackgroundColor3 = Color3.fromRGB(250, 180, 50)
v_v9.Text = "−"
v_v9.TextColor3 = Color3.fromRGB(255, 255, 255)
v_v9.Font = Enum.Font.GothamBold
v_v9.TextSize = 14
v_v9.Parent = v_v3

local v_w0 = Instance.new("UICorner")
v_w0.CornerRadius = UDim.new(0, 4)
v_w0.Parent = v_v9

local v_w1 = Instance.new("ImageButton")
v_w1.Name = "DragBubble"
v_w1.Size = UDim2.new(0, 44, 0, 44)
v_w1.Position = UDim2.new(0.05, 0, 0.2, 0)
v_w1.BackgroundColor3 = Color3.fromRGB(22, 22, 26)
v_w1.Visible = false
v_w1.Parent = v_q7

local v_w2 = false
pcall(function()
    if typeof(isfile) == "function" and typeof(writefile) == "function" and typeof(getcustomasset) == "function" then
        local v_w3 = "Vulnsec_Bubble_Logo.png"
        if not isfile(v_w3) then
            local v_w4, v_w5 = pcall(function()
                return game:HttpGet("https://raw.githubusercontent.com/leos00281-eng/Rbx/refs/heads/main/56Tryup.png")
            end)
            if v_w4 and v_w5 then
                writefile(v_w3, v_w5)
            end
        end
        v_w1.Image = getcustomasset(v_w3)
        v_w2 = true
    end
end)

if not v_w2 then
    v_w1.Image = "rbxassetid://106037704812001" 
end

local v_w6 = Instance.new("UICorner")
v_w6.CornerRadius = UDim.new(1, 0)
v_w6.Parent = v_w1

local v_w7 = Instance.new("UIStroke")
v_w7.Color = Color3.fromRGB(0, 180, 255)
v_w7.Thickness = 1.5
v_w7.Parent = v_w1

local v_w8 = Instance.new("Frame")
v_w8.Size = UDim2.new(1, 0, 1, -38)
v_w8.Position = UDim2.new(0, 0, 0, 38)
v_w8.BackgroundTransparency = 1
v_w8.Parent = v_r8

v_m3(v_v9.MouseButton1Click:Connect(function()
    v_b2:Create(v_r8, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 0, 0, 0), Position = UDim2.new(0.5, 0, 0.5, -35)}):Play()
    task.wait(0.23)
    v_r8.Visible = false
    v_w1.Visible = true
    v_w1.Size = UDim2.new(0,0,0,0)
    v_b2:Create(v_w1, TweenInfo.new(0.35, Enum.EasingStyle.Elastic, Enum.EasingDirection.Out), {Size = UDim2.new(0, 44, 0, 44)}):Play()
end))

v_m3(v_w1.MouseButton1Click:Connect(function()
    v_w1.Visible = false
    v_r8.Visible = true
    v_b2:Create(v_r8, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Size = UDim2.new(0, 480, 0, 330), Position = UDim2.new(0.5, -240, 0.5, -200)}):Play()
end))

local v_x1 = Instance.new("Frame")
v_x1.Size = UDim2.new(0, 120, 1, 0)
v_x1.BackgroundColor3 = Color3.fromRGB(11, 11, 14)
v_x1.BorderSizePixel = 0
v_x1.Parent = v_w8

local v_x2 = Instance.new("UICorner")
v_x2.CornerRadius = UDim.new(0, 14)
v_x2.Parent = v_x1

local v_x3 = Instance.new("Frame")
v_x3.Size = UDim2.new(0, 15, 1, 0)
v_x3.Position = UDim2.new(1, -15, 0, 0)
v_x3.BackgroundColor3 = Color3.fromRGB(11, 11, 14)
v_x3.BorderSizePixel = 0
v_x3.Parent = v_x1

local v_x4 = Instance.new("Frame")
v_x4.Size = UDim2.new(1, 0, 0, 15)
v_x4.BackgroundColor3 = Color3.fromRGB(11, 11, 14)
v_x4.BorderSizePixel = 0
v_x4.Parent = v_x1

local v_x5 = Instance.new("ImageLabel")
v_x5.Size = UDim2.new(0, 52, 0, 52)
v_x5.Position = UDim2.new(0.5, -26, 0, 12)
v_x5.BackgroundColor3 = Color3.fromRGB(22, 22, 26)
v_x5.Parent = v_x1

local v_x6 = Instance.new("UICorner")
v_x6.CornerRadius = UDim.new(1, 0)
v_x6.Parent = v_x5

local v_x7 = Instance.new("UIStroke")
v_x7.Color = Color3.fromRGB(35, 35, 40)
v_x7.Thickness = 1
v_x7.Parent = v_x5

pcall(function()
    v_x5.Image = v_a1:GetUserThumbnailAsync(v_i9.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size150x150)
end)

local v_x8 = Instance.new("TextLabel")
v_x8.Size = UDim2.new(1, -16, 0, 16)
v_x8.Position = UDim2.new(0, 8, 0, 70)
v_x8.BackgroundTransparency = 1
v_x8.Text = "@" .. v_i9.DisplayName
v_x8.TextColor3 = Color3.fromRGB(180, 180, 185)
v_x8.Font = Enum.Font.GothamMedium
v_x8.TextSize = 10
v_x8.TextScaled = true
v_x8.Parent = v_x1

local v_x9 = Instance.new("Frame")
v_x9.Size = UDim2.new(1, 0, 0, 160)
v_x9.Position = UDim2.new(0, 0, 0, 92)
v_x9.BackgroundTransparency = 1
v_x9.Parent = v_x1

local v_y1 = Instance.new("UIListLayout")
v_y1.Padding = UDim.new(0, 4)
v_y1.HorizontalAlignment = Enum.HorizontalAlignment.Center
v_y1.Parent = v_x9

local v_y2 = Instance.new("Folder")
v_y2.Name = "Pages"
v_y2.Parent = v_w8

local function v_y3(v_y4)
    local v_y5 = Instance.new("ScrollingFrame")
    v_y5.Name = v_y4 .. "Page"
    v_y5.Size = UDim2.new(1, -132, 1, -20)
    v_y5.Position = UDim2.new(0, 126, 0, 10)
    v_y5.BackgroundTransparency = 1
    v_y5.CanvasSize = UDim2.new(0, 0, 0, 0)
    v_y5.ScrollBarThickness = 3
    v_y5.ScrollBarImageColor3 = Color3.fromRGB(60, 60, 65)
    v_y5.Visible = false
    v_y5.Parent = v_y2

    local v_y6 = Instance.new("UIListLayout")
    v_y6.Padding = UDim.new(0, 6)
    v_y6.SortOrder = Enum.SortOrder.LayoutOrder
    v_y6.Parent = v_y5

    v_m3(v_y6:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
        v_y5.CanvasSize = UDim2.new(0, 0, 0, v_y6.AbsoluteContentSize.Y + 15)
    end))

    return v_y5
end

local v_y7 = v_y3("Main")
local v_y8 = v_y3("Custom")
local v_y9 = v_y3("Teleport")
local v_z1 = v_y3("Boombox")
local v_z2 = v_y3("BoomboxIDs")
local v_z3 = v_y3("UpdateLogs")
local v_z4 = v_y3("About")

local v_z5 = nil

local function v_z6(v_y4, v_z7)
    local v_z8 = Instance.new("TextButton")
    v_z8.Size = UDim2.new(0, 106, 0, 22)
    v_z8.BackgroundColor3 = Color3.fromRGB(20, 20, 24)
    v_z8.Text = v_y4
    v_z8.TextColor3 = Color3.fromRGB(160, 160, 165)
    v_z8.Font = Enum.Font.GothamMedium
    v_z8.TextSize = 10
    v_z8.Parent = v_x9

    local v_z9 = Instance.new("UICorner")
    v_z9.CornerRadius = UDim.new(0, 6)
    v_z9.Parent = v_z8

    local v_aa1 = Instance.new("UIStroke")
    v_aa1.Color = Color3.fromRGB(28, 28, 32)
    v_aa1.Thickness = 1
    v_aa1.Parent = v_z8

    v_m3(v_z8.MouseButton1Click:Connect(function()
        if v_z5 == v_z8 then return end
        
        if v_z5 then
            v_b2:Create(v_z5, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(20, 20, 24), TextColor3 = Color3.fromRGB(160, 160, 165)}):Play()
            local v_aa2 = v_z5:FindFirstChildOfClass("UIStroke")
            if v_aa2 then v_b2:Create(v_aa2, TweenInfo.new(0.2), {Color = Color3.fromRGB(28, 28, 32)}):Play() end
        end
        
        for _, v_aa3 in pairs(v_y2:GetChildren()) do v_aa3.Visible = false end
        
        v_z5 = v_z8
        v_z7.Visible = true
        
        v_b2:Create(v_z8, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(28, 28, 35), TextColor3 = Color3.fromRGB(0, 255, 200)}):Play()
        v_b2:Create(v_aa1, TweenInfo.new(0.2), {Color = Color3.fromRGB(0, 180, 255)}):Play()
    end))
    
    if v_y4 == "Main Scripts" then
        v_z5 = v_z8
        v_z7.Visible = true
        v_z8.BackgroundColor3 = Color3.fromRGB(28, 28, 35)
        v_z8.TextColor3 = Color3.fromRGB(0, 255, 200)
        v_aa1.Color = Color3.fromRGB(0, 180, 255)
    end
end

v_z6("Main Scripts", v_y7)
v_z6("Custom Scripts", v_y8)
v_z6("Teleport", v_y9)
v_z6("Boombox Logger", v_z1)
v_z6("Boombox IDs", v_z2)
v_z6("Update Logs", v_z3)
v_z6("About Script", v_z4)

local v_aa4 = Instance.new("TextLabel")
v_aa4.Size = UDim2.new(1, 0, 0, 25)
v_aa4.Position = UDim2.new(0, 0, 1, -25)
v_aa4.BackgroundTransparency = 1
v_aa4.Text = "12:00:00 AM"
v_aa4.TextColor3 = Color3.fromRGB(0, 255, 200)
v_aa4.Font = Enum.Font.Code
v_aa4.TextSize = 11
v_aa4.Parent = v_x1

v_m3(task.spawn(function()
    while v_j0 and task.wait(1) do
        if v_aa4 and v_aa4.Parent then
            v_aa4.Text = os.date("%I:%M:%S %p")
        end
    end
end))

local function v_aa5(v_y4, v_aa6)
    local v_y5 = Instance.new("Frame")
    v_y5.Size = UDim2.new(1, -8, 0, 24)
    v_y5.BackgroundTransparency = 1
    v_y5.Parent = v_aa6

    local v_aa7 = Instance.new("UIListLayout")
    v_aa7.FillDirection = Enum.FillDirection.Horizontal
    v_aa7.SortOrder = Enum.SortOrder.LayoutOrder
    v_aa7.VerticalAlignment = Enum.VerticalAlignment.Center
    v_aa7.Padding = UDim.new(0, 10)
    v_aa7.Parent = v_y5

    local v_u9 = Instance.new("TextLabel")
    v_u9.BackgroundTransparency = 1
    v_u9.Text = v_y4:upper()
    v_u9.TextColor3 = Color3.fromRGB(0, 180, 255)
    v_u9.Font = Enum.Font.GothamBold
    v_u9.TextSize = 11
    v_u9.AutomaticSize = Enum.AutomaticSize.X
    v_u9.Size = UDim2.new(0, 0, 1, 0)
    v_u9.LayoutOrder = 1
    v_u9.Parent = v_y5
    
    local v_aa8 = Instance.new("Frame")
    v_aa8.Size = UDim2.new(1, 0, 0, 1)
    v_aa8.BackgroundColor3 = Color3.fromRGB(28, 28, 32)
    v_aa8.BorderSizePixel = 0
    v_aa8.LayoutOrder = 2
    v_aa8.Parent = v_y5

    v_m3(v_y5:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
        local v_aa9 = v_u9.AbsoluteSize.X
        local v_ab1 = v_y5.AbsoluteSize.X
        local v_ab2 = v_ab1 - v_aa9 - 10
        if v_ab2 > 0 then
            v_aa8.Size = UDim2.new(0, v_ab2, 0, 1)
        else
            v_aa8.Size = UDim2.new(0, 0, 0, 1)
        end
    end))
end

local function v_ab3(v_y4, v_ab4, v_aa6, v_ab5)
    local v_y5 = Instance.new("Frame")
    v_y5.Size = UDim2.new(1, -8, 0, 36)
    v_y5.BackgroundColor3 = Color3.fromRGB(20, 20, 24)
    v_y5.BorderSizePixel = 0
    v_y5.Parent = v_aa6

    local v_ab6 = Instance.new("UICorner")
    v_ab6.CornerRadius = UDim.new(0, 6)
    v_ab6.Parent = v_y5

    local v_ab7 = Instance.new("UIStroke")
    v_ab7.Color = Color3.fromRGB(28, 28, 32)
    v_ab7.Thickness = 1
    v_ab7.Parent = v_y5

    local v_ab8 = Instance.new("TextLabel")
    v_ab8.Size = UDim2.new(0.7, 0, 1, 0)
    v_ab8.Position = UDim2.new(0, 12, 0, 0)
    v_ab8.BackgroundTransparency = 1
    v_ab8.Text = v_y4
    v_ab8.TextColor3 = Color3.fromRGB(225, 225, 230)
    v_ab8.Font = Enum.Font.GothamMedium
    v_ab8.TextSize = 11
    v_ab8.TextXAlignment = Enum.TextXAlignment.Left
    v_ab8.Parent = v_y5

    local v_z8 = Instance.new("TextButton")
    v_z8.Size = UDim2.new(0, 32, 0, 16)
    v_z8.Position = UDim2.new(1, -42, 0.5, -8)
    v_z8.BackgroundColor3 = v_ab4 and Color3.fromRGB(0, 180, 255) or Color3.fromRGB(45, 45, 50)
    v_z8.Text = ""
    v_z8.Parent = v_y5

    local v_ab9 = Instance.new("UICorner")
    v_ab9.CornerRadius = UDim.new(1, 0)
    v_ab9.Parent = v_z8

    local v_ac1 = Instance.new("Frame")
    v_ac1.Size = UDim2.new(0, 10, 0, 10)
    v_ac1.Position = v_ab4 and UDim2.new(1, -13, 0.5, -5) or UDim2.new(0, 3, 0.5, -5)
    v_ac1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    v_ac1.BorderSizePixel = 0
    v_ac1.Parent = v_z8

    local v_ac2 = Instance.new("UICorner")
    v_ac2.CornerRadius = UDim.new(1, 0)
    v_ac2.Parent = v_ac1

    local v_ac3 = v_ab4
    v_m3(v_z8.MouseButton1Click:Connect(function()
        if not v_j0 then return end
        v_ac3 = not v_ac3
        local v_ac4 = v_ac3 and Color3.fromRGB(0, 255, 180) or Color3.fromRGB(45, 45, 50)
        local v_ac5 = v_ac3 and UDim2.new(1, -13, 0.5, -5) or UDim2.new(0, 3, 0.5, -5)
        
        v_b2:Create(v_z8, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = v_ac4}):Play()
        v_b2:Create(v_ac1, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Position = v_ac5}):Play()
        v_b2:Create(v_ab7, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Color = v_ac3 and Color3.fromRGB(0, 255, 180) or Color3.fromRGB(28, 28, 32)}):Play()
        
        v_ab5(v_ac3)
    end))
end

local function v_ac6(v_y4, v_aa6, v_ab5)
    local v_y5 = Instance.new("Frame")
    v_y5.Size = UDim2.new(1, -8, 0, 36)
    v_y5.BackgroundColor3 = Color3.fromRGB(20, 20, 24)
    v_y5.Parent = v_aa6

    local v_ab6 = Instance.new("UICorner")
    v_ab6.CornerRadius = UDim.new(0, 6)
    v_ab6.Parent = v_y5

    local v_ab7 = Instance.new("UIStroke")
    v_ab7.Color = Color3.fromRGB(28, 28, 32)
    v_ab7.Thickness = 1
    v_ab7.Parent = v_y5

    local v_ac7 = Instance.new("TextButton")
    v_ac7.Size = UDim2.new(1, 0, 1, 0)
    v_ac7.BackgroundTransparency = 1
    v_ac7.Text = v_y4
    v_ac7.TextColor3 = Color3.fromRGB(225, 225, 230)
    v_ac7.Font = Enum.Font.GothamMedium
    v_ac7.TextSize = 11
    v_ac7.Parent = v_y5

    v_m3(v_ac7.MouseButton1Click:Connect(function()
        if not v_j0 then return end
        v_b2:Create(v_y5, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(28, 28, 35)}):Play()
        v_b2:Create(v_ab7, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Color = Color3.fromRGB(0, 180, 255)}):Play()
        v_ac7.TextColor3 = Color3.fromRGB(0, 255, 200)
        task.wait(0.12)
        if not v_j0 then return end
        v_b2:Create(v_y5, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(20, 20, 24)}):Play()
        v_b2:Create(v_ab7, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Color = Color3.fromRGB(28, 28, 32)}):Play()
        v_ac7.TextColor3 = Color3.fromRGB(225, 225, 230)
        v_ab5()
    end))
end

local function v_ac8(v_y4, v_ab4, v_aa6, v_ab5)
    local v_y5 = Instance.new("Frame")
    v_y5.Size = UDim2.new(1, -8, 0, 36)
    v_y5.BackgroundColor3 = Color3.fromRGB(20, 20, 24)
    v_y5.Parent = v_aa6

    local v_ab6 = Instance.new("UICorner")
    v_ab6.CornerRadius = UDim.new(0, 6)
    v_ab6.Parent = v_y5

    local v_ab7 = Instance.new("UIStroke")
    v_ab7.Color = Color3.fromRGB(28, 28, 32)
    v_ab7.Thickness = 1
    v_ab7.Parent = v_y5

    local v_ab8 = Instance.new("TextLabel")
    v_ab8.Size = UDim2.new(0.6, 0, 1, 0)
    v_ab8.Position = UDim2.new(0, 12, 0, 0)
    v_ab8.BackgroundTransparency = 1
    v_ab8.Text = v_y4
    v_ab8.TextColor3 = Color3.fromRGB(225, 225, 230)
    v_ab8.Font = Enum.Font.GothamMedium
    v_ab8.TextSize = 11
    v_ab8.TextXAlignment = Enum.TextXAlignment.Left
    v_ab8.Parent = v_y5

    local v_ac9 = Instance.new("TextBox")
    v_ac9.Size = UDim2.new(0, 46, 0, 20)
    v_ac9.Position = UDim2.new(1, -54, 0.5, -10)
    v_ac9.BackgroundColor3 = Color3.fromRGB(30, 30, 36)
    v_ac9.Text = tostring(v_ab4)
    v_ac9.TextColor3 = Color3.fromRGB(255, 255, 255)
    v_ac9.Font = Enum.Font.GothamBold
    v_ac9.TextSize = 10
    v_ac9.Parent = v_y5

    local v_ad1 = Instance.new("UICorner")
    v_ad1.CornerRadius = UDim.new(0, 4)
    v_ad1.Parent = v_ac9
    
    local v_ad2 = Instance.new("UIStroke")
    v_ad2.Color = Color3.fromRGB(45, 45, 50)
    v_ad2.Thickness = 1
    v_ad2.Parent = v_ac9

    v_m3(v_ac9.Focused:Connect(function()
        v_b2:Create(v_ad2, TweenInfo.new(0.15), {Color = Color3.fromRGB(0, 180, 255)}):Play()
    end))

    v_m3(v_ac9.FocusLost:Connect(function()
        v_b2:Create(v_ad2, TweenInfo.new(0.15), {Color = Color3.fromRGB(45, 45, 50)}):Play()
        local v_ad3 = tonumber(v_ac9.Text)
        if v_ad3 then
            v_ab5(v_ad3)
        else
            v_ac9.Text = tostring(v_ab4)
        end
    end))
end

local function v_ad4()
    local v_ad5 = v_i9.Character
    if not v_ad5 then return nil, nil, nil end
    local v_ad6 = v_ad5:FindFirstChild("HumanoidRootPart")
    local v_ad7 = v_ad5:FindFirstChildOfClass("Humanoid")
    return v_ad5, v_ad6, v_ad7
end

local v_ad8 = false
local v_ad9 = 50

v_aa5("Movement", v_y7)

v_ab3("Enable Speed Hack", false, v_y7, function(v_ac3)
    v_ad8 = v_ac3
    local _, _, v_ad7 = v_ad4()
    if v_ad7 then v_ad7.WalkSpeed = v_ac3 and v_ad9 or 16 end
end)

v_ac8("Walk Speed", 50, v_y7, function(v_ab4)
    v_ad9 = v_ab4
    local _, _, v_ad7 = v_ad4()
    if v_ad8 and v_ad7 then v_ad7.WalkSpeed = v_ab4 end
end)

v_m3(v_d4.Heartbeat:Connect(function()
    if v_j0 and v_ad8 then
        local _, _, v_ad7 = v_ad4()
        if v_ad7 and v_ad7.WalkSpeed ~= v_ad9 then
            v_ad7.WalkSpeed = v_ad9
        end
    end
end))

local v_ae1 = false
v_m3(v_d4.Stepped:Connect(function()
    if v_j0 and v_ae1 and v_i9.Character then
        for _, v_ae2 in pairs(v_i9.Character:GetDescendants()) do
            if v_ae2:IsA("BasePart") then v_ae2.CanCollide = false end
        end
    end
end))

v_ab3("Enable Noclip", false, v_y7, function(v_ac3) v_ae1 = v_ac3 end)

local v_ae3 = false
local v_ae4 = 50
local v_ae5 = nil

v_ab3("Enable Fly Mode", false, v_y7, function(v_ac3)
    v_ae3 = v_ac3
    v_ae5 = nil
    local _, v_ad6, v_ad7 = v_ad4()
    if v_ad7 then
        v_ad7.PlatformStand = v_ac3
    end
    if not v_ac3 and v_ad6 then
        v_ad6.Velocity = Vector3.new(0,0,0)
    end
end)

v_ac8("Fly Speed", 50, v_y7, function(v_ab4)
    v_ae4 = v_ab4
end)

v_m3(v_d4.Heartbeat:Connect(function()
    if v_j0 and v_ae3 then
        local _, v_ad6, v_ad7 = v_ad4()
        if v_ad6 and v_ad7 then
            v_ad7.PlatformStand = true
            
            local v_ae6 = v_e5.CurrentCamera
            if v_ae6 then
                local v_ae7 = v_ad7.MoveDirection
                local v_ae8 = v_ae6.CFrame.LookVector
                
                if v_ae7.Magnitude > 0 then
                    v_ae5 = nil
                    local v_ae9 = v_ae6.CFrame.RightVector
                    local v_af1 = v_ae6.CFrame:VectorToObjectSpace(v_ae7)
                    local v_af2 = Vector3.new(v_af1.X, 0, v_af1.Z).Unit
                    local v_af3 = ((v_ae8 * -v_af2.Z) + (v_ae9 * v_af2.X)).Unit
                    
                    v_ad6.Velocity = v_af3 * v_ae4
                    v_ad6.CFrame = CFrame.new(v_ad6.Position, v_ad6.Position + v_ae8)
                else
                    if not v_ae5 then
                        v_ae5 = v_ad6.Position
                    end
                    v_ad6.Velocity = Vector3.new(0, 0, 0)
                    v_ad6.CFrame = CFrame.new(v_ae5, v_ae5 + v_ae8)
                end
            end
        end
    end
end))

v_aa5("Stealth & Visuals", v_y7)

v_ab3("Day Mode", false, v_y7, function(v_ac3)
    if v_ac3 then
        v_f6.ClockTime = 14
    end
end)

v_ab3("Night Mode", false, v_y7, function(v_ac3)
    if v_ac3 then
        v_f6.ClockTime = 0
    else
        v_f6.ClockTime = 14
    end
end)

local v_af4 = false

local function v_af5(v_af6)
    if v_af6 == v_i9 then return end
    
    local function v_af7()
        if not v_j0 then return end
        local v_ad5 = v_af6.Character or v_af6.CharacterAdded:Wait()
        local v_af8 = v_ad5:WaitForChild("Head", 5)
        if not v_af8 or not v_j0 then return end

        if v_ad5:FindFirstChild("ESPHighlight") then v_ad5.ESPHighlight:Destroy() end
        if v_af8:FindFirstChild("ESPBBG") then v_af8.ESPBBG:Destroy() end

        local v_af9 = Instance.new("Highlight")
        v_af9.Name = "ESPHighlight"
        v_af9.FillTransparency = 0.6
        v_af9.FillColor = Color3.fromRGB(0, 255, 150)
        v_af9.OutlineColor = Color3.fromRGB(255, 255, 255)
        v_af9.Enabled = v_af4
        v_af9.Parent = v_ad5

        local v_ag1 = Instance.new("BillboardGui")
        v_ag1.Name = "ESPBBG"
        v_ag1.Size = UDim2.new(0, 200, 0, 50)
        v_ag1.AlwaysOnTop = true
        v_ag1.ExtentsOffset = Vector3.new(0, 3, 0)
        v_ag1.Enabled = v_af4
        v_ag1.Parent = v_af8

        local v_u9 = Instance.new("TextLabel")
        v_u9.Size = UDim2.new(1, 0, 1, 0)
        v_u9.BackgroundTransparency = 1
        v_u9.Text = v_af6.DisplayName
        v_u9.TextColor3 = Color3.fromRGB(255, 50, 50)
        v_u9.Font = Enum.Font.GothamBold
        v_u9.TextSize = 14
        v_u9.Parent = v_ag1
    end

    v_af7()
    v_m3(v_af6.CharacterAdded:Connect(v_af7))
end

v_ab3("Enable Player ESP", false, v_y7, function(v_ac3)
    v_af4 = v_ac3
    for _, v_ag2 in pairs(v_a1:GetPlayers()) do
        if v_ag2.Character then
            local v_af9 = v_ag2.Character:FindFirstChild("ESPHighlight")
            local v_af8 = v_ag2.Character:FindFirstChild("Head")
            local v_ag1 = v_af8 and v_af8:FindFirstChild("ESPBBG")
            if v_af9 then v_af9.Enabled = v_ac3 end
            if v_ag1 then v_ag1.Enabled = v_ac3 end
        end
    end
end)

for _, v_ag2 in pairs(v_a1:GetPlayers()) do v_af5(v_ag2) end
v_m3(v_a1.PlayerAdded:Connect(v_af5))

v_ac6("Anti-Lag (FPS Boost)", v_y7, function()
    for _, v_ag3 in pairs(v_e5:GetDescendants()) do
        if v_ag3:IsA("BasePart") and not v_ag3:IsDescendantOf(v_i9.Character) then
            v_ag3.Material = Enum.Material.SmoothPlastic
            if v_ag3:IsA("MeshPart") or v_ag3:IsA("UnionOperation") then v_ag3.Reflectance = 0 end
        elseif v_ag3:IsA("Decal") or v_ag3:IsA("Texture") then
            v_ag3.Transparency = 1
        elseif v_ag3:IsA("ParticleEmitter") or v_ag3:IsA("Trail") then
            v_ag3.Enabled = false
        end
    end
    v_u3("Anti-Lag Applied!", Color3.fromRGB(0, 255, 200))
end)

local function v_ag4()
    for _, v_ag2 in pairs(v_a1:GetPlayers()) do
        if v_ag2.Character then
            local v_af9 = v_ag2.Character:FindFirstChild("ESPHighlight")
            if v_af9 then v_af9:Destroy() end
            local v_af8 = v_ag2.Character:FindFirstChild("Head")
            local v_ag1 = v_af8 and v_af8:FindFirstChild("ESPBBG")
            if v_ag1 then v_ag1:Destroy() end
        end
    end
end

v_m3(v_v7.MouseButton1Click:Connect(function()
    v_ae3 = false
    v_ad8 = false
    v_ae1 = false
    v_af4 = false
    v_ae5 = nil
    
    for _, conn in ipairs(v_k1) do
        pcall(function() conn:Disconnect() end)
    end
    v_k1 = {}

    v_ag4()
    
    local _, v_ad6, v_ad7 = v_ad4()
    if v_ad7 then
        v_ad7.PlatformStand = false
        v_ad7.WalkSpeed = 16
    end
    if v_ad6 then
        v_ad6.Velocity = Vector3.new(0,0,0)
    end
    
    v_b2:Create(v_r8, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {Size = UDim2.new(0,0,0,0), Position = UDim2.new(0.5, 0, 0.5, -35), BackgroundTransparency = 1}):Play()
    task.wait(0.2)
    v_q7:Destroy()
end))

local function v_ag5(v_ag6, v_y4, v_ag7)
    v_m3(task.spawn(function()
        local v_ag8 = false
        local v_w4, v_ag9 = pcall(function()
            if not v_j0 then return end
            if v_ag7 then
                loadstring(game:HttpGet(v_ag6))("Spider Script")
            else
                loadstring(game:HttpGet(v_ag6))()
            end
            v_ag8 = true
        end)
        
        if v_w4 and v_ag8 then
            v_u3("💥 " .. v_y4:upper() .. " ACTIVE 💥", Color3.fromRGB(0, 255, 200))
        else
            v_u3("Execution Failed!", Color3.fromRGB(255, 80, 80))
            warn("Failed structural execution stack: " .. tostring(v_ag9))
        end
    end))
end

v_aa5("Custom Scripts", v_y8)

for _, v_ah1 in pairs(v_o5) do
    v_ac6(v_ah1.Name, v_y8, function()
        v_ag5(v_ah1.URL, v_ah1.Name, v_ah1.IsR6)
    end)
end

v_aa5("Selected Target", v_y9)

local v_ah2 = nil
local v_ah3 = Instance.new("TextLabel")
v_ah3.Size = UDim2.new(1, -8, 0, 36)
v_ah3.BackgroundColor3 = Color3.fromRGB(20, 20, 24)
v_ah3.TextColor3 = Color3.fromRGB(0, 255, 200)
v_ah3.Font = Enum.Font.GothamBold
v_ah3.TextSize = 11
v_ah3.Text = "  Selected: None"
v_ah3.TextXAlignment = Enum.TextXAlignment.Left
v_ah3.Parent = v_y9
Instance.new("UICorner", v_ah3).CornerRadius = UDim.new(0, 6)
local v_ah4 = Instance.new("UIStroke", v_ah3)
v_ah4.Color = Color3.fromRGB(28, 28, 32)
v_ah4.Thickness = 1

v_aa5("Search Players", v_y9)

local v_ah5 = Instance.new("TextBox")
v_ah5.Size = UDim2.new(1, -8, 0, 32)
v_ah5.BackgroundColor3 = Color3.fromRGB(20, 20, 24)
v_ah5.PlaceholderText = "Search player name..."
v_ah5.PlaceholderColor3 = Color3.fromRGB(100, 100, 105)
v_ah5.Text = ""
v_ah5.TextColor3 = Color3.fromRGB(255, 255, 255)
v_ah5.Font = Enum.Font.GothamMedium
v_ah5.TextSize = 11
v_ah5.TextXAlignment = Enum.TextXAlignment.Left
v_ah5.Parent = v_y9
Instance.new("UICorner", v_ah5).CornerRadius = UDim.new(0, 6)
local v_ah6 = Instance.new("UIStroke", v_ah5)
v_ah6.Color = Color3.fromRGB(28, 28, 32)
v_ah6.Thickness = 1

v_m3(v_ah5.Focused:Connect(function()
    v_b2:Create(v_ah6, TweenInfo.new(0.15), {Color = Color3.fromRGB(0, 180, 255)}):Play()
end))

v_m3(v_ah5.FocusLost:Connect(function()
    v_b2:Create(v_ah6, TweenInfo.new(0.15), {Color = Color3.fromRGB(28, 28, 32)}):Play()
end))

v_aa5("Player List", v_y9)

local v_ah7 = Instance.new("ScrollingFrame")
v_ah7.Size = UDim2.new(1, -8, 0, 110)
v_ah7.BackgroundTransparency = 1
v_ah7.CanvasSize = UDim2.new(0, 0, 0, 0)
v_ah7.ScrollBarThickness = 3
v_ah7.ScrollBarImageColor3 = Color3.fromRGB(60, 60, 65)
v_ah7.Parent = v_y9

local v_ah8 = Instance.new("UIListLayout")
v_ah8.Padding = UDim.new(0, 4)
v_ah8.SortOrder = Enum.SortOrder.LayoutOrder
v_ah8.Parent = v_ah7

v_m3(v_ah8:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
    v_ah7.CanvasSize = UDim2.new(0, 0, 0, v_ah8.AbsoluteContentSize.Y + 5)
end))

local function v_ah9()
    for _, v_ai1 in pairs(v_ah7:GetChildren()) do
        if v_ai1:IsA("TextButton") then
            v_ai1:Destroy()
        end
    end
    
    local v_ai2 = v_ah5.Text:lower()
    
    for _, v_ag2 in pairs(v_a1:GetPlayers()) do
        if v_ag2 ~= v_i9 then
            local v_ai3 = v_ag2.DisplayName
            local v_ai4 = v_ag2.Name
            local v_ai5 = (v_ai3 .. " " .. v_ai4):lower()
            
            if v_ai2 == "" or string.find(v_ai5, v_ai2, 1, true) then
                local v_ai6 = Instance.new("TextButton")
                v_ai6.Size = UDim2.new(1, 0, 0, 32)
                v_ai6.BackgroundColor3 = Color3.fromRGB(20, 20, 24)
                v_ai6.Text = "  " .. v_ai3 .. " (@" .. v_ai4 .. ")"
                v_ai6.TextColor3 = Color3.fromRGB(225, 225, 230)
                v_ai6.Font = Enum.Font.GothamMedium
                v_ai6.TextSize = 11
                v_ai6.TextXAlignment = Enum.TextXAlignment.Left
                v_ai6.Parent = v_ah7
                
                local v_ai7 = Instance.new("UICorner", v_ai6)
                v_ai7.CornerRadius = UDim.new(0, 6)
                local v_ai8 = Instance.new("UIStroke", v_ai6)
                v_ai8.Color = Color3.fromRGB(28, 28, 32)
                v_ai8.Thickness = 1
                
                v_m3(v_ai6.MouseButton1Click:Connect(function()
                    if not v_j0 then return end
                    v_ah2 = v_ag2
                    v_ah3.Text = "  Selected: " .. v_ai3
                    v_b2:Create(v_ai8, TweenInfo.new(0.2), {Color = Color3.fromRGB(0, 180, 255)}):Play()
                end))
            end
        end
    end
end

v_m3(v_ah5:GetPropertyChangedSignal("Text"):Connect(function()
    v_ah9()
end))

v_ac6("Refresh Player List", v_y9, function()
    v_ah9()
end)

v_aa5("Teleport & Spectate Actions", v_y9)

local v_ai9 = false
local v_aj1 = 0.4

v_ac8("Tween Duration", 0.4, v_y9, function(v_ab4)
    v_aj1 = v_ab4
end)

v_ab3("Enable Loop Tween to Target", false, v_y9, function(v_ac3)
    v_ai9 = v_ac3
    if v_ac3 then
        v_m3(task.spawn(function()
            while v_ai9 and v_j0 do
                if v_ah2 and v_ah2.Character then
                    local v_aj2 = v_ah2.Character:FindFirstChild("HumanoidRootPart")
                    local _, v_aj3, _ = v_ad4()
                    if v_aj2 and v_aj3 then
                        local v_aj4 = TweenInfo.new(v_aj1, Enum.EasingStyle.Linear)
                        local v_aj5 = v_b2:Create(v_aj3, v_aj4, {CFrame = v_aj2.CFrame + Vector3.new(0, 3, 0)})
                        v_aj5:Play()
                        
                        local v_aj6 = false
                        local v_aj7
                        v_aj7 = v_aj5.Completed:Connect(function()
                            v_aj6 = true
                            if v_aj7 then v_aj7:Disconnect() end
                        end)
                        
                        while not v_aj6 and v_ai9 and v_j0 do
                            task.wait(0.05)
                        end
                        if not v_ai9 then
                            v_aj5:Cancel()
                            if v_aj7 then v_aj7:Disconnect() end
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

v_ac6("Teleport to Target (Once)", v_y9, function()
    if v_ah2 and v_ah2.Character then
        local v_aj2 = v_ah2.Character:FindFirstChild("HumanoidRootPart")
        local _, v_aj3, _ = v_ad4()
        if v_aj2 and v_aj3 then
            v_aj3.CFrame = v_aj2.CFrame + Vector3.new(0, 3, 0)
            v_u3("Teleported to " .. v_ah2.DisplayName, Color3.fromRGB(0, 255, 200))
        else
            v_u3("Target has no character!", Color3.fromRGB(255, 80, 80))
        end
    else
        v_u3("No player selected or offline!", Color3.fromRGB(255, 80, 80))
    end
end)

local v_aj8 = false
v_ab3("Enable Spectate", false, v_y9, function(v_ac3)
    v_aj8 = v_ac3
    local v_ae6 = v_e5.CurrentCamera
    if v_ae6 then
        if v_ac3 then
            if v_ah2 and v_ah2.Character then
                local v_ad7 = v_ah2.Character:FindFirstChildOfClass("Humanoid")
                if v_ad7 then
                    v_ae6.CameraSubject = v_ad7
                    v_u3("Spectating " .. v_ah2.DisplayName, Color3.fromRGB(0, 255, 200))
                else
                    v_ae6.CameraSubject = v_ah2.Character
                end
            else
                v_u3("No player selected for spectate!", Color3.fromRGB(255, 80, 80))
            end
        else
            local _, _, v_ad7 = v_ad4()
            if v_ad7 then
                v_ae6.CameraSubject = v_ad7
            end
            v_u3("Spectate Disabled", Color3.fromRGB(0, 180, 255))
        end
    end
end)

v_ah9()

v_aa5("Boombox Control", v_z1)

local v_aj9 = false
local v_ak1 = {} 

local v_ak2 = Instance.new("Sound")
v_ak2.Name = "VulnSec_AudioPreview"
v_ak2.Parent = game:GetService("SoundService")
local v_ak3 = nil

v_ab3("Enable Boombox Logger", false, v_z1, function(v_ac3)
    v_aj9 = v_ac3
    if v_ac3 then
        v_u3("Boombox Logger Active", Color3.fromRGB(0, 255, 200))
    else
        v_u3("Boombox Logger Paused", Color3.fromRGB(255, 180, 50))
        if v_ak2.IsPlaying then
            v_ak2:Stop()
        end
    end
end)

v_aa5("Search Boombox Logs", v_z1)

local v_ak4 = Instance.new("TextBox")
v_ak4.Size = UDim2.new(1, -8, 0, 32)
v_ak4.BackgroundColor3 = Color3.fromRGB(20, 20, 24)
v_ak4.PlaceholderText = "Search player or song..."
v_ak4.PlaceholderColor3 = Color3.fromRGB(100, 100, 105)
v_ak4.Text = ""
v_ak4.TextColor3 = Color3.fromRGB(255, 255, 255)
v_ak4.Font = Enum.Font.GothamMedium
v_ak4.TextSize = 11
v_ak4.TextXAlignment = Enum.TextXAlignment.Left
v_ak4.Parent = v_z1
Instance.new("UICorner", v_ak4).CornerRadius = UDim.new(0, 6)
local v_ak5 = Instance.new("UIStroke", v_ak4)
v_ak5.Color = Color3.fromRGB(28, 28, 32)
v_ak5.Thickness = 1

v_m3(v_ak4.Focused:Connect(function()
    v_b2:Create(v_ak5, TweenInfo.new(0.15), {Color = Color3.fromRGB(0, 180, 255)}):Play()
end))

v_m3(v_ak4.FocusLost:Connect(function()
    v_b2:Create(v_ak5, TweenInfo.new(0.15), {Color = Color3.fromRGB(28, 28, 32)}):Play()
end))

v_aa5("Logged IDs & Songs", v_z1)

local v_ak6 = Instance.new("ScrollingFrame")
v_ak6.Size = UDim2.new(1, -8, 0, 80)
v_ak6.BackgroundTransparency = 1
v_ak6.CanvasSize = UDim2.new(0, 0, 0, 0)
v_ak6.ScrollBarThickness = 3
v_ak6.ScrollBarImageColor3 = Color3.fromRGB(60, 60, 65)
v_ak6.Parent = v_z1

local v_ak7 = Instance.new("UIListLayout")
v_ak7.Padding = UDim.new(0, 4)
v_ak7.SortOrder = Enum.SortOrder.LayoutOrder
v_ak7.Parent = v_ak6

v_m3(v_ak7:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
    v_ak6.CanvasSize = UDim2.new(0, 0, 0, v_ak7.AbsoluteContentSize.Y + 5)
end))

local function v_ak8()
    local v_ai2 = v_ak4.Text:lower()
    for _, v_ak9 in ipairs(v_ak1) do
        if v_ak9.Frame and v_ak9.Frame.Parent then
            local v_al1 = (v_ak9.Player .. " " .. v_ak9.Title .. " " .. v_ak9.ID):lower()
            if v_ai2 == "" or string.find(v_al1, v_ai2, 1, true) then
                v_ak9.Frame.Visible = true
            else
                v_ak9.Frame.Visible = false
            end
        end
    end
end

v_m3(v_ak4:GetPropertyChangedSignal("Text"):Connect(function()
    v_ak8()
end))

local function v_al2(v_al3, v_al4)
    if not v_j0 then return end
    local v_al5 = v_al4:match("%d+")
    if not v_al5 or v_al5 == "" then return end
    
    for _, v_al6 in ipairs(v_ak1) do
        if v_al6.ID == v_al5 then return end
    end
    
    local v_al7 = Instance.new("Frame")
    v_al7.Size = UDim2.new(1, 0, 0, 32)
    v_al7.BackgroundColor3 = Color3.fromRGB(20, 20, 24)
    v_al7.Parent = v_ak6
    
    Instance.new("UICorner", v_al7).CornerRadius = UDim.new(0, 6)
    local v_ab7 = Instance.new("UIStroke", v_al7)
    v_ab7.Color = Color3.fromRGB(28, 28, 32)
    v_ab7.Thickness = 1
    
    local v_al8 = Instance.new("TextButton")
    v_al8.Size = UDim2.new(1, -64, 1, 0)
    v_al8.BackgroundTransparency = 1
    v_al8.Text = "  " .. v_al3 .. " -> Loading Song..."
    v_al8.TextColor3 = Color3.fromRGB(0, 255, 200)
    v_al8.Font = Enum.Font.GothamMedium
    v_al8.TextSize = 11
    v_al8.TextXAlignment = Enum.TextXAlignment.Left
    v_al8.Parent = v_al7
    
    local v_al9 = Instance.new("TextButton")
    v_al9.Size = UDim2.new(0, 24, 0, 24)
    v_al9.Position = UDim2.new(1, -56, 0.5, -12)
    v_al9.BackgroundColor3 = Color3.fromRGB(30, 30, 36)
    v_al9.Text = "📋"
    v_al9.TextColor3 = Color3.fromRGB(0, 255, 200)
    v_al9.Font = Enum.Font.GothamBold
    v_al9.TextSize = 10
    v_al9.Parent = v_al7
    Instance.new("UICorner", v_al9).CornerRadius = UDim.new(0, 4)
    local v_am1 = Instance.new("UIStroke", v_al9)
    v_am1.Color = Color3.fromRGB(45, 45, 50)
    v_am1.Thickness = 1

    local v_am2 = Instance.new("TextButton")
    v_am2.Size = UDim2.new(0, 24, 0, 24)
    v_am2.Position = UDim2.new(1, -28, 0.5, -12)
    v_am2.BackgroundColor3 = Color3.fromRGB(30, 30, 36)
    v_am2.Text = "▶"
    v_am2.TextColor3 = Color3.fromRGB(0, 255, 200)
    v_am2.Font = Enum.Font.GothamBold
    v_am2.TextSize = 10
    v_am2.Parent = v_al7
    Instance.new("UICorner", v_am2).CornerRadius = UDim.new(0, 4)
    local v_am3 = Instance.new("UIStroke", v_am2)
    v_am3.Color = Color3.fromRGB(45, 45, 50)
    v_am3.Thickness = 1

    local v_am4 = {Player = v_al3, Title = "Loading Song...", ID = v_al5, Frame = v_al7}
    table.insert(v_ak1, v_am4)
    v_ak8()
    
    v_n4(task.spawn(function()
        local v_w4, v_am5 = pcall(function()
            return v_g7:GetProductInfo(tonumber(v_al5))
        end)
        if v_w4 and v_am5 and v_am5.Name and v_j0 then
            v_am4.Title = v_am5.Name
            if v_al8 and v_al8.Parent then
                v_al8.Text = "  " .. v_al3 .. " -> " .. v_am5.Name .. " (" .. v_al5 .. ")"
            end
        elseif v_j0 then
            v_am4.Title = "Unknown Song"
            if v_al8 and v_al8.Parent then
                v_al8.Text = "  " .. v_al3 .. " -> ID: " .. v_al5
            end
        end
        v_ak8()
    end))
    
    v_m3(v_al9.MouseButton1Click:Connect(function()
        pcall(function()
            if setclipboard then
                setclipboard(v_al5)
                v_u3("Copied ID: " .. v_al5, Color3.fromRGB(0, 255, 200))
            end
        end)
    end))
    
    v_m3(v_am2.MouseButton1Click:Connect(function()
        if v_ak2.IsPlaying and v_ak3 == v_al5 then
            v_ak2:Stop()
            v_ak3 = nil
            v_am2.Text = "▶"
        else
            v_ak2.SoundId = "rbxassetid://" .. v_al5
            v_ak2:Play()
            v_ak3 = v_al5
            v_am2.Text = "⏹"
        end
    end))
end

local function v_am6(v_am7)
    if v_am7:IsA("Sound") then
        local function processSound()
            if not v_j0 or not v_aj9 then return end
            if v_am7.SoundId ~= "" and v_am7.Playing then
                local v_am9 = v_am7.Parent
                local v_an1 = "Game / Ambient"
                
                while v_am9 and v_am9 ~= game do
                    if v_am9:IsA("Model") and v_a1:GetPlayerFromCharacter(v_am9) then
                        v_an1 = v_a1:GetPlayerFromCharacter(v_am9).Name
                        break
                    elseif v_am9:IsA("Player") then
                        v_an1 = v_am9.Name
                        break
                    elseif v_am9 == SoundService then
                        v_an1 = "SoundService (BGM)"
                        break
                    end
                    v_am9 = v_am9.Parent
                end
                
                if v_an1 == "Game / Ambient" and v_am7:IsDescendantOf(v_i9.Character or workspace) then
                    v_an1 = v_i9.Name
                end
                
                v_al2(v_an1, v_am7.SoundId)
            end
        end

        v_n4(v_am7.Changed:Connect(function(v_am8)
            if v_am8 == "SoundId" or v_am8 == "Playing" then
                if v_am7.Playing then
                    processSound()
                end
            end
        end))
        
        if v_am7.Playing then
            processSound()
        end
    end
end

for _, v_an2 in pairs(v_e5:GetDescendants()) do
    v_am6(v_an2)
end
v_n4(v_e5.DescendantAdded:Connect(v_am6))

for _, v_an2 in pairs(SoundService:GetDescendants()) do
    v_am6(v_an2)
end
v_n4(SoundService.DescendantAdded:Connect(v_am6))

v_ac6("Copy All Logged IDs", v_z1, function()
    local v_an3 = {}
    for _, v_ak9 in ipairs(v_ak1) do
        table.insert(v_an3, v_ak9.Title .. " - " .. v_ak9.ID)
    end
    local v_al1 = table.concat(v_an3, "\n")
    pcall(function()
        if setclipboard then
            setclipboard(v_al1)
            v_u3("Songs & IDs Copied!", Color3.fromRGB(0, 255, 200))
        end
    end)
end)

v_ac6("Clear Log List", v_z1, function()
    if v_ak2.IsPlaying then
        v_ak2:Stop()
    end
    v_ak1 = {}
    for _, v_ai1 in pairs(v_ak6:GetChildren()) do
        if v_ai1:IsA("Frame") then
            v_ai1:Destroy()
        end
    end
    v_u3("Logs Cleared!", Color3.fromRGB(255, 180, 50))
end)

v_aa5("Boombox IDs", v_z2)

local v_an4 = Instance.new("TextBox")
v_an4.Size = UDim2.new(1, -8, 0, 32)
v_an4.BackgroundColor3 = Color3.fromRGB(20, 20, 24)
v_an4.PlaceholderText = "Search IDs or songs..."
v_an4.PlaceholderColor3 = Color3.fromRGB(100, 100, 105)
v_an4.Text = ""
v_an4.TextColor3 = Color3.fromRGB(255, 255, 255)
v_an4.Font = Enum.Font.GothamMedium
v_an4.TextSize = 11
v_an4.TextXAlignment = Enum.TextXAlignment.Left
v_an4.Parent = v_z2
Instance.new("UICorner", v_an4).CornerRadius = UDim.new(0, 6)
local v_an5 = Instance.new("UIStroke", v_an4)
v_an5.Color = Color3.fromRGB(28, 28, 32)
v_an5.Thickness = 1

v_m3(v_an4.Focused:Connect(function()
    v_b2:Create(v_an5, TweenInfo.new(0.15), {Color = Color3.fromRGB(0, 180, 255)}):Play()
end))

v_m3(v_an4.FocusLost:Connect(function()
    v_b2:Create(v_an5, TweenInfo.new(0.15), {Color = Color3.fromRGB(28, 28, 32)}):Play()
end))

v_aa5("ID List", v_z2)

local v_an6 = Instance.new("ScrollingFrame")
v_an6.Size = UDim2.new(1, -8, 0, 140)
v_an6.BackgroundTransparency = 1
v_an6.CanvasSize = UDim2.new(0, 0, 0, 0)
v_an6.ScrollBarThickness = 3
v_an6.ScrollBarImageColor3 = Color3.fromRGB(60, 60, 65)
v_an6.Parent = v_z2

local v_an7 = Instance.new("UIListLayout")
v_an7.Padding = UDim.new(0, 4)
v_an7.SortOrder = Enum.SortOrder.LayoutOrder
v_an7.Parent = v_an6

v_m3(v_an7:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
    v_an6.CanvasSize = UDim2.new(0, 0, 0, v_an7.AbsoluteContentSize.Y + 5)
end))

local v_an8 = {}

local function v_an9()
    local v_ai2 = v_an4.Text:lower()
    for _, v_ak9 in ipairs(v_an8) do
        if v_ak9.Frame and v_ak9.Frame.Parent then
            local v_al1 = (v_ak9.Title .. " " .. v_ak9.ID):lower()
            if v_ai2 == "" or string.find(v_al1, v_ai2, 1, true) then
                v_ak9.Frame.Visible = true
            else
                v_ak9.Frame.Visible = false
            end
        end
    end
end

v_m3(v_an4:GetPropertyChangedSignal("Text"):Connect(function()
    v_an9()
end))

local function v_ao1()
    for _, v_ai1 in pairs(v_an6:GetChildren()) do
        if v_ai1:IsA("Frame") then
            v_ai1:Destroy()
        end
    end
    v_an8 = {}
    
    v_n4(task.spawn(function()
        local v_w4, v_ao2 = pcall(function()
            return game:HttpGet("https://raw.githubusercontent.com/leos00281-eng/Rbx/refs/heads/main/ID")
        end)
        
        if v_w4 and v_ao2 and v_j0 then
            for v_ao3 in v_ao2:gmatch("[^\r\n]+") do
                if not v_j0 then break end
                if v_ao3 ~= "" then
                    local v_al5 = v_ao3:match("%d+")
                    if v_al5 then
                        local v_al7 = Instance.new("Frame")
                        v_al7.Size = UDim2.new(1, 0, 0, 32)
                        v_al7.BackgroundColor3 = Color3.fromRGB(20, 20, 24)
                        v_al7.Parent = v_an6
                        
                        Instance.new("UICorner", v_al7).CornerRadius = UDim.new(0, 6)
                        local v_ab7 = Instance.new("UIStroke", v_al7)
                        v_ab7.Color = Color3.fromRGB(28, 28, 32)
                        v_ab7.Thickness = 1
                        
                        local v_al8 = Instance.new("TextButton")
                        v_al8.Size = UDim2.new(1, -64, 1, 0)
                        v_al8.BackgroundTransparency = 1
                        v_al8.Text = "  Loading Song... (" .. v_al5 .. ")"
                        v_al8.TextColor3 = Color3.fromRGB(0, 255, 200)
                        v_al8.Font = Enum.Font.GothamMedium
                        v_al8.TextSize = 11
                        v_al8.TextXAlignment = Enum.TextXAlignment.Left
                        v_al8.Parent = v_al7
                        
                        local v_al9 = Instance.new("TextButton")
                        v_al9.Size = UDim2.new(0, 24, 0, 24)
                        v_al9.Position = UDim2.new(1, -56, 0.5, -12)
                        v_al9.BackgroundColor3 = Color3.fromRGB(30, 30, 36)
                        v_al9.Text = "📋"
                        v_al9.TextColor3 = Color3.fromRGB(0, 255, 200)
                        v_al9.Font = Enum.Font.GothamBold
                        v_al9.TextSize = 10
                        v_al9.Parent = v_al7
                        Instance.new("UICorner", v_al9).CornerRadius = UDim.new(0, 4)
                        local v_am1 = Instance.new("UIStroke", v_al9)
                        v_am1.Color = Color3.fromRGB(45, 45, 50)
                        v_am1.Thickness = 1

                        local v_am2 = Instance.new("TextButton")
                        v_am2.Size = UDim2.new(0, 24, 0, 24)
                        v_am2.Position = UDim2.new(1, -28, 0.5, -12)
                        v_am2.BackgroundColor3 = Color3.fromRGB(30, 30, 36)
                        v_am2.Text = "▶"
                        v_am2.TextColor3 = Color3.fromRGB(0, 255, 200)
                        v_am2.Font = Enum.Font.GothamBold
                        v_am2.TextSize = 10
                        v_am2.Parent = v_al7
                        Instance.new("UICorner", v_am2).CornerRadius = UDim.new(0, 4)
                        local v_am3 = Instance.new("UIStroke", v_am2)
                        v_am3.Color = Color3.fromRGB(45, 45, 50)
                        v_am3.Thickness = 1

                        local v_am4 = {Title = "Loading Song...", ID = v_al5, Frame = v_al7}
                        table.insert(v_an8, v_am4)
                        v_an9()
                        
                        v_n4(task.spawn(function()
                            local v_ao4, v_am5 = pcall(function()
                                return v_g7:GetProductInfo(tonumber(v_al5))
                            end)
                            if v_ao4 and v_am5 and v_am5.Name and v_j0 then
                                v_am4.Title = v_am5.Name
                                if v_al8 and v_al8.Parent then
                                    v_al8.Text = "  " .. v_am5.Name .. " (" .. v_al5 .. ")"
                                end
                            elseif v_j0 then
                                v_am4.Title = "Unknown Song"
                                if v_al8 and v_al8.Parent then
                                    v_al8.Text = "  ID: " .. v_al5
                                end
                            end
                            v_an9()
                        end))
                        
                        v_m3(v_al9.MouseButton1Click:Connect(function()
                            pcall(function()
                                if setclipboard then
                                    setclipboard(v_al5)
                                    v_u3("Copied ID: " .. v_al5, Color3.fromRGB(0, 255, 200))
                                end
                            end)
                        end))
                        
                        v_m3(v_am2.MouseButton1Click:Connect(function()
                            if v_ak2.IsPlaying and v_ak3 == v_al5 then
                                v_ak2:Stop()
                                v_ak3 = nil
                                v_am2.Text = "▶"
                            else
                                v_ak2.SoundId = "rbxassetid://" .. v_al5
                                v_ak2:Play()
                                v_ak3 = v_al5
                                v_am2.Text = "⏹"
                            end
                        end))
                    end
                end
            end
            v_an9()
        end
    end))
end

v_ac6("Refresh IDs", v_z2, function()
    v_ao1()
    v_u3("IDs Refreshed!", Color3.fromRGB(0, 255, 200))
end)

v_ao1()

v_aa5("Changelog & Updates", v_z3)

local v_ao5 = Instance.new("ScrollingFrame")
v_ao5.Size = UDim2.new(1, -8, 0, 180)
v_ao5.BackgroundTransparency = 1
v_ao5.CanvasSize = UDim2.new(0, 0, 0, 0)
v_ao5.ScrollBarThickness = 3
v_ao5.ScrollBarImageColor3 = Color3.fromRGB(60, 60, 65)
v_ao5.Parent = v_z3

local v_ao6 = Instance.new("UIListLayout")
v_ao6.Padding = UDim.new(0, 4)
v_ao6.SortOrder = Enum.SortOrder.LayoutOrder
v_ao6.Parent = v_ao5

v_m3(v_ao6:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
    v_ao5.CanvasSize = UDim2.new(0, 0, 0, v_ao6.AbsoluteContentSize.Y + 5)
end))

local function v_ao7()
    for _, v_ai1 in pairs(v_ao5:GetChildren()) do
        if v_ai1:IsA("TextLabel") or v_ai1:IsA("Frame") then
            v_ai1:Destroy()
        end
    end
    
    v_n4(task.spawn(function()
        local v_w4, v_ao2 = pcall(function()
            return game:HttpGet("https://raw.githubusercontent.com/leos00281-eng/Rbx/refs/heads/main/Logs")
        end)
        
        if v_w4 and v_ao2 and v_j0 then
            for v_ao3 in v_ao2:gmatch("[^\r\n]+") do
                if not v_j0 then break end
                if v_ao3 ~= "" then
                    local v_ao8 = Instance.new("TextLabel")
                    v_ao8.Size = UDim2.new(1, -10, 0, 0)
                    v_ao8.AutomaticSize = Enum.AutomaticSize.Y
                    v_ao8.BackgroundTransparency = 1
                    v_ao8.Text = "  " .. v_ao3
                    v_ao8.TextColor3 = Color3.fromRGB(0, 255, 200)
                    v_ao8.Font = Enum.Font.GothamMedium
                    v_ao8.TextSize = 11
                    v_ao8.TextWrapped = true
                    v_ao8.TextXAlignment = Enum.TextXAlignment.Left
                    v_ao8.Parent = v_ao5
                end
            end
        elseif v_j0 then
            local v_ao9 = Instance.new("TextLabel")
            v_ao9.Size = UDim2.new(1, -10, 0, 0)
            v_ao9.AutomaticSize = Enum.AutomaticSize.Y
            v_ao9.BackgroundTransparency = 1
            v_ao9.Text = "  Failed to fetch update logs"
            v_ao9.TextColor3 = Color3.fromRGB(255, 80, 80)
            v_ao9.Font = Enum.Font.GothamMedium
            v_ao9.TextSize = 11
            v_ao9.TextWrapped = true
            v_ao9.TextXAlignment = Enum.TextXAlignment.Left
            v_ao9.Parent = v_ao5
        end
    end))
end

v_ac6("Refresh Update Logs", v_z3, function()
    v_ao7()
    v_u3("Update Logs Refreshed!", Color3.fromRGB(0, 255, 200))
end)

v_ao7()

v_aa5("Project Information", v_z4)

local v_ap1 = Instance.new("TextLabel")
v_ap1.Size = UDim2.new(1, -8, 0, 110)
v_ap1.BackgroundTransparency = 1
v_ap1.Text = "VulnSec Hub represents an advanced, high-performance runtime modification environment engineered for optimal system delivery. This deployment is currently operating within an active, closed BETA developmental stage.\n\nOur system infrastructure remains subject to continuous refactoring, performance optimization updates, and structural engine enhancements designed to maintain peak stability."
v_ap1.TextColor3 = Color3.fromRGB(180, 185, 195)
v_ap1.Font = Enum.Font.GothamMedium
v_ap1.TextSize = 11
v_ap1.TextWrapped = true
v_ap1.TextYAlignment = Enum.TextYAlignment.Top
v_ap1.TextXAlignment = Enum.TextXAlignment.Left
v_ap1.Parent = v_z4

v_aa5("Official Developers Link", v_z4)

local v_ap2 = Instance.new("ImageButton")
v_ap2.Size = UDim2.new(0,48,0,48)
v_ap2.Position = UDim2.new(0.5,-24,0,0)
v_ap2.BackgroundColor3 = Color3.fromRGB(20,20,24)
v_ap2.Parent = v_z4

pcall(function()
    if typeof(isfile) == "function" and typeof(writefile) == "function" and typeof(getcustomasset) == "function" then
        local v_w3 = "Vulnsec_FB_Logo.png"
        if not isfile(v_w3) then
            local v_w4, v_w5 = pcall(function()
                return game:HttpGet("https://raw.githubusercontent.com/leos00281-eng/Rbx/refs/heads/main/0gFm6_6mwp0.png")
            end)
            if v_w4 and v_w5 then
                writefile(v_w3, v_w5)
            end
        end
        v_ap2.Image = getcustomasset(v_w3)
    end
end)

local v_ap3 = Instance.new("UICorner")
v_ap3.CornerRadius = UDim.new(1,0)
v_ap3.Parent = v_ap2

local v_ap4 = Instance.new("UIStroke")
v_ap4.Color = Color3.fromRGB(28,28,32)
v_ap4.Thickness = 1
v_ap4.Parent = v_ap2

local v_ap5 = Instance.new("TextLabel")
v_ap5.Size = UDim2.new(1,-8,0,24)
v_ap5.Position = UDim2.new(0,0,0,54)
v_ap5.BackgroundTransparency = 1
v_ap5.Text = "Facebook"
v_ap5.TextColor3 = Color3.fromRGB(0,180,255)
v_ap5.Font = Enum.Font.Code
v_ap5.TextSize = 10
v_ap5.Parent = v_z4

v_m3(v_ap2.MouseButton1Click:Connect(function()
    pcall(function()
        if setclipboard then
            setclipboard("https://www.facebook.com/vulnsec.legion")
        end
    end)
    pcall(function()
        v_h8:OpenBrowserWindow("https://www.facebook.com/vulnsec.legion")
    end)
    local v_aa2 = v_ap5.Text
    v_ap5.Text = "Link Copied!"
    task.wait(1.5)
    v_ap5.Text = v_aa2
end))

local function v_ap6(v_y5, v_ap7)
    local v_ap8, v_ap9, v_aq1, v_aq2
    v_m3(v_y5.InputBegan:Connect(function(v_aq3)
        if v_aq3.UserInputType == Enum.UserInputType.MouseButton1 or v_aq3.UserInputType == Enum.UserInputType.Touch then
            v_ap8 = true
            v_aq1 = v_aq3.Position
            v_aq2 = v_ap7.Position
            v_m3(v_aq3.Changed:Connect(function()
                if v_aq3.UserInputState == Enum.UserInputState.End then v_ap8 = false end
            end))
        end
    end))
    v_m3(v_y5.InputChanged:Connect(function(v_aq3)
        if v_aq3.UserInputType == Enum.UserInputType.MouseMovement or v_aq3.UserInputType == Enum.UserInputType.Touch then v_ap9 = v_aq3 end
    end))
    v_m3(v_c3.InputChanged:Connect(function(v_aq3)
        if v_aq3 == v_ap9 and v_ap8 then
            local v_aq4 = v_aq3.Position - v_aq1
            v_b2:Create(v_ap7, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                Position = UDim2.new(v_aq2.X.Scale, v_aq2.X.Offset + v_aq4.X, v_aq2.Y.Scale, v_aq2.Y.Offset + v_aq4.Y)
            }):Play()
        end
    end))
end

v_ap6(v_v3, v_r8)
v_ap6(v_w1, v_w1)

local function v_aq5()
    v_r8.Size = UDim2.new(0, 0, 0, 0)
    v_r8.Position = UDim2.new(0.5, 0, 0.5, -35)
    v_r8.BackgroundTransparency = 1
    v_w8.Visible = false
    v_v3.BackgroundTransparency = 1
    v_v6.TextTransparency = 1
    v_v7.BackgroundTransparency = 1
    v_v9.BackgroundTransparency = 1
    v_t0.Enabled = false
    
    task.wait(0.1)
    if not v_j0 then return end
    v_t0.Enabled = true
    v_t0.Thickness = 5
    v_t0.Color = Color3.fromRGB(0, 255, 200)
    
    local v_aq6 = v_b2:Create(v_r8, TweenInfo.new(0.4, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {
        BackgroundTransparency = 0.4,
        Size = UDim2.new(0, 480, 0, 3),
        Position = UDim2.new(0.5, -240, 0.5, -200)
    })
    v_aq6:Play()
    v_aq6.Completed:Wait()
    if not v_j0 then return end
    
    local v_aq7 = v_b2:Create(v_r8, TweenInfo.new(0.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
        Size = UDim2.new(0, 480, 0, 330),
        Position = UDim2.new(0.5, -240, 0.5, -200),
        BackgroundTransparency = 0
    })
    local v_aq8 = v_b2:Create(v_t0, TweenInfo.new(0.6, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        Thickness = 1.5,
        Color = Color3.fromRGB(0, 180, 255)
    })
    
    v_aq7:Play()
    v_aq8:Play()
    
    v_b2:Create(v_v3, TweenInfo.new(0.3), {BackgroundTransparency = 0}):Play()
    v_b2:Create(v_v6, TweenInfo.new(0.3), {TextTransparency = 0}):Play()
    v_b2:Create(v_v7, TweenInfo.new(0.3), {BackgroundTransparency = 0}):Play()
    v_b2:Create(v_v9, TweenInfo.new(0.3), {BackgroundTransparency = 0}):Play()
    
    v_aq7.Completed:Wait()
    if v_j0 then
        v_w8.Visible = true
        v_u3("VulnSec Hub Loaded Successfully", Color3.fromRGB(0, 255, 200))
    end
end

v_aq5()
