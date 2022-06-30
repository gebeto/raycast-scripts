#!/bin/zsh

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Remind
# @raycast.mode compact

# Optional parameters:
# @raycast.icon ✅
# @raycast.packageName Productivity
# @raycast.argument1 { "type": "text", "placeholder": "to have a call in 20 minutes" }

# Documentation:
# @raycast.description Rmind wrapper
# @raycast.author gebeto
# @raycast.authorURL https://github.com/gebeto

rmind ${1}

