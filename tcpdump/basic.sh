#!/bin/bash

# write into /tmp/file.tcpdump
# -nn ignore the arp
# -vvv very verbose
# -host either src/dst

sudo tcpdump -nni eth0 host 10.1.1.2 -vvv -w /tmp/file.tcpdump
