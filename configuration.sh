#!/bin/bash

# Make sure only root can run the script
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

if [ -d "/home/ethan/.emacs.d" ]; then
  rm -rf ~/.emacs.d
fi

# Clone git repos
## Emacs configuration
cd ~ && git clone git@github.com:el-ethan/.emacs.d.git
git clone git@github.com:el-ethan/dotfiles.git

if [ -d "/home/ethan/.config/terminator" ]; then
  rm -rf ~/.config/terminator
fi

cd ~/.config
git clone git@github.com:el-ethan/terminator.git

###### Configs ######
mv ~/.bashrc ~/Documents/.old_bashrc
ln -s ~/dotfiles/.bashrc ~/.bashrc
ln -s ~/dotfiles/.pdbrc ~/.pdbrc
ln -s ~/dotfiles/.pdbrc.py ~/.pdbrc.py
cp ~/dotfiles/.gitconfig ~/.gitconfig
cp ~/Dropbox/development/corgi/corgi.sh ~/corgi.sh

# Set swapiness
sudo sysctl vm.swappiness=10

# Enable firewall
ufw enable

# # Generate ssh keys

# ssh-keygen -t rsa -b 4096 -C "elethan@gmail.com"
# eval "$(ssh-agent -s)"
# ssh-add ~/.ssh/id_rsa
