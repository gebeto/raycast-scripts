#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Create Release Date
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🕖

# Documentation:
# @raycast.author gebeto
# @raycast.authorURL https://github.com/gebeto


date=$(date +%d-%m-%Y)
result="release-$date"
echo "$result" | pbcopy
echo "Copied $result!"
