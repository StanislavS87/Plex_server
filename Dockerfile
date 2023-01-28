FROM ubuntu:latest
RUN  apt update
RUN apt-get install plexmediaserver -y
EXPOSE 32400