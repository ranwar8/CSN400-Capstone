# Checkpoint7 Submission
---
- **COURSE INFORMATION: CSN400NAA**
- **STUDENT’S NAME: RASHEDUL ANWAR**
- **STUDENT'S NUMBER: 146361209**
- **GITHUB USER ID: 146361209-myseneca**
- **TEACHER’S NAME: Atoosa Nasiri**
---
### <u>Table of Contents</u>:
1. [Part A – Logging Packets with Specific Prefixes](#header1)
2. [Part B - Filtering Logged Packets](#header2)
3. [Part C - Analyzing Logged Packets](#header3)
4. [Part D - Azure Cost Analysis Charts:</u>](#header4)
---
## <u>Part A – Logging Packets with Specific Prefixes:</u>
### Firewall Log Rule Output:
```
Chain INPUT (policy ACCEPT 138 packets, 11144 bytes)
num   pkts bytes target     prot opt in     out     source               destination
1       66  8794 ACCEPT     tcp  --  *      *       0.0.0.0/0            0.0.0.0/0            state RELATED,ESTABLISHED
2        0     0 ACCEPT     icmp --  *      *       0.0.0.0/0            0.0.0.0/0
3        0     0 ACCEPT     all  --  lo     *       0.0.0.0/0            0.0.0.0/0
4        0     0 ACCEPT     tcp  --  *      *       10.65.107.0/24       0.0.0.0/0            state NEW tcp dpt:22
5        1    76 LOG        all  --  *      *       0.0.0.0/0            0.0.0.0/0            limit: avg 10/sec burst 5 LOG flags 0 level 4 prefix "TO_DROP_INPUT"
6        1    76 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0

Chain FORWARD (policy ACCEPT 3556 packets, 1303K bytes)
num   pkts bytes target     prot opt in     out     source               destination
1        0     0 LOG        tcp  --  *      *       10.65.107.0/24       172.17.12.32/27      tcp dpt:22 limit: avg 10/sec burst 5 LOG flags 0 level 4 prefix "SSH FORWARD to LS-12 -  "
2        0     0 LOG        tcp  --  *      *       172.17.12.32/27      10.65.107.0/24       tcp spt:22 limit: avg 10/sec burst 5 LOG flags 0 level 4 prefix "SSH FORWARD From LS-12 -  "
3        0     0 ACCEPT     tcp  --  *      *       10.65.107.0/24       172.17.12.32/27      tcp dpt:22
4        0     0 ACCEPT     tcp  --  *      *       172.17.12.32/27      10.65.107.0/24       tcp spt:22
5        7   280 ACCEPT     tcp  --  *      *       10.65.107.0/24       172.17.12.32/27      tcp dpt:3389
6        7   637 ACCEPT     tcp  --  *      *       172.17.12.32/27      10.65.107.0/24       tcp spt:3389
7        6   233 LOG        all  --  *      *       0.0.0.0/0            0.0.0.0/0            limit: avg 10/sec burst 5 LOG flags 0 level 4 prefix "TO_DROP_FORWARD"
8        6   233 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0

Chain OUTPUT (policy ACCEPT 20 packets, 2584 bytes)
num   pkts bytes target     prot opt in     out     source               destination
1       62 16284 ACCEPT     all  --  *      *       0.0.0.0/0            0.0.0.0/0
```
---
## <u>Part B - Filtering Logged Packets</u>:
### LOGGED PACKET LIST:
```
Mar 25 01:27:34 LR-12 kernel: SSH FORWARD From LS-12 -  IN=eth0 OUT=eth0 MAC=00:0d:3a:0a:12:50:00:42:68:39:97:9d:08:00 SRC=172.17.12.37 DST=10.65.107.4 LEN=40 TOS=0x08 PREC=0x40 TTL=63 ID=29788 DF PROTO=TCP SPT=22 DPT=53214 WINDOW=296 RES=0x00 ACK URGP=0
Mar 25 02:05:53 LR-12 kernel: TO_DROP_FORWARDIN=eth0 OUT=eth0 MAC=00:0d:3a:0a:12:50:00:42:68:39:97:9d:08:00 SRC=10.65.107.4 DST=172.17.12.36 LEN=69 TOS=0x00 PREC=0x00 TTL=127 ID=1119 PROTO=UDP SPT=51397 DPT=53 LEN=49
Mar 25 07:01:04 LR-12 kernel: RDP FORWARD to WS-12 - IN=eth0 OUT=eth0 MAC=00:0d:3a:0a:12:50:00:42:68:39:97:9d:08:00 SRC=10.65.107.4 DST=172.17.12.36 LEN=40 TOS=0x00 PREC=0x00 TTL=127 ID=14137 DF PROTO=TCP SPT=55121 DPT=3389 WINDOW=2050 RES=0x00 ACK URGP=0

```
---
## <u>Part C - Analyzing Logged Packets</u>:
| Packet ID | Date | MAC Address | Protocol |Source Address| Source Address | Dest. Address | Source Port | Dest. Port | Packet Length | LOG Prefix | Time To Live |
|-|-|-|-|-|-|-|-|-|-|-|-|
|29788|Mar 25 01:27:34|00:0d:3a:0a:12:50:00:42:68:39:97:9d:08:00|TCP| |10.65.107.4|172.17.12.32|22|53214|40|SSH FORWARD to LS|10 sec|
|1119|Mar 25 02:05:53|00:0d:3a:0a:12:50:00:42:68:39:97:9d:08:00|UDP| |10.65.107.4|172.17.12.36|51397|53|69|UDP Forward to WS|10 sec|
| 14137 |Mar 25 07:01:04|00:0d:3a:0a:12:50:00:42:68:39:97:9d:08:00|RDP| |10.65.107.4|172.17.12.36|55121|3389|40|RDP Forward to WS|10 sec|
---
## <u>Part D - Azure Cost Analysis Charts:</u>
| Number | Image | Description |
|--|--|--|
|1|![Alt txt](https://github.com/146361209-myseneca/CSN400-Capstone/blob/main/Checkpoint7/SS-1.png)|Last 7 days daily cost by resource|
|2|![Alt txt](https://github.com/146361209-myseneca/CSN400-Capstone/blob/main/Checkpoint7/SS-2(service-name).png)|Last 7 days Group by service|
|3|![Alt txt](https://github.com/146361209-myseneca/CSN400-Capstone/blob/main/Checkpoint7/SS-3.png)|Last 7 days accumulated cost by resource |
|4|![Alt txt](https://github.com/146361209-myseneca/CSN400-Capstone/blob/main/Checkpoint7/SS-4.png)|Pie Chart by Serivce Name last month cost|
|5|![Alt txt](https://github.com/146361209-myseneca/CSN400-Capstone/blob/main/Checkpoint7/SS-5.png)|Pie Chart by Serivce Family last month cost|
|6|![Alt txt](https://github.com/146361209-myseneca/CSN400-Capstone/blob/main/Checkpoint7/SS-6.png)|Pie Chart by Product last month cost|



