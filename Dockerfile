FROM ubuntu:bionic
USER root
RUN whoami
# Set user and group
ARG user=appuser
ARG group=appuser
ARG uid=1000
ARG gid=1000
RUN groupadd -g ${gid} ${group}
RUN useradd -u ${uid} -g ${group} -s /bin/sh -m ${user} # <--- the '-m' create a user home directory
ENV DEBIAN_FRONTEND="noninteractive" \
  PLEX_DOWNLOAD="https://downloads.plex.tv/plex-media-server-new" \
  PLEX_ARCH="amd64" \
  PLEX_MEDIA_SERVER_APPLICATION_SUPPORT_DIR="/config/Library/Application Support" \
  PLEX_MEDIA_SERVER_HOME="/usr/lib/plexmediaserver" \
  PLEX_MEDIA_SERVER_MAX_PLUGIN_PROCS="6" \
  PLEX_MEDIA_SERVER_USER="abc" \
  PLEX_MEDIA_SERVER_INFO_VENDOR="Docker" \
  PLEX_MEDIA_SERVER_INFO_DEVICE="Docker Container (LinuxServer.io)"
RUN  apt update
RUN  apt install apt-transport-https curl wget -y
RUN  wget -O plex2.deb https://downloads.plex.tv/plex-media-server-new/1.30.2.6563-3d4dc0cce/debian/plexmediaserver_1.30.2.6563-3d4dc0cce_amd64.deb
RUN  dpkg -i ./plex2.deb
