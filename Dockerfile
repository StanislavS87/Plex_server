FROM ubuntu:latest
RUN  apt update
RUN  apt install apt-transport-https curl wget -y
RUN  wget -O https://downloads.plex.tv/plex-keys/PlexSign.key | gpg --dearmor | sudo tee /usr/share/keyrings/plex.gpg
RUN  deb [signed-by=/usr/share/keyrings/plex.gpg] https://downloads.plex.tv/repo/deb public main | sudo tee /etc/apt/sources.list.d/plexmediaserver.list
RUN  apt-get install plexmediaserver -y
EXPOSE 32400