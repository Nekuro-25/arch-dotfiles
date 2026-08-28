-- =========================================================
-- WORKSPACE KEYBINDS
-- =========================================================

local mainMod = "SUPER"

-- Conceptual workspace organization
local workspaces = {
    [1] = "Terminal",
    [2] = "Development",
    [3] = "Browser",
    [4] = "Research",
    [5] = "Communication",
    [6] = "Files",
    [7] = "Documents",
    [8] = "System",
    [9] = "Free",
    [10] = "Free",
}

-- SUPER + 1..9 / 0 → Focus workspace
-- SUPER + SHIFT + 1..9 / 0 → Move window
for i = 1, 10 do
    local key = i % 10

    hl.bind(mainMod .. " + " .. key, hl.dsp.focus({
        workspace = i,
    }), {
        description = "Go to workspace " .. i .. " (" .. workspaces[i] .. ")",
    })

    hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({
        workspace = i,
    }), {
        description = "Move window to workspace " .. i .. " (" .. workspaces[i] .. ")",
    })
end
