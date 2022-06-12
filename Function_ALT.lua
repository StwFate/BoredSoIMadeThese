coroutine.wrap(function()
    syn.queue_on_teleport([[
        repeat task.wait() until game:IsLoaded()
            if game.PlaceId == 5166670285 then
            repeat task.wait() until workspace:FindFirstChild("100")

            for _,v in next, workspace:GetChildren() do
                if tonumber(v.Name) and tonumber(v.Name) < 200 then
                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Platform, 0)
                    task.wait()
                end
            end
        end]])
end)()
