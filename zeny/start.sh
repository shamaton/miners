#!/bin/sh
echo "userpass -> $USERPASS"
echo "thread   -> $THREAD_NUM"
/root/cpuminer/minerd  -o stratum+tcp://stratum01.hogepool.net:3333 -O $USERPASS -t $THREAD_NUM
