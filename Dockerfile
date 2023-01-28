FROM ubuntu:latest
RUN  apt update
RUN  apt install apt-transport-https curl wget -y
RUN  curl -O plex.deb https://downloads.plex.tv/plex-media-server-new/1.30.2.6563-3d4dc0cce/debian/plexmediaserver_1.30.2.6563-3d4dc0cce_amd64.deb