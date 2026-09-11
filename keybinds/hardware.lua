-- =========================================================
-- HARDWARE KEYBINDS
-- =========================================================
-- Volume/brightness handled via swayosd-client, which calls
-- wpctl/brightnessctl internally AND shows the OSD popup.
-- =========================================================

hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("swayosd-client --output-volume raise"), {
    description = "Volume up",
    locked = true,
})

hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("swayosd-client --output-volume lower"), {
    description = "Volume down",
    locked = true,
})

hl.bind("XF86AudioMute", hl.dsp.exec_cmd("swayosd-client --output-volume mute-toggle"), {
    description = "Toggle mute",
    locked = true,
})

hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("swayosd-client --input-volume mute-toggle"), {
    description = "Toggle mic mute",
    locked = true,
})

hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("swayosd-client --brightness raise"), {
    description = "Brightness up",
    locked = true,
})

hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("swayosd-client --brightness lower"), {
    description = "Brightness down",
    locked = true,
})
