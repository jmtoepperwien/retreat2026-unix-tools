#!/bin/bash

# --- Configuration ---
EDITOR="code"
BROWSER="firefox" # or "google-chrome" 
# Get the width and height of the primary monitor
SCREEN_WIDTH=$(xrandr --current | grep '*' | uniq | awk '{print $1}' | cut -d 'x' -f1)
SCREEN_HEIGHT=$(xrandr --current | grep '*' | uniq | awk '{print $1}' | cut -d 'x' -f2)

HALF_WIDTH=$((SCREEN_WIDTH / 2))

# --- Launch Applications ---
# We launch them in the background and grab their PIDs
$EDITOR . &
$BROWSER &

# Give them a moment to initialize so the windows actually exist
sleep 15

# --- Window Management ---
# Find window IDs by class name
CODE_WIN=$(wmctrl -l -x | grep -i "code" | awk '{print $1}' | head -n 1)
BROWSER_WIN=$(wmctrl -l -x | grep -i "$BROWSER" | awk '{print $1}' | head -n 1)

# Remove maximized states so we can resize
wmctrl -i -r "$CODE_WIN" -b remove,maximized_vert,maximized_horz
wmctrl -i -r "$BROWSER_WIN" -b remove,maximized_vert,maximized_horz

# Move and Resize: wmctrl format is 'g,x,y,w,h'
# VS Code: Left Half (0 to Half-Width)
wmctrl -i -r "$CODE_WIN" -e 0,0,0,$HALF_WIDTH,$SCREEN_HEIGHT

# Browser: Right Half (Half-Width to Full-Width)
wmctrl -i -r "$BROWSER_WIN" -e 0,$HALF_WIDTH,0,$HALF_WIDTH,$SCREEN_HEIGHT
