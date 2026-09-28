-- =========================================================
-- THEME
-- =========================================================
-- Single source of truth for colors, taken from the dragon
-- wallpaper (dark red + ice blue). Other modules load it with:
--     local theme = require("config.theme")
-- Format: rgba(RRGGBBAA)
-- =========================================================

local theme = {
    -- Base
    bg          = "rgba(12060fff)",
    bg_alt      = "rgba(2a0f1eff)",
    fg          = "rgba(c9dbe6ff)",

    -- Accents
    red         = "rgba(e0122eff)",
    red_dark    = "rgba(7a1a2eff)",
    ice         = "rgba(8fc4dcff)",
    mauve       = "rgba(8a5566ff)",

    -- Border states
    border_inactive_1 = "rgba(4a223399)",
    border_inactive_2 = "rgba(2a0f1e99)",

    -- Shadows
    shadow_active   = "rgba(e0122e55)",  -- soft red glow (focused window)
    shadow_inactive = "rgba(00000066)",

    -- Geometry
    gaps_in  = 5,
    gaps_out = 14,
    rounding = 12,
    gradient_angle = 45,
}

return theme
