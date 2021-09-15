#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title My IP local
# @raycast.mode inline
# @raycast.refreshTime 1d

# Optional parameters:
# @raycast.icon 💻
# @raycast.packageName Developer Utils

# Documentation:
# @raycast.description my ip
# @raycast.author Slavik Nychkalo
# @raycast.authorURL https://github.com/gebeto

local_ip=$(ifconfig | grep 'inet.*broadcast' | awk '{print $2}')

echo -e "\\033[32m$local_ip"
