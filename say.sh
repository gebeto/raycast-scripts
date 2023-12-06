#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Say
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 🎙️
# @raycast.argument1 { "type": "text", "placeholder": "Text" }
# @raycast.argument2 { "type": "text", "placeholder": "Voice", "optional": true }

# Documentation:
# @raycast.description Say
# @raycast.author gebeto
# @raycast.authorURL https://raycast.com/gebeto

say ""$1"" --voice="${2:-Grandpa}"

