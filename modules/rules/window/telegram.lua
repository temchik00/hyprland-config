hl.window_rule({
    name  = "move-telegram",
    match = {
        class      = "org.telegram.desktop",
    },
    workspace = 5,
})

hl.window_rule({
    name  = "fix-telegram-media-transitions",
    match = {
        class      = "org.telegram.desktop",
    },
    no_anim = true,
})

hl.window_rule({
    name  = "fix-telegram-media",
    match = {
        class      = "org.telegram.desktop",
        initial_title      = "Media viewer"
    },
    no_anim = true,
    float   = true,
})

