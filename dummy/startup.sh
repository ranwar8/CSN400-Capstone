#!/bin/bash 

# Get Azure Current Version that running in the System

echo "--------------------------------------"

echo "Get the current running SDK Version"

echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"

az --version

# Get all the subscription in JSON
echo "------------------------------------------"

echo "List Current Subscription in JSON format"

echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"

az account list 
# Get the resource groups

echo "---------------------------------------------------------"

echo "List all the resource group in this current subscription"

echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"

az group list --output table
