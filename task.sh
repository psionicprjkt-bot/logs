# trigger
#!/bin/bash

arr[0]="logs: null, agen pid ?"
arr[1]="logs: Hi psionicprjkt-bot! You've successfully authenticated, but GitHub does not provide shell access."
arr[2]="logs: /root/.ssh/id_xxxxxxx: No such file or directory"

rand=$[$RANDOM % ${#arr[@]}]
d=`date '+%Y-%m-%dT%H:%M:%SZ'`

echo "## logs: ${d} (current)" > update.md

git config --local user.email "psionicprjkt@gmail.com"
git config --local user.name "psionicprjkt-bot"
git commit -am "logs: ${arr[$rand]} (at ${d})"
