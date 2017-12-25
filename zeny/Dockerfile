FROM ubuntu:xenial

MAINTAINER shamaton

ENV USERPASS "user.worker:password"
ENV THREAD_NUM "2"

WORKDIR /root

RUN apt-get update \
 && apt-get -y install \
    git \
    wget \
    libjansson-dev \
    automake \ 
    libtool \
    curl \
    libcurl3 \
    libcurl3-dev \
    make
 
WORKDIR /root
COPY start.sh /root/start.sh
RUN chmod a+x /root/start.sh

RUN git clone https://github.com/bitzeny/cpuminer \
 && cd cpuminer \
 && sh autogen.sh \
 && ./configure CFLAGS="-O3 -march=native -funroll-loops -fomit-frame-pointer"  \
 && make

CMD ["/root/start.sh"]
