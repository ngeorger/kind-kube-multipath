#!/bin/bash

INSTANCE_NAME="podman"

multipass stop $INSTANCE_NAME
sudo route -nv delete -net 192.168.64.0/24
sudo route -nv add -net 192.168.64.0/24 -interface bridge100
multipass start $INSTANCE_NAME
