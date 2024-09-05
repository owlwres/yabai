#!/usr/bin/env zsh

# Description of the script.
 osascript -ss - $1 <<EOF

    on run argv -- argv is a list of 3 strings
        display notification item 1 of argv
    end run

EOF
