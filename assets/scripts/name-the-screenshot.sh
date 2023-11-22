#!/bin/bash

# Default directory for saving screenshots
default_dir=~/Github/Triennale/II/Paradigmi_di_Programmazione/assets/
extension=".png"

# Use slurp to select an area and grim to take a screenshot of that area
selection=$(slurp)
tmpfile=$(mktemp --suffix=".png")

# Check if the selection is not empty
if [ -n "$selection" ]; then
    grim -g "$selection" "$tmpfile"

    # Prompt for the file name using Zenity
    filename=$(env GTK_THEME=Adwaita:dark zenity --entry --title="Save Screenshot" --text="Enter the desired filename:")

    # If a filename was provided, save the screenshot with that name
    if [ -n "$filename" ]; then
        mv "$tmpfile" "$default_dir$filename$extension"
    else
        rm "$tmpfile"
    fi
fi
