#!/bin/sh

waypaper &

sleep 0.5

window_id=$(hyprctl clients | grep "waypaper" | awk '{print $2}' | head -n 1)

if [ -n "$window_id" ]; then
    hyprctl dispatch togglefloating $window_id
else
    echo "can't run Waypaper"
fi

