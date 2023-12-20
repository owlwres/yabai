#!/bin/bash
FUTURE=~/yabai/future-spaces.json
SPACES=`cat $FUTURE`
SPACES=`jq "[ $1, .[:9][] ]" <<< $SPACES`
cat > $FUTURE <<< $SPACES
