#!/bin/bash

target_ip="192.168.56.123"
ssh "$target_ip" exit 0

if [ $? -eq 0 ]; then
    echo "Connection to $target_ip succeeded"
else
    echo "Connection to $target_ip failed"
fi
