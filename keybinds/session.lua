-- =========================================================
-- SESSION KEYBINDS
-- =========================================================

-- SUPER + SHIFT + Q → Exit Hyprland
hl.bind("SUPER + SHIFT + Q", hl.dsp.exit(), {
    description = "Exit Hyprland session",
})

-- SUPER + SHIFT + L → Lock session manually
hl.bind("SUPER + SHIFT + L", hl.dsp.exec_cmd("loginctl lock-session"), {
    description = "Lock session",
})
