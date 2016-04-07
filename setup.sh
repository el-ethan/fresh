# Install ansible
sudo apt-get update
sudo apt-get -y install ansible git

# Clone provisioning repo
cd ~ && git clone https://github.com/el-ethan/fresh.git
cd fresh

# Run ansible playbook
ansible-playbook setup.yml -i HOSTS --ask-sudo-pass

dropbox start -i > /dev/null 2>&1 &
