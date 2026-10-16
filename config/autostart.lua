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

	-- Input method engine
	hl.exec_cmd("fcitx5 -d")

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

	-- Polkit authentication agent (dialog otorisasi hak akses)
	hl.exec_cmd("systemctl --user start hyprpolkitagent.service")

	-- =========================================================
	-- DEDICATED WORKSPACE APPS AUTOSTART
	-- =========================================================
	-- Workspace 1: Browser (Firefox)
	hl.exec_cmd("hyprctl dispatch exec '[workspace 1 silent] firefox'")

	-- Workspace 2: Dua jendela Terminal (Kitty)
	hl.exec_cmd("sleep 0.5 && hyprctl dispatch exec '[workspace 2 silent] kitty'")
	hl.exec_cmd("sleep 0.8 && hyprctl dispatch exec '[workspace 2 silent] kitty'")

	-- Workspace 3: Satu jendela Terminal (Kitty)
	hl.exec_cmd("sleep 1.1 && hyprctl dispatch exec '[workspace 3 silent] kitty'")

	-- Workspace 9: Communication (Discord)
	hl.exec_cmd("sleep 1.4 && hyprctl dispatch exec '[workspace 9 silent] discord'")

	-- Workspace 10: Music/Media (Spotify Launcher)
	hl.exec_cmd("sleep 1.7 && hyprctl dispatch exec '[workspace 10 silent] spotify-launcher'")
end)
