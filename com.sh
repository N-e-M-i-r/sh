#!/bin/bash
echo "START"
echo nameserver 77.88.8.8 >> /etc/resolv.conf
apt-get update
apt-get install dnsmasq 
systemctl enable --now dnsmasq 
echo no-resolv >> /etc/dnsmasq.conf
echo domain=au-team.irpo >> /etc/dnsmasq.conf
echo server=77.88.8.8 >> /etc/dnsmasq.conf
echo interface=20 >> /etc/dnsmasq.conf
echo address=/hq-rtr.au-team.irpo/192.168.1.1 >> /etc/dnsmasq.conf
echo cname=moodle.au-team.irpo,hq-rtr.au-team.irpo >> /etc/dnsmasq.conf
echo cname=wiki.au-team.irpo,hq-rtr.au-team.irpo >> /etc/dnsmasq.conf
echo address=/br-rtr.au-team.irpo/192.168.3.1 >> /etc/dnsmasq.conf
echo address=/hq-srv.au-team.irpo/192.168.1.10 >> /etc/dnsmasq.conf
echo ptr-record=10.1.168.192.in-addr.arpa,hq-srv.au-team.irpo >> /etc/dnsmasq.conf
echo address=/hq-cli.au-team.irpo/192.168.2.10 >> /etc/dnsmasq.conf
echo ptr-record=10.2.168.192.in-addr.arpa,hq-cli.au-team.irpo >> /etc/dnsmasq.conf
echo address=/br-srv.au-team.irpo/192.168.3.10 >> /etc/dnsmasq.conf
echo 192.168.1.1	hq-rtr.au-team.irpo >> /etc/hosts
systemctl restart dnsmasq
ping -с 5 google.com
ping -с 5 hq-rtr.au-team.irpo
dig moodle.au-team.irpo
dig wiki.au-team.irpo
