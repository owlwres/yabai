#!/bin/sh
FUTURE=~/yabai/future-spaces.json
DIRECTORY=~/yabai
LOCKFILE=$DIRECTORY/lock.json
LOCK=`cat $LOCKFILE`
if [[ -z $LOCK ]]; then
	$DIRECTORY/push-history.sh $YABAI_RECENT_SPACE_ID
	echo "[]" > $FUTURE
fi
echo > $LOCKFILE
