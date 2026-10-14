-- =========================================================
-- THEME — ICE BLUE NIGHT
-- =========================================================
-- Satu-satunya sumber warna untuk Hyprland. Palet sama dengan
-- Kitty, Waybar, Rofi, Hyprlock, dan Neovim (ice-night).
-- Dipakai dengan:
--     local theme = require("config.theme")
-- Format: rgba(RRGGBBAA)
-- =========================================================

local theme = {
    -- Dasar
    bg          = "rgba(141d48ff)",
    bg_alt      = "rgba(1b2658ff)",
    fg          = "rgba(dbe6ffff)",
    muted       = "rgba(9aabe0ff)",

    -- Aksen
    accent      = "rgba(5d80e4ff)",   -- azure (biru utama; selaras navy wallpaper)
    accent_hi   = "rgba(8fa8f2ff)",   -- periwinkle
    accent2     = "rgba(a8c4ffff)",   -- biru es

    -- Border jendela
    border_inactive_1 = "rgba(34447f99)",
    border_inactive_2 = "rgba(1b265899)",

    -- Bayangan
    shadow_active   = "rgba(5d80e455)",  -- glow biru lembut (jendela fokus)
    shadow_inactive = "rgba(00000066)",

    -- Geometri
    gaps_in  = 5,
    gaps_out = 14,
    rounding = 12,
    gradient_angle = 45,
}

return theme
