#!/bin/bash
az login --service-principal --username $ARM_CLIENT_ID --password $ARM_CLIENT_SECRET --tenant $ARM_TENANT_ID > /dev/null
ip=`az vm list-ip-addresses -n newVM -g newRG --query [].virtualMachine.network.publicIpAddresses[0].ipAddress -o tsv`
echo -e "[azurevm]\n$ip" | sudo tee -a /etc/ansible/hosts > /dev/null
