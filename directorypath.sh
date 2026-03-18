#!/bin/bash

echo "Enter directory path: "
read directory

num_files=$(find "$directory" -type f | wc -l)
num_directories=$(find "$directory" -type d | wc -l)

# MLMCE, ETTUMANUR
# 5220MCA136 NETWORKING & SYSTEM ADMINISTRATION LAB
# DEPT. OF COMPUTER APPLICATIONS

echo "Number of files: $num_files"
echo "Number of directories: $num_directories"
