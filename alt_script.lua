assert(syn.queue_on_teleport, "Synapse Required Dumbass")
-- below is if u can't use mouse or keyboard :skull:
--[[if game.PlaceId ~= 4763869942 then
local a,b,c = nil,nil, 0
    for i, v in next, game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/4763869942/servers/Public?sortOrder=Asc&limit=100")).data do
        if type(v) == "table" then
            a = v.playing
            if a > c then
                c = a; b = v.id
            end
        end
    end
wait(0.5)
game:GetService("TeleportService"):TeleportToPlaceInstance(4763869942, b)]]
if not game:IsLoaded() then game.Loaded:Wait() end
wait(4)
function friends()
    local m = 0
    for _,v in next, game.Players:GetChildren() do
        if game.Players.LocalPlayer:IsFriendsWith(v.UserId) then
            m = m + 1
        end
    end
    return m
end
coroutine.wrap(function()
    local m = 0
    for _,v in next, game.Players:GetChildren() do
        if m < 75 then -- rate limiter
            game.Players.LocalPlayer:RequestFriendship(v)
            m = m + 1
            wait() -- rate limiter
        end
    end
end)()
repeat wait(2) until friends() >= 10
loadstring(game:HttpGet("https://raw.githubusercontent.com/StwFate/BoredSoIMadeThese/main/Function_ALT.lua"))()
wait(1)
game:GetService("TeleportService"):Teleport(5166670285)
