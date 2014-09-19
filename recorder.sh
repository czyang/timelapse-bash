#!/bin/bash
# timelapse
#
# Modify frome: https://github.com/patrickward/osx-timelapse
# Records a sequence of screencaptures at regular intervals.
#
# Require: imageMagick
#
# Usage: ./timelapse.sh to start.
# In line:"convert $TEMP_NAME -quality 50% -resize 50% $FILENAME"
# Change resize argument can get the custom resolution, eg. -resize 1024x768
# Change quality can custom screenshoot quality.
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
