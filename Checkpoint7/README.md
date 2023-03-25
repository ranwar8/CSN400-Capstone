# Checkpoint7 Submission
---
- **COURSE INFORMATION: CSN400NAA**
- **STUDENT’S NAME: RASHEDUL ANWAR**
- **STUDENT'S NUMBER: 146361209**
- **GITHUB USER ID: 146361209-myseneca**
- **TEACHER’S NAME: Atoosa Nasiri**
---
### <u>Table of Contents</u>:
1. [Part A – Logging Packets with Specific Prefixes](#logging_packets)
2. [Part B - Filtering Logged Packets](#filtering_logged_packets)
3. [Part C - Analyzing Logged Packets](#analyzing_logged_packets)
4. [Part D - Azure Cost Analysis Charts](#Azure-Cost-anakysis-charts)
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
