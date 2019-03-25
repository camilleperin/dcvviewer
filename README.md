# dcvviewer

Download Nice DCV client package for ubuntu from http://www.nice-software.com/download/dcv

Copy a valid session file named file.dcv next to the Dockerfile

## Build
docker build -t dcvviewer .

## Run
docker run -it --rm -e DISPLAY=:1 -e DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus,guid=ba665ea27cb302dc46f8e0ae5c93be4c -v /tmp/.X11-unix:/tmp/.X11-unix -v /home/camille:/home/camille --name dcvviewer dcvviewer
