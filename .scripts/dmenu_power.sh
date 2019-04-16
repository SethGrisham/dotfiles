#!/bin/sh

CHOICES="Nothing\nShutdown\nReboot\nHibernate"

CHOICE=$(echo  $CHOICES | dmenu -i -p "Power Options")

case $CHOICE in	
	Nothing)
		exit 0
		;;

	Shutdown)
		$(sudo -A poweroff)
		;;

	Reboot)
		$(sudo -A reboot)
		;;

	Hibernate)
		$(sudo -A ZZZ)
		;;

	*)
		exit 0
		;;

esac
