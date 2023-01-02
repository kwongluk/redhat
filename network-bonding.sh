nmcli connection add type bond con-name bond0 ifname bond0 bond.options "mode=active-backup,miimon=1000"
nmcli device status
nmcli connection add type ethernet slave-type bond con-name bond0-port1 ifname ens160 master bond0
nmcli connection add type ethernet slave-type bond con-name bond0-port2 ifname ens224 master bond0
nmcli connection modify bond0 ipv4.addresses '192.168.174.100/24'
nmcli connection modify bond0 ipv4.gateway '192.168.174.2'
nmcli connection modify bond0 ipv4.dns '8.8.8.8'
nmcli connection modify bond0 ipv4.dns-search 'dev.com'
nmcli connection modify bond0 ipv4.method manual
nmcli connection up bond0
nmcli device
nmcli connection modify bond0 connection.autoconnect-slaves 1
nmcli connection up bond0
cat /proc/net/bonding/bond0


