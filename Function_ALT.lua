coroutine.wrap(function()
    syn.queue_on_teleport([[
        local HTTP = game:GetService"HttpService"

        local function getAmountOfBadges(userId)
            local badges = HTTP:GetAsync("https://badges.roblox.com/v1/users/" .. userId .. "/badges?limit=100&sortOrder=Asc")
            local amountOfBadges = #(badges.data)
            return amountOfBadges
        end
        repeat task.wait() until game:IsLoaded()
            if game.PlaceId == 5166670285 then
            repeat task.wait() until workspace:FindFirstChild("100")

            for _,v in next, workspace:GetChildren() do
                if tonumber(v.Name) and tonumber(v.Name) < 200 then
                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Platform, 0)
                    task.wait()
                end
            end
            repeat task.wait() until getAmountOfBadges(game.Players.LocalPlayer.UserId) > 150 
            wait(1)
            game.Players.LocalPlayer:Kick("done")
        end]])
end)()
