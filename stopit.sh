#!/bin/bash

running_processes=$(ps -e -o pid,cmd)

while IFS= read -r process; do
  pid=$(echo "$process" | awk '{print $1}')  
  cmd=$(echo "$process" | awk '{$1=""; print $0}')  

  if [[ "$cmd" != *"$0"* ]]; then 
    echo "Terminating process: $cmd"
    kill "$pid" 
  fi
done <<< "$running_processes"

