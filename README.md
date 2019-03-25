# dcvviewer

Prerequisite:
Copy a valid session file named file.dcv next to the Dockerfile

## Build
docker build -t dcvviewer .

## Run
docker run -it --rm -e DISPLAY=$DISPLAY -e DBUS_SESSION_BUS_ADDRESS=$DBUS_SESSION_BUS_ADDRESS -v /tmp/.X11-unix:/tmp/.X11-unix -v $HOME:$HOME --name gnome-builder dcvviewer
