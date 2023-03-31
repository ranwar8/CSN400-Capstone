echo "*************FORWARD CHAIN WS-12 Destination*****************\n\n\n"
sudo iptables -A FORWARD -p tcp --dport 21 -d 172.17.12.36 -j ACCEPT

echo "*************FORWARD CHAIN LS-12 SOURCE PORT******************\n\n\n"

sudo iptables -A FORWARD -p tcp --sport 22 -s 172.17.12.37 -j ACCEPT

echo "##############FORWARD CHAIN DROP TO DESTINATION################\n\n\n"


sudo iptables -A FORWARD -p tcp --dport 21 -d 172.17.12.36 -j DROP

echo "#############FORWARD CHAIN DROP TO SOURCE PORT#################\n\n\n"


sudo iptables -A FORWARD -p tcp --sport 22 -s 172.17.12.37 -j DROP
