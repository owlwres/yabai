#!/usr/bin/env zsh
#
# Description of the script.

SPACE=`yabai -m query --spaces | jq "map(select( .index == $1 ))"`
FIRST_WINDOW_OF_SPACE=`jq '.[0].windows[0]' <<< $SPACE`
yabai -m window --focus $FIRST_WINDOW_OF_SPACE
