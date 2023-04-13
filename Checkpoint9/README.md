# Checkpoint9 SUBMISSION
---
- **COURSE INFORMATION: CSN400NAA**
- **STUDENT’S NAME: RASHEDUL ANWAR**
- **STUDENT'S NUMBER: 146361209**
- **GITHUB USER ID: 146361209-myseneca**
- **TEACHER’S NAME: Atoosa Nasiri**
---
### <u>Table of Contents</u>:
1. [Part A - Route Table Updates](#header1)
2. [Part B - Port Forwarding Basic Connectivity](#header2)
3. [Part C - Logging & Isolating Masqueraded Packets](#header3)
4. [Part D - Azure Cost Analysis Charts](#header4)
---
### Part A - Route Table Updates:
---
COMMAND FOR ROUTE TABLE DETAILS:***az network route-table route show --name "External-Router" --route-table-name "RT-12" --resource-group "Student-RG-846036" --query "{id:id, addressPrefix:addressPrefix, nextHopType:nextHopType, nextHopIpAddress:nextHopIpAddress}" --output table > RT-12-details***
```
cat RT-12-details
AddressPrefix     NextHopType       NextHopIpAddress
----------------  ----------------  ------------------
192.168.41.32/27  VirtualAppliance  192.168.12.36
```
---
COMMAND FOR EX-RT-12 DETAILS:***az network route-table route show --name "Route-to-Hub" --route-table-name "RT-EX-12" --resource-group "Student-RG-846036" --query "{id:id, addressPrefix:addressPrefix, nextHopType:nextHopType, nextHopIpAddress:nextHopIpAddress}" --output table > RT-EX-12-details***
```
 more RT-EX-12-details 
AddressPrefix     NextHopType       NextHopIpAddress
----------------  ----------------  ------------------
192.168.41.32/27  VirtualAppliance  192.168.99.36
```
---
COMMAND FOR RT-EX-12-Subnet:***az network route-table show --name RT-EX-12 --resource-group "Student-RG-846036" --query "subnets[].id" --output table > RT-EX-12-Subnet***
```
more RT-EX-12-Subnet 
Result
------------------------------------------------------------------------------------------------------------------------------------------------------
/subscriptions/bd627181-5ddb-4bb6-b03f-5297c3be4e1e/resourceGroups/Student-RG-846036/providers/Microsoft.Network/virtualNetworks/Router-12/subnets/SN1
```
### Part B - Port Forwarding Basic Connectivity:
---
<b>BASIC NAT CONNECTIVITY SCRIPT</b>:
```
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
```
---
### Part C - Logging & Isolating Masqueraded Packets:
---
<b>Screen Shot of CP-9-capture.pcap file:</b>
![Alt txt](https://github.com/146361209-myseneca/CSN400-Capstone/blob/main/Checkpoint9/PCAP-cp9.png)


### Part D - Azure Cost Analysis Charts:
| Number | Image | Description |
|--|--|--|
|1|![Alt txt](https://github.com/146361209-myseneca/CSN400-Capstone/blob/main/Checkpoint9/SS-1.png)|Last 7 days daily cost by resource|
|2|![Alt txt](https://github.com/146361209-myseneca/CSN400-Capstone/blob/main/Checkpoint9/SS-2.png)|Last 7 days Group by service|
|3|![Alt txt](https://github.com/146361209-myseneca/CSN400-Capstone/blob/main/Checkpoint9/SS-3.png)|Last 7 days accumulated cost by resource |
|4|![Alt txt](https://github.com/146361209-myseneca/CSN400-Capstone/blob/main/Checkpoint9/SS-4.png)|Pie Chart by Serivce Name last month cost|
|5|![Alt txt](https://github.com/146361209-myseneca/CSN400-Capstone/blob/main/Checkpoint9/SS-5.png)|Pie Chart by Serivce Family last month cost|
|6|![Alt txt](https://github.com/146361209-myseneca/CSN400-Capstone/blob/main/Checkpoint9/SS-6.png)|Pie Chart by Product last month cost|
