#!/bin/bash

# All the data are in Bytes.
# Default for danish
# Max sender window : 212992
# Max reciever window : 212992
# Max TCP reciever window : 4096  87380   6291456
# Max TCP sender window : 4096    16384   4194304
# If metrics save is enabled or not : 0

echo -n "Max sender window : "
sysctl -n net.core.rmem_max

echo -n "Max reciever window : "
sysctl -n net.core.wmem_max

echo -n "Max TCP reciever window : "
sysctl -n net.ipv4.tcp_rmem

echo -n "Max TCP sender window : "
sysctl -n net.ipv4.tcp_wmem

echo -n "TCP Mem : "
sysctl -n net.ipv4.tcp_mem

echo -n "Max UDP reciever window : "
sysctl -n net.ipv4.udp_rmem_min

echo -n "Max UDP sender window : "
sysctl -n net.ipv4.udp_wmem_min

echo -n "UDP Mem : "
sysctl -n net.ipv4.udp_mem

echo -n "Max segment size : "
sysctl -n net.ipv4.tcp_app_win

# Metrics slows us down.
echo -n "If metrics save is enabled or not : "
sysctl -n net.ipv4.tcp_no_metrics_save

echo -n "Backlog :"
sysctl -n net.core.netdev_max_backlog
