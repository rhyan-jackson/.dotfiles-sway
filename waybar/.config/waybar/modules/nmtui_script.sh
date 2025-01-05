#!/bin/bash
#
# # Replace 'my_application' with the actual application name/executable
# app_name="bluetui"
#
# # Check if the application is running (process name might differ)
# if pgrep -x "$app_name" > /dev/null; then
#   # Application is running, terminate it
#   pkill -f "$app_name"
# else
#   # Application is closed, launch it
#   "$app_name" &  # "&" runs the app in the background
# fi

alacritty -e nmtui
