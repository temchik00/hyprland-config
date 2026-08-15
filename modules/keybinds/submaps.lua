local maps = {}
maps.MOVE = "move"
maps.RESET = "reset"

hl.define_submap(maps.MOVE, function ()
    hl.bind("h", hl.dsp.window.swap({direction="left"}))
    hl.bind("l", hl.dsp.window.swap({direction="right"}))
    hl.bind("k", hl.dsp.window.swap({direction="up"}))
    hl.bind("j", hl.dsp.window.swap({direction="down"}))

    hl.bind("escape", hl.dsp.submap(maps.RESET))
end)

return maps
-- hl.bind(winMoveMod .. " + h", hl.dsp.window.swap({direction="left"}))
-- hl.bind(winMoveMod .. " + l", hl.dsp.window.swap({direction="right"}))
-- hl.bind(winMoveMod .. " + k", hl.dsp.window.swap({direction="up"}))
-- hl.bind(winMoveMod .. " + j", hl.dsp.window.swap({direction="down"}))

-- -- Resize windows
-- hl.bind(winResMod .. " + h", hl.dsp.window.resize({x=-10, y=0, relative=true}), {repeating=true})
-- hl.bind(winResMod .. " + l", hl.dsp.window.resize({x=10, y=0, relative=true}), {repeating=true})
-- hl.bind(winResMod .. " + k", hl.dsp.window.resize({x=0, y=-10, relative=true}), {repeating=true})
-- hl.bind(winResMod .. " + j", hl.dsp.window.resize({x=0, y=10, relative=true}), {repeating=true})
