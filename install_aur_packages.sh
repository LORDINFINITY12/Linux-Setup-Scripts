#!/bin/bash

# Check if the list-aur.txt file exists
if [ -f "list-aur.txt" ]; then
    # Read the AUR package names from the file
    aur_packages=($(<list-aur.txt))
    
    # Install AUR packages using yay
    yay -S --needed --noconfirm "${aur_packages[@]}"
else
    echo "Error: list-aur.txt not found."
    exit 1
fi

