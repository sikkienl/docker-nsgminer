#FROM alpine:latest
FROM ubuntu:bionic
MAINTAINER SikkieNL

### Install Dependencies
RUN apt-get update && \
	apt-get upgrade -y

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
	bash git wget python3\
    build-essential libtool autotools-dev automake pkg-config libssl-dev libevent-dev bsdmainutils \
    libssl-dev \
    libgmp-dev \
    libcurl4-openssl-dev \
    libjansson-dev \
    zlib1g-dev && \
    apt-get clean

### Build CPU Miner			
#  git clone https://github.com/JayDDee/cpuminer-opt && \
#  cd cpuminer-opt && \
#	./autogen.sh && \
#	CFLAGS="-O3 -march=native -Wall" ./configure --with-curl && \
#	make -j n && \

### Entrypoint Setup
  WORKDIR /cpuminer