# Install ansible
sudo apt-get update
sudo apt-get install ansible git

# Clone provisioning repo
cd ~ && git clone https://github.com/el-ethan/fresh.git
cd fresh

# Run ansible playbook
ansible-playbook setup.yml -i HOSTS --ask-sudo-pass

dropbox start -i > /dev/null 2>&1 &

# Emacs configuration
cd ~ && git clone git@github.com:el-ethan/.emacs.d.git

# Get dot files
git clone git@github.com:el-ethan/dotfiles.git

# Get Terminator theme
if [ -d "/home/ethan/.config/terminator" ]; then
  rm -rf ~/.config/terminator
fi

cd ~/.config && git clone git@github.com:el-ethan/terminator.git

sudo ./emacs.sh
