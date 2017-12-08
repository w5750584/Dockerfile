#FROM debian:latest
FROM debian:wheezy
MAINTAINER Xiaofeng <w5750584@gmail.com>
RUN echo "Asia/Shanghai" > /etc/timezone && \
    rm -rf /etc/localtime && \
    ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    apt-get update && \
    apt-get -y install curl && \
    curl -jksSLH "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u151-b12/e758a0de34e24606bca991d704f6dcbf/jre-8u151-linux-x64.tar.gz -o /tmp/jre-8u151-linux-x64.tar.gz  && \
    tar zxvf  /tmp/jre-8u151-linux-x64.tar.gz && \
    mv jre1.8.0_151 /usr/java && \
    rm -rf /usr/java/COPYRIGHT /usr/java/LICENSE /usr/java//usr/java/README.html /usr/java/release /usr/java/THIRDPARTYLICENSEREADME.txt && \
    rm -rf /tmp/* && \
    apt-get -y remove curl && \
    rm -rf /var/lib/apt/*
ENV JAVA_HOME=/usr/java/ \
    CLASSPATH=$JAVA_HOME/lib \
    LANG=zh_CN.UTF-8
ENV PATH=${JAVA_HOME}/bin:${PATH}debian-oracle-jre8
