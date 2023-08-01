#!/bin/sh

vol="$(pulsemixer --get-volume | cut -d ' ' -f 1)"
muted="$(pulsemixer --get-mute)"

printf "%s" "$vol"
if [ "$muted" == 1 ]; then
  printf "(muted)"
fi
