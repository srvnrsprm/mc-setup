#!/bin/bash
while read pckg; do
	dpkg -s $pckg > /dev/null
	if [ $? -eq 0 ]; then
		echo "$pckg is already installed"
	else
		echo -e "\033[0;31m$pckg is not installed, so trying to install\033[0;30m"
		sudo apt install $pckg
	fi
done < pckgs-lst
