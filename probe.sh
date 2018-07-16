#! /bin/bash
CHECK=$(curl 'http://localhost:80/healthcheck' -s -o /dev/null -w "response_code: %{http_code}\n connect_time: %{time_connect}")
while true
 do
  echo $CHECK >> file.txt
  sleep 2s
 done
