#!/bin/bash

# password rules:
# minimum 8 characters
# must contain alphabet and number
# must include both lowercase and uppercase letters

read -p "Enter your password: " password

# Check length
if [[ ${#password} -lt 8 ]]; then
    echo "Password length must be at least 8 characters."
    exit 1
fi

# Check for at least one letter AND one number
if [[ ! "$password" =~ [A-Za-z] || ! "$password" =~ [0-9] ]]; then
    echo "Password must contain both alphabet and number."
    exit 1
fi

# Check for both lowercase and uppercase letters
if [[ ! "$password" =~ [a-z] || ! "$password" =~ [A-Z] ]]; then
    echo "Password must include both small and capital case letters."
    exit 1
fi

echo "Password is valid."
