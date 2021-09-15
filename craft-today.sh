#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Craft Uplift
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🤖
# @raycast.argument1 { "type": "text", "placeholder": "Content", "optional": true, "percentEncoded": true }

# Documentation:
# @raycast.author Slavik Nychkalo
# @raycast.authorURL https://github.com/gebeto

SPACE_ID="7cd0f28b-e20d-2f9c-d437-8347eca7653c"
FOLDER_ID="56B8C570-3455-402C-848F-FD87060795CA"

open "craftdocs://createdocument?spaceId=$SPACE_ID&folderId=$FOLDER_ID&title=&content=$1"
