#!/bin/bash

# Start applications in Kitty terminals if they are not already running
# The '--title' option sets the window title for easy identification

#start neofetch in kitty if not already running
pgrep -f "neofetch" || kitty --class="my_scripted_kitty" --title "neofetch" &

# Start htop in Kitty if not already running
pgrep -f "htop" || kitty --class="my_scripted_kitty" --title "htop" sh -c 'htop' &

# Start Spotify TUI if not already running
pgrep -f "spt" || kitty --class="my_scripted_kitty" --title "lf" sh -c 'lf /home/infinity ' &

# Start cava if not already running
pgrep -f "cava" || kitty --class="my_scripted_kitty" --title "cava" sh -c 'cava | lolcat' &

# Start btop if not already running
pgrep -f "btop" || kitty --class="my_scripted_kitty" --title "btop" btop &

# Start cmatrix if not already running
pgrep -f "cmatrix" || kitty --class="my_scripted_kitty" --title "cmatrix" sh -c 'cmatrix | lolcat' &

# Wait for the desktop to load and applications to start
sleep 4

# Resize and move windows using `wmctrl`
# Replace 'WINDOW_TITLE' with the actual titles used in the --title option above
# The '-F' option tells `wmctrl` to match the full window title
# The '-r' option specifies the window to resize and move (by title)
# The '-e' option specifies the new geometry: gravity,X,Y,width,height
# Gravity is usually 0, which means the normal gravity for the window

# Debugging: Echo commands before execution
set -x

#Resize and more neofetch
wmctrl -F -r "neofetch" -e 0,15,49,1049,486

# Resize and move htop
wmctrl -F -r "htop" -e 0,15,563,1050,515

# Resize and move Spotify TUI
wmctrl -F -r "lf" -e 0,3655,441,1052,1095

# Resize and move cava
wmctrl -F -r "cava" -e 0,3656,1566,1052,338

# Resize and move btop
wmctrl -F -r "btop" -e 0,3655,42,1052,370

# Resize and move cmatrix
wmctrl -F -r "cmatrix" -e 0,15,1106,1050,790

# End debugging mode
set +x
