local mods = require("modules.keybinds.mods")
-- Misc
hl.bind(mods.mainMod .. " + Q", hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'"))
hl.bind(mods.mainMod .. " + V", hl.dsp.window.fullscreen({ action = "toggle" }))
hl.bind(mods.mainMod .. " + P", hl.dsp.window.pseudo())
hl.bind("Print", hl.dsp.exec_cmd('grim -g "$(slurp -d)" - | wl-copy'))
hl.bind("SHIFT + SUPER + R", hl.dsp.exec_cmd('grim -g "$(slurp -d)" - | wl-copy'))
