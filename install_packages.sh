#!/bin/bash

# Check if the package_list.txt file exists
if [ -f "list-pacman.txt" ]; then
    # Read the package names from the file
    packages=($(<list-pacman.txt))
    
    # Install packages using Pacman
    sudo pacman -S "${packages[@]}"
else
    echo "Error: package_list.txt not found."
    exit 1
fi

