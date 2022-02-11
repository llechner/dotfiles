#!/bin/sh
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=~/dotfiles                    # dotfiles directory
olddir=~/dotfiles_old             # old dotfiles backup directory

# list of files/folders to symlink in homedir
files="bash_aliases bashrc inputrc latexmkrc nanorc nano rootalias rootrc ssh_config vimrc vim"
##########

# create dotfiles_old in homedir
echo -n "Creating $olddir for backup of any existing dotfiles in ~ ..."
mkdir -p $olddir
echo "done"

# change to the dotfiles directory
echo -n "Changing to the $dir directory ..."
cd $dir || exit
echo "done"

# move any existing dotfiles in homedir to dotfiles_old directory,
# then create symlinks from the homedir to any files in the ~/dotfiles
# directory specified in $files
echo "Moving any existing dotfiles to $olddir"
for file in $files; do
    if [ ${file} = "ssh_config" ]; then
		mv -v ~/.ssh/config $olddir
		echo "Creating symlink to $file in home directory."
		ln -s $dir/${file} ~/.ssh/config
	else
		mv -v ~/."$file" $olddir
		echo "Creating symlink to $file in home directory."
		ln -s $dir/${file} ~/.$file
	fi
done

rm /bin/sh
ln -s /bin/bash /bin/sh
