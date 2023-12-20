#!/bin/bash
FILENAME=~/yabai/spaces.json
SPACES=`cat $FILENAME`
jq '.[-1]' <<< $SPACES
