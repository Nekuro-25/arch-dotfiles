-- =========================================================
-- AUTOSTART
-- =========================================================
-- Applications started when the Hyprland session begins.
-- =========================================================

hl.on("hyprland.start", function()
    -- Sync session env vars to D-Bus/systemd (required for portals)
    hl.exec_cmd("dbus-update-activation-environment --systemd --all")

    -- Ensure screenshot directory exists
    hl.exec_cmd("mkdir -p $HOME/Pictures/Screenshots")

    -- Notification daemon (start early so nothing is missed)
    hl.exec_cmd("mako")

    -- Clipboard history daemon
    hl.exec_cmd("wl-paste --type text --watch cliphist store")
    hl.exec_cmd("wl-paste --type image --watch cliphist store")

    -- Status bar
    hl.exec_cmd("waybar")

    -- Wallpaper daemon
    hl.exec_cmd("hyprpaper")

    -- Idle & lock daemon
    hl.exec_cmd("hypridle")
end)
