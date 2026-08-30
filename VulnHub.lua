local queueteleport = (syn and syn.queue_on_teleport) or queue_on_teleport or (fluxus and fluxus.queue_on_teleport)
if queueteleport then
    queueteleport("loadstring(game:HttpGet('https://raw.githubusercontent.com/leos00281-eng/Rbx/refs/heads/main/loader.lua'))()")
end
