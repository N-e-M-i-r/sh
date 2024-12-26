#!/bin/bash
echo "fifa"
sed -i  '/^#net.ipv4.ip_forward = 0/c\net.ipv4.ip_forward = 1' /etc/net/sysctl.conf
echo "gotov"
