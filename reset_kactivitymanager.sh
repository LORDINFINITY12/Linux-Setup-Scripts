#!/bin/bash

# Define backup directory
backup_dir="$HOME/kactivitymanager_backup_$(date +%Y%m%d_%H%M%S)"

# Create backup
echo "Creating backup of the kactivitymanager directory..."
cp -r ~/.local/share/kactivitymanagerd/ "$backup_dir"

# Check if backup succeeded
if [ -d "$backup_dir" ]; then
    echo "Backup created successfully at $backup_dir"
    echo "Deleting the original kactivitymanager directory..."

    # Delete the original directory
    rm -rf ~/.local/share/kactivitymanagerd/

    echo "Directory deleted. KDE Activity Manager has been reset."
else
    echo "Backup failed. Original directory not deleted."
fi

