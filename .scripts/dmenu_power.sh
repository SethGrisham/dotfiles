#!/bin/sh

CHOICES="Nothing\nShutdown\nReboot\nHibernate"

CHOICE=$(echo -e $CHOICES | dmenu -i -p "Power Options")

case $CHOICE in	
	Nothing)
		exit 0
		;;

	Shutdown)
		$(shutdown now)
		;;

	Reboot)
		$(reboot now)
		;;

	Hibernate)
		$(hibernate now)
		;;

	*)
		exit 0
		;;

esac
