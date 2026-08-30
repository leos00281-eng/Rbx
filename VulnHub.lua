local _0x7a = syn and syn.queue_on_teleport or queue_on_teleport or flux and flux.queue_on_teleport
local _0x8b = "https://raw.githubusercontent.com/leos00281-eng/Rbx/refs/heads/main/loader.lua"

if not _G._v_init then
    _G._v_init = true
    if _0x7a then
        pcall(function()
            _0x7a([[
                if not _G._v_init then
                    _G._v_init = true
                    task.spawn(function()
                        if not game:IsLoaded() then
                            game.Loaded:Wait()
                        end
                        task.wait(3)
                        pcall(function()
                            loadstring(game:HttpGet("https://raw.githubusercontent.com/leos00281-eng/Rbx/refs/heads/main/loader.lua"))()
                        end)
                    end)
                end
            ]])
        end)
    end
end

task.spawn(function()
    if not game:IsLoaded() then
        game.Loaded:Wait()
    end
    pcall(function()
        loadstring(game:HttpGet(_0x8b))()
    end)
end)
