#!/bin/sh
governors="$(cpupower frequency-info | sed --quiet '/available cpufreq governors/p' | sed 's/^.*: //' )"
user_choice="$(printf "%s\n" "$governors" | sed 's/ /\n/g' | dmenu -p "What CPU Freq Governor?" -i)"
test -n "$user_choice" || exit
#Note: give the user perms to run cpupower without a password
sudo cpupower frequency-set --governor "$user_choice"
notify-send "CPU Freq Governor:$user_choice"

