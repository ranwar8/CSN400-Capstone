# Checkpoint6 Submission
- **COURSE INFORMATION: CSN400NAA**
- **STUDENT’S NAME: RASHEDUL ANWAR**
- **STUDENT'S NUMBER: 146361209**
- **GITHUB USER ID: 146361209-myseneca**
- **TEACHER’S NAME: Atoosa Nasiri**
---
### Table of Contents

1. [Part A - DevTest Lab VM Configuration](#Devtest-LAB-VM-config-and-vm_creation)
2. [Part B - Linux VMs Firewall Setting](#Linux_VM-firewall-settings_in-WC_through_cli)
3. [Part C - Enable ip-forwarding in NIC](#allowing-ip-forwarding-in-NIC-for_LS&LR)
4. [Part D - Basic Connectivity](#Checking_connection-between-Windows_server_LR&LS)
5. [Part E - Azure Cost Analysis Charts](#Screen_shots_of-AzureCost-analysis)

---
## <u>PART A -DevTest Lab VM Configuration</u>:

## <u>Part B - Linux VMs Firewall Setting</u>:
---
## <u>Part C - Enable ip-forwarding in NIC</u>:
```json
odl_user [ ~ ]$ az network nic show -g Student-RG-846036 -n lr-12 --query "enableIpForwarding"
true
odl_user [ ~ ]$ 

```
