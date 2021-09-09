#!/bin/bash
az login --service-principal --username 77bacf90-d9f3-4194-b16d-03e17160ae99 --password 5e2OKsktu-XW56y7XNjoc5Hzbo_tCA2S.d --tenant edf442f5-b994-4c86-a131-b42b03a16c95 > /dev/null
ip=`az vm list-ip-addresses -n newVM -g newRG --query [].virtualMachine.network.publicIpAddresses[0].ipAddress -o tsv`
echo -e "[azurevm]\n$ip" | sudo tee -a /etc/ansible/hosts > /dev/null
