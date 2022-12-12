#!/bin/bash

target_ip="dev@192.168.56.123"
target_dir="/home/dev/code"
DATE=$(date +%d-%m-%Y)

local_script_path="/home/dev/code/top_df_local.sh"
remote_script_path="$target_dir/top_df_local.sh"

local_output_dir="/home/dev/code"
remote_output_dir="$target_dir"

scp "$local_script_path" "$target_ip:$remote_script_path"

ssh "$target_ip" "bash $remote_script_path"

scp -r "$target_ip:$remote_output_dir/$DATE" "$local_output_dir"
