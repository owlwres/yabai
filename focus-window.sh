#!/usr/bin/env zsh

# focuses window
# ./focus-window <application name> [<title>]
#
# TODO: incorporate fuzzy finder
#
# Example:
#
# $ yabai -m query --windows |jq 'map(select(.["is-native-fullscreen"] == false))' 
#
# {
#   "id": 11334,
#   "pid": 67246,
#   "app": "Safari",
#   "title": "Lua 5.4 Reference Manual",
#   "frame": {
#     "x": 0,
#     "y": 25,
#     "w": 1440,
#     "h": 875
#   },
#   "role": "AXWindow",
#   "subrole": "AXStandardWindow",
#   "display": 1,
#   "space": 5,
#   "level": 0,
#   "opacity": 1,
#   "split-type": "none",
#   "split-child": "none",
#   "stack-index": 0,
#   "can-move": true,
#   "can-resize": true,
#   "has-focus": false,
#   "has-shadow": true,
#   "has-border": false,
#   "has-parent-zoom": false,
#   "has-fullscreen-zoom": false,
#   "is-native-fullscreen": false,
#   "is-visible": false,
#   "is-minimized": false,
#   "is-hidden": false,
#   "is-floating": false,
#   "is-sticky": false,
#   "is-topmost": false,
#   "is-grabbed": false
# },
#
all_windows=$(~/skhd/all-windows.sh)

application_windows=$(jq "[.[][0] | select(.app | test(\".*${1}.*\"; \"ix\"))]" <<< "${all_windows}")

first_application_window_id=$(jq '.[0].id' <<< "${application_windows}")

~/skhd/focus-window-id.sh ${first_application_window_id}







