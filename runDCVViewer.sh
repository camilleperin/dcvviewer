#!/bin/bash

cd `dirname $0`

lastDCVSessionFile=`ls ~/Downloads/*.dcv --sort=time | head -n 1`
cp "$lastDCVSessionFile" /tmp/file.dcv

docker build -t dcvviewer .
docker run -it --rm -e DISPLAY=:1 -e DBUS_SESSION_BUS_ADDRESS=$DBUS_SESSION_BUS_ADDR -v /tmp/.X11-unix:/tmp/.X11-unix -v /home/camille:/home/camille --name dcvviewer dcvviewer dcvviewer "$lastDCVSessionFile"
