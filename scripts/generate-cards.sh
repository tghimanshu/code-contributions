#!/bin/bash

# ==============================================================================
# Script Name: generate-cards.sh
# Description: Generates the `scripts/contributors.js` file by listing all HTML
#              files in the `contributors` directory.
#
# Usage:       ./scripts/generate-cards.sh
#
# This script scans the `contributors` directory for `.html` files and constructs
# a JavaScript array containing these filenames. The output is written to
# `scripts/contributors.js`.
# ==============================================================================

# Directory containing the contributor HTML cards
CARDS_DIR="contributors"

# Output JavaScript file to be generated
OUTPUT_FILE="scripts/contributors.js"

# Check if the cards directory exists
# Exits with error code 1 if the directory is not found.
if [ ! -d "$CARDS_DIR" ]; then
  echo "Error: Directory $CARDS_DIR does not exist."
  exit 1
fi

# Start generating the JavaScript array
# Writes the opening declaration of the array to the output file.
echo "const contributorFiles = [" > "$OUTPUT_FILE"

# List all HTML files in the cards directory
# 1. find: Searches for files (-type f) ending in .html (-name "*.html") in CARDS_DIR.
# 2. sed: Formats each path to be a JavaScript string element.
#    - Removes the directory prefix.
#    - Wraps the filename in double quotes and adds indentation and a comma.
# 3. >>: Appends the result to the output file.
find "$CARDS_DIR" -type f -name "*.html" | sed "s|^$CARDS_DIR/|  \"|; s|$|\",|" >> "$OUTPUT_FILE"

# Close the JavaScript array
# Appends the closing bracket and semicolon to the output file.
echo "];" >> "$OUTPUT_FILE"

# Print a success message with the count of generated entries.
echo "$OUTPUT_FILE generated successfully with $(ls -1 $CARDS_DIR/*.html | wc -l | xargs) files."
