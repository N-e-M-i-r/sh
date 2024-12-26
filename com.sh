cp -r /etc/net/ifences/ens18/ /etc/net/ifences/ens20/

echo 172.16.4.1/28>  /etc/net/ifences/ens20/ipv4address
 
sed -i "CONFIG_IPV4=yes" /etc/net/ifaces/ens20/options 
sed -i 'ONBOOT=yes'  /etc/net/ifaces/ens20/options
