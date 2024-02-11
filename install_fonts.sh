#!/bin/bash

# Check if the package_list.txt file exists
if [ -f "installed-fonts.txt" ]; then
    # Read the package names from the file
    packages=($(<installed-fonts.txt))

    # Install packages using Pacman
    yay -S --needed "${packages[@]}"
else
    echo "Error: installed-fonts.txt not found."
    exit 1
fi
