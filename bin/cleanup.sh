#source ~/.dotfiles/etc/bashrc_custom!/bin/bash

#remove .vimrc from home directory
if [ -d ~/.vimrc ]
then 
	rm -rf ~/.vimrc        
fi
#remove the line at the end of the .bashrc file
sed -i 's/source ~\/\.dotfiles\/etc\/bashrc_custom//g' ~/.bashrc
#remove the .TRASH directory from the home directory
if [ -d ~/.TRASH ]
then
	rm -rf ~/.TRASH
fi
