#!/bin/bash
HISTORY=~/yabai/spaces.json
LOCK=~/yabai/lock.json
CMD_FOCUS=~/skhd/focus-space-id.sh
CMD_PUSH_FUTURE=~/yabai/push-future.sh
CALL_CURRENT_SPACE=~/yabai/current-space-id.sh

SPACES=`cat $HISTORY`
LAST_SPACE=`jq '.[-1]' <<< $SPACES`
if [[ $LAST_SPACE == null ]]; then
	exit;
fi

SPACES=`jq '.[:-1]' <<< $SPACES`
cat > $HISTORY <<< $SPACES
$CMD_PUSH_FUTURE `$CALL_CURRENT_SPACE`
echo 'LOCK' > $LOCK
$CMD_FOCUS $LAST_SPACE
