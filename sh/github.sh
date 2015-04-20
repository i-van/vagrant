#!/bin/bash

# Git config
su vagrant -c 'git config --global color.ui true'

# Default editor: Vim!
su vagrant -c 'git config --global core.editor "vim"'

# Set name and email
su vagrant -c "git config --global user.name 'Ivan Nosov'"
su vagrant -c "git config --global user.email i.k.nosov@gmail.com"

# Aliases
su vagrant -c "git config --global alias.co checkout"
su vagrant -c "git config --global alias.ci commit"
su vagrant -c "git config --global alias.st status"
su vagrant -c "git config --global alias.br branch"
su vagrant -c "git config --global alias.hist 'log --pretty=format:\"%h %ad | %s%d [%an]\" --graph --date=short'"
su vagrant -c "git config --global alias.type 'cat-file -t'"
su vagrant -c "git config --global alias.dump 'cat-file -p'"

echo "Run 'vagrant ssh' then set your git config manually, e.g.:"
echo "ssh-keygen -t rsa"
echo "(Copy the contents of ~/.ssh/id_rsa.pub into your GitHub account: https://github.com/settings/ssh)"
echo "git config --global user.name '<your name>'"
echo "git config --global user.email <your email>"
