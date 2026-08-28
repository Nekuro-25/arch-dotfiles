-- =========================================================
-- AUTOSTART
-- =========================================================
-- Applications started when the Hyprland session begins.
-- =========================================================

hl.on("hyprland.start", function()
    -- Status bar
    hl.exec_cmd("waybar")

    -- Wallpaper daemon
    hl.exec_cmd("hyprpaper")

    -- Idle & lock daemon
    hl.exec_cmd("hypridle")
end)
