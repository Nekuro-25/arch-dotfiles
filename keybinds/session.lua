-- =========================================================
-- SESSION KEYBINDS
-- =========================================================

-- SUPER + SHIFT + CTRL + Q → Exit Hyprland
-- Sengaja dibuat jauh dari SUPER + Q (tutup jendela) supaya tidak
-- kepencet. Cara lain keluar: SUPER + X → Logout.
hl.bind("SUPER + SHIFT + CTRL + Q", hl.dsp.exit(), {
    description = "Exit Hyprland session",
})

-- SUPER + SHIFT + ALT + L → Lock session manually
-- (SUPER + SHIFT + L dipakai untuk memindah jendela ke kanan.)
hl.bind("SUPER + SHIFT + ALT + L", hl.dsp.exec_cmd("loginctl lock-session"), {
    description = "Lock session",
})
