-- =========================================================
-- WINDOW RULES
-- =========================================================

-- XWayland drag fix
hl.window_rule({
    name = "fix-xwayland-drags",

    match = {
        class = "^$",
        title = "^$",
        xwayland = true,
        float = true,
        fullscreen = false,
        pin = false,
    },

    no_focus = true,
})

-- =========================================================
-- FUNCTIONAL FLOAT RULES
-- =========================================================
-- Dialogs and utility windows that should never be tiled.
-- Classes verified via `hyprctl clients` on this machine.
-- =========================================================

-- Audio control panel -> float, centered
hl.window_rule({
    name = "float-pavucontrol",

    match = {
        class = "^(org.pulseaudio.pavucontrol)$",
    },

    float = true,
    center = true,
    size = { 700, 500 },
})

-- Bluetooth manager -> float, centered
hl.window_rule({
    name = "float-blueman",

    match = {
        class = "^(blueman-manager)$",
    },

    float = true,
    center = true,
    size = { 500, 400 },
})

-- Picture-in-Picture video -> float, pin, bottom-right corner
hl.window_rule({
    name = "float-pip",

    match = {
        title = "^(Picture-in-Picture)$",
    },

    float = true,
    pin = true,
    size = { 400, 225 },
    move = { "100%-420", "100%-245" },
})

-- Scratchpad terminal -> float, centered, dedicated special workspace
hl.window_rule({
    name = "scratchpad-terminal",

    match = {
        class = "^(kitty-scratchpad)$",
    },

    float = true,
    center = true,
    size = { 900, 550 },
    workspace = "special:scratchpad",
})
