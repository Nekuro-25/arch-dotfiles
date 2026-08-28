-- =========================================================
-- WINDOW KEYBINDS
-- =========================================================

local mainMod = "SUPER"

-- SUPER + Q → Close window
hl.bind(mainMod .. " + Q", hl.dsp.window.close(), {
    description = "Close active window",
})

-- SUPER + V → Toggle floating
hl.bind(mainMod .. " + V", hl.dsp.window.float({
    action = "toggle",
}), {
    description = "Toggle floating",
})

-- SUPER + F → Toggle fullscreen
hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen(), {
    description = "Toggle fullscreen",
})

-- SUPER + P → Toggle pseudo tile
hl.bind(mainMod .. " + P", hl.dsp.window.pseudo(), {
    description = "Toggle pseudo tile",
})

-- SUPER + ALT + J → Toggle split orientation
hl.bind(mainMod .. " + ALT + J", hl.dsp.layout("togglesplit"), {
    description = "Toggle split orientation",
})
