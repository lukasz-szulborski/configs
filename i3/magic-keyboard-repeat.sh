#!/bin/bash
# ~/scripts/set-keyboard-rate.sh

export DISPLAY=:0
export XAUTHORITY="$HOME/.Xauthority"

# Wait for X to be ready
while ! xset q >/dev/null 2>&1; do
    sleep 1
done

# Wait for keyboard to appear
while ! xinput list | grep -q "Magic Keyboard"; do
    sleep 1
done

# Set repeat rate
xset r rate 250 40
