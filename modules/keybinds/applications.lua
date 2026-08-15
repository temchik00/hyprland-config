require("modules.programs")

local mods = require("modules.keybinds.mods")

hl.bind(mods.mainMod .. " + T", hl.dsp.exec_cmd(Terminal))
hl.bind(mods.mainMod .. " + E", hl.dsp.exec_cmd(FileManager))
hl.bind(mods.mainMod .. " + R", hl.dsp.exec_cmd(Menu))
hl.bind(mods.mainMod .. " + B", hl.dsp.exec_cmd(Browser))
hl.bind(mods.mainMod .. " + X", hl.dsp.window.close())
