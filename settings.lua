-- =========================================================
-- GENERAL SETTINGS
-- =========================================================

local theme = require("config.theme")

hl.config({
    general = {
        -- Gaps
        gaps_in = theme.gaps_in,
        gaps_out = theme.gaps_out,

        -- Borders
        border_size = 2,

        -- Stability over minimum latency
        allow_tearing = false,

        -- Primary tiling layout
        layout = "dwindle",

        -- Resize through keyboard bindings
        resize_on_border = false,

        -- Border colors: red -> ice blue gradient on the focused window
        col = {
            active_border = {
                colors = { theme.red, theme.ice },
                angle = theme.gradient_angle,
            },
            inactive_border = {
                colors = { theme.border_inactive_1, theme.border_inactive_2 },
                angle = theme.gradient_angle,
            },
        },
    },

    -- =====================================================
    -- WINDOW DECORATION
    -- =====================================================

    decoration = {
        -- Rounded corners
        rounding = theme.rounding,
        rounding_power = 2,

        -- Window opacity
        -- Kitty already has background_opacity = 0.88, so the inactive
        -- value is kept high to avoid stacking transparency.
        active_opacity = 1.00,
        inactive_opacity = 0.92,

        -- Blur (set enabled = false if it hurts performance)
        blur = {
            enabled = true,
            size = 6,
            passes = 2,
            brightness = 0.9,
            popups = true,
        },

        -- Soft red glow around the focused window
        shadow = {
            enabled = true,
            range = 20,
            render_power = 3,
            color = theme.shadow_active,
            color_inactive = theme.shadow_inactive,
        },
    },

    -- =====================================================
    -- MISCELLANEOUS
    -- =====================================================

    misc = {
        -- Wallpaper handled by Hyprpaper
        force_default_wallpaper = 0,

        -- Remove default Hyprland branding
        disable_hyprland_logo = true,
    },
})

-- =========================================================
-- DWINDLE
-- =========================================================

hl.config({
    dwindle = {
        -- Preserve split orientation when possible
        preserve_split = true,
    },
})

-- =========================================================
-- MASTER
-- =========================================================
-- Master remains available as an alternative layout.
-- Dwindle remains the default.
-- =========================================================

hl.config({
    master = {
        new_status = "master",
    },
})
