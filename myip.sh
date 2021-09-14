#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title My IP
# @raycast.mode inline
# @raycast.refreshTime 1d

# Optional parameters:
# @raycast.icon 💻
# @raycast.packageName Developer Utils

# Documentation:
# @raycast.description my ip
# @raycast.author Slavik Nychkalo
# @raycast.authorURL https://github.com/gebeto

response=$(curl --silent "https://api.myip.com" | jq -r '.ip')
echo -e "\\033[32m$response"
