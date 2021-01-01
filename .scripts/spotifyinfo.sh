#!/bin/bash

/home/salil/.scripts/reload_dunst.sh
notify-send "$(spotifycli --song)" "$(spotifycli --artist)"
