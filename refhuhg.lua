while wait() do
    wait(1)
    for i = 1, 5 do -- change 60 to 5 to only spam for 5 seconds
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Want to sell your cash??", "All")
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Want to quit?", "All")
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Need some extra jailbreak cash?", "All")
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Go to dsc.gg/jailbreaker it will redirect you to our DISCORDIA server", "All")
        wait(1)
    end
    local teleportOptions = game:GetService("TeleportService"):GetTeleportOptionsAsync(game.PlaceId)
    local randomServer = teleportOptions[math.random(1, #teleportOptions)]
    game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, randomServer.id)
    while game:GetService("Players").LocalPlayer.Character.Humanoid.Health > 0 do
        wait()
    end
    loadstring(game:HttpGet("https://pastebin.com/raw/0emZTnuW", true))()
end
