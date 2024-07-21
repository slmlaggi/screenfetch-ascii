#!/bin/bash

# Define your own color codes
c1='\033[0;37m'  # White
c2='\033[0;36m'  # Cyan
c3='\033[0;32m'  # Green
c4='\033[0;34m'  # Blue
c5='\033[0;31m'  # Red
reset='\033[0m'  # Reset color

# Read ASCII art from the file
mapfile -t ascii_art < ascii.txt

# OPTIONAL: Get song title using musicprofiler
# You can use other software to get song title, but musicprofiler works best for me
# Uncomment the line to use it
# songTitle=$(cd ~/musicprofiler && ./musicprofiler.exe)

# Get screenfetch output with your preferred tags (-n is to omit the default distro ascii art)
screenfetch_output=$(screenfetch -c ",\e[1;36" -n)

# Split screenfetch output into lines
IFS=$'\n' read -d '' -r -a info_lines <<< "$screenfetch_output"

# OPTIONAL: Add song information as a new line at the end of screenfetch output
# Uncomment the lines below to use it
# song_info="${c5}Song: \e[96m$songTitle"
# info_lines+=(" $song_info")

# Combine ASCII art with screenfetch output
combined_output=()
for i in "${!ascii_art[@]}"; do
    if [ $i -lt ${#info_lines[@]} ]; then
        combined_output+=("${ascii_art[$i]}${reset}  ${info_lines[$i]}")
    else
        combined_output+=("${ascii_art[$i]}${reset}")
    fi
done

# Print the combined output
printf '%b\n' "${combined_output[@]}"
