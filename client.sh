#!/bin/bash
ssh -T git@github.com
while true; do
	clear
	git pull
	clear
	cat comms.txt
	read userInput 
	echo $userInput >> comms.txt
	git add comms.txt
	git commit -m "message sent"
	git push
done