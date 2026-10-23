#!/bin/bash

# 1. Wajib: Sinkronisasi systemd & D-Bus environment untuk Wayland portals
dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP

# 2. Daemons & Services utama (Gunakan '&' karena mereka berjalan selamanya di background)
fcitx5 -d &
mako &
swayosd-server &
wl-paste --type text --watch cliphist store &
wl-paste --type image --watch cliphist store &
waybar &
hyprpaper &
hypridle &
systemctl --user start hyprpolkitagent.service &

# Pastikan direktori screenshot ada
mkdir -p "$HOME/Pictures/Screenshots"

# 3. Aplikasi Workspace (TANPA '&' di akhir, agar sleep berjalan berurutan)
sleep 1   && hyprctl dispatch exec "[workspace 1 silent] firefox"
sleep 1.5 && hyprctl dispatch exec "[workspace 2 silent] kitty"
sleep 2.0 && hyprctl dispatch exec "[workspace 2 silent] kitty"
sleep 2.5 && hyprctl dispatch exec "[workspace 3 silent] kitty"
sleep 3.5 && hyprctl dispatch exec "[workspace 9 silent] discord"
sleep 4.5 && hyprctl dispatch exec "[workspace 10 silent] spotify-launcher"
