-- =========================================================
-- SCREENSHOT KEYBINDS
-- =========================================================
-- grim + slurp for capture, swappy for quick annotation.
-- All variants copy to clipboard AND save to
-- ~/Pictures/Screenshots (see config/autostart.lua for the
-- directory creation).
-- =========================================================

local mainMod = "SUPER"
local screenshotDir = "$HOME/Pictures/Screenshots"
local screenshotFile = screenshotDir .. "/$(date +%Y-%m-%d_%H-%M-%S).png"

-- PRINT → Full screen, save + copy
hl.bind("PRINT", hl.dsp.exec_cmd(
    "grim " .. screenshotFile ..
    " && wl-copy < " .. screenshotFile ..
    " && notify-send 'Screenshot saved' 'Full screen captured'"
), {
    description = "Screenshot: full screen",
})

-- SUPER + SHIFT + S → Area select, copy to clipboard only
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.exec_cmd(
    "grim -g \"$(slurp)\" - | wl-copy" ..
    " && notify-send 'Screenshot copied' 'Area copied to clipboard'"
), {
    description = "Screenshot: area to clipboard",
})

-- SUPER + SHIFT + PRINT → Area select, save + copy
hl.bind(mainMod .. " + SHIFT + PRINT", hl.dsp.exec_cmd(
    "grim -g \"$(slurp)\" " .. screenshotFile ..
    " && wl-copy < " .. screenshotFile ..
    " && notify-send 'Screenshot saved' 'Area captured'"
), {
    description = "Screenshot: area, save + copy",
})

-- SUPER + ALT + S → Area select with annotation (swappy)
hl.bind(mainMod .. " + ALT + S", hl.dsp.exec_cmd(
    "grim -g \"$(slurp)\" - | swappy -f -"
), {
    description = "Screenshot: area with annotation",
})
