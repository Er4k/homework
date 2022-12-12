#!/bin/bash

scp top_df_local.sh dev@192.168.56.123:/home/dev/code

ssh dev@192.168.56.102 "sh /home/dev/code/top_df_local.sh"

scp -r dev@192.168.56.123:/home/dev/code/ /home/dev/code