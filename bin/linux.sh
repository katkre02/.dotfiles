#!/bin/bash

#check if operating system is Linux
if [ $(uname) == "Linux" ]
then	
	#make .TRASH directory in home directory
	mkdir -p ~/.TRASH
	#if .vimrc file exists, change it to .bup_vimrc
	if [ -f ~/.vimrc ]
	then 
		mv ~/.vimrc ~/.bup_vimrc
		echo "current .vimrc file was changed to .bup_vimrc" >> linuxsetup.log
	fi
	#redirect contents of etc/vimrc to .vimrc
	cat ./etc/vimrc > ~/.vimrc
	#add statement to the .bashrc file
	echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc
else
	#if operating system is not Linux, send an error message and exit the code
	echo "Error, operating system must be Linux" >> linuxsetup.log
	exit
fi
