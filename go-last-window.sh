#!/bin/bash
HISTORY=~/yabai/window-history
CMD_FOCUS=~/yabai/focus-window-id.sh
LAST_WINDOW=$(head -n 1 $HISTORY);
$CMD_FOCUS $LAST_WINDOW
