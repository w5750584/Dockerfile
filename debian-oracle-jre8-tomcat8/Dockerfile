FROM xiaofengdi/oracle-jre8:debian-jre8
MAINTAINER xiaofeng.di <w5750584@gmail.com>
RUN apt-get update && \
    apt-get -y install curl && \
    curl http://mirrors.hust.edu.cn/apache/tomcat/tomcat-8/v8.5.24/bin/apache-tomcat-8.5.24.tar.gz -o /tmp/apache-tomcat-8.5.24.tar.gz && \
    tar zxvf /tmp/apache-tomcat-8.5.24.tar.gz && \
    mv apache-tomcat-8.5.24 /usr/local/tomcat && \
    apt-get -y remove curl && \
    rm -rf /var/lib/apt/* && \
    rm -rf /usr/local/tomcat/webapps/* && \
    rm -rf /tmp/*
ENV CATALINA_HOME /usr/local/tomcat/
WORKDIR $CATALINA_HOME
EXPOSE 8080
CMD ["/usr/local/tomcat/bin/catalina.sh", "run"]
