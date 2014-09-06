#!/bin/bash

:'
1. Added theses lines to /etc/sysctl.conf
   net.core.rmem_max = 1048576
   net.core.wmem_max = 1048576
   net.ipv4.tcp_rmem = 4096 87380 1048576
   net.ipv4.tcp_wmem = 4096 65536 1048576
   net.ipv4.tcp_no_metrics_save = 1
2. sysctl -p
'
# All the data are in Bytes.
MAX=100000

echo "Max sender window changed to $MAX"
#sysctl -w net.core.rmem_max=$MAX

echo "Max reciever window changes to $MAX"
#sysctl -w net.core.wmem_max=$MAX

echo "Max TCP reciever window to $MAX"
#sysctl -w net.ipv4.tcp_rmem=$MAX

echo "Max TCP sender window to $MAX"
#sysctl -w net.ipv4.tcp_wmem=$MAX

echo "TCP Mem to $MAX"
#sysctl -w net.ipv4.tcp_mem=$MAX
