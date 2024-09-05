#!/usr/bin/env zsh
#
# Description of the script.                                                                 
yabai -m signal --add event=application_front_switched action="~/yabai/application-front-changed-internal.sh"
