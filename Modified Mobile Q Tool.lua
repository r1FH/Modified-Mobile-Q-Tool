-- modified the entire script so its more readable for those who wants to put it in their script or skid it

getgenv().fiji = "Q"

local tool = Instance.new("Tool")
tool.RequiresHandle = false
tool.Name = "made by fiji.png on discord"
tool.Activated:Connect(function()
    game:GetService("VirtualInputManager"):SendKeyEvent(true, getgenv().fiji, false, game)
end)
tool.Parent = game.Players.LocalPlayer.Backpack

game.Players.LocalPlayer.CharacterAdded:Connect(function()
    tool.Parent = game.Players.LocalPlayer.Backpack
end)

game.Players.LocalPlayer.Chatted:Connect(function(message)
    local prefix = "/e key "
    local newFiji = message:sub(#prefix + 1)
    if message:sub(1, #prefix) == prefix then
        getgenv().fiji = newFiji
        warn("Updated key to:", newFiji)
    end
end)

