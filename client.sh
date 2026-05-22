#!/bin/bash
ssh -T git@github.com

while true; do
messageTimeStamp=$(git log -1 --format=%ct)
git pull &> /dev/null
while [ $messageTimeStamp -ne $(git log -1 --format=%ct) ]; do
    git log -1 --pretty=%B
    messageTimeStamp=$(git log -1 --format=%ct)
done
done &

while true; do
    read -t 2 userInput 
    if [ -n "$userInput" ]; then
    echo " " >> comms.txt
    git add comms.txt
    git commit -m "$userInput" #&> /dev/null
    git push #&> /dev/null
fi
done