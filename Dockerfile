FROM ubuntu:latest
RUN  apt update
RUN  apt-get update
RUN  apt-get install plexmediaserver
RUN mkdir -p /opt/plexmedia/{movies,series}
EXPOSE 32400