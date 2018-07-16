#! /bin/bash
CHECK=$(curl 'http://localhost:80/healthcheck' -s -o /dev/null -w "response_code: %{http_code}\n")
timestamp=$(date +"[timestamp:%Y-%m-%dT%H:%M:%S.%3N]")
while true
 do
   echo -e "$CHECK" "$timestamp"  >> file.txt
  sleep 2s
 done
