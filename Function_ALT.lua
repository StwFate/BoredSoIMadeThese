coroutine.wrap(function()
    syn.queue_on_teleport([[
        repeat task.wait() until game:IsLoaded()
            if game.PlaceId == 5166670285 then
            wait(2) -- wait for the shit to load lmao
            for _,v in next, workspace:GetChildren() do
                if tonumber(v.Name) and tonumber(v.Name) < 500 then
                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Platform, 0)
                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Platform, 1)  
                    wait()
                end
            end
            wait(5) -- registering the shit happen
            game.Players.LocalPlayer:Kick("done")
        end]])
end)()
