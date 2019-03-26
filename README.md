# dcvviewer

Prerequisite:
Copy a valid session file named file.dcv next to the Dockerfile

## Build
docker build -t dcvviewer .

## Run dcvviewer without session file
docker run -it --rm -e DISPLAY=$DISPLAY -e DBUS_SESSION_BUS_ADDRESS=$DBUS_SESSION_BUS_ADDRESS -v /tmp/.X11-unix:/tmp/.X11-unix -v $HOME:$HOME --name gnome-builder dcvviewer

## Run dcvviewer with a session file

Home dir is mapped so :

docker run -it --rm -e DISPLAY=$DISPLAY -e DBUS_SESSION_BUS_ADDRESS=$DBUS_SESSION_BUS_ADDRESS -v /tmp/.X11-unix:/tmp/.X11-unix -v $HOME:$HOME --name gnome-builder dcvviewer dcvviewer ~/mySessionfile.dcv
