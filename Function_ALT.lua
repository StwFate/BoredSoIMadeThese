coroutine.wrap(function()
    syn.queue_on_teleport([[
    local badges = 100 
    if not game:IsLoaded() then game.Loaded:Wait() end
    if game.PlaceId == 5166670285 then else wait(9e9) end
    repeat task.wait() until workspace:FindFirstChild("100")

    for _,v in next, workspace:GetChildren() do
        if _ < badges and tonumber(v) then
            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v, 0)
        end
    end]])
end)()
