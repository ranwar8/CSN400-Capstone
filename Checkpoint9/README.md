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
4. [Part D - Azure Cost Analysis Charts:</u>](#header4)
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

```
