#!/bin/bash

if [ -z "$1" ]; then
    filename="data.txt"
else
    filename="$1"
fi

date > "$filename"
