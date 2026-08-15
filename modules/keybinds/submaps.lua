require("modules.programs")
local maps = {}
maps.MOVE = "window-manipulation"
maps.GOTO = "go-to"
maps.RESET = "reset"

hl.define_submap(maps.MOVE, function ()
    -- Escape map
    hl.bind("escape", hl.dsp.submap(maps.RESET))

    -- Local mods
    local moveMod = "SHIFT"
    local sizeMod = "CTRL"

    -- Move focus
    hl.bind("h", hl.dsp.focus({ direction = "left" }))
    hl.bind("l", hl.dsp.focus({ direction = "right" }))
    hl.bind("k", hl.dsp.focus({ direction = "up" }))
    hl.bind("j", hl.dsp.focus({ direction = "down" }))

    -- Swap window
    hl.bind(moveMod .. " + h", hl.dsp.window.swap({direction="left"}))
    hl.bind(moveMod .. " + l", hl.dsp.window.swap({direction="right"}))
    hl.bind(moveMod .. " + k", hl.dsp.window.swap({direction="up"}))
    hl.bind(moveMod .. " + j", hl.dsp.window.swap({direction="down"}))

    -- Resize window
    hl.bind(sizeMod .. " + h", hl.dsp.window.resize({x=-10, y=0, relative=true}), {repeating=true})
    hl.bind(sizeMod .. " + l", hl.dsp.window.resize({x=10, y=0, relative=true}), {repeating=true})
    hl.bind(sizeMod .. " + k", hl.dsp.window.resize({x=0, y=-10, relative=true}), {repeating=true})
    hl.bind(sizeMod .. " + j", hl.dsp.window.resize({x=0, y=10, relative=true}), {repeating=true})
end)

hl.define_submap(maps.GOTO, function ()
    -- Escape map
    hl.bind("ESCAPE", hl.dsp.submap(maps.RESET))

    -- Go to browser workspace
    hl.bind("b", function ()
        hl.dispatch(hl.dsp.focus({ workspace = 2 }))
        hl.dispatch(hl.dsp.submap(maps.RESET))
    end)

    -- Go to steam workspace
    hl.bind("s", function ()
        hl.dispatch(hl.dsp.focus({ workspace = 3 }))
        hl.dispatch(hl.dsp.submap(maps.RESET))
    end)

    -- Go to telegram/messenger workspace
    hl.bind("m", function ()
        hl.dispatch(hl.dsp.focus({ workspace = 5 }))
        hl.dispatch(hl.dsp.submap(maps.RESET))
    end)

    -- Go to launch menu
    hl.bind("r", function ()
        hl.dispatch(hl.dsp.exec_cmd(Menu))
        hl.dispatch(hl.dsp.submap(maps.RESET))
    end)

    -- Go to gaming workspace
    hl.bind("g", function ()
        hl.dispatch(hl.dsp.focus({ workspace = "name:game" }))
        hl.dispatch(hl.dsp.submap(maps.RESET))
    end)

end)

return maps
