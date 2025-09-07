#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Usage: $0 <appname>"
    exit 1
fi

# find class selector
selector=$(hyprctl clients | grep -i -oP -m 1 "class: \K\S*${1}\S*")

# if program running, focuswindow
if [ -n "$selector" ]; then
    hyprctl dispatch focuswindow "class:$selector"

# if not running, check for special launch case
else
    case $1 in
    chromium)                    # application name provided to the script, $1
        omarchy-launch-browser & # launch command for the app, & runs it in the background
        ;;
    obsidian)
        uwsm app -- obsidian -disable-gpu &
        ;;

    # fallback case, if no launch command specified, launch using script argument

    *)
        if command -v "$1" >/dev/null 2>&1; then
            "$1" &
        else
            echo "No rule or executable found for '$1'."
        fi
        ;;
    esac
fi
