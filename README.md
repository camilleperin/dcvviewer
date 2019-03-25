# dcvviewer

Download Nice DCV client package for ubuntu from http://www.nice-software.com/download/dcv

Copy a valid session file named file.dcv next to the Dockerfile

## Build
docker build -t dcvviewer .

## Run
docker run -it --rm -e DISPLAY=:1 -e DBUS_SESSION_BUS_ADDRESS=$DBUS_SESSION_BUS_ADDR -v /tmp/.X11-unix:/tmp/.X11-unix -v /home/camille:/home/camille --name dcvviewer dcvviewer
