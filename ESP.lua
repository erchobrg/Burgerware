local CoreGui = game:GetService("StarterGui")

local function createBoxOutline(player)
    local character = player.Character
    if character then
        local rootPart = character:FindFirstChild("HumanoidRootPart")
        local head = character:FindFirstChild("Head")
        if rootPart and head then
            local boxOutline = Instance.new("BoxHandleAdornment")
            boxOutline.Size = rootPart.Size
            boxOutline.Adornee = rootPart
            boxOutline.AlwaysOnTop = true
            boxOutline.Color3 = Color3.new(0, 0, 0)
            boxOutline.ZIndex = 5
            boxOutline.Transparency = 0.5
            boxOutline.Parent = rootPart
        end
    end
end

local function removeBoxOutline(player)
    local character = player.Character
    if character then
        for _, descendant in ipairs(character:GetDescendants()) do
            if descendant:IsA("BoxHandleAdornment") then
                descendant:Destroy()
            end
        end
    end
end

local function createBoxOutlinesForOtherPlayers()
    local localPlayer = game.Players.LocalPlayer
    for _, player in ipairs(game.Players:GetPlayers()) do
        if player ~= localPlayer then
            createBoxOutline(player)
        end
    end
end

local function updateBoxOutlines()
    local localPlayer = game.Players.LocalPlayer
    for _, player in ipairs(game.Players:GetPlayers()) do
        if player ~= localPlayer then
            removeBoxOutline(player)
            createBoxOutline(player)
        end
    end
end

game.Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function(character)
        wait(1)
        createBoxOutline(player)
    end)
end)

game.Players.PlayerRemoving:Connect(function(player)
    removeBoxOutline(player)
end)

createBoxOutlinesForOtherPlayers()

while true do
    updateBoxOutlines()
    wait(1)
end
