#!/bin/sh

# Terminate already running bar instances
pkill polybar
 
# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
 
# Launch bar
polybar top &
 
echo "Top bar launched"
