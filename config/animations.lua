-- =========================================================
-- ANIMATIONS
-- =========================================================

-- Quick animation curve
hl.curve("quick", {
    type = "bezier",
    points = {
        {0.15, 0},
        {0.10, 1},
    },
})

-- Ease-out quint curve
hl.curve("easeOutQuint", {
    type = "bezier",
    points = {
        {0.23, 1},
        {0.32, 1},
    },
})

-- Almost linear curve
hl.curve("almostLinear", {
    type = "bezier",
    points = {
        {0.50, 0.50},
        {0.75, 1},
    },
})

-- Global animation
hl.animation({
    leaf = "global",
    enabled = true,
    speed = 8,
    bezier = "default",
})

-- Window movement
hl.animation({
    leaf = "windows",
    enabled = true,
    speed = 5,
    bezier = "easeOutQuint",
})

-- Window opening
hl.animation({
    leaf = "windowsIn",
    enabled = true,
    speed = 5,
    bezier = "easeOutQuint",
    style = "popin 70%",
})

-- Window closing
hl.animation({
    leaf = "windowsOut",
    enabled = true,
    speed = 5,
    bezier = "quick",
    style = "popin 70%",
})

-- Fade
hl.animation({
    leaf = "fade",
    enabled = true,
    speed = 5,
    bezier = "almostLinear",
})

-- Workspace transition
hl.animation({
    leaf = "workspaces",
    enabled = true,
    speed = 5,
    bezier = "almostLinear",
    style = "fade",
})
