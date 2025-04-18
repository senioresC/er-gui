local function createImprovedGUI()
    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "EffectSwitcher"
    screenGui.Parent = StarterGui

    -- Main Frame
    local frame = Instance.new("Frame")
    frame.Position = UDim2.new(0.5, -120, 0.5, -70)
    frame.Size = UDim2.new(0, 240, 0, 140)
    frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30) -- Dark theme
    frame.BorderSizePixel = 0
    frame.Parent = screenGui

    local uiCornerFrame = Instance.new("UICorner")
    uiCornerFrame.CornerRadius = UDim.new(0, 15)
    uiCornerFrame.Parent = frame

    -- Title
    local title = Instance.new("TextLabel")
    title.Position = UDim2.new(0, 10, 0, 5)
    title.Size = UDim2.new(0, 220, 0, 30)
    title.Text = "Choose Effect Mode"
    title.TextColor3 = Color3.fromRGB(255, 255, 255)
    title.BackgroundTransparency = 1
    title.Font = Enum.Font.GothamBold
    title.TextSize = 18
    title.Parent = frame

    -- Solid Button
    local solidButton = Instance.new("TextButton")
    solidButton.Position = UDim2.new(0, 10, 0, 40)
    solidButton.Size = UDim2.new(0, 220, 0, 40)
    solidButton.Text = "Solid Color Effect"
    solidButton.BackgroundColor3 = Color3.fromRGB(70, 130, 180) -- Steel blue
    solidButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    solidButton.Font = Enum.Font.GothamBold
    solidButton.TextSize = 16
    solidButton.Parent = frame

    local uiCornerSolid = Instance.new("UICorner")
    uiCornerSolid.CornerRadius = UDim.new(0, 10)
    uiCornerSolid.Parent = solidButton

    solidButton.MouseButton1Click:Connect(function()
        _G.EffectMode = "Solid"
        print("Solid Effect Activated")
    end)

    -- Rainbow Button
    local rainbowButton = Instance.new("TextButton")
    rainbowButton.Position = UDim2.new(0, 10, 0, 90)
    rainbowButton.Size = UDim2.new(0, 220, 0, 40)
    rainbowButton.Text = "Rainbow Effect"
    rainbowButton.BackgroundColor3 = Color3.fromRGB(255, 105, 180) -- Hot pink
    rainbowButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    rainbowButton.Font = Enum.Font.GothamBold
    rainbowButton.TextSize = 16
    rainbowButton.Parent = frame

    local uiCornerRainbow = Instance.new("UICorner")
    uiCornerRainbow.CornerRadius = UDim.new(0, 10)
    uiCornerRainbow.Parent = rainbowButton

    rainbowButton.MouseButton1Click:Connect(function()
        _G.EffectMode = "Rainbow"
        print("Rainbow Effect Activated")
    end)
end

createImprovedGUI()
