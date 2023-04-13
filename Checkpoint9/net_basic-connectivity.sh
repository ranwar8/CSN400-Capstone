# to flush NAT tables 
iptables -t nat -F

# to allow other students to access APACHE server
iptables -t nat -A PREROUTING -p tcp --dport 1812 -j DNAT --to-destination 172.17.12.37:80
iptables -t nat -A PREROUTING -p tcp --dport 1812 -m limit --limit 300/sec -j LOG --log-prefix "Apache-log-captures - "

# to allow other students to access MySQL server
iptables -t nat -A PREROUTING -p tcp --dport 1612 -j DNAT --to-destination 172.17.12.37:3306
iptables -t nat -A PREROUTING -p tcp --dport 1612 -m limit --limit 300/sec -j LOG --log-prefix "MySQL-log-captures - "
# to allow other students to access Linux server - SSH
iptables -t nat -A PREROUTING -p tcp --dport 1212 -j DNAT --to-destination 172.17.12.37:22
iptables -t nat -A PREROUTING -p tcp --dport 1212 -m limit --limit 300/sec -j LOG --log-prefix "SSh-log-captures - "
# to allow other students to access IIS server
iptables -t nat -A PREROUTING -p tcp --dport 1912 -j DNAT --to-destination 172.17.12.36:80
iptables -t nat -A PREROUTING -p tcp --dport 1912 -m limit --limit 300/sec -j LOG --log-prefix "IIS-log-captures - "

# to allow other students to access Windows server - RDP
iptables -t nat -A PREROUTING -p tcp --dport 1312 -j DNAT --to-destination 172.17.12.36:3389
iptables -t nat -A PREROUTING -p tcp --dport 1312 -m limit --limit 300/sec -j LOG --log-prefix "RDP-log-captures - " 

iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE