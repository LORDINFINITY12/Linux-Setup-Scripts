#!/bin/bash

# Path to the Steam directory
steam_dir="$HOME/.steam/steam"

# Path to the 'ubuntu12_32' directory where 'gameoverlayui.so' is expected to be
overlay_dir="$steam_dir/ubuntu12_32"

# Name of the file to search and delete
file_name="gameoverlayui.so"

# Function to search and delete the file
delete_gameoverlayui() {
    # Check if the directory exists
    if [ -d "$overlay_dir" ]; then
        # Find the file in the directory
        file_path=$(find "$overlay_dir" -name "$file_name")

        # Check if the file exists
        if [ -n "$file_path" ]; then
            echo "Found $file_name at $file_path"
            
            # Ask for confirmation before deleting
            read -p "Do you want to delete $file_name? [y/N]: " confirm
            if [[ $confirm =~ ^[Yy]$ ]]; then
                rm "$file_path"
                echo "$file_name has been deleted."
            else
                echo "Deletion cancelled."
            fi
        else
            echo "$file_name not found in $overlay_dir"
        fi
    else
        echo "Directory $overlay_dir not found. Please check your Steam installation."
    fi
}

# Run the function
delete_gameoverlayui

