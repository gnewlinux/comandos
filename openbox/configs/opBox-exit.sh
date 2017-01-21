#!/usr/bin/env bash

if [ -z $1 ];then
	echo "Usage: $0 [reboot|halt]"
	exit
fi


if [ $1 = reboot ];then
	zenity --question --ok-label "Reboot" --text "Reboot $HOST?" && sudo /sbin/reboot

elif [ $1 = halt ];then
	zenity --question --ok-label "Shudown" --text "Shutdown $HOST?" && sudo /sbin/halt -p
fi
