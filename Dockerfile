FROM ubuntu:latest
RUN sudo apt update
RUN sudo apt install plexmediaserver
RUN mkdir -p /opt/plexmedia/{movies,series}
