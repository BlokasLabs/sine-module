#!/bin/sh

. /usr/local/pisound/scripts/common/common.sh

CLICKS="$1"

killall jack_sine
jack_sine $(expr 220 \* $1 + 220) 0.3 &

flash_leds 10
