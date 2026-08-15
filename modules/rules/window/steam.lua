hl.window_rule({
    name  = "steam-float-windows",
    match = {
        class      = "steam",
        initial_title      = "negative:^(Steam)$",
        content = "negative:^(game)$"
    },
    no_anim = true,
    float   = true,
    size = {300, 700},
    move = {"monitor_w - window_w - 60", 60},
    workspace = "3 silent"
})
