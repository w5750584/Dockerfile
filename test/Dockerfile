FROM debian:latest
MAINTAINER Xiaofeng <w5750584@gmail.com>
RUN echo "Asia/Shanghai" > /etc/timezone && \
    rm -rf /etc/localtime && \
    ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    apt-get update && \
    apt-get -y install curl vim 
