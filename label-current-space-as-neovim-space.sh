#!/usr/bin/env zsh
#
# Applies the neovim label to the current space.
LABEL_PREFIX="neovim"
yabai -m space --label $LABEL_PREFIX-$1
