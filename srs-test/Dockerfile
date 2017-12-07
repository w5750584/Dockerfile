FROM xiaofengdi/tomcat8:debian-oracle-jre8
RUN apt-get update && \
    apt-get install -y --force-yes --no-install-recommends libpcre3 zlib1g && \
    apt-get install -y --force-yes --no-install-recommends python automake autoconf libtool build-essential wget ca-certificates unzip libpcre3-dev zlib1g-dev && \
    mkdir -p /data/install && \
    cd /data/install && \
    wget https://github.com/ossrs/srs/archive/v2.0-r1.tar.gz && \
    tar xvpf srs2.0-r1.tar.gz && \
    cd srs-2.0-r1/trunk && \
    ./configure --full --without-arm-ubuntu12 && \
    make && \
    cp -rL objs/ffmpeg/ /usr/local/ && \
    mkdir -p /usr/local/srs/objs/ && \
    mkdir -p /usr/local/srs/conf/ && \
    cp objs/srs /usr/local/srs/objs/ && \
    cd /data && \
    rm -rf /data/install && \
    apt-get remove -y --force-yes --purge --auto-remove automake autoconf libtool build-essential wget ca-certificates unzip libpcre3-dev zlib1g-dev && \
    rm -rf /var/lib/apt/lists/*
    
WORKDIR /data
