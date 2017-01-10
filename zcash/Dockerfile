FROM ubuntu:xenial

MAINTAINER shamaton

ENV WORKER "worker"
ENV PASSWD "pass"
ENV THREAD_NUM "2"

RUN apt-get update -y
RUN apt-get install -y \
      cmake \ 
      build-essential \
      libboost-all-dev \
      wget \
      git
RUN cd ~/ \
 && git clone -b Linux https://github.com/nicehash/nheqminer.git \
 && cd nheqminer/cpu_xenoncat/Linux/asm/ \
 && sh assemble.sh \
 && cd ../../../Linux_cmake/nheqminer_cpu_xenoncat \
 && cmake . \
 && make -j $(nproc) 

COPY start.sh /root/start.sh
RUN chmod a+x /root/start.sh

CMD ["sh", "/root/start.sh"]
