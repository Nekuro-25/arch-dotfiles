-- =========================================================
-- HYPRLAND CONFIGURATION
-- Arch Linux / ThinkPad T495
--
-- Design:
--   Cinematic Minimalism
--   Performance > Effects
--   Keyboard-first
--   Tiled by default
--
-- Wallpaper is the visual anchor.
-- =========================================================


------------------
---- MONITORS ----
------------------

hl.monitor({
    output   = "",
    mode     = "preferred",
    position = "auto",
    scale    = "auto",
})


---------------------
---- APPLICATIONS ----
---------------------

local terminal    = "kitty"
local fileManager = "kitty --class yazi -e yazi"
local menu        = "hyprlauncher"


-------------------
---- AUTOSTART ----
-------------------

-- Wallpaper daemon.
--
-- hyprpaper reads:
-- ~/.config/hypr/hyprpaper.conf

hl.on("hyprland.start", function()
    hl.exec_cmd("hyprpaper")
end)


-------------------------------
---- ENVIRONMENT VARIABLES ----
-------------------------------

hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")


-----------------------
---- LOOK AND FEEL ----
-----------------------

hl.config({

    general = {

        -- Small gaps:
        -- enough separation without wasting screen space.
        gaps_in  = 5,
        gaps_out = 14,

        -- Minimal border.
        border_size = 1,

        col = {
            -- Temporary neutral palette.
            -- We will derive the final palette from the wallpaper later.
            active_border   = "rgba(ffffffff)",
            inactive_border = "rgba(66666699)",
        },

        resize_on_border = false,

        -- Performance-first.
        allow_tearing = false,

        -- Dynamic tiling.
        layout = "dwindle",
    },


    decoration = {

        -- Moderate rounding.
        -- Not excessive because the wallpaper should remain dominant.
        rounding       = 8,
        rounding_power = 2,

        -- Keep windows visually solid.
        active_opacity   = 1.0,
        inactive_opacity = 0.96,


        shadow = {
            enabled      = true,
            range        = 4,
            render_power = 2,
            color        = 0xaa000000,
        },


        -- Lightweight cinematic depth.
        blur = {
            enabled   = true,
            size      = 3,
            passes    = 1,
            vibrancy  = 0.10,
        },
    },


    animations = {
        enabled = true,
    },
})


-------------------
---- ANIMATIONS ----
-------------------

-- The goal here is:
--
-- smooth != slow
--
-- Animations should communicate state changes
-- without becoming the visual focus.

hl.curve(
    "easeOutQuint",
    {
        type   = "bezier",
        points = {
            {0.23, 1},
            {0.32, 1},
        }
    }
)

hl.curve(
    "easeInOutCubic",
    {
        type   = "bezier",
        points = {
            {0.65, 0.05},
            {0.36, 1},
        }
    }
)

hl.curve(
    "linear",
    {
        type   = "bezier",
        points = {
            {0, 0},
            {1, 1},
        }
    }
)

hl.curve(
    "almostLinear",
    {
        type   = "bezier",
        points = {
            {0.5, 0.5},
            {0.75, 1},
        }
    }
)

hl.curve(
    "quick",
    {
        type   = "bezier",
        points = {
            {0.15, 0},
            {0.1, 1},
        }
    }
)


-- Window spring.
hl.curve(
    "easy",
    {
        type       = "spring",
        mass       = 1,
        stiffness  = 238.1191,
        dampening  = 24.21279333,
    }
)


-- Global.
hl.animation({
    leaf    = "global",
    enabled = true,
    speed   = 8,
    bezier  = "default",
})


-- Borders.
hl.animation({
    leaf    = "border",
    enabled = true,
    speed   = 5,
    bezier  = "easeOutQuint",
})


-- Windows.
hl.animation({
    leaf    = "windows",
    enabled = true,
    speed   = 4.5,
    spring  = "easy",
})


-- Window opening.
hl.animation({
    leaf    = "windowsIn",
    enabled = true,
    speed   = 4,
    spring  = "easy",
    style   = "popin 85%",
})


-- Window closing.
hl.animation({
    leaf    = "windowsOut",
    enabled = true,
    speed   = 3,
    bezier  = "linear",
    style   = "popin 85%",
})


-- Fade.
hl.animation({
    leaf    = "fadeIn",
    enabled = true,
    speed   = 2,
    bezier  = "almostLinear",
})

hl.animation({
    leaf    = "fadeOut",
    enabled = true,
    speed   = 2,
    bezier  = "almostLinear",
})

hl.animation({
    leaf    = "fade",
    enabled = true,
    speed   = 3,
    bezier  = "quick",
})


-- Layers.
hl.animation({
    leaf    = "layers",
    enabled = true,
    speed   = 3.5,
    bezier  = "easeOutQuint",
})

hl.animation({
    leaf    = "layersIn",
    enabled = true,
    speed   = 3.5,
    bezier  = "easeOutQuint",
    style   = "fade",
})

hl.animation({
    leaf    = "layersOut",
    enabled = true,
    speed   = 3,
    bezier  = "linear",
    style   = "fade",
})


-- Layer fade.
hl.animation({
    leaf    = "fadeLayersIn",
    enabled = true,
    speed   = 2,
    bezier  = "almostLinear",
})

hl.animation({
    leaf    = "fadeLayersOut",
    enabled = true,
    speed   = 2,
    bezier  = "almostLinear",
})


-- Workspaces.
hl.animation({
    leaf    = "workspaces",
    enabled = true,
    speed   = 2,
    bezier  = "almostLinear",
    style   = "fade",
})

hl.animation({
    leaf    = "workspacesIn",
    enabled = true,
    speed   = 1.5,
    bezier  = "almostLinear",
    style   = "fade",
})

hl.animation({
    leaf    = "workspacesOut",
    enabled = true,
    speed   = 1.5,
    bezier  = "almostLinear",
    style   = "fade",
})


-- Zoom.
hl.animation({
    leaf    = "zoomFactor",
    enabled = true,
    speed   = 7,
    bezier  = "quick",
})


----------------------
---- DWINDLE LAYOUT ---
----------------------

hl.config({
    dwindle = {
        preserve_split = true,
    },
})


---------------------
---- MASTER LAYOUT ---
---------------------

hl.config({
    master = {
        new_status = "master",
    },
})


------------------------
---- SCROLLING LAYOUT ---
------------------------

hl.config({
    scrolling = {
        fullscreen_on_one_column = true,
    },
})


----------------
----  MISC  ----
----------------

hl.config({

    misc = {

        -- Disable Hyprland's built-in wallpaper.
        -- hyprpaper is our wallpaper system.
        force_default_wallpaper = 0,

        -- Do not show Hyprland's default logo/background.
        disable_hyprland_logo = true,
    },
})


---------------
---- INPUT ----
---------------

hl.config({

    input = {

        -- US layout as requested.
        kb_layout  = "us",
        kb_variant = "",
        kb_model   = "",
        kb_options = "",
        kb_rules   = "",

        -- Follow pointer.
        follow_mouse = 1,

        -- Hardware/default sensitivity.
        sensitivity = 0,

        touchpad = {
            natural_scroll = true,
        },
    },
})


----------------
---- GESTURES --
----------------

-- Keep the gesture available,
-- but keyboard remains the primary workflow.

hl.gesture({
    fingers   = 3,
    direction = "horizontal",
    action    = "workspace",
})


---------------------
---- KEYBINDINGS ----
---------------------

local mainMod = "SUPER"


----------------------
-- APPLICATIONS
----------------------

-- Terminal
hl.bind(
    mainMod .. " + Q",
    hl.dsp.exec_cmd(terminal)
)


-- Close window
hl.bind(
    mainMod .. " + C",
    hl.dsp.window.close()
)


-- Exit / shutdown
hl.bind(
    mainMod .. " + M",
    hl.dsp.exec_cmd(
        "command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'"
    )
)


-- File manager
hl.bind(
    mainMod .. " + E",
    hl.dsp.exec_cmd(fileManager)
)


-- Toggle floating
hl.bind(
    mainMod .. " + V",
    hl.dsp.window.float({
        action = "toggle"
    })
)


-- Launcher
hl.bind(
    mainMod .. " + R",
    hl.dsp.exec_cmd(menu)
)


-- Pseudo-tile
hl.bind(
    mainMod .. " + P",
    hl.dsp.window.pseudo()
)


-- Toggle split
hl.bind(
    mainMod .. " + J",
    hl.dsp.layout("togglesplit")
)


--------------------------
---- WINDOW NAVIGATION ----
--------------------------

-- Arrow keys.
--
-- We keep these because you explicitly want
-- arrow navigation while adapting to Vim.

hl.bind(
    mainMod .. " + left",
    hl.dsp.focus({
        direction = "left"
    })
)

hl.bind(
    mainMod .. " + right",
    hl.dsp.focus({
        direction = "right"
    })
)

hl.bind(
    mainMod .. " + up",
    hl.dsp.focus({
        direction = "up"
    })
)

hl.bind(
    mainMod .. " + down",
    hl.dsp.focus({
        direction = "down"
    })
)


----------------------------
---- WORKSPACES ------------
----------------------------

-- Super + 1..9
-- Super + 0 = workspace 10

for i = 1, 10 do

    local key = i % 10

    -- Focus workspace.
    hl.bind(
        mainMod .. " + " .. key,
        hl.dsp.focus({
            workspace = i
        })
    )

    -- Move active window.
    hl.bind(
        mainMod .. " + SHIFT + " .. key,
        hl.dsp.window.move({
            workspace = i
        })
    )
end


----------------------
---- SPECIAL WORKSPACE
----------------------

-- Scratchpad / temporary workspace.

hl.bind(
    mainMod .. " + S",
    hl.dsp.workspace.toggle_special("magic")
)

hl.bind(
    mainMod .. " + SHIFT + S",
    hl.dsp.window.move({
        workspace = "special:magic"
    })
)


--------------------------
---- WORKSPACE SCROLL ----
--------------------------

hl.bind(
    mainMod .. " + mouse_down",
    hl.dsp.focus({
        workspace = "e+1"
    })
)

hl.bind(
    mainMod .. " + mouse_up",
    hl.dsp.focus({
        workspace = "e-1"
    })
)


-----------------------
---- MOUSE CONTROL ----
-----------------------

-- Super + left click = move
hl.bind(
    mainMod .. " + mouse:272",
    hl.dsp.window.drag(),
    {
        mouse = true
    }
)


-- Super + right click = resize
hl.bind(
    mainMod .. " + mouse:273",
    hl.dsp.window.resize(),
    {
        mouse = true
    }
)


--------------------------------
---- MULTIMEDIA / HARDWARE ----
--------------------------------

-- Volume up
hl.bind(
    "XF86AudioRaiseVolume",
    hl.dsp.exec_cmd(
        "wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"
    ),
    {
        locked   = true,
        repeating = true,
    }
)


-- Volume down
hl.bind(
    "XF86AudioLowerVolume",
    hl.dsp.exec_cmd(
        "wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"
    ),
    {
        locked   = true,
        repeating = true,
    }
)


-- Mute
hl.bind(
    "XF86AudioMute",
    hl.dsp.exec_cmd(
        "wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
    ),
    {
        locked   = true,
        repeating = true,
    }
)


-- Microphone mute
hl.bind(
    "XF86AudioMicMute",
    hl.dsp.exec_cmd(
        "wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"
    ),
    {
        locked   = true,
        repeating = true,
    }
)


-- Brightness up
hl.bind(
    "XF86MonBrightnessUp",
    hl.dsp.exec_cmd(
        "brightnessctl -e4 -n2 set 5%+"
    ),
    {
        locked   = true,
        repeating = true,
    }
)


-- Brightness down
hl.bind(
    "XF86MonBrightnessDown",
    hl.dsp.exec_cmd(
        "brightnessctl -e4 -n2 set 5%-"
    ),
    {
        locked   = true,
        repeating = true,
    }
)


------------------------
---- MEDIA CONTROLS ----
------------------------

hl.bind(
    "XF86AudioNext",
    hl.dsp.exec_cmd("playerctl next"),
    {
        locked = true
    }
)

hl.bind(
    "XF86AudioPause",
    hl.dsp.exec_cmd("playerctl play-pause"),
    {
        locked = true
    }
)

hl.bind(
    "XF86AudioPlay",
    hl.dsp.exec_cmd("playerctl play-pause"),
    {
        locked = true
    }
)

hl.bind(
    "XF86AudioPrev",
    hl.dsp.exec_cmd("playerctl previous"),
    {
        locked = true
    }
)


--------------------------------
---- WINDOWS AND WORKSPACES ----
--------------------------------


-------------------------
-- Suppress maximize
-------------------------

local suppressMaximizeRule = hl.window_rule({

    name = "suppress-maximize-events",

    match = {
        class = ".*",
    },

    suppress_event = "maximize",
})


-------------------------
-- XWayland drag fix
-------------------------

hl.window_rule({

    name = "fix-xwayland-drags",

    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },

    no_focus = true,
})


-------------------------
-- Hyprland launcher
-------------------------

hl.window_rule({

    name = "move-hyprland-run",

    match = {
        class = "hyprland-run",
    },

    move = "20 monitor_h-120",

    float = true,
})
