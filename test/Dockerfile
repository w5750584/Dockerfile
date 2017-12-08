FROM debian:latest
MAINTAINER Xiaofeng <w5750584@gmail.com>
RUN \
    apt-get update && \
    apt-get install -y --force-yes --no-install-recommends libpcre3 zlib1g vim && \
    apt-get install -y --force-yes --no-install-recommends python automake autoconf libtool* build-essential wget ca-certificates unzip libpcre3-dev zlib1g-dev && \
    mkdir -p /data/install && \
    cd /data/install && \
    wget https://github.com/w5750584/srs/releases/download/lolaage-r0/srs.tar.gz && \
    tar xvpf srs.tar.gz && \
    cd srs-2.0-r1/trunk
