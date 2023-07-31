for b in /sys/class/power_supply/BAT?
do
  capacity="$(cat "$b"/capacity)"
  status="$(cat "$b"/status)"
  printf "%s:%s%%" "$status" "$capacity"
done