#!/bin/bash
ssh -T git@github.com
while true; do
	git pull
	clear
	cat comms.txt
done