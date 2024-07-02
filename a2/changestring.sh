#!/bin/bash

echo "Enter the directory name"
read directory

echo "Enter the string to search for"
read old_string

echo "Enter the string to replace with"
read new_string

changed_files=()
for file in "$directory"/*.txt; do
    if grep -q "$old_string" $file; then
        sed -i "s/$old_string/$new_string/" "$file"
        changed_files+=("$file")
   fi
done

if [ ${#changed_files[@]} -eq 0 ]; then
    echo "No files were changed."
else
    echo "The following files were changed:"
    for file in "${changed_files[@]}"; do
        echo "$file"
    done
fi
