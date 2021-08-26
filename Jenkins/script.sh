#!/bin/bash
# this script is only tested on ubuntu 
apt install make 
sudo chmod 666 /var/run/docker.sock
sysctl -w vm.max_map_count=262144
echo "Done"