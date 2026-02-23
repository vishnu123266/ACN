#!/bin/bash

INPUT_FILE="grades.txt"

# Check if file exists
if [[ ! -f "$INPUT_FILE" ]]; then
    echo "Input file not found!"
    exit 1
fi

# Declare associative array (Bash 4+ required)
declare -A grades

# Read file safely
while IFS=',' read -r name grade; do
    # Skip empty lines
    [[ -z "$name" ]] && continue
    grades["$name"]="$grade"
done < "$INPUT_FILE"

# Print results
for name in "${!grades[@]}"; do
    echo "$name: ${grades[$name]}"
done
