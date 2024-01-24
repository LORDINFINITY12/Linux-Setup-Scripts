#!/bin/bash

# Run neofetch normally to display the logo
neofetch

# Move the cursor up to the beginning of Neofetch output
# Note: Adjust 30 to match the number of lines your Neofetch output has
tput cuu 30

# Move the cursor right to align with the text portion
# Note: Adjust 40 to match the width of your Neofetch logo
tput cuf 40

# Define an array of ANSI color codes
colors=(31 32 33 34 35 36 37 90 91 92 93 94 95 96 97)

# Initialize color index
color_index=0

# Run neofetch with stdout and colorize each line
neofetch --stdout | while IFS= read -r line; do
    # Print line with the current color
    echo -e "\e[${colors[$color_index]}m$line\e[0m"

    # Update color index
    ((color_index = (color_index + 1) % ${#colors[@]}))
done

