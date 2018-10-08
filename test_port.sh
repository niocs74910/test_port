#!/bin/sh
ip=$1
port=$2
nc -z $ip $port
value=$?

if [ $value = 0 ]

then
        echo "0:${value}:Service ":$port:" OK"
fi

if [ $value = 1 ]
then
        echo "2:${value}:Service ":$port:" DOWN"

fi