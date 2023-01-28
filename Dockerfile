FROM ubuntu:latest
RUN  apt update
RUN  apt install apt-transport-https curl wget -y
RUN  curl -O plex.deb https://downloads.plex.tv/plex-media-server-new/1.30.2.6563-3d4dc0cce/debian/plexmediaserver_1.30.2.6563-3d4dc0cce_amd64.deb?_gl=1*pni1tn*_ga*MTAyOTUyNzA1NC4xNjc0MzExMTkx*_ga_G6FQWNSENB*MTY3NDkyNTQwOS40LjAuMTY3NDkyNTQwOS4wLjAuMA..
EXPOSE 32400