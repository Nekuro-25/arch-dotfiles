-- =========================================================
-- HARDWARE KEYBINDS
-- =========================================================

-- Volume up
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd(
    "wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"
), {
    locked = true,
    repeating = true,
    description = "Increase volume",
})

-- Volume down
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd(
    "wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"
), {
    locked = true,
    repeating = true,
    description = "Decrease volume",
})

-- Speaker mute
hl.bind("XF86AudioMute", hl.dsp.exec_cmd(
    "wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
), {
    locked = true,
    description = "Toggle speaker mute",
})

-- Microphone mute
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd(
    "wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"
), {
    locked = true,
    description = "Toggle microphone mute",
})

-- Brightness up
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd(
    "brightnessctl -e4 -n2 set 5%+"
), {
    locked = true,
    repeating = true,
    description = "Increase brightness",
})

-- Brightness down
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd(
    "brightnessctl -e4 -n2 set 5%-"
), {
    locked = true,
    repeating = true,
    description = "Decrease brightness",
})
