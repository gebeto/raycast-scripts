#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title My IP
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 🌎
# @raycast.packageName Developer Utils

# Documentation:
# @raycast.description My IP
# @raycast.author Slavik Nychkalo
# @raycast.authorURL https://github.com/gebeto


response=$(curl --silent "https://api.myip.com" | jq -r '.ip')

echo "$response"