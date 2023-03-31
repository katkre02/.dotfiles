# My Dotfiles
These are my dotfile configuration files for different software in Bash.
## .vimrc
This is my custom .vimrc configuration for Vim.
## .bashrc
This is my custom .bashrc configuration for Bash.
## bin
The bin directory stores the cleanup.sh and linux.sh files.
### cleanup.sh
Undoes the linux.sh script.
1) Removes .vimrc file
2) Removes the added line to .bashrc file
3) Removes the .TRASH directory
### linux.sh
Overwrites and creates a .vimrc file.
1) Check operating system is Linux. If not, send error and exit program.
2) Creates a .TRASH directory
3) Changes existing .vimrc file name
4) Redirect etc/vimrc file contents to .vimrc
5) Add line "source ~.dotfiles.etc.bashrc_custom" to the end of the .bashrc file
## etc
The etc directory stores the bashrc and vimrc files.
### bashrc
Customizes the Bash configurations.
1) Set alias for cd, ls, targz, untar, and several others
2) Creates two functions, one to tar -zcvf a directory, and one to tar -xvf a tar.gz file
### vimrc
Customizes the Vim configurations.
1) Set syntax to on
2) Set number to show line numbers
3) Set to autoindent new lines
4) Set ruler to show row and column ruler information
5) Set color to elflord
6) Set autoindent spaces to 8 and tab spaces to 0
## Makefile
Runs the linux.sh and cleanup.sh script from the bin directory.
