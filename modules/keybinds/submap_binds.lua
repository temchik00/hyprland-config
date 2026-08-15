local mods = require("modules.keybinds.mods")
local maps = require("modules.keybinds.submaps")
hl.bind(mods.submapMod .. " + M", hl.dsp.submap(maps.MOVE))
hl.bind(mods.submapMod .. " + R", hl.dsp.submap(maps.GOTO))
