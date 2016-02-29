#!/bin/bash

# Make sure only root can run the script
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

# Useful packages
apt-get install -y git terminator python-pip gcc tree powertop virtualbox-qt \
        ipython editorconfig xclip silversearcher-ag


###### Kivy dependencies ######
apt-get install -y python-setuptools python-pygame python-opengl \
	python-gst0.10 python-enchant gstreamer0.10-plugins-good python-dev \
	build-essential libgl1-mesa-dev libgles2-mesa-dev zlib1g-dev

###### PyPI packages ######
pip install rope flake8 importmagic autopep8 psutil cython jedi pdbpp
