#!/usr/bin/env zsh
#
# Focuses a space with the given label prefix and index.

LABEL_PREFIX=$1
INDEX=$2
TEST_STRING=$LABEL_PREFIX-$INDEX

DESIRED_SPACE=$(yabai -m query --spaces | jq --raw-output ".[] | select(.label | test(\"$TEST_STRING\"))") 
if [[ -z $DESIRED_SPACE ]]; then
  exit
fi

DESIRED_SPACE_INDEX=$(jq --raw-output '.index'<<<${DESIRED_SPACE}) 
DESIRED_SPACE_ID=$(jq --raw-output '.index'<<<${DESIRED_SPACE}) 

CURRENT_SPACE_ID=$(<~/yabai/current-space.json)
if [[ $CURRENT_SPACE_ID -eq $DESIRED_SPACE_ID ]]; then
  ~/yabai/go-last-space.sh
  exit
fi

DESIRED_WINDOW_ID=$(yabai -m query --windows --space $DESIRED_SPACE_INDEX | jq '.[0].id')

echo 'desired window id: '$DESIRED_WINDOW_ID
~/skhd/focus-window-id.sh ${DESIRED_WINDOW_ID}
