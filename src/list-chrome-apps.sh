#!/bin/bash

   # Set the directory path
   dir="$HOME/.local/share/applications"

   # Check if the directory exists
   if [ ! -d "$dir" ]; then
       echo "Error: Directory $dir does not exist."
       exit 1
   fi

   # Change to the directory
   cd "$dir" || exit

   printf "%-30s %s\n" "Name" "Filename"
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
       
       printf "%-30s %s\n" "$name" "$file"
   done
