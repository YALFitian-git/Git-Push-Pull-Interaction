#!/bin/bash
ssh -T git@github.com
while true; do
	git pull
	clear
	cat comms.txt
done
while true; do
	read -t 0.1 userInput 
	echo $userInput >> comms.txt
	git add comms.txt
	git commit -m "message sent"
	git push
	clear
	cat comms.txt
done