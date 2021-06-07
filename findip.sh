#!/bin/sh
for server in `more list.txt`
do
#echo $i
host $server
host "$h" | awk '{ print $1, $3 }'
#nslookup $i | grep ^Name -A1| awk '{print $2}'
#ssh $server -q "hostname -f"
#telnet $server 22
done
