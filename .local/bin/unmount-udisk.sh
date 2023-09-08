#!/bin/bash

# 1: get available block devices
BLOCK_DEVS="$(udisksctl dump | grep "^\s*Device:" | sed 's/Device://;s/\s//g')"
# 2: ask the user for a choice
USER_DEV="$(printf "$BLOCK_DEVS" | dmenu -p "Unmount:")"
[ "$USER_DEV" == "" ] && exit 0
# 3: mount the user's device
MESSAGE="$(udisksctl unmount -b "$USER_DEV" 2>&1)"
notify-send "$MESSAGE"
