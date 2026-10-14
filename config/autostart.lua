-- =========================================================
-- AUTOSTART
-- =========================================================
-- Applications started when the Hyprland session begins.
-- =========================================================

hl.on("hyprland.start", function()
    -- Sync session env vars to D-Bus/systemd (required for portals)[cite: 1]
    hl.exec_cmd("dbus-update-activation-environment --systemd --all")

    -- Ensure screenshot directory exists[cite: 1]
    hl.exec_cmd("mkdir -p $HOME/Pictures/Screenshots")

    -- Notification daemon (start early so nothing is missed)[cite: 1]
    hl.exec_cmd("mako")

    -- OSD server (volume/brightness feedback)[cite: 1]
    hl.exec_cmd("swayosd-server")

    -- Clipboard history daemon[cite: 1]
    hl.exec_cmd("wl-paste --type text --watch cliphist store")
    hl.exec_cmd("wl-paste --type image --watch cliphist store")

    -- Status bar[cite: 1]
    hl.exec_cmd("waybar")

    -- Wallpaper daemon[cite: 1]
    hl.exec_cmd("hyprpaper")

    -- Idle & lock daemon[cite: 1]
    hl.exec_cmd("hypridle")

    -- =========================================================
    -- DEDICATED WORKSPACE APPS AUTOSTART
    -- =========================================================
    -- Workspace 1: 2 window terminal (Kitty)
    hl.exec_cmd("hyprctl dispatch exec '[workspace 1 silent] kitty'")
    hl.exec_cmd("hyprctl dispatch exec '[workspace 1 silent] kitty'")

    -- Workspace 2: 2 window development (Nvim dalam Kitty)
    hl.exec_cmd("hyprctl dispatch exec '[workspace 2 silent] kitty -e nvim'")
    hl.exec_cmd("hyprctl dispatch exec '[workspace 2 silent] kitty -e nvim'")

    -- Workspace 3: 1 window browser (Firefox)
    hl.exec_cmd("hyprctl dispatch exec '[workspace 3 silent] firefox'")

    -- Workspace 4: 1 window communication (Discord)
    hl.exec_cmd("hyprctl dispatch exec '[workspace 4 silent] discord'")
end)
