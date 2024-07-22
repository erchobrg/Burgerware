local Burgerware = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Title = Instance.new("TextLabel")
local ESP = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local Title_2 = Instance.new("TextLabel")
local Desc = Instance.new("TextLabel")
local ESP_2 = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local Camlock = Instance.new("Frame")
local UICorner_4 = Instance.new("UICorner")
local Title_3 = Instance.new("TextLabel")
local Desc_2 = Instance.new("TextLabel")
local CAMLOCK = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")

-- Dragging variables
local UserInputService = game:GetService("UserInputService")
local dragging
local dragInput
local dragStart
local startPos

Burgerware.Name = "Burgerware"
Burgerware.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Burgerware.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = Burgerware
Frame.BackgroundColor3 = Color3.new(0, 0, 0)
Frame.BackgroundTransparency = 0.5
Frame.BorderColor3 = Color3.new(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.372807026, 0, 0.359033376, 0)
Frame.Size = UDim2.new(0, 439, 0, 202)

UICorner.Parent = Frame
UICorner.CornerRadius = UDim.new(0, 15)

Title.Name = "Title"
Title.Parent = Frame
Title.BackgroundColor3 = Color3.new(1, 1, 1)
Title.BackgroundTransparency = 1
Title.BorderColor3 = Color3.new(0, 0, 0)
Title.BorderSizePixel = 0
Title.Size = UDim2.new(0, 439, 0, 43)
Title.Font = Enum.Font.SourceSans
Title.Text = "Burgerware"
Title.TextColor3 = Color3.new(1, 1, 1)
Title.TextScaled = true
Title.TextSize = 14
Title.TextWrapped = true

-- Function to enable dragging
local function enableDragging(frame)
    local dragToggle, dragStart, startPos
    local dragInput

    local function update(input)
        local delta = input.Position - dragStart
        frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end

    frame.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = frame.Position

            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)

    frame.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)
end

enableDragging(Frame)

ESP.Name = "ESP"
ESP.Parent = Frame
ESP.BackgroundColor3 = Color3.new(0, 0, 0)
ESP.BackgroundTransparency = 0.4000000059604645
ESP.BorderColor3 = Color3.new(0, 0, 0)
ESP.BorderSizePixel = 0
ESP.Position = UDim2.new(0.533574343, 0, 0.283488959, 0)
ESP.Size = UDim2.new(0, 167, 0, 130)

UICorner_2.Parent = ESP
UICorner_2.CornerRadius = UDim.new(0, 15)

Title_2.Name = "Title"
Title_2.Parent = ESP
Title_2.BackgroundColor3 = Color3.new(1, 1, 1)
Title_2.BackgroundTransparency = 1
Title_2.BorderColor3 = Color3.new(0, 0, 0)
Title_2.BorderSizePixel = 0
Title_2.Position = UDim2.new(-0.0026307248, 0, 0, 0)
Title_2.Size = UDim2.new(0, 62, 0, 33)
Title_2.Font = Enum.Font.SourceSansBold
Title_2.Text = "ESP"
Title_2.TextColor3 = Color3.new(1, 1, 1)
Title_2.TextScaled = true
Title_2.TextSize = 14
Title_2.TextWrapped = true

Desc.Name = "Desc"
Desc.Parent = ESP
Desc.BackgroundColor3 = Color3.new(1, 1, 1)
Desc.BackgroundTransparency = 1
Desc.BorderColor3 = Color3.new(0, 0, 0)
Desc.BorderSizePixel = 0
Desc.Position = UDim2.new(0.0584263615, 0, 0.197596148, 0)
Desc.Size = UDim2.new(0, 145, 0, 57)
Desc.Font = Enum.Font.SourceSans
Desc.Text = "See players thru walls, Rejoin to disable."
Desc.TextColor3 = Color3.new(1, 1, 1)
Desc.TextScaled = true
Desc.TextSize = 14
Desc.TextWrapped = true
Desc.TextXAlignment = Enum.TextXAlignment.Left

ESP_2.Name = "ESP"
ESP_2.Parent = ESP
ESP_2.BackgroundColor3 = Color3.new(0, 0, 0)
ESP_2.BorderColor3 = Color3.new(0, 0, 0)
ESP_2.BorderSizePixel = 0
ESP_2.Position = UDim2.new(0.123544656, 0, 0.643989921, 0)
ESP_2.Size = UDim2.new(0, 125, 0, 36)
ESP_2.Font = Enum.Font.SourceSans
ESP_2.Text = "Enable"
ESP_2.TextColor3 = Color3.new(1, 1, 1)
ESP_2.TextScaled = true
ESP_2.TextSize = 14
ESP_2.TextWrapped = true
ESP_2.MouseButton1Down:connect(function()
	loadstring(game:HttpGet(('https://raw.githubusercontent.com/erchobrg/Burgerware/main/ESP.lua'),true))()
end)

UICorner_3.Parent = ESP_2
UICorner_3.CornerRadius = UDim.new(0, 15)

Camlock.Name = "Camlock"
Camlock.Parent = Frame
Camlock.BackgroundColor3 = Color3.new(0, 0, 0)
Camlock.BackgroundTransparency = 0.4000000059604645
Camlock.BorderColor3 = Color3.new(0, 0, 0)
Camlock.BorderSizePixel = 0
Camlock.Position = UDim2.new(0.10850466, 0, 0.283488959, 0)
Camlock.Size = UDim2.new(0, 167, 0, 130)

UICorner_4.Parent = Camlock
UICorner_4.CornerRadius = UDim.new(0, 15)

Title_3.Name = "Title"
Title_3.Parent = Camlock
Title_3.BackgroundColor3 = Color3.new(1, 1, 1)
Title_3.BackgroundTransparency = 1
Title_3.BorderColor3 = Color3.new(0, 0, 0)
Title_3.BorderSizePixel = 0
Title_3.Position = UDim2.new(-0.260115594, 0, 0, 0)
Title_3.Size = UDim2.new(0, 206, 0, 33)
Title_3.Font = Enum.Font.SourceSansBold
Title_3.Text = "Camlock"
Title_3.TextColor3 = Color3.new(1, 1, 1)
Title_3.TextScaled = true
Title_3.TextSize = 14
Title_3.TextWrapped = true

Desc_2.Name = "Desc"
Desc_2.Parent = Camlock
Desc_2.BackgroundColor3 = Color3.new(1, 1, 1)
Desc_2.BackgroundTransparency = 1
Desc_2.BorderColor3 = Color3.new(0, 0, 0)
Desc_2.BorderSizePixel = 0
Desc_2.Position = UDim2.new(0.0404624268, 0, 0.143749997, 0)
Desc_2.Size = UDim2.new(0, 154, 0, 72)
Desc_2.Font = Enum.Font.SourceSans
Desc_2.Text = "Rejoin to Disable, Keybind is Z"
Desc_2.TextColor3 = Color3.new(1, 1, 1)
Desc_2.TextScaled = true
Desc_2.TextSize = 14
Desc_2.TextWrapped = true
Desc_2.TextXAlignment = Enum.TextXAlignment.Left

CAMLOCK.Name = "CAMLOCK"
CAMLOCK.Parent = Camlock
CAMLOCK.BackgroundColor3 = Color3.new(0, 0, 0)
CAMLOCK.BorderColor3 = Color3.new(0, 0, 0)
CAMLOCK.BorderSizePixel = 0
CAMLOCK.Position = UDim2.new(0.123544656, 0, 0.643989921, 0)
CAMLOCK.Size = UDim2.new(0, 125, 0, 36)
CAMLOCK.Font = Enum.Font.SourceSans
CAMLOCK.Text = "Enable"
CAMLOCK.TextColor3 = Color3.new(1, 1, 1)
CAMLOCK.TextScaled = true
CAMLOCK.TextSize = 14
CAMLOCK.TextWrapped = true
CAMLOCK.MouseButton1Down:connect(function()
	loadstring(game:HttpGet(('https://raw.githubusercontent.com/erchobrg/Burgerware/main/CAMLOCK.lua'),true))()
end)

UICorner_5.Parent = CAMLOCK
UICorner_5.CornerRadius = UDim.new(0, 15)

-- Function to enable dragging for any given frame
local function enableDragging(frame)
    local dragToggle, dragStart, startPos
    local dragInput

    frame.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragStart = input.Position
            startPos = frame.Position

            dragToggle = true
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragToggle = false
                end
            end)
        end
    end)

    frame.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)

    UserInputService.InputChanged:Connect(function(input)
        if dragToggle and input == dragInput then
            local delta = input.Position - dragStart
            frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
        end
    end)
end

enableDragging(Frame)
