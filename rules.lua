
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
