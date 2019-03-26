FROM ubuntu:18.04

LABEL maintainer="camille.perin@protonmail.com"

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
       desktop-file-utils \
       libglib2.0-bin \
       libgtk2.0-bin \
       libasound2 \
       libcairo2 \
       libgdk-pixbuf2.0-0 \
       libgssapi-krb5-2 \
       libgtk-3-0 \
       libpango-1.0-0 \
       libpangocairo-1.0-0 \
       libpcsclite1 \
       libsqlite3-0 \
       libssl1.0.0 \
       libssl1.1 \
       libxml2 \
       wget \
&& rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Download DCV client from Nice wep page
RUN wget --no-check-certificate https://d1uj6qtbmh3dt5.cloudfront.net/client/nice-dcv-viewer_2017.3.683-1_amd64.ubuntu1804.deb
RUN dpkg --install nice-dcv-viewer_2017.3.683-1_amd64.ubuntu1804.deb

RUN useradd camille
USER camille
ENV HOME /home/camille

CMD dcvviewer

# docker run -it --rm -e DISPLAY=$DISPLAY -e DBUS_SESSION_BUS_ADDRESS=$DBUS_SESSION_BUS_ADDRESS -v /tmp/.X11-unix:/tmp/.X11-unix -v $HOME:$HOME --name gnome-builder dcvviewer
# docker run -it --rm -e DISPLAY=$DISPLAY -e DBUS_SESSION_BUS_ADDRESS=$DBUS_SESSION_BUS_ADDRESS -v /tmp/.X11-unix:/tmp/.X11-unix -v $HOME:$HOME --name gnome-builder dcvviewer dcvviewer ~/mySessionfile.dcv
