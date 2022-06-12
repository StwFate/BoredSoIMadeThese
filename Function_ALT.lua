coroutine.wrap(function()
    syn.queue_on_teleport([[
        repeat task.wait() until game:IsLoaded()
            if game.PlaceId == 5166670285 then
            repeat task.wait() until workspace:FindFirstChild("100")

            for _,v in next, workspace:GetChildren() do
                if tonumber(v.Name) then
                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Platform, 0)
                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Platform, 1)  
                    wait()
                end
            end
            wait(8)
            game.Players.LocalPlayer:Kick("done")
        end]])
end)()
