#!/bin/bash

# All the data are in Bytes.
MAX=100000

echo "Max sender window to $MAX"
sysctl -w net.core.rmem_max=$MAX

echo "Max reciever window to $MAX"
sysctl -w net.core.wmem_max=$MAX

echo "Max UDP reciever window to $MAX"
sysctl -w net.ipv4.udp_rmem_min=$MAX

echo "Max UDP sender window to $MAX"
sysctl -w net.ipv4.udp_wmem_min=$MAX

echo "UDP Mem to $MAX"
sysctl -w net.ipv4.udp_mem=$MAX
