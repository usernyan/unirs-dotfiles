#!/bin/sh

export WM_NAME="dwm"
user_choice="$(printf "lock\nsleep\nhibernate\nreboot\nshutdown\nquit $WM_NAME\nrestart $WM_NAME" | dmenu -i)"

if [ "$user_choice" == 'lock' ]; then
  loginctl lock-session
elif [ "$user_choice" == 'sleep' ]; then
  systemctl suspend -i
elif [ "$user_choice" == 'hibernate' ]; then
  systemctl hibernate -i
elif [ "$user_choice" == 'reboot' ]; then
  systemctl reboot -i
elif [ "$user_choice" == 'shutdown' ]; then
  systemctl poweroff -i
elif [ "$user_choice" == "restart $WM_NAME" ]; then
  kill -HUP "$(pidof -s dwm)"
elif [ "$user_choice" == "quit $WM_NAME" ]; then
  kill -TERM "$(pidof -s dwm)"
fi
