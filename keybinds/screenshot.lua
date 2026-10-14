-- =========================================================
-- SCREENSHOT KEYBINDS
-- =========================================================
-- grim + slurp untuk menangkap, swappy untuk anotasi.
-- Semua varian menyalin ke clipboard DAN (kecuali "area ke
-- clipboard") menyimpan ke ~/Pictures/Screenshots.
--
-- Perbaikan: nama file dibuat SEKALI per tangkapan (variabel f),
-- dan pemilihan area (slurp) dicek dulu. Dibatalkan dengan Esc ->
-- tidak ada notifikasi palsu dan clipboard tidak ditimpa kosong.
-- =========================================================

local mainMod = "SUPER"

-- PRINT → Full screen, save + copy
hl.bind("PRINT", hl.dsp.exec_cmd(
    [[f="$HOME/Pictures/Screenshots/$(date +%Y-%m-%d_%H-%M-%S).png"; ]] ..
    [[grim "$f" && wl-copy < "$f" && notify-send 'Screenshot saved' 'Full screen captured']]
), {
    description = "Screenshot: full screen",
})

-- SUPER + SHIFT + S → Area select, copy to clipboard only
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.exec_cmd(
    [[geo=$(slurp) && grim -g "$geo" - | wl-copy && ]] ..
    [[notify-send 'Screenshot copied' 'Area copied to clipboard']]
), {
    description = "Screenshot: area to clipboard",
})

-- SUPER + SHIFT + PRINT → Area select, save + copy
hl.bind(mainMod .. " + SHIFT + PRINT", hl.dsp.exec_cmd(
    [[geo=$(slurp) && f="$HOME/Pictures/Screenshots/$(date +%Y-%m-%d_%H-%M-%S).png" && ]] ..
    [[grim -g "$geo" "$f" && wl-copy < "$f" && notify-send 'Screenshot saved' 'Area captured']]
), {
    description = "Screenshot: area, save + copy",
})

-- SUPER + ALT + S → Area select with annotation (swappy)
hl.bind(mainMod .. " + ALT + S", hl.dsp.exec_cmd(
    [[geo=$(slurp) && grim -g "$geo" - | swappy -f -]]
), {
    description = "Screenshot: area with annotation",
})
