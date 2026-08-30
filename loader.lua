local v_9xQ = game:GetService("Players")
local v_4pK = game:GetService("TweenService")
local v_8sL = game:GetService("UserInputService")
local v_2mR = game:GetService("RunService")
local v_5wN = game:GetService("Workspace")
local v_7hZ = game:GetService("Lighting")
local v_3bX = game:GetService("MarketplaceService")
local v_1cF = game:GetService("GuiService")
local v_6jK = game:GetService("SoundService")

local v_0vB = v_9xQ.LocalPlayer
local v_fX9 = true
local v_dL2 = {}
local v_hN4 = {}

local function v_pW7(v_r1)
    table.insert(v_dL2, v_r1)
    return v_r1
end

local function v_kL8(v_r1)
    table.insert(v_hN4, v_r1)
    return v_r1
end

local v_zY2 = {
    {Name = "Jerk Off R15", URL = "https://pastefy.app/YZoglOyJ/raw", IsR6 = false},
    {Name = "Jerk Off R6", URL = "https://pastefy.app/wa3v2Vgm/raw", IsR6 = true}
}

-- FIXED: Clean up duplicate GUIs across both PlayerGui and protected UI containers (gethui)
local function cleanupExistingGui()
    local v_oldPlayerGui = v_0vB:WaitForChild("PlayerGui"):FindFirstChild("Vulnsec_Hub_Gui")
    if v_oldPlayerGui then 
        v_oldPlayerGui:Destroy() 
    end

    if gethui then
        for _, v_child in ipairs(gethui():GetChildren()) do
            if v_child.Name == "Vulnsec_Hub_Gui" then
                v_child:Destroy()
            end
        end
    end
end

cleanupExistingGui()

local v_mQ5 = Instance.new("ScreenGui")
v_mQ5.Name = "Vulnsec_Hub_Gui"
v_mQ5.ResetOnSpawn = false
v_mQ5.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

if syn and syn.protect_gui then 
    syn.protect_gui(v_mQ5) 
elseif gethui then
    v_mQ5.Parent = gethui()
else
    v_mQ5.Parent = v_0vB:WaitForChild("PlayerGui")
end

local v_qL3 = Instance.new("Frame")
v_qL3.Name = "MainFrame"
v_qL3.Size = UDim2.new(0, 480, 0, 330) 
v_qL3.Position = UDim2.new(0.5, -240, 0.5, -200)
v_qL3.BackgroundColor3 = Color3.fromRGB(15, 15, 18)
v_qL3.BorderSizePixel = 0
v_qL3.ClipsDescendants = false
v_qL3.Visible = true
v_qL3.Parent = v_mQ5

local v_bV9 = Instance.new("UICorner")
v_bV9.CornerRadius = UDim.new(0, 14)
v_bV9.Parent = v_qL3

local v_nC2 = Instance.new("UIStroke")
v_nC2.Color = Color3.fromRGB(0, 180, 255)
v_nC2.Thickness = 1.5
v_nC2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
v_nC2.Parent = v_qL3

local v_tX6 = Instance.new("Frame")
v_tX6.Name = "NotificationContainer"
v_tX6.Size = UDim2.new(0, 240, 1, -40)
v_tX6.Position = UDim2.new(1, -250, 0, 20)
v_tX6.BackgroundTransparency = 1
v_tX6.Parent = v_mQ5

local v_jM1 = Instance.new("UIListLayout")
v_jM1.VerticalAlignment = Enum.VerticalAlignment.Bottom
v_jM1.SortOrder = Enum.SortOrder.LayoutOrder
v_jM1.Padding = UDim.new(0, 6)
v_jM1.Parent = v_tX6

local function v_notify(v_mTxt, v_mCol)
    if not v_fX9 then return end
    local v_box = Instance.new("Frame")
    v_box.Size = UDim2.new(1, 0, 0, 0)
    v_box.BackgroundColor3 = Color3.fromRGB(18, 18, 22)
    v_box.BorderSizePixel = 0
    v_box.ClipsDescendants = true
    v_box.Parent = v_tX6

    local v_crn = Instance.new("UICorner")
    v_crn.CornerRadius = UDim.new(0, 6)
    v_crn.Parent = v_box

    local v_stk = Instance.new("UIStroke")
    v_stk.Color = v_mCol or Color3.fromRGB(0, 180, 255)
    v_stk.Thickness = 1.5
    v_stk.Parent = v_box

    local v_lbl = Instance.new("TextLabel")
    v_lbl.Size = UDim2.new(1, -16, 1, 0)
    v_lbl.Position = UDim2.new(0, 8, 0, 0)
    v_lbl.BackgroundTransparency = 1
    v_lbl.Text = v_mTxt
    v_lbl.TextColor3 = Color3.fromRGB(255, 255, 255)
    v_lbl.Font = Enum.Font.GothamMedium
    v_lbl.TextSize = 11
    v_lbl.TextXAlignment = Enum.TextXAlignment.Left
    v_lbl.TextWrapped = true
    v_lbl.Parent = v_box

    v_4pK:Create(v_box, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(1, 0, 0, 36)}):Play()

    task.spawn(function()
        task.wait(2.5)
        if v_box and v_box.Parent then
            local v_tw = v_4pK:Create(v_box, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {Size = UDim2.new(1, 0, 0, 0)})
            v_tw:Play()
            v_tw.Completed:Connect(function()
                if v_box then v_box:Destroy() end
            end)
        end
    end)
end

v_pW7(task.spawn(function()
    while v_fX9 and v_qL3 and v_qL3.Parent do
        local v_tw1 = v_4pK:Create(v_nC2, TweenInfo.new(1.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {Thickness = 2.5, Color = Color3.fromRGB(0, 255, 200)})
        v_tw1:Play()
        v_tw1.Completed:Wait()
        if not v_fX9 then break end
        local v_tw2 = v_4pK:Create(v_nC2, TweenInfo.new(1.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {Thickness = 1.5, Color = Color3.fromRGB(0, 150, 255)})
        v_tw2:Play()
        v_tw2.Completed:Wait()
    end
end))

local v_pBar = Instance.new("Frame")
v_pBar.Name = "TopBar"
v_pBar.Size = UDim2.new(1, 0, 0, 38)
v_pBar.BackgroundColor3 = Color3.fromRGB(22, 22, 26)
v_pBar.BorderSizePixel = 0
v_pBar.Parent = v_qL3

local v_pCrn = Instance.new("UICorner")
v_pCrn.CornerRadius = UDim.new(0, 14)
v_pCrn.Parent = v_pBar

local v_pExt = Instance.new("Frame")
v_pExt.Size = UDim2.new(1, 0, 0, 14)
v_pExt.Position = UDim2.new(0, 0, 1, -14)
v_pExt.BackgroundColor3 = Color3.fromRGB(22, 22, 26)
v_pExt.BorderSizePixel = 0
v_pExt.Parent = v_pBar

local v_pTit = Instance.new("TextLabel")
v_pTit.Size = UDim2.new(0, 200, 1, 0)
v_pTit.Position = UDim2.new(0, 16, 0, 0)
v_pTit.BackgroundTransparency = 1
v_pTit.Text = "VULNSEC HUB"
v_pTit.TextColor3 = Color3.fromRGB(255, 255, 255)
v_pTit.Font = Enum.Font.GothamBold
v_pTit.TextSize = 13
v_pTit.TextXAlignment = Enum.TextXAlignment.Left
v_pTit.Parent = v_pBar

local v_btnClose = Instance.new("TextButton")
v_btnClose.Size = UDim2.new(0, 18, 0, 18)
v_btnClose.Position = UDim2.new(1, -26, 0.5, -9)
v_btnClose.BackgroundColor3 = Color3.fromRGB(250, 70, 70)
v_btnClose.Text = "×"
v_btnClose.TextColor3 = Color3.fromRGB(255, 255, 255)
v_btnClose.Font = Enum.Font.GothamBold
v_btnClose.TextSize = 14
v_btnClose.Parent = v_pBar

local v_cCrn = Instance.new("UICorner")
v_cCrn.CornerRadius = UDim.new(0, 4)
v_cCrn.Parent = v_btnClose

local v_btnMin = Instance.new("TextButton")
v_btnMin.Size = UDim2.new(0, 18, 0, 18)
v_btnMin.Position = UDim2.new(1, -48, 0.5, -9)
v_btnMin.BackgroundColor3 = Color3.fromRGB(250, 180, 50)
v_btnMin.Text = "−"
v_btnMin.TextColor3 = Color3.fromRGB(255, 255, 255)
v_btnMin.Font = Enum.Font.GothamBold
v_btnMin.TextSize = 14
v_btnMin.Parent = v_pBar

local v_mCrn = Instance.new("UICorner")
v_mCrn.CornerRadius = UDim.new(0, 4)
v_mCrn.Parent = v_btnMin

local v_bubBtn = Instance.new("ImageButton")
v_bubBtn.Name = "DragBubble"
v_bubBtn.Size = UDim2.new(0, 44, 0, 44)
v_bubBtn.Position = UDim2.new(0.05, 0, 0.2, 0)
v_bubBtn.BackgroundColor3 = Color3.fromRGB(22, 22, 26)
v_bubBtn.Visible = false
v_bubBtn.Parent = v_mQ5

local v_hasCustom = false
pcall(function()
    if typeof(isfile) == "function" and typeof(writefile) == "function" and typeof(getcustomasset) == "function" then
        local v_fName = "Vulnsec_Bubble_Logo.png"
        if not isfile(v_fName) then
            local v_ok, v_dat = pcall(function()
                return game:HttpGet("https://raw.githubusercontent.com/leos00281-eng/Rbx/refs/heads/main/56Tryup.png")
            end)
            if v_ok and v_dat then
                writefile(v_fName, v_dat)
            end
        end
        v_bubBtn.Image = getcustomasset(v_fName)
        v_hasCustom = true
    end
end)

if not v_hasCustom then
    v_bubBtn.Image = "rbxassetid://106037704812001" 
end

local v_bCrn = Instance.new("UICorner")
v_bCrn.CornerRadius = UDim.new(1, 0)
v_bCrn.Parent = v_bubBtn

local v_bStk = Instance.new("UIStroke")
v_bStk.Color = Color3.fromRGB(0, 180, 255)
v_bStk.Thickness = 1.5
v_bStk.Parent = v_bubBtn

local v_cWrap = Instance.new("Frame")
v_cWrap.Size = UDim2.new(1, 0, 1, -38)
v_cWrap.Position = UDim2.new(0, 0, 0, 38)
v_cWrap.BackgroundTransparency = 1
v_cWrap.Parent = v_qL3

v_pW7(v_btnMin.MouseButton1Click:Connect(function()
    v_4pK:Create(v_qL3, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 0, 0, 0), Position = UDim2.new(0.5, 0, 0.5, -35)}):Play()
    task.wait(0.23)
    v_qL3.Visible = false
    v_bubBtn.Visible = true
    v_bubBtn.Size = UDim2.new(0,0,0,0)
    v_4pK:Create(v_bubBtn, TweenInfo.new(0.35, Enum.EasingStyle.Elastic, Enum.EasingDirection.Out), {Size = UDim2.new(0, 44, 0, 44)}):Play()
end))

v_pW7(v_bubBtn.MouseButton1Click:Connect(function()
    v_bubBtn.Visible = false
    v_qL3.Visible = true
    v_4pK:Create(v_qL3, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Size = UDim2.new(0, 480, 0, 330), Position = UDim2.new(0.5, -240, 0.5, -200)}):Play()
end))

local v_sList = Instance.new("Frame")
v_sList.Size = UDim2.new(0, 120, 1, 0)
v_sList.BackgroundColor3 = Color3.fromRGB(11, 11, 14)
v_sList.BorderSizePixel = 0
v_sList.Parent = v_cWrap

local v_sCrn = Instance.new("UICorner")
v_sCrn.CornerRadius = UDim.new(0, 14)
v_sCrn.Parent = v_sList

local v_sFix1 = Instance.new("Frame")
v_sFix1.Size = UDim2.new(0, 15, 1, 0)
v_sFix1.Position = UDim2.new(1, -15, 0, 0)
v_sFix1.BackgroundColor3 = Color3.fromRGB(11, 11, 14)
v_sFix1.BorderSizePixel = 0
v_sFix1.Parent = v_sList

local v_sFix2 = Instance.new("Frame")
v_sFix2.Size = UDim2.new(1, 0, 0, 15)
v_sFix2.BackgroundColor3 = Color3.fromRGB(11, 11, 14)
v_sFix2.BorderSizePixel = 0
v_sFix2.Parent = v_sList

local v_avPic = Instance.new("ImageLabel")
v_avPic.Size = UDim2.new(0, 52, 0, 52)
v_avPic.Position = UDim2.new(0.5, -26, 0, 12)
v_avPic.BackgroundColor3 = Color3.fromRGB(22, 22, 26)
v_avPic.Parent = v_sList

local v_aCrn = Instance.new("UICorner")
v_aCrn.CornerRadius = UDim.new(1, 0)
v_aCrn.Parent = v_avPic

local v_aStk = Instance.new("UIStroke")
v_aStk.Color = Color3.fromRGB(35, 35, 40)
v_aStk.Thickness = 1
v_aStk.Parent = v_avPic

pcall(function()
    v_avPic.Image = v_9xQ:GetUserThumbnailAsync(v_0vB.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size150x150)
end)

local v_uLab = Instance.new("TextLabel")
v_uLab.Size = UDim2.new(1, -16, 0, 16)
v_uLab.Position = UDim2.new(0, 8, 0, 70)
v_uLab.BackgroundTransparency = 1
v_uLab.Text = "@" .. v_0vB.DisplayName
v_uLab.TextColor3 = Color3.fromRGB(180, 180, 185)
v_uLab.Font = Enum.Font.GothamMedium
v_uLab.TextSize = 10
v_uLab.TextScaled = true
v_uLab.Parent = v_sList

local v_bCon = Instance.new("Frame")
v_bCon.Size = UDim2.new(1, 0, 0, 160)
v_bCon.Position = UDim2.new(0, 0, 0, 92)
v_bCon.BackgroundTransparency = 1
v_bCon.Parent = v_sList

local v_bLay = Instance.new("UIListLayout")
v_bLay.Padding = UDim.new(0, 4)
v_bLay.HorizontalAlignment = Enum.HorizontalAlignment.Center
v_bLay.Parent = v_bCon

local v_pFold = Instance.new("Folder")
v_pFold.Name = "Pages"
v_pFold.Parent = v_cWrap

local function v_mkPage(v_name)
    local v_scr = Instance.new("ScrollingFrame")
    v_scr.Name = v_name .. "Page"
    v_scr.Size = UDim2.new(1, -132, 1, -20)
    v_scr.Position = UDim2.new(0, 126, 0, 10)
    v_scr.BackgroundTransparency = 1
    v_scr.CanvasSize = UDim2.new(0, 0, 0, 0)
    v_scr.ScrollBarThickness = 3
    v_scr.ScrollBarImageColor3 = Color3.fromRGB(60, 60, 65)
    v_scr.Visible = false
    v_scr.Parent = v_pFold

    local v_lay = Instance.new("UIListLayout")
    v_lay.Padding = UDim.new(0, 6)
    v_lay.SortOrder = Enum.SortOrder.LayoutOrder
    v_lay.Parent = v_scr

    v_pW7(v_lay:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
        v_scr.CanvasSize = UDim2.new(0, 0, 0, v_lay.AbsoluteContentSize.Y + 15)
    end))

    return v_scr
end

local v_pMain = v_mkPage("Main")
local v_pCust = v_mkPage("Custom")
local v_pTele = v_mkPage("Teleport")
local v_pBoom = v_mkPage("Boombox")
local v_pBIDs = v_mkPage("BoomboxIDs")
local v_pLogs = v_mkPage("UpdateLogs")
local v_pAbot = v_mkPage("About")

local v_currTab = nil

local function v_addTab(v_title, v_targetPage)
    local v_btn = Instance.new("TextButton")
    v_btn.Size = UDim2.new(0, 106, 0, 22)
    v_btn.BackgroundColor3 = Color3.fromRGB(20, 20, 24)
    v_btn.Text = v_title
    v_btn.TextColor3 = Color3.fromRGB(160, 160, 165)
    v_btn.Font = Enum.Font.GothamMedium
    v_btn.TextSize = 10
    v_btn.Parent = v_bCon

    local v_crn = Instance.new("UICorner")
    v_crn.CornerRadius = UDim.new(0, 6)
    v_crn.Parent = v_btn

    local v_stk = Instance.new("UIStroke")
    v_stk.Color = Color3.fromRGB(28, 28, 32)
    v_stk.Thickness = 1
    v_stk.Parent = v_btn

    v_pW7(v_btn.MouseButton1Click:Connect(function()
        if v_currTab == v_btn then return end
        
        if v_currTab then
            v_4pK:Create(v_currTab, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(20, 20, 24), TextColor3 = Color3.fromRGB(160, 160, 165)}):Play()
            local v_ostk = v_currTab:FindFirstChildOfClass("UIStroke")
            if v_ostk then v_4pK:Create(v_ostk, TweenInfo.new(0.2), {Color = Color3.fromRGB(28, 28, 32)}):Play() end
        end
        
        for _, v_child in pairs(v_pFold:GetChildren()) do v_child.Visible = false end
        
        v_currTab = v_btn
        v_targetPage.Visible = true
        
        v_4pK:Create(v_btn, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(28, 28, 35), TextColor3 = Color3.fromRGB(0, 255, 200)}):Play()
        v_4pK:Create(v_stk, TweenInfo.new(0.2), {Color = Color3.fromRGB(0, 180, 255)}):Play()
    end))
    
    if v_title == "Main Scripts" then
        v_currTab = v_btn
        v_targetPage.Visible = true
        v_btn.BackgroundColor3 = Color3.fromRGB(28, 28, 35)
        v_btn.TextColor3 = Color3.fromRGB(0, 255, 200)
        v_stk.Color = Color3.fromRGB(0, 180, 255)
    end
end

v_addTab("Main Scripts", v_pMain)
v_addTab("Custom Scripts", v_pCust)
v_addTab("Teleport", v_pTele)
v_addTab("Boombox Logger", v_pBoom)
v_addTab("Boombox IDs", v_pBIDs)
v_addTab("Update Logs", v_pLogs)
v_addTab("About Script", v_pAbot)

local v_clockLab = Instance.new("TextLabel")
v_clockLab.Size = UDim2.new(1, 0, 0, 25)
v_clockLab.Position = UDim2.new(0, 0, 1, -25)
v_clockLab.BackgroundTransparency = 1
v_clockLab.Text = "12:00:00 AM"
v_clockLab.TextColor3 = Color3.fromRGB(0, 255, 200)
v_clockLab.Font = Enum.Font.Code
v_clockLab.TextSize = 11
v_clockLab.Parent = v_sList

v_pW7(task.spawn(function()
    while v_fX9 and task.wait(1) do
        if v_clockLab and v_clockLab.Parent then
            v_clockLab.Text = os.date("%I:%M:%S %p")
        end
    end
end))

local function v_mkSec(v_txt, v_par)
    local v_frm = Instance.new("Frame")
    v_frm.Size = UDim2.new(1, -8, 0, 24)
    v_frm.BackgroundTransparency = 1
    v_frm.Parent = v_par

    local v_lay = Instance.new("UIListLayout")
    v_lay.FillDirection = Enum.FillDirection.Horizontal
    v_lay.SortOrder = Enum.SortOrder.LayoutOrder
    v_lay.VerticalAlignment = Enum.VerticalAlignment.Center
    v_lay.Padding = UDim.new(0, 10)
    v_lay.Parent = v_frm

    local v_lbl = Instance.new("TextLabel")
    v_lbl.BackgroundTransparency = 1
    v_lbl.Text = v_txt:upper()
    v_lbl.TextColor3 = Color3.fromRGB(0, 180, 255)
    v_lbl.Font = Enum.Font.GothamBold
    v_lbl.TextSize = 11
    v_lbl.AutomaticSize = Enum.AutomaticSize.X
    v_lbl.Size = UDim2.new(0, 0, 1, 0)
    v_lbl.LayoutOrder = 1
    v_lbl.Parent = v_frm
    
    local v_line = Instance.new("Frame")
    v_line.Size = UDim2.new(1, 0, 0, 1)
    v_line.BackgroundColor3 = Color3.fromRGB(28, 28, 32)
    v_line.BorderSizePixel = 0
    v_line.LayoutOrder = 2
    v_line.Parent = v_frm

    v_pW7(v_frm:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
        local v_lSz = v_lbl.AbsoluteSize.X
        local v_fSz = v_frm.AbsoluteSize.X
        local v_rem = v_fSz - v_lSz - 10
        if v_rem > 0 then
            v_line.Size = UDim2.new(0, v_rem, 0, 1)
        else
            v_line.Size = UDim2.new(0, 0, 0, 1)
        end
    end))
end

local function v_mkTog(v_txt, v_val, v_par, v_cb)
    local v_frm = Instance.new("Frame")
    v_frm.Size = UDim2.new(1, -8, 0, 36)
    v_frm.BackgroundColor3 = Color3.fromRGB(20, 20, 24)
    v_frm.BorderSizePixel = 0
    v_frm.Parent = v_par

    local v_crn = Instance.new("UICorner")
    v_crn.CornerRadius = UDim.new(0, 6)
    v_crn.Parent = v_frm

    local v_stk = Instance.new("UIStroke")
    v_stk.Color = Color3.fromRGB(28, 28, 32)
    v_stk.Thickness = 1
    v_stk.Parent = v_frm

    local v_lbl = Instance.new("TextLabel")
    v_lbl.Size = UDim2.new(0.7, 0, 1, 0)
    v_lbl.Position = UDim2.new(0, 12, 0, 0)
    v_lbl.BackgroundTransparency = 1
    v_lbl.Text = v_txt
    v_lbl.TextColor3 = Color3.fromRGB(225, 225, 230)
    v_lbl.Font = Enum.Font.GothamMedium
    v_lbl.TextSize = 11
    v_lbl.TextXAlignment = Enum.TextXAlignment.Left
    v_lbl.Parent = v_frm

    local v_tBtn = Instance.new("TextButton")
    v_tBtn.Size = UDim2.new(0, 32, 0, 16)
    v_tBtn.Position = UDim2.new(1, -42, 0.5, -8)
    v_tBtn.BackgroundColor3 = v_val and Color3.fromRGB(0, 180, 255) or Color3.fromRGB(45, 45, 50)
    v_tBtn.Text = ""
    v_tBtn.Parent = v_frm

    local v_tCrn = Instance.new("UICorner")
    v_tCrn.CornerRadius = UDim.new(1, 0)
    v_tCrn.Parent = v_tBtn

    local v_circ = Instance.new("Frame")
    v_circ.Size = UDim2.new(0, 10, 0, 10)
    v_circ.Position = v_val and UDim2.new(1, -13, 0.5, -5) or UDim2.new(0, 3, 0.5, -5)
    v_circ.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    v_circ.BorderSizePixel = 0
    v_circ.Parent = v_tBtn

    local v_cCrn2 = Instance.new("UICorner")
    v_cCrn2.CornerRadius = UDim.new(1, 0)
    v_cCrn2.Parent = v_circ

    local v_state = v_val
    v_pW7(v_tBtn.MouseButton1Click:Connect(function()
        if not v_fX9 then return end
        v_state = not v_state
        local v_col = v_state and Color3.fromRGB(0, 255, 180) or Color3.fromRGB(45, 45, 50)
        local v_pos = v_state and UDim2.new(1, -13, 0.5, -5) or UDim2.new(0, 3, 0.5, -5)
        
        v_4pK:Create(v_tBtn, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = v_col}):Play()
        v_4pK:Create(v_circ, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Position = v_pos}):Play()
        v_4pK:Create(v_stk, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Color = v_state and Color3.fromRGB(0, 255, 180) or Color3.fromRGB(28, 28, 32)}):Play()
        
        v_cb(v_state)
    end))
end

local function v_mkBtn(v_txt, v_par, v_cb)
    local v_frm = Instance.new("Frame")
    v_frm.Size = UDim2.new(1, -8, 0, 36)
    v_frm.BackgroundColor3 = Color3.fromRGB(20, 20, 24)
    v_frm.Parent = v_par

    local v_crn = Instance.new("UICorner")
    v_crn.CornerRadius = UDim.new(0, 6)
    v_crn.Parent = v_frm

    local v_stk = Instance.new("UIStroke")
    v_stk.Color = Color3.fromRGB(28, 28, 32)
    v_stk.Thickness = 1
    v_stk.Parent = v_frm

    local v_btn = Instance.new("TextButton")
    v_btn.Size = UDim2.new(1, 0, 1, 0)
    v_btn.BackgroundTransparency = 1
    v_btn.Text = v_txt
    v_btn.TextColor3 = Color3.fromRGB(225, 225, 230)
    v_btn.Font = Enum.Font.GothamMedium
    v_btn.TextSize = 11
    v_btn.Parent = v_frm

    v_pW7(v_btn.MouseButton1Click:Connect(function()
        if not v_fX9 then return end
        v_4pK:Create(v_frm, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(28, 28, 35)}):Play()
        v_4pK:Create(v_stk, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Color = Color3.fromRGB(0, 180, 255)}):Play()
        v_btn.TextColor3 = Color3.fromRGB(0, 255, 200)
        task.wait(0.12)
        if not v_fX9 then return end
        v_4pK:Create(v_frm, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(20, 20, 24)}):Play()
        v_4pK:Create(v_stk, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Color = Color3.fromRGB(28, 28, 32)}):Play()
        v_btn.TextColor3 = Color3.fromRGB(225, 225, 230)
        v_cb()
    end))
end

local function v_mkBox(v_txt, v_val, v_par, v_cb)
    local v_frm = Instance.new("Frame")
    v_frm.Size = UDim2.new(1, -8, 0, 36)
    v_frm.BackgroundColor3 = Color3.fromRGB(20, 20, 24)
    v_frm.Parent = v_par

    local v_crn = Instance.new("UICorner")
    v_crn.CornerRadius = UDim.new(0, 6)
    v_crn.Parent = v_frm

    local v_stk = Instance.new("UIStroke")
    v_stk.Color = Color3.fromRGB(28, 28, 32)
    v_stk.Thickness = 1
    v_stk.Parent = v_frm

    local v_lbl = Instance.new("TextLabel")
    v_lbl.Size = UDim2.new(0.6, 0, 1, 0)
    v_lbl.Position = UDim2.new(0, 12, 0, 0)
    v_lbl.BackgroundTransparency = 1
    v_lbl.Text = v_txt
    v_lbl.TextColor3 = Color3.fromRGB(225, 225, 230)
    v_lbl.Font = Enum.Font.GothamMedium
    v_lbl.TextSize = 11
    v_lbl.TextXAlignment = Enum.TextXAlignment.Left
    v_lbl.Parent = v_frm

    local v_box = Instance.new("TextBox")
    v_box.Size = UDim2.new(0, 46, 0, 20)
    v_box.Position = UDim2.new(1, -54, 0.5, -10)
    v_box.BackgroundColor3 = Color3.fromRGB(30, 30, 36)
    v_box.Text = tostring(v_val)
    v_box.TextColor3 = Color3.fromRGB(255, 255, 255)
    v_box.Font = Enum.Font.GothamBold
    v_box.TextSize = 10
    v_box.Parent = v_frm

    local v_bCrn2 = Instance.new("UICorner")
    v_bCrn2.CornerRadius = UDim.new(0, 4)
    v_bCrn2.Parent = v_box
    
    local v_bStk2 = Instance.new("UIStroke")
    v_bStk2.Color = Color3.fromRGB(45, 45, 50)
    v_bStk2.Thickness = 1
    v_bStk2.Parent = v_box

    v_pW7(v_box.Focused:Connect(function()
        v_4pK:Create(v_bStk2, TweenInfo.new(0.15), {Color = Color3.fromRGB(0, 180, 255)}):Play()
    end))

    v_pW7(v_box.FocusLost:Connect(function()
        v_4pK:Create(v_bStk2, TweenInfo.new(0.15), {Color = Color3.fromRGB(45, 45, 50)}):Play()
        local v_num = tonumber(v_box.Text)
        if v_num then
            v_cb(v_num)
        else
            v_box.Text = tostring(v_val)
        end
    end))
end

local function v_getChar()
    local v_char = v_0vB.Character
    if not v_char then return nil, nil, nil end
    local v_hrp = v_char:FindFirstChild("HumanoidRootPart")
    local v_hum = v_char:FindFirstChildOfClass("Humanoid")
    return v_char, v_hrp, v_hum
end

local v_speedEnabled = false
local v_speedVal = 50

v_mkSec("Movement", v_pMain)

v_mkTog("Enable Speed Hack", false, v_pMain, function(v_state)
    v_speedEnabled = v_state
    local _, _, v_hum = v_getChar()
    if v_hum then v_hum.WalkSpeed = v_state and v_speedVal or 16 end
end)

v_mkBox("Walk Speed", 50, v_pMain, function(v_val)
    v_speedVal = v_val
    local _, _, v_hum = v_getChar()
    if v_speedEnabled and v_hum then v_hum.WalkSpeed = v_val end
end)

v_pW7(v_2mR.Heartbeat:Connect(function()
    if v_fX9 and v_speedEnabled then
        local _, _, v_hum = v_getChar()
        if v_hum and v_hum.WalkSpeed ~= v_speedVal then
            v_hum.WalkSpeed = v_speedVal
        end
    end
end))

local v_noclipEnabled = false
v_pW7(v_2mR.Stepped:Connect(function()
    if v_fX9 and v_noclipEnabled and v_0vB.Character then
        for _, v_part in pairs(v_0vB.Character:GetDescendants()) do
            if v_part:IsA("BasePart") then v_part.CanCollide = false end
        end
    end
end))

v_mkTog("Enable Noclip", false, v_pMain, function(v_state) v_noclipEnabled = v_state end)

local v_flyEnabled = false
local v_flySpeed = 50
local v_flyPos = nil

v_mkTog("Enable Fly Mode", false, v_pMain, function(v_state)
    v_flyEnabled = v_state
    v_flyPos = nil
    local _, _, v_hum = v_getChar()
    if v_hum then
        v_hum.PlatformStand = v_state
    end
    if not v_state then
        local _, v_hrp = v_getChar()
        if v_hrp then v_hrp.Velocity = Vector3.new(0,0,0) end
    end
end)

v_mkBox("Fly Speed", 50, v_pMain, function(v_val)
    v_flySpeed = v_val
end)

v_pW7(v_2mR.Heartbeat:Connect(function()
    if v_fX9 and v_flyEnabled then
        local _, v_hrp, v_hum = v_getChar()
        if v_hrp and v_hum then
            v_hum.PlatformStand = true
            
            local v_cam = v_5wN.CurrentCamera
            if v_cam then
                local v_moveDir = v_hum.MoveDirection
                local v_look = v_cam.CFrame.LookVector
                
                if v_moveDir.Magnitude > 0 then
                    v_flyPos = nil
                    local v_right = v_cam.CFrame.RightVector
                    local v_objSpace = v_cam.CFrame:VectorToObjectSpace(v_moveDir)
                    local v_flat = Vector3.new(v_objSpace.X, 0, v_objSpace.Z).Unit
                    local v_dir = ((v_look * -v_flat.Z) + (v_right * v_flat.X)).Unit
                    
                    v_hrp.Velocity = v_dir * v_flySpeed
                    v_hrp.CFrame = CFrame.new(v_hrp.Position, v_hrp.Position + v_look)
                else
                    if not v_flyPos then
                        v_flyPos = v_hrp.Position
                    end
                    v_hrp.Velocity = Vector3.new(0, 0, 0)
                    v_hrp.CFrame = CFrame.new(v_flyPos, v_flyPos + v_look)
                end
            end
        end
    end
end))

v_mkSec("Stealth & Visuals", v_pMain)

v_mkTog("Day Mode", false, v_pMain, function(v_state)
    if v_state then
        v_7hZ.ClockTime = 14
    end
end)

v_mkTog("Night Mode", false, v_pMain, function(v_state)
    if v_state then
        v_7hZ.ClockTime = 0
    else
        v_7hZ.ClockTime = 14
    end
end)

local v_espEnabled = false

local function v_setupESP(v_plr)
    if v_plr == v_0vB then return end
    
    local function v_applyESP()
        if not v_fX9 then return end
        local v_char = v_plr.Character or v_plr.CharacterAdded:Wait()
        local v_head = v_char:WaitForChild("Head", 5)
        if not v_head or not v_fX9 then return end

        if v_char:FindFirstChild("ESPHighlight") then v_char.ESPHighlight:Destroy() end
        if v_head:FindFirstChild("ESPBBG") then v_head.ESPBBG:Destroy() end

        local v_hl = Instance.new("Highlight")
        v_hl.Name = "ESPHighlight"
        v_hl.FillTransparency = 0.6
        v_hl.FillColor = Color3.fromRGB(0, 255, 150)
        v_hl.OutlineColor = Color3.fromRGB(255, 255, 255)
        v_hl.Enabled = v_espEnabled
        v_hl.Parent = v_char

        local v_bbg = Instance.new("BillboardGui")
        v_bbg.Name = "ESPBBG"
        v_bbg.Size = UDim2.new(0, 200, 0, 50)
        v_bbg.AlwaysOnTop = true
        v_bbg.ExtentsOffset = Vector3.new(0, 3, 0)
        v_bbg.Enabled = v_espEnabled
        v_bbg.Parent = v_head

        local v_lbl = Instance.new("TextLabel")
        v_lbl.Size = UDim2.new(1, 0, 1, 0)
        v_lbl.BackgroundTransparency = 1
        v_lbl.Text = v_plr.DisplayName
        v_lbl.TextColor3 = Color3.fromRGB(255, 50, 50)
        v_lbl.Font = Enum.Font.GothamBold
        v_lbl.TextSize = 14
        v_lbl.Parent = v_bbg
    end

    v_applyESP()
    v_pW7(v_plr.CharacterAdded:Connect(v_applyESP))
end

v_mkTog("Enable Player ESP", false, v_pMain, function(v_state)
    v_espEnabled = v_state
    for _, v_plr in pairs(v_9xQ:GetPlayers()) do
        if v_plr.Character then
            local v_hl = v_plr.Character:FindFirstChild("ESPHighlight")
            local v_head = v_plr.Character:FindFirstChild("Head")
            local v_bbg = v_head and v_head:FindFirstChild("ESPBBG")
            if v_hl then v_hl.Enabled = v_state end
            if v_bbg then v_bbg.Enabled = v_state end
        end
    end
end)

for _, v_plr in pairs(v_9xQ:GetPlayers()) do v_setupESP(v_plr) end
v_pW7(v_9xQ.PlayerAdded:Connect(v_setupESP))

v_mkBtn("Anti-Lag (FPS Boost)", v_pMain, function()
    for _, v_desc in pairs(v_5wN:GetDescendants()) do
        if v_desc:IsA("BasePart") and not v_desc:IsDescendantOf(v_0vB.Character) then
            v_desc.Material = Enum.Material.SmoothPlastic
            if v_desc:IsA("MeshPart") or v_desc:IsA("UnionOperation") then v_desc.Reflectance = 0 end
        elseif v_desc:IsA("Decal") or v_desc:IsA("Texture") then
            v_desc.Transparency = 1
        elseif v_desc:IsA("ParticleEmitter") or v_desc:IsA("Trail") then
            v_desc.Enabled = false
        end
    end
    v_notify("Anti-Lag Applied!", Color3.fromRGB(0, 255, 200))
end)

local function v_clearESP()
    for _, v_plr in pairs(v_9xQ:GetPlayers()) do
        if v_plr.Character then
            local v_hl = v_plr.Character:FindFirstChild("ESPHighlight")
            if v_hl then v_hl:Destroy() end
            local v_head = v_plr.Character:FindFirstChild("Head")
            local v_bbg = v_head and v_head:FindFirstChild("ESPBBG")
            if v_bbg then v_bbg:Destroy() end
        end
    end
end

v_pW7(v_btnClose.MouseButton1Click:Connect(function()
    v_flyEnabled = false
    v_speedEnabled = false
    v_noclipEnabled = false
    v_espEnabled = false
    v_flyPos = nil
    
    for _, v_conn in ipairs(v_dL2) do
        pcall(function() v_conn:Disconnect() end)
    end
    v_dL2 = {}

    v_clearESP()
    
    local _, v_hrp, v_hum = v_getChar()
    if v_hum then
        v_hum.PlatformStand = false
        v_hum.WalkSpeed = 16
    end
    if v_hrp then
        v_hrp.Velocity = Vector3.new(0,0,0)
    end
    
    v_4pK:Create(v_qL3, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {Size = UDim2.new(0,0,0,0), Position = UDim2.new(0.5, 0, 0.5, -35), BackgroundTransparency = 1}):Play()
    task.wait(0.2)
    v_mQ5:Destroy()
end))

local function v_execScript(v_url, v_name, v_isR6)
    v_pW7(task.spawn(function()
        local v_success = false
        local v_ok, v_err = pcall(function()
            if not v_fX9 then return end
            if v_isR6 then
                loadstring(game:HttpGet(v_url))("Spider Script")
            else
                loadstring(game:HttpGet(v_url))()
            end
            v_success = true
        end)
        
        if v_ok and v_success then
            v_notify("💥 " .. v_name:upper() .. " ACTIVE 💥", Color3.fromRGB(0, 255, 200))
        else
            v_notify("Execution Failed!", Color3.fromRGB(255, 80, 80))
            warn("Failed structural execution stack: " .. tostring(v_err))
        end
    end))
end

v_mkSec("Custom Scripts", v_pCust)

for _, v_item in pairs(v_zY2) do
    v_mkBtn(v_item.Name, v_pCust, function()
        v_execScript(v_item.URL, v_item.Name, v_item.IsR6)
    end)
end

v_mkSec("Selected Target", v_pTele)

local v_selPlayer = nil
local v_selLab = Instance.new("TextLabel")
v_selLab.Size = UDim2.new(1, -8, 0, 36)
v_selLab.BackgroundColor3 = Color3.fromRGB(20, 20, 24)
v_selLab.TextColor3 = Color3.fromRGB(0, 255, 200)
v_selLab.Font = Enum.Font.GothamBold
v_selLab.TextSize = 11
v_selLab.Text = "  Selected: None"
v_selLab.TextXAlignment = Enum.TextXAlignment.Left
v_selLab.Parent = v_pTele
Instance.new("UICorner", v_selLab).CornerRadius = UDim.new(0, 6)
local v_selStk = Instance.new("UIStroke", v_selLab)
v_selStk.Color = Color3.fromRGB(28, 28, 32)
v_selStk.Thickness = 1

v_mkSec("Search Players", v_pTele)

local v_searchBox = Instance.new("TextBox")
v_searchBox.Size = UDim2.new(1, -8, 0, 32)
v_searchBox.BackgroundColor3 = Color3.fromRGB(20, 20, 24)
v_searchBox.PlaceholderText = "Search player name..."
v_searchBox.PlaceholderColor3 = Color3.fromRGB(100, 100, 105)
v_searchBox.Text = ""
v_searchBox.TextColor3 = Color3.fromRGB(255, 255, 255)
v_searchBox.Font = Enum.Font.GothamMedium
v_searchBox.TextSize = 11
v_searchBox.TextXAlignment = Enum.TextXAlignment.Left
v_searchBox.Parent = v_pTele
Instance.new("UICorner", v_searchBox).CornerRadius = UDim.new(0, 6)
local v_searchStk = Instance.new("UIStroke", v_searchBox)
v_searchStk.Color = Color3.fromRGB(28, 28, 32)
v_searchStk.Thickness = 1

v_pW7(v_searchBox.Focused:Connect(function()
    v_4pK:Create(v_searchStk, TweenInfo.new(0.15), {Color = Color3.fromRGB(0, 180, 255)}):Play()
end))

v_pW7(v_searchBox.FocusLost:Connect(function()
    v_4pK:Create(v_searchStk, TweenInfo.new(0.15), {Color = Color3.fromRGB(28, 28, 32)}):Play()
end))

v_mkSec("Player List", v_pTele)

local v_pListScroll = Instance.new("ScrollingFrame")
v_pListScroll.Size = UDim2.new(1, -8, 0, 110)
v_pListScroll.BackgroundTransparency = 1
v_pListScroll.CanvasSize = UDim2.new(0, 0, 0, 0)
v_pListScroll.ScrollBarThickness = 3
v_pListScroll.ScrollBarImageColor3 = Color3.fromRGB(60, 60, 65)
v_pListScroll.Parent = v_pTele

local v_pListLay = Instance.new("UIListLayout")
v_pListLay.Padding = UDim.new(0, 4)
v_pListLay.SortOrder = Enum.SortOrder.LayoutOrder
v_pListLay.Parent = v_pListScroll

v_pW7(v_pListLay:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
    v_pListScroll.CanvasSize = UDim2.new(0, 0, 0, v_pListLay.AbsoluteContentSize.Y + 5)
end))

local function v_refreshPlayers()
    for _, v_child in pairs(v_pListScroll:GetChildren()) do
        if v_child:IsA("TextButton") then
            v_child:Destroy()
        end
    end
    
    local v_query = v_searchBox.Text:lower()
    
    for _, v_plr in pairs(v_9xQ:GetPlayers()) do
        if v_plr ~= v_0vB then
            local v_dName = v_plr.DisplayName
            local v_name = v_plr.Name
            local v_combo = (v_dName .. " " .. v_name):lower()
            
            if v_query == "" or string.find(v_combo, v_query, 1, true) then
                local v_pBtn = Instance.new("TextButton")
                v_pBtn.Size = UDim2.new(1, 0, 0, 32)
                v_pBtn.BackgroundColor3 = Color3.fromRGB(20, 20, 24)
                v_pBtn.Text = "  " .. v_dName .. " (@" .. v_name .. ")"
                v_pBtn.TextColor3 = Color3.fromRGB(225, 225, 230)
                v_pBtn.Font = Enum.Font.GothamMedium
                v_pBtn.TextSize = 11
                v_pBtn.TextXAlignment = Enum.TextXAlignment.Left
                v_pBtn.Parent = v_pListScroll
                
                Instance.new("UICorner", v_pBtn).CornerRadius = UDim.new(0, 6)
                local v_pStk = Instance.new("UIStroke", v_pBtn)
                v_pStk.Color = Color3.fromRGB(28, 28, 32)
                v_pStk.Thickness = 1
                
                v_pW7(v_pBtn.MouseButton1Click:Connect(function()
                    if not v_fX9 then return end
                    v_selPlayer = v_plr
                    v_selLab.Text = "  Selected: " .. v_dName
                    v_4pK:Create(v_pStk, TweenInfo.new(0.2), {Color = Color3.fromRGB(0, 180, 255)}):Play()
                end))
            end
        end
    end
end

v_pW7(v_searchBox:GetPropertyChangedSignal("Text"):Connect(function()
    v_refreshPlayers()
end))

v_mkBtn("Refresh Player List", v_pTele, function()
    v_refreshPlayers()
end)

v_mkSec("Teleport & Spectate Actions", v_pTele)

local v_loopTween = false
local v_tweenDur = 0.4

v_mkBox("Tween Duration", 0.4, v_pTele, function(v_val)
    v_tweenDur = v_val
end)

v_mkTog("Enable Loop Tween to Target", false, v_pTele, function(v_state)
    v_loopTween = v_state
    if v_state then
        v_pW7(task.spawn(function()
            while v_loopTween and v_fX9 do
                if v_selPlayer and v_selPlayer.Character then
                    local v_targetHrp = v_selPlayer.Character:FindFirstChild("HumanoidRootPart")
                    local _, v_myHrp, _ = v_getChar()
                    if v_targetHrp and v_myHrp then
                        local v_tInfo = TweenInfo.new(v_tweenDur, Enum.EasingStyle.Linear)
                        local v_tw = v_4pK:Create(v_myHrp, v_tInfo, {CFrame = v_targetHrp.CFrame + Vector3.new(0, 3, 0)})
                        v_tw:Play()
                        
                        local v_done = false
                        local v_conn
                        v_conn = v_tw.Completed:Connect(function()
                            v_done = true
                            if v_conn then v_conn:Disconnect() end
                        end)
                        
                        while not v_done and v_loopTween and v_fX9 do
                            task.wait(0.05)
                        end
                        if not v_loopTween then
                            v_tw:Cancel()
                            if v_conn then v_conn:Disconnect() end
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

v_mkBtn("Teleport to Target (Once)", v_pTele, function()
    if v_selPlayer and v_selPlayer.Character then
        local v_targetHrp = v_selPlayer.Character:FindFirstChild("HumanoidRootPart")
        local _, v_myHrp, _ = v_getChar()
        if v_targetHrp and v_myHrp then
            v_myHrp.CFrame = v_targetHrp.CFrame + Vector3.new(0, 3, 0)
            v_notify("Teleported to " .. v_selPlayer.DisplayName, Color3.fromRGB(0, 255, 200))
        else
            v_notify("Target has no character!", Color3.fromRGB(255, 80, 80))
        end
    else
        v_notify("No player selected or offline!", Color3.fromRGB(255, 80, 80))
    end
end)

local v_spectating = false
v_mkTog("Enable Spectate", false, v_pTele, function(v_state)
    v_spectating = v_state
    local v_cam = v_5wN.CurrentCamera
    if v_cam then
        if v_state then
            if v_selPlayer and v_selPlayer.Character then
                local v_hum = v_selPlayer.Character:FindFirstChildOfClass("Humanoid")
                if v_hum then
                    v_cam.CameraSubject = v_hum
                    v_notify("Spectating " .. v_selPlayer.DisplayName, Color3.fromRGB(0, 255, 200))
                else
                    v_cam.CameraSubject = v_selPlayer.Character
                end
            else
                v_notify("No player selected for spectate!", Color3.fromRGB(255, 80, 80))
            end
        else
            local _, _, v_hum = v_getChar()
            if v_hum then
                v_cam.CameraSubject = v_hum
            end
            v_notify("Spectate Disabled", Color3.fromRGB(0, 180, 255))
        end
    end
end)

v_refreshPlayers()

v_mkSec("Boombox Control", v_pBoom)

local v_boomEnabled = false
local v_loggedIDs = {} 

local v_previewSound = Instance.new("Sound")
v_previewSound.Name = "VulnSec_AudioPreview"
v_previewSound.Parent = game:GetService("SoundService")
local v_playingID = nil

v_mkTog("Enable Boombox Logger", false, v_pBoom, function(v_state)
    v_boomEnabled = v_state
    if v_state then
        v_notify("Boombox Logger Active", Color3.fromRGB(0, 255, 200))
    else
        v_notify("Boombox Logger Paused", Color3.fromRGB(255, 180, 50))
        if v_previewSound.IsPlaying then
            v_previewSound:Stop()
        end
    end
end)

v_mkSec("Search Boombox Logs", v_pBoom)

local v_logSearch = Instance.new("TextBox")
v_logSearch.Size = UDim2.new(1, -8, 0, 32)
v_logSearch.BackgroundColor3 = Color3.fromRGB(20, 20, 24)
v_logSearch.PlaceholderText = "Search player or song..."
v_logSearch.PlaceholderColor3 = Color3.fromRGB(100, 100, 105)
v_logSearch.Text = ""
v_logSearch.TextColor3 = Color3.fromRGB(255, 255, 255)
v_logSearch.Font = Enum.Font.GothamMedium
v_logSearch.TextSize = 11
v_logSearch.TextXAlignment = Enum.TextXAlignment.Left
v_logSearch.Parent = v_pBoom
Instance.new("UICorner", v_logSearch).CornerRadius = UDim.new(0, 6)
local v_logStk = Instance.new("UIStroke", v_logSearch)
v_logStk.Color = Color3.fromRGB(28, 28, 32)
v_logStk.Thickness = 1

v_pW7(v_logSearch.Focused:Connect(function()
    v_4pK:Create(v_logStk, TweenInfo.new(0.15), {Color = Color3.fromRGB(0, 180, 255)}):Play()
end))

v_pW7(v_logSearch.FocusLost:Connect(function()
    v_4pK:Create(v_logStk, TweenInfo.new(0.15), {Color = Color3.fromRGB(28, 28, 32)}):Play()
end))

v_mkSec("Logged IDs & Songs", v_pBoom)

local v_logScroll = Instance.new("ScrollingFrame")
v_logScroll.Size = UDim2.new(1, -8, 0, 80)
v_logScroll.BackgroundTransparency = 1
v_logScroll.CanvasSize = UDim2.new(0, 0, 0, 0)
v_logScroll.ScrollBarThickness = 3
v_logScroll.ScrollBarImageColor3 = Color3.fromRGB(60, 60, 65)
v_logScroll.Parent = v_pBoom

local v_logLay = Instance.new("UIListLayout")
v_logLay.Padding = UDim.new(0, 4)
v_logLay.SortOrder = Enum.SortOrder.LayoutOrder
v_logLay.Parent = v_logScroll

v_pW7(v_logLay:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
    v_logScroll.CanvasSize = UDim2.new(0, 0, 0, v_logLay.AbsoluteContentSize.Y + 5)
end))

local function v_filterLogs()
    local v_query = v_logSearch.Text:lower()
    for _, v_entry in ipairs(v_loggedIDs) do
        if v_entry.Frame and v_entry.Frame.Parent then
            local v_full = (v_entry.Player .. " " .. v_entry.Title .. " " .. v_entry.ID):lower()
            if v_query == "" or string.find(v_full, v_query, 1, true) then
                v_entry.Frame.Visible = true
            else
                v_entry.Frame.Visible = false
            end
        end
    end
end

v_pW7(v_logSearch:GetPropertyChangedSignal("Text"):Connect(function()
    v_filterLogs()
end))

local function v_addLogEntry(v_pName, v_rawId)
    if not v_fX9 then return end
    local v_cleanId = v_rawId:match("%d+")
    if not v_cleanId or v_cleanId == "" then return end
    
    for _, v_entry in ipairs(v_loggedIDs) do
        if v_entry.ID == v_cleanId then return end
    end
    
    local v_frm = Instance.new("Frame")
    v_frm.Size = UDim2.new(1, 0, 0, 32)
    v_frm.BackgroundColor3 = Color3.fromRGB(20, 20, 24)
    v_frm.Parent = v_logScroll
    
    Instance.new("UICorner", v_frm).CornerRadius = UDim.new(0, 6)
    local v_stk = Instance.new("UIStroke", v_frm)
    v_stk.Color = Color3.fromRGB(28, 28, 32)
    v_stk.Thickness = 1
    
    local v_lbl = Instance.new("TextButton")
    v_lbl.Size = UDim2.new(1, -64, 1, 0)
    v_lbl.BackgroundTransparency = 1
    v_lbl.Text = "  " .. v_pName .. " -> Loading Song..."
    v_lbl.TextColor3 = Color3.fromRGB(0, 255, 200)
    v_lbl.Font = Enum.Font.GothamMedium
    v_lbl.TextSize = 11
    v_lbl.TextXAlignment = Enum.TextXAlignment.Left
    v_lbl.Parent = v_frm
    
    local v_copyBtn = Instance.new("TextButton")
    v_copyBtn.Size = UDim2.new(0, 24, 0, 24)
    v_copyBtn.Position = UDim2.new(1, -56, 0.5, -12)
    v_copyBtn.BackgroundColor3 = Color3.fromRGB(30, 30, 36)
    v_copyBtn.Text = "📋"
    v_copyBtn.TextColor3 = Color3.fromRGB(0, 255, 200)
    v_copyBtn.Font = Enum.Font.GothamBold
    v_copyBtn.TextSize = 10
    v_copyBtn.Parent = v_frm
    Instance.new("UICorner", v_copyBtn).CornerRadius = UDim.new(0, 4)
    local v_cStk = Instance.new("UIStroke", v_copyBtn)
    v_cStk.Color = Color3.fromRGB(45, 45, 50)
    v_cStk.Thickness = 1

    local v_playBtn = Instance.new("TextButton")
    v_playBtn.Size = UDim2.new(0, 24, 0, 24)
    v_playBtn.Position = UDim2.new(1, -28, 0.5, -12)
    v_playBtn.BackgroundColor3 = Color3.fromRGB(30, 30, 36)
    v_playBtn.Text = "▶"
    v_playBtn.TextColor3 = Color3.fromRGB(0, 255, 200)
    v_playBtn.Font = Enum.Font.GothamBold
    v_playBtn.TextSize = 10
    v_playBtn.Parent = v_frm
    Instance.new("UICorner", v_playBtn).CornerRadius = UDim.new(0, 4)
    local v_pStk = Instance.new("UIStroke", v_playBtn)
    v_pStk.Color = Color3.fromRGB(45, 45, 50)
    v_pStk.Thickness = 1

    local v_data = {Player = v_pName, Title = "Loading Song...", ID = v_cleanId, Frame = v_frm}
    table.insert(v_loggedIDs, v_data)
    v_filterLogs()
    
    v_kL8(task.spawn(function()
        local v_ok, v_info = pcall(function()
            return v_3bX:GetProductInfo(tonumber(v_cleanId))
        end)
        if v_ok and v_info and v_info.Name and v_fX9 then
            v_data.Title = v_info.Name
            if v_lbl and v_lbl.Parent then
                v_lbl.Text = "  " .. v_pName .. " -> " .. v_info.Name .. " (" .. v_cleanId .. ")"
            end
        elseif v_fX9 then
            v_data.Title = "Unknown Song"
            if v_lbl and v_lbl.Parent then
                v_lbl.Text = "  " .. v_pName .. " -> ID: " .. v_cleanId
            end
        end
        v_filterLogs()
    end))
    
    v_pW7(v_copyBtn.MouseButton1Click:Connect(function()
        pcall(function()
            if setclipboard then
                setclipboard(v_cleanId)
                v_notify("Copied ID: " .. v_cleanId, Color3.fromRGB(0, 255, 200))
            end
        end)
    end))
    
    v_pW7(v_playBtn.MouseButton1Click:Connect(function()
        if v_previewSound.IsPlaying and v_playingID == v_cleanId then
            v_previewSound:Stop()
            v_playingID = nil
            v_playBtn.Text = "▶"
        else
            v_previewSound.SoundId = "rbxassetid://" .. v_cleanId
            v_previewSound:Play()
            v_playingID = v_cleanId
            v_playBtn.Text = "⏹"
        end
    end))
end

local function v_hookSound(v_snd)
    if v_snd:IsA("Sound") then
        local function evaluate()
            if not v_fX9 or not v_boomEnabled then return end
            if v_snd.SoundId ~= "" and v_snd.Playing then
                local v_parent = v_snd.Parent
                local v_owner = "Game / Ambient"
                
                while v_parent and v_parent ~= game do
                    if v_parent:IsA("Model") and v_9xQ:GetPlayerFromCharacter(v_parent) then
                        v_owner = v_9xQ:GetPlayerFromCharacter(v_parent).Name
                        break
                    elseif v_parent:IsA("Player") then
                        v_owner = v_parent.Name
                        break
                    elseif v_parent == v_6jK then
                        v_owner = "SoundService (BGM)"
                        break
                    end
                    v_parent = v_parent.Parent
                end
                
                if v_owner == "Game / Ambient" and v_snd:IsDescendantOf(v_0vB.Character or workspace) then
                    v_owner = v_0vB.Name
                end
                
                v_addLogEntry(v_owner, v_snd.SoundId)
            end
        end

        v_kL8(v_snd.Changed:Connect(function(v_prop)
            if v_prop == "SoundId" or v_prop == "Playing" then
                if v_snd.Playing then
                    evaluate()
                end
            end
        end))
        
        if v_snd.Playing then
            evaluate()
        end
    end
end

for _, v_obj in pairs(v_5wN:GetDescendants()) do
    v_hookSound(v_obj)
end
v_kL8(v_5wN.DescendantAdded:Connect(v_hookSound))

for _, v_obj in pairs(v_6jK:GetDescendants()) do
    v_hookSound(v_obj)
end
v_kL8(v_6jK.DescendantAdded:Connect(v_hookSound))

v_mkBtn("Copy All Logged IDs", v_pBoom, function()
    local v_arr = {}
    for _, v_item in ipairs(v_loggedIDs) do
        table.insert(v_arr, v_item.Title .. " - " .. v_item.ID)
    end
    local v_txt = table.concat(v_arr, "\n")
    pcall(function()
        if setclipboard then
            setclipboard(v_txt)
            v_notify("Songs & IDs Copied!", Color3.fromRGB(0, 255, 200))
        end
    end)
end)

v_mkBtn("Clear Log List", v_pBoom, function()
    if v_previewSound.IsPlaying then
        v_previewSound:Stop()
    end
    v_loggedIDs = {}
    for _, v_child in pairs(v_logScroll:GetChildren()) do
        if v_child:IsA("Frame") then
            v_child:Destroy()
        end
    end
    v_notify("Logs Cleared!", Color3.fromRGB(255, 180, 50))
end)

v_mkSec("Boombox IDs", v_pBIDs)

local v_idSearch = Instance.new("TextBox")
v_idSearch.Size = UDim2.new(1, -8, 0, 32)
v_idSearch.BackgroundColor3 = Color3.fromRGB(20, 20, 24)
v_idSearch.PlaceholderText = "Search IDs or songs..."
v_idSearch.PlaceholderColor3 = Color3.fromRGB(100, 100, 105)
v_idSearch.Text = ""
v_idSearch.TextColor3 = Color3.fromRGB(255, 255, 255)
v_idSearch.Font = Enum.Font.GothamMedium
v_idSearch.TextSize = 11
v_idSearch.TextXAlignment = Enum.TextXAlignment.Left
v_idSearch.Parent = v_pBIDs
Instance.new("UICorner", v_idSearch).CornerRadius = UDim.new(0, 6)
local v_idStk = Instance.new("UIStroke", v_idSearch)
v_idStk.Color = Color3.fromRGB(28, 28, 32)
v_idStk.Thickness = 1

v_pW7(v_idSearch.Focused:Connect(function()
    v_4pK:Create(v_idStk, TweenInfo.new(0.15), {Color = Color3.fromRGB(0, 180, 255)}):Play()
end))

v_pW7(v_idSearch.FocusLost:Connect(function()
    v_4pK:Create(v_idStk, TweenInfo.new(0.15), {Color = Color3.fromRGB(28, 28, 32)}):Play()
end))

v_mkSec("ID List", v_pBIDs)

local v_idScroll = Instance.new("ScrollingFrame")
v_idScroll.Size = UDim2.new(1, -8, 0, 140)
v_idScroll.BackgroundTransparency = 1
v_idScroll.CanvasSize = UDim2.new(0, 0, 0, 0)
v_idScroll.ScrollBarThickness = 3
v_idScroll.ScrollBarImageColor3 = Color3.fromRGB(60, 60, 65)
v_idScroll.Parent = v_pBIDs

local v_idLay = Instance.new("UIListLayout")
v_idLay.Padding = UDim.new(0, 4)
v_idLay.SortOrder = Enum.SortOrder.LayoutOrder
v_idLay.Parent = v_idScroll

v_pW7(v_idLay:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
    v_idScroll.CanvasSize = UDim2.new(0, 0, 0, v_idLay.AbsoluteContentSize.Y + 5)
end))

local v_fetchedIDs = {}

local function v_filterIDs()
    local v_query = v_idSearch.Text:lower()
    for _, v_entry in ipairs(v_fetchedIDs) do
        if v_entry.Frame and v_entry.Frame.Parent then
            local v_full = (v_entry.Title .. " " .. v_entry.ID):lower()
            if v_query == "" or string.find(v_full, v_query, 1, true) then
                v_entry.Frame.Visible = true
            else
                v_entry.Frame.Visible = false
            end
        end
    end
end

v_pW7(v_idSearch:GetPropertyChangedSignal("Text"):Connect(function()
    v_filterIDs()
end))

local function v_loadIDs()
    for _, v_child in pairs(v_idScroll:GetChildren()) do
        if v_child:IsA("Frame") then
            v_child:Destroy()
        end
    end
    v_fetchedIDs = {}
    
    v_kL8(task.spawn(function()
        local v_ok, v_source = pcall(function()
            return game:HttpGet("https://raw.githubusercontent.com/leos00281-eng/Rbx/refs/heads/main/ID")
        end)
        
        if v_ok and v_source and v_fX9 then
            for v_line in v_source:gmatch("[^\r\n]+") do
                if not v_fX9 then break end
                if v_line ~= "" then
                    local v_cleanId = v_line:match("%d+")
                    if v_cleanId then
                        local v_frm = Instance.new("Frame")
                        v_frm.Size = UDim2.new(1, 0, 0, 32)
                        v_frm.BackgroundColor3 = Color3.fromRGB(20, 20, 24)
                        v_frm.Parent = v_idScroll
                        
                        Instance.new("UICorner", v_frm).CornerRadius = UDim.new(0, 6)
                        local v_stk = Instance.new("UIStroke", v_frm)
                        v_stk.Color = Color3.fromRGB(28, 28, 32)
                        v_stk.Thickness = 1
                        
                        local v_lbl = Instance.new("TextButton")
                        v_lbl.Size = UDim2.new(1, -64, 1, 0)
                        v_lbl.BackgroundTransparency = 1
                        v_lbl.Text = "  Loading Song... (" .. v_cleanId .. ")"
                        v_lbl.TextColor3 = Color3.fromRGB(0, 255, 200)
                        v_lbl.Font = Enum.Font.GothamMedium
                        v_lbl.TextSize = 11
                        v_lbl.TextXAlignment = Enum.TextXAlignment.Left
                        v_lbl.Parent = v_frm
                        
                        local v_copyBtn = Instance.new("TextButton")
                        v_copyBtn.Size = UDim2.new(0, 24, 0, 24)
                        v_copyBtn.Position = UDim2.new(1, -56, 0.5, -12)
                        v_copyBtn.BackgroundColor3 = Color3.fromRGB(30, 30, 36)
                        v_copyBtn.Text = "📋"
                        v_copyBtn.TextColor3 = Color3.fromRGB(0, 255, 200)
                        v_copyBtn.Font = Enum.Font.GothamBold
                        v_copyBtn.TextSize = 10
                        v_copyBtn.Parent = v_frm
                        Instance.new("UICorner", v_copyBtn).CornerRadius = UDim.new(0, 4)
                        local v_cStk = Instance.new("UIStroke", v_copyBtn)
                        v_cStk.Color = Color3.fromRGB(45, 45, 50)
                        v_cStk.Thickness = 1

                        local v_playBtn = Instance.new("TextButton")
                        v_playBtn.Size = UDim2.new(0, 24, 0, 24)
                        v_playBtn.Position = UDim2.new(1, -28, 0.5, -12)
                        v_playBtn.BackgroundColor3 = Color3.fromRGB(30, 30, 36)
                        v_playBtn.Text = "▶"
                        v_playBtn.TextColor3 = Color3.fromRGB(0, 255, 200)
                        v_playBtn.Font = Enum.Font.GothamBold
                        v_playBtn.TextSize = 10
                        v_playBtn.Parent = v_frm
                        Instance.new("UICorner", v_playBtn).CornerRadius = UDim.new(0, 4)
                        local v_pStk = Instance.new("UIStroke", v_playBtn)
                        v_pStk.Color = Color3.fromRGB(45, 45, 50)
                        v_pStk.Thickness = 1

                        local v_data = {Title = "Loading Song...", ID = v_cleanId, Frame = v_frm}
                        table.insert(v_fetchedIDs, v_data)
                        v_filterIDs()
                        
                        v_kL8(task.spawn(function()
                            local v_okInfo, v_info = pcall(function()
                                return v_3bX:GetProductInfo(tonumber(v_cleanId))
                            end)
                            if v_okInfo and v_info and v_info.Name and v_fX9 then
                                v_data.Title = v_info.Name
                                if v_lbl and v_lbl.Parent then
                                    v_lbl.Text = "  " .. v_info.Name .. " (" .. v_cleanId .. ")"
                                end
                            elseif v_fX9 then
                                v_data.Title = "Unknown Song"
                                if v_lbl and v_lbl.Parent then
                                    v_lbl.Text = "  ID: " .. v_cleanId
                                end
                            end
                            v_filterIDs()
                        end))
                        
                        v_pW7(v_copyBtn.MouseButton1Click:Connect(function()
                            pcall(function()
                                if setclipboard then
                                    setclipboard(v_cleanId)
                                    v_notify("Copied ID: " .. v_cleanId, Color3.fromRGB(0, 255, 200))
                                end
                            end)
                        end))
                        
                        v_pW7(v_playBtn.MouseButton1Click:Connect(function()
                            if v_previewSound.IsPlaying and v_playingID == v_cleanId then
                                v_previewSound:Stop()
                                v_playingID = nil
                                v_playBtn.Text = "▶"
                            else
                                v_previewSound.SoundId = "rbxassetid://" .. v_cleanId
                                v_previewSound:Play()
                                v_playingID = v_cleanId
                                v_playBtn.Text = "⏹"
                            end
                        end))
                    end
                end
            end
            v_filterIDs()
        end
    end))
end

v_mkBtn("Refresh IDs", v_pBIDs, function()
    v_loadIDs()
    v_notify("IDs Refreshed!", Color3.fromRGB(0, 255, 200))
end)

v_loadIDs()

v_mkSec("Changelog & Updates", v_pLogs)

local v_logScrollPage = Instance.new("ScrollingFrame")
v_logScrollPage.Size = UDim2.new(1, -8, 0, 180)
v_logScrollPage.BackgroundTransparency = 1
v_logScrollPage.CanvasSize = UDim2.new(0, 0, 0, 0)
v_logScrollPage.ScrollBarThickness = 3
v_logScrollPage.ScrollBarImageColor3 = Color3.fromRGB(60, 60, 65)
v_logScrollPage.Parent = v_pLogs

local v_logPageLay = Instance.new("UIListLayout")
v_logPageLay.Padding = UDim.new(0, 4)
v_logPageLay.SortOrder = Enum.SortOrder.LayoutOrder
v_logPageLay.Parent = v_logScrollPage

v_pW7(v_logPageLay:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
    v_logScrollPage.CanvasSize = UDim2.new(0, 0, 0, v_logPageLay.AbsoluteContentSize.Y + 5)
end))

local function v_loadLogs()
    for _, v_child in pairs(v_logScrollPage:GetChildren()) do
        if v_child:IsA("TextLabel") or v_child:IsA("Frame") then
            v_child:Destroy()
        end
    end
    
    v_kL8(task.spawn(function()
        local v_ok, v_source = pcall(function()
            return game:HttpGet("https://raw.githubusercontent.com/leos00281-eng/Rbx/refs/heads/main/Logs")
        end)
        
        if v_ok and v_source and v_fX9 then
            for v_line in v_source:gmatch("[^\r\n]+") do
                if not v_fX9 then break end
                if v_line ~= "" then
                    local v_lbl = Instance.new("TextLabel")
                    v_lbl.Size = UDim2.new(1, -10, 0, 0)
                    v_lbl.AutomaticSize = Enum.AutomaticSize.Y
                    v_lbl.BackgroundTransparency = 1
                    v_lbl.Text = "  " .. v_line
                    v_lbl.TextColor3 = Color3.fromRGB(0, 255, 200)
                    v_lbl.Font = Enum.Font.GothamMedium
                    v_lbl.TextSize = 11
                    v_lbl.TextWrapped = true
                    v_lbl.TextXAlignment = Enum.TextXAlignment.Left
                    v_lbl.Parent = v_logScrollPage
                end
            end
        elseif v_fX9 then
            local v_lbl = Instance.new("TextLabel")
            v_lbl.Size = UDim2.new(1, -10, 0, 0)
            v_lbl.AutomaticSize = Enum.AutomaticSize.Y
            v_lbl.BackgroundTransparency = 1
            v_lbl.Text = "  Failed to fetch update logs"
            v_lbl.TextColor3 = Color3.fromRGB(255, 80, 80)
            v_lbl.Font = Enum.Font.GothamMedium
            v_lbl.TextSize = 11
            v_lbl.TextWrapped = true
            v_lbl.TextXAlignment = Enum.TextXAlignment.Left
            v_lbl.Parent = v_logScrollPage
        end
    end))
end

v_mkBtn("Refresh Update Logs", v_pLogs, function()
    v_loadLogs()
    v_notify("Update Logs Refreshed!", Color3.fromRGB(0, 255, 200))
end)

v_loadLogs()

v_mkSec("Project Information", v_pAbot)

local v_aboutDesc = Instance.new("TextLabel")
v_aboutDesc.Size = UDim2.new(1, -8, 0, 110)
v_aboutDesc.BackgroundTransparency = 1
v_aboutDesc.Text = "VulnSec Hub represents an advanced, high-performance runtime modification environment engineered for optimal system delivery. This deployment is currently operating within an active, closed BETA developmental stage.\n\nOur system infrastructure remains subject to continuous refactoring, performance optimization updates, and structural engine enhancements designed to maintain peak stability."
v_aboutDesc.TextColor3 = Color3.fromRGB(180, 185, 195)
v_aboutDesc.Font = Enum.Font.GothamMedium
v_aboutDesc.TextSize = 11
v_aboutDesc.TextWrapped = true
v_aboutDesc.TextYAlignment = Enum.TextYAlignment.Top
v_aboutDesc.TextXAlignment = Enum.TextXAlignment.Left
v_aboutDesc.Parent = v_pAbot

v_mkSec("Official Developers Link", v_pAbot)

local v_fbBtn = Instance.new("ImageButton")
v_fbBtn.Size = UDim2.new(0,48,0,48)
v_fbBtn.Position = UDim2.new(0.5,-24,0,0)
v_fbBtn.BackgroundColor3 = Color3.fromRGB(20,20,24)
v_fbBtn.Parent = v_pAbot

pcall(function()
    if typeof(isfile) == "function" and typeof(writefile) == "function" and typeof(getcustomasset) == "function" then
        local v_fName = "Vulnsec_FB_Logo.png"
        if not isfile(v_fName) then
            local v_ok, v_dat = pcall(function()
                return game:HttpGet("https://raw.githubusercontent.com/leos00281-eng/Rbx/refs/heads/main/0gFm6_6mwp0.png")
            end)
            if v_ok and v_dat then
                writefile(v_fName, v_dat)
            end
        end
        v_fbBtn.Image = getcustomasset(v_fName)
    end
end)

local v_fbCrn = Instance.new("UICorner")
v_fbCrn.CornerRadius = UDim.new(1,0)
v_fbCrn.Parent = v_fbBtn

local v_fbStk = Instance.new("UIStroke")
v_fbStk.Color = Color3.fromRGB(28,28,32)
v_fbStk.Thickness = 1
v_fbStk.Parent = v_fbBtn

local v_fbLab = Instance.new("TextLabel")
v_fbLab.Size = UDim2.new(1,-8,0,24)
v_fbLab.Position = UDim2.new(0,0,0,54)
v_fbLab.BackgroundTransparency = 1
v_fbLab.Text = "Facebook"
v_fbLab.TextColor3 = Color3.fromRGB(0,180,255)
v_fbLab.Font = Enum.Font.Code
v_fbLab.TextSize = 10
v_fbLab.Parent = v_pAbot

v_pW7(v_fbBtn.MouseButton1Click:Connect(function()
    pcall(function()
        if setclipboard then
            setclipboard("https://www.facebook.com/vulnsec.legion")
        end
    end)
    pcall(function()
        v_1cF:OpenBrowserWindow("https://www.facebook.com/vulnsec.legion")
    end)
    local v_temp = v_fbLab.Text
    v_fbLab.Text = "Link Copied!"
    task.wait(1.5)
    v_fbLab.Text = v_temp
end))

local function v_makeDraggable(v_dragTarget, v_moveTarget)
    local v_dragging, v_inputObj, v_dragStart, v_startPos
    v_pW7(v_dragTarget.InputBegan:Connect(function(v_input)
        if v_input.UserInputType == Enum.UserInputType.MouseButton1 or v_input.UserInputType == Enum.UserInputType.Touch then
            v_dragging = true
            v_dragStart = v_input.Position
            v_startPos = v_moveTarget.Position
            v_pW7(v_input.Changed:Connect(function()
                if v_input.UserInputState == Enum.UserInputState.End then v_dragging = false end
            end))
        end
    end))
    v_pW7(v_dragTarget.InputChanged:Connect(function(v_input)
        if v_input.UserInputType == Enum.UserInputType.MouseMovement or v_input.UserInputType == Enum.UserInputType.Touch then v_inputObj = v_input end
    end))
    v_pW7(v_8sL.InputChanged:Connect(function(v_input)
        if v_input == v_inputObj and v_dragging then
            local v_delta = v_input.Position - v_dragStart
            v_4pK:Create(v_moveTarget, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                Position = UDim2.new(v_startPos.X.Scale, v_startPos.X.Offset + v_delta.X, v_startPos.Y.Scale, v_startPos.Y.Offset + v_delta.Y)
            }):Play()
        end
    end))
end

v_makeDraggable(v_pBar, v_qL3)
v_makeDraggable(v_bubBtn, v_bubBtn)

local function v_initAnimation()
    v_qL3.Size = UDim2.new(0, 0, 0, 0)
    v_qL3.Position = UDim2.new(0.5, 0, 0.5, -35)
    v_qL3.BackgroundTransparency = 1
    v_cWrap.Visible = false
    v_pBar.BackgroundTransparency = 1
    v_pTit.TextTransparency = 1
    v_btnClose.BackgroundTransparency = 1
    v_btnMin.BackgroundTransparency = 1
    v_nC2.Enabled = false
    
    task.wait(0.1)
    if not v_fX9 then return end
    v_nC2.Enabled = true
    v_nC2.Thickness = 5
    v_nC2.Color = Color3.fromRGB(0, 255, 200)
    
    local v_twA = v_4pK:Create(v_qL3, TweenInfo.new(0.4, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {
        BackgroundTransparency = 0.4,
        Size = UDim2.new(0, 480, 0, 3),
        Position = UDim2.new(0.5, -240, 0.5, -200)
    })
    v_twA:Play()
    v_twA.Completed:Wait()
    if not v_fX9 then return end
    
    local v_twB = v_4pK:Create(v_qL3, TweenInfo.new(0.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
        Size = UDim2.new(0, 480, 0, 330),
        Position = UDim2.new(0.5, -240, 0.5, -200),
        BackgroundTransparency = 0
    })
    local v_twC = v_4pK:Create(v_nC2, TweenInfo.new(0.6, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        Thickness = 1.5,
        Color = Color3.fromRGB(0, 180, 255)
    })
    
    v_twB:Play()
    v_twC:Play()
    
    v_4pK:Create(v_pBar, TweenInfo.new(0.3), {BackgroundTransparency = 0}):Play()
    v_4pK:Create(v_pTit, TweenInfo.new(0.3), {TextTransparency = 0}):Play()
    v_4pK:Create(v_btnClose, TweenInfo.new(0.3), {BackgroundTransparency = 0}):Play()
    v_4pK:Create(v_btnMin, TweenInfo.new(0.3), {BackgroundTransparency = 0}):Play()
    
    v_twB.Completed:Wait()
    if v_fX9 then
        v_cWrap.Visible = true
        v_notify("VulnSec Hub Loaded Successfully", Color3.fromRGB(0, 255, 200))
    end
end

v_initAnimation()
