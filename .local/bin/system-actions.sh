#!/bin/sh

user_choice="$(printf "lock\nsleep\nhibernate\nreboot\nshutdown" | dmenu -i)"

if [ "$user_choice" == 'lock' ]; then
  loginctl lock-session
elif [ "$user_choice" == 'sleep' ]; then
  systemctl suspend -i
elif [ "$user_choice" == 'hibernate' ]; then
  systemctl hibernate -i
elif [ "$user_choice" == 'reboot' ]; then
  systemctl reboot -i
elif [ "$user_choice" == 'hibernate' ]; then
  systemctl poweroff -i
fi
