#!/bin/bash

# Loop through each file provided as an argument by pre-commit
for file in "$@"; do
    # Check if the file is encrypted with ansible-vault
    if ! ansible-vault view "$file" &>/dev/null; then
        echo "Error: The file $file is not encrypted with ansible-vault."
        exit 1
    fi
done
