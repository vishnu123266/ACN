#!/bin/bash

search_dir="."

# Use find with -print0 and a while loop to handle spaces safely
count=0

while IFS= read -r -d '' file; do
    occurrences=$(grep -o "Linux" "$file" | wc -l)
    count=$((count + occurrences))
done < <(find "$search_dir" -type f -name "*.txt" -print0)

echo "Total count of 'Linux' in all .txt files: $count"
