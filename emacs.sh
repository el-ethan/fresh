###### Emacs ######

#Download the Emacs 24.5 source tarball:
cd ~

mkdir emacs-src && cd emacs-src

wget http://mirror.team-cymru.org/gnu/emacs/emacs-24.5.tar.gz

tar xvf emacs-24.5.tar.gz

# Compile the Emacs binary.

apt-get install -y build-essential

apt-get build-dep -y emacs24

cd emacs-24.5

./configure

make

make install
