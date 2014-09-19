#!/bin/bash
# timelapse-bash
# Github: https://github.com/czyang/timelapse-bash
#
# Create timelapse video from images in the output/screen folders and remove the images.
#
timestamp=$(date '+%Y-%m-%d-%H%M%S');
nice ffmpeg -r 24 -i output/screen/screen%10d.jpg output/videos/timelapse-$timestamp.mov
rm output/screen/*.jpg
