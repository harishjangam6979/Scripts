#!/bin/sh
for server in `more list.txt`
do
status=$(nc -zvw1 $server 22)
  if [[ $status == *"Connection"* ]]; then
    echo "$server"
  else
    echo ""
  fi
done



#!/bin/sh
for server in `more list.txt`
do
#echo $i
nc -zvw3 $server 22
#telnet $server 22
done
