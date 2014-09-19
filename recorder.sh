#!/bin/bash
# timelapse
# Github: https://github.com/czyang/timelapse-bash
#
# Take screenshots at customize intervals then use ImageMagick
# process the image to get customize resolution and quality.
#
i=0;
while true; do
    timestamp=$(date '+%Y-%m-%dT%H%M%S');
    FILENAME=`printf 'output/screen/screen%010d.jpg' $i`
    echo "Capturing screen at $FILENAME";
    TEMP_NAME="output/screen/temp_$timestamp"
    screencapture -t jpg -x $TEMP_NAME;
    convert $TEMP_NAME -quality 80% -resize 800x600 $FILENAME
    rm $TEMP_NAME
    let i=i+1;

    sleep 1;
done;
