local _0x3c = syn and syn.queue_on_teleport or queue_on_teleport or flux and flux.queue_on_teleport
local _0x4d = "https://raw.githubusercontent.com/leos00281-eng/Rbx/refs/heads/main/loader.lua"

if _0x3c then
    _0x3c([[
        task.spawn(function()
            if not game:IsLoaded() then
                game.Loaded:Wait()
            end
            task.wait(3)
            pcall(function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/leos00281-eng/Rbx/refs/heads/main/loader.lua"))()
            end)
        end)
    ]])
end

task.spawn(function()
    if not game:IsLoaded() then
        game.Loaded:Wait()
    end
    pcall(function()
        loadstring(game:HttpGet(_0x4d))()
    end)
end)
