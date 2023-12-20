#!/bin/bash
HISTORY=~/yabai/spaces.json
SPACES=`cat $HISTORY`
SPACES=`jq "[ .[-9:][], $1 ]" <<< $SPACES`
cat > $HISTORY <<< $SPACES
