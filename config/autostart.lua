-- =========================================================
-- AUTOSTART MODULE
-- =========================================================
-- Applications and scripts started when the Hyprland session begins.
-- =========================================================

hl.on("hyprland.start", function()
	-- Memanggil script bash eksternal penanganan daemon & workspace apps
	hl.exec_cmd("~/.config/hypr/scripts/autostart.sh")
end)
