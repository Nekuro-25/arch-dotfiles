-- =========================================================
-- LAYER RULES
-- =========================================================
-- Layer = elemen non-window seperti bar, launcher, notifikasi.
-- Blur di sini membuat latar semi-transparan (Waybar 0.78,
-- Rofi, Mako) tampil menyatu dengan wallpaper.
--
-- Cek namespace yang sebenarnya dengan:
--     hyprctl layers
-- =========================================================

-- Waybar (termasuk tooltip dan power menu)
hl.layer_rule({
    name = "blur-waybar",
    match = { namespace = "waybar" },
    blur = true,
    blur_popups = true,
    ignore_alpha = 0.2,
})

-- Rofi
hl.layer_rule({
    name = "blur-rofi",
    match = { namespace = "rofi" },
    blur = true,
    ignore_alpha = 0.2,
})

-- Mako (namespace bawaan: "notifications")
hl.layer_rule({
    name = "blur-mako",
    match = { namespace = "notifications" },
    blur = true,
    ignore_alpha = 0.2,
})
