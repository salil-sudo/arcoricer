#!/bin/bash


# This is your default laptop screen, detect by running `xrandr`
INTERNAL_OUTPUT="eDP1"

# choices will be displayed in dmenu
choices="laptop\ndual\nexternal\nclone"

# Your choice in dmenu will determine what xrandr command to run
chosen=$(echo -e $choices | dmenu -i)

# This is used to determine which external display you have connected
# This may vary between OS. e.g VGA1 instead of VGA-1
if [ `xrandr | grep VGA1 | grep -c ' connected '` -eq 1 ]; then
        EXTERNAL_OUTPUT="VGA1"
fi
if [ `xrandr | grep DVI1 | grep -c ' connected '` -eq 1 ]; then
        EXTERNAL_OUTPUT="DVI1"
fi
if [ `xrandr | grep HDMI1 | grep -c ' connected '` -eq 1 ]; then
        EXTERNAL_OUTPUT="HDMI1"
fi
if [ `xrandr | grep HDMI2 | grep -c ' connected '` -eq 1 ]; then
        EXTERNAL_OUTPUT="HDMI2"
fi
if [ `xrandr | grep HDMI3 | grep -c ' connected '` -eq 1 ]; then
        EXTERNAL_OUTPUT="HDMI3"
fi

#removed DPx lines

#echo $EXTERNAL_OUTPUT
# xrander will run and turn on the display you want, if you have an option for 3 displays, this will need some modifications
case "$chosen" in
    external) xrandr --output $INTERNAL_OUTPUT --off --output $EXTERNAL_OUTPUT --auto --primary ;;
    laptop) xrandr --output $INTERNAL_OUTPUT --auto --primary --output $EXTERNAL_OUTPUT --off ;;
    clone) xrandr --output $INTERNAL_OUTPUT --auto --output $EXTERNAL_OUTPUT --auto --same-as $INTERNAL_OUTPUT ;;
    dual) xrandr --output $INTERNAL_OUTPUT --auto --output $EXTERNAL_OUTPUT --auto --right-of $INTERNAL_OUTPUT --primary ;;

esac
