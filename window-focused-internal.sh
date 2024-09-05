#!/usr/bin/env zsh
#
# Description of the script.
WINDOW_HISTORY=~/yabai/window-history
DIRECTORY=~/yabai
LAST_WINDOW_ID=$(tail -n 1 $WINDOW_HISTORY)
TEMPORARY_FILE_TEMPLATE=`basename $0`
TMPFILE=`mktemp /tmp/${TEMPORARY_FILE_TEMPLATE}.XXXXXX` || exit 1
if [[ "$LAST_WINDOW_ID" != "$YABAI_WINDOW_ID" ]]; then
  # ~/yabai/display-notification.sh "last window id is: $LAST_WINDOW_ID and yabai_window_id is $YABAI_WINDOW_ID"
  echo $LAST_WINDOW_ID > $TMPFILE
  echo $YABAI_WINDOW_ID >> $TMPFILE
  mv $TMPFILE $WINDOW_HISTORY
fi
