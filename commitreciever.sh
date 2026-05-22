#!/bin/bash
while true; do
messageTimeStamp=$(git log -1 --format=%ct)
git pull &> /dev/null
while [ $messageTimeStamp -ne $(git log -1 --format=%ct) ]; do
	git log -1 --pretty=%B
	messageTimeStamp=$(git log -1 --format=%ct)
done
done