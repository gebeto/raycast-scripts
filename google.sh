#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Google
# @raycast.mode silent

# Optional parameters:
# @raycast.icon icons/google.png
# @raycast.argument1 { "type": "text", "placeholder": "Placeholder" }

# Documentation:
# @raycast.description Google query
# @raycast.author Slavik Nychkalo
# @raycast.authorURL https://github.com/gebeto

replaced=$(sed 's/ /+/g' <<< "$@")
open "https://www.google.com/search?q=$replaced"

