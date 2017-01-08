FROM ubuntu:xenial

MAINTAINER shamaton

ENV USERPASS "worker:pass"
ENV THREAD_NUM "2"

RUN apt-get update -y \
 && apt-get install -y \
      automake \
	  autoconf \
	  pkg-config \
	  libcurl4-openssl-dev \
	  libjansson-dev libssl-dev \
	  libgmp-dev \
	  make \
	  g++ \
	  git

WORKDIR /root
COPY start.sh /root/start.sh
RUN chmod a+x /root/start.sh

RUN git clone https://github.com/tpruvot/cpuminer-multi \
 && cd cpuminer-multi/ \
 && ./build.sh \
 && ./autogen.sh

CMD ["/root/start.sh"]
