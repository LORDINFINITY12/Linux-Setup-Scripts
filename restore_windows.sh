#!/bin/bash

# Start applications in Kitty terminals if they are not already running
# The '--title' option sets the window title for easy identification

killall lf

#start neofetch in kitty if not already running
pgrep -f "neofetch" || kitty --class="my_scripted_kitty" --title "neofetch" &

# Start htop in Kitty if not already running
pgrep -f "bpytop" || kitty --class="my_scripted_kitty" --title "bpytop" sh -c 'bpytop' &

# Start Spotify TUI if not already running
pgrep -f "lf" || kitty --class="my_scripted_kitty" --title "lf" sh -c 'lf /home/infinity/' &

# Start cava if not already running
pgrep -f "cava" || kitty --class="my_scripted_kitty" --title "cava" sh -c 'cava' &

# Start btop if not already running
pgrep -f "btop" || kitty --class="my_scripted_kitty" --title "btop" btop &

# Start cmatrix if not already running
pgrep -f "cmatrix" || kitty --class="my_scripted_kitty" --title "cmatrix" sh -c 'cmatrix | lolcat' &

# Wait for the desktop to load and applications to start
sleep 6

# Resize and move windows using `wmctrl`
# Replace 'WINDOW_TITLE' with the actual titles used in the --title option above
# The '-F' option tells `wmctrl` to match the full window title
# The '-r' option specifies the window to resize and move (by title)
# The '-e' option specifies the new geometry: gravity,X,Y,width,height
# Gravity is usually 0, which means the normal gravity for the window

# Debugging: Echo commands before execution
set -x

#Resize and more neofetch
wmctrl -F -r "neofetch" -e 0,15,30,1052,486

# Resize and move bpytop
wmctrl -F -r "bpytop" -e 0,15,545,1052,532

# Resize and move lf
wmctrl -F -r "lf" -e 0,3655,429,1052,1093

# Resize and move cava
wmctrl -F -r "cava" -e 0,3655,1551,1052,338

# Resize and move btop
wmctrl -F -r "btop" -e 0,3655,30,1052,370

# Resize and move cmatrix
wmctrl -F -r "cmatrix" -e 0,15,1106,1052,784

# End debugging mode
set +x
