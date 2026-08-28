-- =========================================================
-- GENERAL SETTINGS
-- =========================================================

hl.config({
    general = {
        -- Gaps
        gaps_in = 5,
        gaps_out = 14,

        -- Borders
        border_size = 1,

        -- Stability over minimum latency
        allow_tearing = false,

        -- Primary tiling layout
        layout = "dwindle",

        -- Resize through keyboard bindings
        resize_on_border = false,

        -- Border colors
        col = {
            active_border = "rgba(ffffffff)",
            inactive_border = "rgba(66666699)",
        },
    },

    -- =====================================================
    -- WINDOW DECORATION
    -- =====================================================

    decoration = {
        -- Rounded corners
        rounding = 8,
        rounding_power = 2,

        -- Window opacity
        active_opacity = 1.00,
        inactive_opacity = 0.80,

        -- Blur disabled for performance
        blur = {
            enabled = false,
        },

        -- Subtle separation from wallpaper
        shadow = {
            enabled = true,
            range = 6,
            render_power = 2,
            color = "rgba(000000aa)",
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
