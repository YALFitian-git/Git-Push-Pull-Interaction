#!/bin/bash
ssh -T git@github.com
while true; do
	read userInput 
	echo " " >> comms.txt
	git add comms.txt
	git commit -m "$userInput" > /dev/null
	git push > /dev/null
done