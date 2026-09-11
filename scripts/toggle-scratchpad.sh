#!/bin/bash
# =========================================================
# TOGGLE SCRATCHPAD TERMINAL
# =========================================================
# Spawns a dedicated kitty instance (tagged with a unique
# class) into the "scratchpad" special workspace, or toggles
# its visibility if it's already running.
# =========================================================

SCRATCH_CLASS="kitty-scratchpad"

if hyprctl clients | grep -q "class: $SCRATCH_CLASS"; then
    hyprctl dispatch togglespecialworkspace scratchpad
else
    kitty --class "$SCRATCH_CLASS" &
    sleep 0.3
    hyprctl dispatch togglespecialworkspace scratchpad
fi
