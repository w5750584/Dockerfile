FROM xiaofengdi/oracle-jre8:server-jre8
MAINTAINER xiaofeng.di <w5750584@gmail.com>
RUN apk add --no-cache curl tar  && \
    curl http://mirror.bit.edu.cn/apache/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz -o /tmp/apache-tomcat-8.5.20.tar.gz && \
    tar zxvf /tmp/apache-tomcat-8.5.20.tar.gz && \
    mv apache-tomcat-8.5.20 /usr/local/tomcat && \
    apk del curl tar && \
    rm -rf /tmp/* && \
    rm -rf /var/cache/apk/*
ENV CATALINA_HOME /usr/local/tomcat/
WORKDIR $CATALINA_HOME
EXPOSE 8080
CMD ["/usr/local/tomcat/bin/catalina.sh", "run"]
