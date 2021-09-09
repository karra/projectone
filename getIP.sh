#!/bin/bash
az login --service-principal --username $AZURE_CLIENT_ID --password $AZURE_SECRET --tenant $AZURE_TENANT > /dev/null
ip=`az vm list-ip-addresses -n newVM -g newRG --query [].virtualMachine.network.publicIpAddresses[0].ipAddress -o tsv`
echo -e "[azurevm]\n$ip" | sudo tee -a /etc/ansible/hosts > /dev/null
