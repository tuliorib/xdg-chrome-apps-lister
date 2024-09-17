#!/bin/bash

# Set the directory path
dir="$HOME/.local/share/applications"

# Initialize flag
show_exec=false

# Parse command-line arguments
while getopts "E" opt; do
    case $opt in
        E)
            show_exec=true
            ;;
        \?)
            echo "Invalid option: -$OPTARG" >&2
            exit 1
            ;;
    esac
done

# Check if the directory exists
if [ ! -d "$dir" ]; then
    echo "Error: Directory $dir does not exist."
    exit 1
fi

# Change to the directory
cd "$dir" || exit

# Determine the column headers
if [ "$show_exec" = true ]; then
    printf "%-30s %s\n" "Name" "Exec Command"
else
    printf "%-30s %s\n" "Name" "Filename"
fi
printf "%s\n" "------------------------------------------------------------"

for file in chrome-*.desktop; do
    # Check if any matching files exist
    if [ ! -e "$file" ]; then
        echo "No matching .desktop files found in $dir"
        exit 0
    fi

    # Extract Name from [Desktop Entry] section only
    name=$(sed -n '/^\[Desktop Entry\]/,/^\[/{ /^Name=/{ s/^Name=//p; q; }}' "$file")
    
    # Truncate name if it's longer than 29 characters
    if [ ${#name} -gt 29 ]; then
        name="${name:0:26}..."
    fi
    
    if [ "$show_exec" = true ]; then
        # Extract Exec field
        exec_command=$(sed -n '/^\[Desktop Entry\]/,/^\[/{ /^Exec=/{ s/^Exec=//p; q; }}' "$file")
        printf "%-30s %s\n" "$name" "$exec_command"
    else
        printf "%-30s %s\n" "$name" "$file"
    fi
done
