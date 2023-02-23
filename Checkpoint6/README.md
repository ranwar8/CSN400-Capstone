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
## <u>PART D - Basic Connectivity</u>:

```json
az lab custom-image list --lab-name CSN400-12 --resource-group Student-RG-846036
Command group 'lab' is in preview and under development. Reference and support levels: https://aka.ms/CLI_refstatus
[
  {
    "author": "odl_user_846036@seneca-csn400naa.cloudlabs.ai",
    "creationDate": "2023-02-17T03:54:18.132061+00:00",
    "customImagePlan": null,
    "dataDiskStorageInfo": null,
    "description": "Task Completed\n\nNo Connection No setup",
    "id": "/subscriptions/bd627181-5ddb-4bb6-b03f-5297c3be4e1e/resourcegroups/student-rg-846036/providers/microsoft.devtestlab/labs/csn400-12/customimages/ws-12ci-v01",
    "isPlanAuthorized": null,
    "location": null,
    "managedImageId": null,
    "managedSnapshotId": "/subscriptions/bd627181-5ddb-4bb6-b03f-5297c3be4e1e/resourcegroups/student-rg-846036/providers/microsoft.compute/snapshots/ws-12ci-v01",
    "name": "WS-12ci-v01",
    "provisioningState": "Succeeded",
    "resourceGroup": "student-rg-846036",
    "tags": null,
    "type": "Microsoft.DevTestLab/labs/customImages",
    "uniqueIdentifier": "bf575851-a793-44ed-8c32-b7e296de0a30",
    "vhd": null,
    "vm": {
      "linuxOsInfo": null,
      "sourceVmId": "/subscriptions/bd627181-5ddb-4bb6-b03f-5297c3be4e1e/resourcegroups/student-rg-846036/providers/microsoft.devtestlab/labs/csn400-12/virtualmachines/ws-12",
      "windowsOsInfo": {
        "windowsOsState": "NonSysprepped"
      }
    }
  },
  {
    "author": "odl_user_846036@seneca-csn400naa.cloudlabs.ai",
    "creationDate": "2023-02-17T03:56:13.444600+00:00",
    "customImagePlan": null,
    "dataDiskStorageInfo": null,
    "description": "Task Completed \n\nNo configuration",
    "id": "/subscriptions/bd627181-5ddb-4bb6-b03f-5297c3be4e1e/resourcegroups/student-rg-846036/providers/microsoft.devtestlab/labs/csn400-12/customimages/ls-12ci-v01",
    "isPlanAuthorized": null,
    "location": null,
    "managedImageId": null,
    "managedSnapshotId": "/subscriptions/bd627181-5ddb-4bb6-b03f-5297c3be4e1e/resourcegroups/student-rg-846036/providers/microsoft.compute/snapshots/ls-12ci-v01",
    "name": "LS-12ci-v01",
    "provisioningState": "Succeeded",
    "resourceGroup": "student-rg-846036",
    "tags": null,
    "type": "Microsoft.DevTestLab/labs/customImages",
    "uniqueIdentifier": "f9c7996c-f77e-4b6a-ab44-3587f0dc3dd6",
    "vhd": null,
    "vm": {
      "linuxOsInfo": {
        "linuxOsState": "NonDeprovisioned"
      },
      "sourceVmId": "/subscriptions/bd627181-5ddb-4bb6-b03f-5297c3be4e1e/resourcegroups/student-rg-846036/providers/microsoft.devtestlab/labs/csn400-12/virtualmachines/ls-12",
      "windowsOsInfo": null
    }
  },
  {
    "author": "odl_user_846036@seneca-csn400naa.cloudlabs.ai",
    "creationDate": "2023-02-17T03:58:27.914724+00:00",
    "customImagePlan": null,
    "dataDiskStorageInfo": null,
    "description": "Task Completed:\n\nadded linux key and tested, working!",
    "id": "/subscriptions/bd627181-5ddb-4bb6-b03f-5297c3be4e1e/resourcegroups/student-rg-846036/providers/microsoft.devtestlab/labs/csn400-12/customimages/lr-12ci-v01",
    "isPlanAuthorized": null,
    "location": null,
    "managedImageId": null,
    "managedSnapshotId": "/subscriptions/bd627181-5ddb-4bb6-b03f-5297c3be4e1e/resourcegroups/student-rg-846036/providers/microsoft.compute/snapshots/lr-12ci-v01",
    "name": "LR-12ci-v01",
    "provisioningState": "Succeeded",
    "resourceGroup": "student-rg-846036",
    "tags": null,
    "type": "Microsoft.DevTestLab/labs/customImages",
    "uniqueIdentifier": "7d4b5576-de26-4526-841f-0dab00935e11",
    "vhd": null,
    "vm": {
      "linuxOsInfo": {
        "linuxOsState": "NonDeprovisioned"
      },
      "sourceVmId": "/subscriptions/bd627181-5ddb-4bb6-b03f-5297c3be4e1e/resourcegroups/student-rg-846036/providers/microsoft.devtestlab/labs/csn400-12/virtualmachines/lr-12",
      "windowsOsInfo": null
    }
  },
  {
    "author": "odl_user_846036@seneca-csn400naa.cloudlabs.ai",
    "creationDate": "2023-02-17T04:01:17.959991+00:00",
    "customImagePlan": null,
    "dataDiskStorageInfo": null,
    "description": "Task Completed:\n\nAdded linux key changed extension tested",
    "id": "/subscriptions/bd627181-5ddb-4bb6-b03f-5297c3be4e1e/resourcegroups/student-rg-846036/providers/microsoft.devtestlab/labs/csn400-12/customimages/wc-img-v01",
    "isPlanAuthorized": null,
    "location": null,
    "managedImageId": null,
    "managedSnapshotId": "/subscriptions/bd627181-5ddb-4bb6-b03f-5297c3be4e1e/resourcegroups/student-rg-846036/providers/microsoft.compute/snapshots/wc-img-v01",
    "name": "WC-img-v01",
    "provisioningState": "Succeeded",
    "resourceGroup": "student-rg-846036",
    "tags": null,
    "type": "Microsoft.DevTestLab/labs/customImages",
    "uniqueIdentifier": "3e54c453-d4d6-49a2-9ed0-9ff80eb0834c",
    "vhd": null,
    "vm": {
      "linuxOsInfo": null,
      "sourceVmId": "/subscriptions/bd627181-5ddb-4bb6-b03f-5297c3be4e1e/resourcegroups/student-rg-846036/providers/microsoft.devtestlab/labs/csn400-12/virtualmachines/wc-12",
      "windowsOsInfo": {
        "windowsOsState": "NonSysprepped"
      }
    }
  },
  {
    "author": "odl_user_846036@seneca-csn400naa.cloudlabs.ai",
    "creationDate": "2023-02-22T09:45:56.270777+00:00",
    "customImagePlan": null,
    "dataDiskStorageInfo": null,
    "description": "Task completed:\n\ndid basic config for CP-6\n\niptables settings for basic connectivity",
    "id": "/subscriptions/bd627181-5ddb-4bb6-b03f-5297c3be4e1e/resourcegroups/student-rg-846036/providers/microsoft.devtestlab/labs/csn400-12/customimages/ls-img-v05",
    "isPlanAuthorized": null,
    "location": null,
    "managedImageId": null,
    "managedSnapshotId": "/subscriptions/bd627181-5ddb-4bb6-b03f-5297c3be4e1e/resourcegroups/student-rg-846036/providers/microsoft.compute/snapshots/ls-img-v05",
    "name": "LS-img-v05",
    "provisioningState": "Succeeded",
    "resourceGroup": "student-rg-846036",
    "tags": null,
    "type": "Microsoft.DevTestLab/labs/customImages",
    "uniqueIdentifier": "8ada74bc-b46a-48e1-8ffe-126a12d9c099",
    "vhd": null,
    "vm": {
      "linuxOsInfo": {
        "linuxOsState": "NonDeprovisioned"
      },
      "sourceVmId": "/subscriptions/bd627181-5ddb-4bb6-b03f-5297c3be4e1e/resourcegroups/student-rg-846036/providers/microsoft.devtestlab/labs/csn400-12/virtualmachines/ls-12",
      "windowsOsInfo": null
    }
  },
  {
    "author": "odl_user_846036@seneca-csn400naa.cloudlabs.ai",
    "creationDate": "2023-02-22T09:48:57.245567+00:00",
    "customImagePlan": null,
    "dataDiskStorageInfo": null,
    "description": "Task completed:\nconfig as per CP-6\niptables settings for basic connectivity",
    "id": "/subscriptions/bd627181-5ddb-4bb6-b03f-5297c3be4e1e/resourcegroups/student-rg-846036/providers/microsoft.devtestlab/labs/csn400-12/customimages/lr-img-v05",
    "isPlanAuthorized": null,
    "location": null,
    "managedImageId": null,
    "managedSnapshotId": "/subscriptions/bd627181-5ddb-4bb6-b03f-5297c3be4e1e/resourcegroups/student-rg-846036/providers/microsoft.compute/snapshots/lr-img-v05",
    "name": "LR-img-v05",
    "provisioningState": "Succeeded",
    "resourceGroup": "student-rg-846036",
    "tags": null,
    "type": "Microsoft.DevTestLab/labs/customImages",
    "uniqueIdentifier": "6a9807ec-709b-4e31-bd9f-efb5eb74140c",
    "vhd": null,
    "vm": {
      "linuxOsInfo": {
        "linuxOsState": "NonDeprovisioned"
      },
      "sourceVmId": "/subscriptions/bd627181-5ddb-4bb6-b03f-5297c3be4e1e/resourcegroups/student-rg-846036/providers/microsoft.devtestlab/labs/csn400-12/virtualmachines/lr-12",
      "windowsOsInfo": null
    }
  },
  {
    "author": "odl_user_846036@seneca-csn400naa.cloudlabs.ai",
    "creationDate": "2023-02-22T09:51:38.516217+00:00",
    "customImagePlan": null,
    "dataDiskStorageInfo": null,
    "description": "Task completed:\ndownloaded notepad++, FileZilla client, MySql Shell\n",
    "id": "/subscriptions/bd627181-5ddb-4bb6-b03f-5297c3be4e1e/resourcegroups/student-rg-846036/providers/microsoft.devtestlab/labs/csn400-12/customimages/wc-img-v05",
    "isPlanAuthorized": null,
    "location": null,
    "managedImageId": null,
    "managedSnapshotId": "/subscriptions/bd627181-5ddb-4bb6-b03f-5297c3be4e1e/resourcegroups/student-rg-846036/providers/microsoft.compute/snapshots/wc-img-v05",
    "name": "WC-img-v05",
    "provisioningState": "Succeeded",
    "resourceGroup": "student-rg-846036",
    "tags": null,
    "type": "Microsoft.DevTestLab/labs/customImages",
    "uniqueIdentifier": "53ea4098-1f1c-4b79-92c3-f95c7bebd2fa",
    "vhd": null,
    "vm": {
      "linuxOsInfo": null,
      "sourceVmId": "/subscriptions/bd627181-5ddb-4bb6-b03f-5297c3be4e1e/resourcegroups/student-rg-846036/providers/microsoft.devtestlab/labs/csn400-12/virtualmachines/wc-12",
      "windowsOsInfo": {
        "windowsOsState": "NonSysprepped"
      }
    }
  },
  {
    "author": "odl_user_846036@seneca-csn400naa.cloudlabs.ai",
    "creationDate": "2023-02-22T10:01:11.258485+00:00",
    "customImagePlan": null,
    "dataDiskStorageInfo": null,
    "description": "Task completed:\nDownloaded FireFox, Installed WireShark",
    "id": "/subscriptions/bd627181-5ddb-4bb6-b03f-5297c3be4e1e/resourcegroups/student-rg-846036/providers/microsoft.devtestlab/labs/csn400-12/customimages/ws-img-v05",
    "isPlanAuthorized": null,
    "location": null,
    "managedImageId": null,
    "managedSnapshotId": "/subscriptions/bd627181-5ddb-4bb6-b03f-5297c3be4e1e/resourcegroups/student-rg-846036/providers/microsoft.compute/snapshots/ws-img-v05",
    "name": "WS-img-v05",
    "provisioningState": "Succeeded",
    "resourceGroup": "student-rg-846036",
    "tags": null,
    "type": "Microsoft.DevTestLab/labs/customImages",
    "uniqueIdentifier": "f58413ed-2b22-4314-9d05-288d0bb4896c",
    "vhd": null,
    "vm": {
      "linuxOsInfo": null,
      "sourceVmId": "/subscriptions/bd627181-5ddb-4bb6-b03f-5297c3be4e1e/resourcegroups/student-rg-846036/providers/microsoft.devtestlab/labs/csn400-12/virtualmachines/ws-12",
      "windowsOsInfo": {
        "windowsOsState": "NonSysprepped"
      }
    }
  }
]
```
---
```json
az lab vm list --lab-name CSN400-12 -g Student-RG-846036
Command group 'lab' is in preview and under development. Reference and support levels: https://aka.ms/CLI_refstatus
[
  {
    "allowClaim": false,
    "applicableSchedule": null,
    "artifactDeploymentStatus": {
      "artifactsApplied": 0,
      "deploymentStatus": null,
      "totalArtifacts": 0
    },
    "artifacts": null,
    "computeId": "/subscriptions/bd627181-5ddb-4bb6-b03f-5297c3be4e1e/resourceGroups/student-rg-846036/providers/Microsoft.Compute/virtualMachines/WC-12",
    "computeVm": null,
    "createdByUser": "odl_user_846036@seneca-csn400naa.cloudlabs.ai",
    "createdByUserId": "100320026C62CE32",
    "createdDate": "2023-02-21T16:48:05.402607+00:00",
    "customImageId": "/subscriptions/bd627181-5ddb-4bb6-b03f-5297c3be4e1e/resourcegroups/student-rg-846036/providers/microsoft.devtestlab/labs/csn400-12/customimages/wc-img-v01",
    "dataDiskParameters": null,
    "disallowPublicIpAddress": true,
    "environmentId": null,
    "expirationDate": null,
    "fqdn": null,
    "galleryImageReference": null,
    "id": "/subscriptions/bd627181-5ddb-4bb6-b03f-5297c3be4e1e/resourcegroups/student-rg-846036/providers/microsoft.devtestlab/labs/csn400-12/virtualmachines/wc-12",
    "isAuthenticationWithSshKey": false,
    "labSubnetName": "Virtual-Desktop-Client",
    "labVirtualNetworkId": "/subscriptions/bd627181-5ddb-4bb6-b03f-5297c3be4e1e/resourcegroups/student-rg-846036/providers/microsoft.devtestlab/labs/csn400-12/virtualnetworks/student-846036-vnet",
    "lastKnownPowerState": "Running",
    "location": "canadaeast",
    "name": "WC-12",
    "networkInterface": {
      "dnsName": null,
      "privateIpAddress": null,
      "publicIpAddress": null,
      "publicIpAddressId": null,
      "rdpAuthority": null,
      "sharedPublicIpAddressConfiguration": null,
      "sshAuthority": null,
      "subnetId": null,
      "virtualNetworkId": null
    },
    "notes": "WC-img-v01",
    "osType": "Windows",
    "ownerObjectId": "750d1eda-27d3-4562-8dc7-a6e29bf9806d",
    "ownerUserPrincipalName": "odl_user_846036@seneca-csn400naa.cloudlabs.ai",
    "password": null,
    "planId": null,
    "provisioningState": "Succeeded",
    "resourceGroup": "student-rg-846036",
    "scheduleParameters": null,
    "size": "Standard_B2s",
    "sshKey": null,
    "storageType": "Standard",
    "tags": {
      "DeploymentId": "846036",
      "LaunchId": "28959",
      "LaunchType": "ON_DEMAND_LAB",
      "TemplateId": "4678",
      "TenantId": "353"
    },
    "type": "Microsoft.DevTestLab/labs/virtualMachines",
    "uniqueIdentifier": "eb9fd0f1-9aa2-4b13-9e0a-72eb0340b8fe",
    "userName": "odluser846036",
    "virtualMachineCreationSource": "FromCustomImage"
  },
  {
    "allowClaim": false,
    "applicableSchedule": null,
    "artifactDeploymentStatus": {
      "artifactsApplied": 0,
      "deploymentStatus": null,
      "totalArtifacts": 0
    },
    "artifacts": null,
    "computeId": "/subscriptions/bd627181-5ddb-4bb6-b03f-5297c3be4e1e/resourceGroups/student-rg-846036/providers/Microsoft.Compute/virtualMachines/LR-12",
    "computeVm": null,
    "createdByUser": "odl_user_846036@seneca-csn400naa.cloudlabs.ai",
    "createdByUserId": "100320026C62CE32",
    "createdDate": "2023-02-21T17:48:05.708481+00:00",
    "customImageId": "/subscriptions/bd627181-5ddb-4bb6-b03f-5297c3be4e1e/resourcegroups/student-rg-846036/providers/microsoft.devtestlab/labs/csn400-12/customimages/lr-12ci-v01",
    "dataDiskParameters": null,
    "disallowPublicIpAddress": true,
    "environmentId": null,
    "expirationDate": null,
    "fqdn": null,
    "galleryImageReference": null,
    "id": "/subscriptions/bd627181-5ddb-4bb6-b03f-5297c3be4e1e/resourcegroups/student-rg-846036/providers/microsoft.devtestlab/labs/csn400-12/virtualmachines/lr-12",
    "isAuthenticationWithSshKey": false,
    "labSubnetName": "SN1",
    "labVirtualNetworkId": "/subscriptions/bd627181-5ddb-4bb6-b03f-5297c3be4e1e/resourcegroups/student-rg-846036/providers/microsoft.devtestlab/labs/csn400-12/virtualnetworks/router-12",
    "lastKnownPowerState": "Running",
    "location": "canadaeast",
    "name": "LR-12",
    "networkInterface": {
      "dnsName": null,
      "privateIpAddress": null,
      "publicIpAddress": null,
      "publicIpAddressId": null,
      "rdpAuthority": null,
      "sharedPublicIpAddressConfiguration": null,
      "sshAuthority": null,
      "subnetId": null,
      "virtualNetworkId": null
    },
    "notes": "LR-12ci-v01",
    "osType": "Linux",
    "ownerObjectId": "750d1eda-27d3-4562-8dc7-a6e29bf9806d",
    "ownerUserPrincipalName": "odl_user_846036@seneca-csn400naa.cloudlabs.ai",
    "password": null,
    "planId": null,
    "provisioningState": "Succeeded",
    "resourceGroup": "student-rg-846036",
    "scheduleParameters": null,
    "size": "Standard_B2s",
    "sshKey": null,
    "storageType": "Standard",
    "tags": {
      "DeploymentId": "846036",
      "LaunchId": "28959",
      "LaunchType": "ON_DEMAND_LAB",
      "TemplateId": "4678",
      "TenantId": "353"
    },
    "type": "Microsoft.DevTestLab/labs/virtualMachines",
    "uniqueIdentifier": "7cd424a4-ebae-4505-a1e0-8471289a3031",
    "userName": "odluser846036",
    "virtualMachineCreationSource": "FromCustomImage"
  },
  {
    "allowClaim": false,
    "applicableSchedule": null,
    "artifactDeploymentStatus": {
      "artifactsApplied": 0,
      "deploymentStatus": null,
      "totalArtifacts": 0
    },
    "artifacts": null,
    "computeId": "/subscriptions/bd627181-5ddb-4bb6-b03f-5297c3be4e1e/resourceGroups/student-rg-846036/providers/Microsoft.Compute/virtualMachines/WS-12",
    "computeVm": null,
    "createdByUser": "odl_user_846036@seneca-csn400naa.cloudlabs.ai",
    "createdByUserId": "100320026C62CE32",
    "createdDate": "2023-02-21T18:03:56.189555+00:00",
    "customImageId": "/subscriptions/bd627181-5ddb-4bb6-b03f-5297c3be4e1e/resourcegroups/student-rg-846036/providers/microsoft.devtestlab/labs/csn400-12/customimages/ws-12ci-v01",
    "dataDiskParameters": null,
    "disallowPublicIpAddress": true,
    "environmentId": null,
    "expirationDate": null,
    "fqdn": null,
    "galleryImageReference": null,
    "id": "/subscriptions/bd627181-5ddb-4bb6-b03f-5297c3be4e1e/resourcegroups/student-rg-846036/providers/microsoft.devtestlab/labs/csn400-12/virtualmachines/ws-12",
    "isAuthenticationWithSshKey": false,
    "labSubnetName": "SN1",
    "labVirtualNetworkId": "/subscriptions/bd627181-5ddb-4bb6-b03f-5297c3be4e1e/resourcegroups/student-rg-846036/providers/microsoft.devtestlab/labs/csn400-12/virtualnetworks/server-12",
    "lastKnownPowerState": "Running",
    "location": "canadaeast",
    "name": "WS-12",
    "networkInterface": {
      "dnsName": null,
      "privateIpAddress": null,
      "publicIpAddress": null,
      "publicIpAddressId": null,
      "rdpAuthority": null,
      "sharedPublicIpAddressConfiguration": null,
      "sshAuthority": null,
      "subnetId": null,
      "virtualNetworkId": null
    },
    "notes": "WS-12ci-v01",
    "osType": "Windows",
    "ownerObjectId": "750d1eda-27d3-4562-8dc7-a6e29bf9806d",
    "ownerUserPrincipalName": "odl_user_846036@seneca-csn400naa.cloudlabs.ai",
    "password": null,
    "planId": null,
    "provisioningState": "Succeeded",
    "resourceGroup": "student-rg-846036",
    "scheduleParameters": null,
    "size": "Standard_B2s",
    "sshKey": null,
    "storageType": "Standard",
    "tags": {
      "DeploymentId": "846036",
      "LaunchId": "28959",
      "LaunchType": "ON_DEMAND_LAB",
      "TemplateId": "4678",
      "TenantId": "353"
    },
    "type": "Microsoft.DevTestLab/labs/virtualMachines",
    "uniqueIdentifier": "e99f368d-fcbb-4301-bfe6-08e4c59e2fa6",
    "userName": "odluser846036",
    "virtualMachineCreationSource": "FromCustomImage"
  },
  {
    "allowClaim": false,
    "applicableSchedule": null,
    "artifactDeploymentStatus": {
      "artifactsApplied": 0,
      "deploymentStatus": null,
      "totalArtifacts": 0
    },
    "artifacts": null,
    "computeId": "/subscriptions/bd627181-5ddb-4bb6-b03f-5297c3be4e1e/resourceGroups/student-rg-846036/providers/Microsoft.Compute/virtualMachines/LS-12",
    "computeVm": null,
    "createdByUser": "odl_user_846036@seneca-csn400naa.cloudlabs.ai",
    "createdByUserId": "100320026C62CE32",
    "createdDate": "2023-02-21T18:14:26.065647+00:00",
    "customImageId": "/subscriptions/bd627181-5ddb-4bb6-b03f-5297c3be4e1e/resourcegroups/student-rg-846036/providers/microsoft.devtestlab/labs/csn400-12/customimages/ls-12ci-v01",
    "dataDiskParameters": null,
    "disallowPublicIpAddress": true,
    "environmentId": null,
    "expirationDate": null,
    "fqdn": null,
    "galleryImageReference": null,
    "id": "/subscriptions/bd627181-5ddb-4bb6-b03f-5297c3be4e1e/resourcegroups/student-rg-846036/providers/microsoft.devtestlab/labs/csn400-12/virtualmachines/ls-12",
    "isAuthenticationWithSshKey": false,
    "labSubnetName": "SN1",
    "labVirtualNetworkId": "/subscriptions/bd627181-5ddb-4bb6-b03f-5297c3be4e1e/resourcegroups/student-rg-846036/providers/microsoft.devtestlab/labs/csn400-12/virtualnetworks/server-12",
    "lastKnownPowerState": "Stopped",
    "location": "canadaeast",
    "name": "LS-12",
    "networkInterface": {
      "dnsName": null,
      "privateIpAddress": null,
      "publicIpAddress": null,
      "publicIpAddressId": null,
      "rdpAuthority": null,
      "sharedPublicIpAddressConfiguration": null,
      "sshAuthority": null,
      "subnetId": null,
      "virtualNetworkId": null
    },
    "notes": "LS-12ci-v01",
    "osType": "Linux",
    "ownerObjectId": "750d1eda-27d3-4562-8dc7-a6e29bf9806d",
    "ownerUserPrincipalName": "odl_user_846036@seneca-csn400naa.cloudlabs.ai",
    "password": null,
    "planId": null,
    "provisioningState": "Succeeded",
    "resourceGroup": "student-rg-846036",
    "scheduleParameters": null,
    "size": "Standard_B2s",
    "sshKey": null,
    "storageType": "Standard",
    "tags": {
      "DeploymentId": "846036",
      "LaunchId": "28959",
      "LaunchType": "ON_DEMAND_LAB",
      "TemplateId": "4678",
      "TenantId": "353"
    },
    "type": "Microsoft.DevTestLab/labs/virtualMachines",
    "uniqueIdentifier": "04f596a4-d7cb-45a3-b65e-a16cf4694738",
    "userName": "odluser846036",
    "virtualMachineCreationSource": "FromCustomImage"
  }
]

```

## <u>PART E-Azure Cost Analysis Charts</u>:
![Alt txt]
![Alt txt]
![Alt txt]
![Alt txt]
![Alt txt]
![Alt txt]
