#! /bin/bash
CHECK=$(curl 'http://localhost:80/healthcheck' -s -o /dev/null -w "response_code: %{http_code}")
while true
 do
  echo $CHECK > File.txt
 done
