#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Toggle Mute Input
# @raycast.mode inline
# @raycast.refreshTime 1d

# Optional parameters:
# @raycast.icon 🤫
# @raycast.packageName Developer Utils

# Documentation:
# @raycast.description Toggle microphone mute
# @raycast.author Slavik Nychkalo
# @raycast.authorURL https://github.com/gebeto


input_volume=$(osascript -e "get volume settings" | awk -F', ' '{print $2}' | awk -F':' '{print $2}')

if [[ "$input_volume" = "0" ]]; then
	osascript -e "set volume input volume 100"
	echo -e "\\033[32mNot Muted"
else
	osascript -e "set volume input volume 0"	
	echo -e "\\033[31mMuted"
fi
