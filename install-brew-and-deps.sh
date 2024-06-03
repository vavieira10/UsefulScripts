#!/bin/bash

# Check if an argument was provided
if [ -z "$1" ]; then
    echo "Usage: $0 <file_path>"
    exit 1
fi

FILE=$1

# Check if the file exists
if [ ! -e "$FILE" ]; then
    echo "File not found!"
    exit 1
fi

echo "Installing brew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Use the file path as an argument to another command (wc in this example)
echo "Installing brew packages in $FILE:"
xargs brew install < $FILE


