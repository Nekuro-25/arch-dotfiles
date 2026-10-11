-- =========================================================
-- ROFI MENU KEYBINDS
-- =========================================================
-- Menu bertema Rofi. Skrip ada di ~/.config/rofi/scripts/.
-- Semua tombol di bawah masih kosong di config ini.
-- =========================================================

local mainMod = "SUPER"
local menus = "~/.config/rofi/scripts"

-- SUPER + X → Power menu
hl.bind(mainMod .. " + X", hl.dsp.exec_cmd(menus .. "/power-menu.sh"), {
    description = "Power menu",
})

-- SUPER + S → Screenshot menu
hl.bind(mainMod .. " + S", hl.dsp.exec_cmd(menus .. "/screenshot-menu.sh"), {
    description = "Screenshot menu",
})

-- SUPER + N → Wi-Fi menu
hl.bind(mainMod .. " + N", hl.dsp.exec_cmd(menus .. "/wifi-menu.sh"), {
    description = "Wi-Fi menu",
})

-- SUPER + B → Bluetooth menu
hl.bind(mainMod .. " + B", hl.dsp.exec_cmd(menus .. "/bluetooth-menu.sh"), {
    description = "Bluetooth menu",
})
