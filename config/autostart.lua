-- =========================================================
-- AUTOSTART
-- =========================================================
-- Applications started when the Hyprland session begins.
-- =========================================================

hl.on("hyprland.start", function()
    -- Ensure screenshot directory exists
    hl.exec_cmd("mkdir -p $HOME/Pictures/Screenshots")

    -- Notification daemon (start early so nothing is missed)
    hl.exec_cmd("mako")

    -- Status bar
    hl.exec_cmd("waybar")

    -- Wallpaper daemon
    hl.exec_cmd("hyprpaper")

    -- Idle & lock daemon
    hl.exec_cmd("hypridle")
end)
