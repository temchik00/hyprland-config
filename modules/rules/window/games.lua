hl.window_rule({
    name = "allow-game-tearing",
    match = {
        content = "game",
    },
    immediate = true,
    fullscreen = true,
    no_anim = true,
    no_blur = true,
    stay_focused = true,
    confine_pointer = true,
    workspace = "name:game",
})

hl.window_rule({
    name = "allow-game-tearing_steamapp-fallback",
    match = {
        class = "steam_app_.*",
        initial_title = "negative:^(Launcher|Alpha)$"
    },
    content = "game",
})
