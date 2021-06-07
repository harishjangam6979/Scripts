#!/bin/bash

users=("alice" "bob" "david")
webapps=("calculator" "stapler" "pen")

for user in "${users[@]}"
do
  for webapp  in "${webapps[@]}"
  do
    url="https://example.com/users/$user/apps/$webapp"
    read -r status < <(exec curl -IsS "${url}" 2>&1)
#    echo "$url: $status"
    if [[ "$status" != *"200" ]]; then #Only reports when the status is not 200
      echo "URL: $url status is $status"
    fi
  done
done



Command executed: ./statusOfURL.sh
Ouput:
URL: https://example.com/users/alice/apps/calculator status is HTTP/2 404
URL: https://example.com/users/alice/apps/stapler status is HTTP/2 404
URL: https://example.com/users/alice/apps/pen status is HTTP/2 404
URL: https://example.com/users/bob/apps/calculator status is HTTP/2 404
URL: https://example.com/users/bob/apps/stapler status is HTTP/2 404
URL: https://example.com/users/bob/apps/pen status is HTTP/2 404
URL: https://example.com/users/david/apps/calculator status is HTTP/2 404
URL: https://example.com/users/david/apps/stapler status is HTTP/2 404
URL: https://example.com/users/david/apps/pen status is HTTP/2 404

Notes:
1) Above Script can also be tested against a functioning url by replace the $url value.
2) I would run this script periodically in Jenkins or any other tool to notify against any malfunctioning URL's.

