local mods = require("modules.keybinds.mods")

-- Move focus with mainMod + arrow keys
hl.bind(mods.focusMod .. " + left",  hl.dsp.focus({ direction = "left" }))
hl.bind(mods.focusMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mods.focusMod .. " + up",    hl.dsp.focus({ direction = "up" }))
hl.bind(mods.focusMod .. " + down",  hl.dsp.focus({ direction = "down" }))

hl.bind(mods.focusMod .. " + h", hl.dsp.focus({ direction = "left" }))
hl.bind(mods.focusMod .. " + l", hl.dsp.focus({ direction = "right" }))
hl.bind(mods.focusMod .. " + k", hl.dsp.focus({ direction = "up" }))
hl.bind(mods.focusMod .. " + j", hl.dsp.focus({ direction = "down" }))
