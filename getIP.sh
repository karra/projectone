#!/bin/bash
sudo sed -i '/azurevm/d' /etc/ansible/hosts
az login --service-principal --username $ARM_CLIENT_ID --password $ARM_CLIENT_SECRET --tenant $ARM_TENANT_ID > /dev/null
ip=`az vm list-ip-addresses -n newVM -g newRG --query [].virtualMachine.network.publicIpAddresses[0].ipAddress -o tsv`
echo -e "azurevm ansible_host=$ip ansible_ssh_extra_args='-o StrictHostKeyChecking=no'" | sudo tee -a /etc/ansible/hosts > /dev/null
