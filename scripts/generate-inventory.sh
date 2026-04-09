#!/bin/bash

ENV=$1

cd terraform

IP=$(terraform output -raw instance_ip)

cd ..

echo "[web]" > ansible/inventories/$ENV
echo "$IP ansible_user=ec2-user ansible_ssh_private_key_file=~/.ssh/key.pem" >> ansible/inventories/$ENV

echo "Inventory created for $ENV"
