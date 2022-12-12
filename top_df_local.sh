#!/bin/bash

DATE=$(date +%d-%m-%Y)
mkdir "$DATE"

top -b -n1 > "$DATE/top.txt"

df -h >> "$DATE/top.txt"
