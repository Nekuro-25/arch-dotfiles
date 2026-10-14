-- =========================================================
-- HYPRLAND CONFIGURATION
-- =========================================================
-- Main entry point for the modular Hyprland configuration.
-- Setiap require di bawah harus punya file-nya.
-- Cek dengan: rice-doctor
-- =========================================================

-- Core configuration
require("config.environment")
require("config.apps")
require("config.autostart")
require("config.settings")
require("config.input")
require("config.animations")

-- Keybindings
require("keybinds.applications")
require("keybinds.navigation")
require("keybinds.window")
require("keybinds.workspace")
require("keybinds.hardware")
require("keybinds.media")
require("keybinds.session")
require("keybinds.screenshot")
require("keybinds.notifications")
require("keybinds.clipboard")
require("keybinds.scratchpad")
require("keybinds.menus")      -- SUPER + X / S / N / B (menu Rofi)

-- Window & layer rules
require("rules.windows")
require("rules.layers")        -- blur untuk Waybar, Rofi, Mako
