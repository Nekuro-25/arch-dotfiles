-- =========================================================
-- NAVIGATION KEYBINDS
-- =========================================================

local mainMod = "SUPER"

local directions = {
    H = "left",
    J = "down",
    K = "up",
    L = "right",
}

-- SUPER + H/J/K/L → Focus window
for key, direction in pairs(directions) do
    hl.bind(mainMod .. " + " .. key, hl.dsp.focus({
        direction = direction,
    }), {
        description = "Focus " .. direction,
    })
end

-- SUPER + SHIFT + H/J/K/L → Move window
for key, direction in pairs(directions) do
    hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({
        direction = direction,
    }), {
        description = "Move window " .. direction,
    })
end

-- SUPER + CTRL + H → Resize left
hl.bind(mainMod .. " + CTRL + H", hl.dsp.window.resize({
    x = -20,
    y = 0,
    relative = true,
}), {
    repeating = true,
    description = "Resize window left",
})

-- SUPER + CTRL + L → Resize right
hl.bind(mainMod .. " + CTRL + L", hl.dsp.window.resize({
    x = 20,
    y = 0,
    relative = true,
}), {
    repeating = true,
    description = "Resize window right",
})

-- SUPER + CTRL + K → Resize up
hl.bind(mainMod .. " + CTRL + K", hl.dsp.window.resize({
    x = 0,
    y = -20,
    relative = true,
}), {
    repeating = true,
    description = "Resize window up",
})

-- SUPER + CTRL + J → Resize down
hl.bind(mainMod .. " + CTRL + J", hl.dsp.window.resize({
    x = 0,
    y = 20,
    relative = true,
}), {
    repeating = true,
    description = "Resize window down",
})
