#!/bin/sh
yabai -m signal --add event=space_changed action="~/yabai/space-changed-internal.sh"
yabai -m signal --add event=space_changed action="~/yabai/space-changed-internal-alt.sh"
