#!/bin/bash
FUTURE=~/yabai/future-spaces.json
LOCK=~/yabai/lock.json
CMD_FOCUS=~/skhd/focus-space-id.sh
CMD_PUSH_HISTORY=~/yabai/push-history.sh
CALL_CURRENT_SPACE=~/yabai/current-space-id.sh

SPACES=`cat $FUTURE`
LAST_SPACE=`jq '.[0]' <<< $SPACES`
if [[ $LAST_SPACE == null ]]; then
	exit;
fi

SPACES=`jq '.[1:]' <<< $SPACES`
cat > $FUTURE <<< $SPACES
$CMD_PUSH_HISTORY `$CALL_CURRENT_SPACE`
echo 'LOCK' > $LOCK
$CMD_FOCUS $LAST_SPACE
