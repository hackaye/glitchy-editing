#!/bin/bash
# This script runs when you click the Share button!

readarray -t lines < <(gh codespace ports --codespace=${CODESPACE_NAME})
if [ ${#lines[@]} -eq 0 ]; then
    printf "\n😭 Nothing to share yet, you need to run your website and open it in a port...\n\n"
else
    for i in "${lines[@]}"
    do
        read -ra entries <<<"$i"
        code=$(curl -s -o /dev/null -w "%{http_code}" ${entries[-1]})
        if [[ ${code} -lt 400 ]] ; then
            printf "\n📣 Share your website preview by copying this URL: ${entries[-1]}\n\n"
            break
        fi
    done
fi
