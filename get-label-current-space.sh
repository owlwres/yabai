#!/usr/bin/env zsh
#
# Description of the script.
yabai -m query --spaces --space | jq --raw-output ".label"
