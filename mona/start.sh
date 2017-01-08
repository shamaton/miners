#!/bin/sh
echo "userpass -> $USERPASS"
echo "thead    -> $THREAD_NUM"
/root/cpuminer-multi/cpuminer -a lyra2rev2 -o stratum+tcp://vippool.net:8888 --userpass=$USERPASS -t $THREAD_NUM
