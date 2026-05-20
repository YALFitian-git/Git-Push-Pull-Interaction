#!/bin/bash
ssh -T git@github.com
while true; do
	git pull
	cat comms.txt
done
while true; do
	clear
	read userInput 
	echo $userInput >> comms.txt
	git add comms.txt
	git commit -m "message sent"
	git push
done