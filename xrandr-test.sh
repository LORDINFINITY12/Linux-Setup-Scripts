#!/bin/bash

xrandr --output HDMI-0 --mode 1920x1080 --pos 0x0 --rotate right
xrandr --output DP-0 --off
xrandr --output DP-1 --off
xrandr --output HDMI-1 --mode 1920x1080 --pos 3640x0 --rotate left
xrandr --output DP-2 --mode 2560x1440 --rate 144 --pos 1080x105 --primary --rotate normal
xrandr --output DP-3 --off

