FROM xiaofengdi/alpine-glibc
MAINTAINER xiaofeng.di <w5750584@gmail.com>
ADD jdk /usr/java
ENV JAVA_HOME=/usr/java/ \
    CLASSPATH=$JAVA_HOME/lib \
    LANG=en_US.UTF8 \
    TIME_ZONE=Asia/Shanghai
RUN echo "${TIME_ZONE}" > /etc/timezone && \
    rm -rf /etc/localtime && \
    ln -sf /usr/share/zoneinfo/${TIME_ZONE} /etc/localtime
ENV PATH=${JAVA_HOME}/bin:${PATH}
