FROM debian:wheezy
MAINTAINER Kazuhiro NISHIYAMA
ADD sources.list /etc/apt/
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y git live-build rake sudo
RUN git clone https://github.com/znz/rubylive
RUN cd rubylive && rake
