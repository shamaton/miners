#!/bin/sh
echo "worker -> $WORKER"
echo "passwd -> $PASSWD"
echo "thread -> $THREAD_NUM"
/root/nheqminer/Linux_cmake/nheqminer_cpu_xenoncat/nheqminer_cpu_xenoncat -l zec-apac.suprnova.cc:2142 -u $WORKER -p $PASSWD -t $THREAD_NUM
