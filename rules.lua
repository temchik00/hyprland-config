
--------------------------------
---- WINDOWS AND WORKSPACES ----
--------------------------------

-- See https://wiki.hypr.land/Configuring/Basics/Window-Rules/
-- and https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/
hl.layer_rule({
    match = { namespace = "waybar" },
    blur = true,
    xray = true,
    ignore_alpha = 0.01
})

hl.window_rule({
    -- Fix some dragging issues with XWayland
    name  = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },

    no_focus = true,
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

hl.window_rule({
    name  = "steam-float-windows",
    match = {
        class      = "steam",
        initial_title      = "negative:^(Steam)$"
    },
    no_anim = true,
    float   = true,
    size = {300, 700},
    move = {"monitor_w - window_w - 60", 60},
})

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
