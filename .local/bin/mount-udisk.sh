#!/bin/bash

# 1: get available block devices
BLOCK_DEVS="$(udisksctl dump | grep "^\s*Device:" | sed 's/Device://;s/\s//g')"
# 2: ask the user for a choice
USER_DEV="$(printf "$BLOCK_DEVS" | dmenu -p "Mount:")"
# 3: mount the user's device
udisksctl mount -b "$USER_DEV"

#TODO: notify-send errors from udiskctl
