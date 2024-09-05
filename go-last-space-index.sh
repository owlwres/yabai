#!/bin/bash
DIRECTORY=~/yabai
HISTORY=$DIRECTORY/space-history
LAST_SPACE=$(head -n 1 $HISTORY);
CMD_FOCUS=$DIRECTORY/focus-space-index.sh
$CMD_FOCUS $LAST_SPACE
