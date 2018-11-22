#!/bin/bash

../v4l2-ctl --device=/dev/video2 --set-ctrl=exposure=128
gst-launch-1.0 -v rkcamsrc device=/dev/video2 io-mode=4 isp-mode=0A ! videoconvert  !video/x-raw,format=Y41B,width=1280,height=968,framerate=10/1 ! rtpvrawpay ! udpsink host=172.16.7.134 port=3000

