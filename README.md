Timelapse Bash Script

This two Mac OS bash scripts are made for take timed screenshots and put them together in a video.

USE AT YOUR OWN RISK. The License is WTFPL (see LICENSE.txt).

## Features

- Take screenshots by custom interval.
- Custom screenshot's resolution and quality.
- Gather screenshots to create a video.

## Requirements

- System: Mac OS X (10.8 or later)
- screencapture (built in to Mac OS X)
- [ImageMagick](http://www.imagemagick.org)
- [ffmpeg](http://ffmpeg.org/)

## Useage
`./recorder` to start recorder.
'Ctrl+C' to stop.
`./create-video.sh` to make the video.

## For customize:
In file recorder.sh
- Change screenshot's qulity by change "-quality 80%" in line 21.
- Change screenshot's resolution by change "-resize 800x600" to what you want value like: "-resize 1024x768" or "-resize 100%"
- Change screenshot capture interval by change "sleep 1;", default is take screenshot every 1 seconds.

In file make_video.sh
- To keep the screenshots after created the video, comments the line: rm output/screen/*.jpg
- Change the result vedio fps by change "ffmpeg -r 24" default is 24 fps.

## Credits
This project crate by chengzhi yang. 
Actually this project is modify from [osx-timelapse](https://github.com/patrickward/osx-timelapse)(written by Patrick Ward) for support
high resolution screen such as Retina screen.
