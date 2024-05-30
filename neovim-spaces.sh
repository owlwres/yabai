#!/usr/bin/env zsh
#
# Description of the script.
TEST_STRING="neovim-.*"
yabai -m query --spaces | jq --raw-output ".[] | select(.label | test(\"$TEST_STRING\")) | .label" 
