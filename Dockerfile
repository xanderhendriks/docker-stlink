FROM ubuntu:20.04

MAINTAINER Xander Hendriks <xander.hendriks@nx-solutions.com>

ENV DEBIAN_FRONTEND=noninteractive

ENV TZ=Etc/UTC

RUN apt-get -y update && \
	apt-get -y install git gcc build-essential cmake libusb-1.0 libusb-1.0-0-dev

# Clone and build stlink
RUN git clone -b v1.7.0 https://github.com/stlink-org/stlink.git && \
    cd stlink && \
    make clean && \
    make release && \
    make install && \
    ldconfig
