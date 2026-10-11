-- =========================================================
-- CLIPBOARD KEYBINDS
-- =========================================================
-- cliphist history browsed through rofi, themed with
-- ~/.config/rofi/clipboard.rasi. Kolom ID dari cliphist
-- disembunyikan (-display-columns 2); baris aslinya tetap
-- diteruskan ke "cliphist decode".
--
-- NOTE: SUPER + V is already bound to "toggle floating" in
-- keybinds/window.lua — do NOT reuse it here. PERIOD is used
-- instead, pairing with COMMA (notifications.lua) as the two
-- "system utility" binds.
-- =========================================================

local mainMod = "SUPER"

-- SUPER + PERIOD → Open clipboard history picker
hl.bind(mainMod .. " + PERIOD", hl.dsp.exec_cmd(
    "cliphist list | rofi -dmenu -i -p 'Clipboard'" ..
    " -theme ~/.config/rofi/clipboard.rasi" ..
    " -display-columns 2 -display-column-separator '\\t'" ..
    " | cliphist decode | wl-copy"
), {
    description = "Open clipboard history",
})

-- SUPER + SHIFT + PERIOD → Clear clipboard history
hl.bind(mainMod .. " + SHIFT + PERIOD", hl.dsp.exec_cmd(
    "cliphist wipe && notify-send 'Clipboard' 'History cleared'"
), {
    description = "Clear clipboard history",
})
