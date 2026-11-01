local mods = require("modules.keybinds.mods")

-- Regular workspaces
for i = 1, 10 do
    local key = i % 10
    hl.bind(mods.mainMod .. " + " .. key,             hl.dsp.focus({ workspace = i}))
    hl.bind(mods.winMoveMod .. " + " ..  key,     hl.dsp.window.move({ workspace = i }))
end

-- Gaming workspace
hl.bind(mods.mainMod .. " + G", hl.dsp.focus({ workspace = "name:game" }))
hl.bind(mods.winMoveMod .. " + G", hl.dsp.window.move({ workspace = "name:game" }))
hl.bind(mods.mainMod .. " + S", hl.dsp.focus({ workspace = "special:hide" }))
hl.bind(mods.winMoveMod .. " + S", hl.dsp.window.move({ workspace = "special:hide", follow = false }))
