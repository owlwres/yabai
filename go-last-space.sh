#!/bin/bash
HISTORY=~/yabai/last-space.json
CMD_FOCUS=~/skhd/focus-space-id.sh
LAST_SPACE=`cat $HISTORY`;
$CMD_FOCUS $LAST_SPACE
