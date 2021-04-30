#!/usr/bin/env bash

echo " - - - - - - - - - - UPDATE - - - - - - - - - - "
sudo apt update
echo " - - - - - - - - - - UPGRADE - - - - - - - - - - "
sudo apt upgrade

echo " - - - - - - - - - - INSTALL - - - - - - - - - - "
sudo apt install vim htop tree lolcat figlet omxplayer mutt git samba 

echo " - - - - - - - - - - .bash_aliases - - - - - - - - - - "
cd ~/
wget -L https://raw.githubusercontent.com/147code/rPi/main/.bash_aliases
cd -

echo " - - - - - - - - - - mnt - - - - - - - - - - "
sudo mkdir -p /mnt/SanDisk_64_GB
echo "UUID=440df52a-ce02-4eed-a1f3-3f6ed5779169 /mnt/SanDisk_64_GB ext4 defaults 0 1" | sudo tee -a /etc/fstab
sudo mkdir -p /mnt/WD_74_GB
echo "UUID=84bccf1e-7116-4977-823d-054903faa378 /mnt/WD_74_GB ext4 defaults 0 1" | sudo tee -a /etc/fstab
sudo mount -a

echo " - - - - - - - - - - SSH - - - - - - - - - - "
mkdir ~/.ssh
mv ~/uploaded_key.pub  ~/.ssh/authorized_keys
#sudo chmod 700 ~/.ssh/
#sudo chmod 600 ~/.ssh/ *

echo " - - - - - - - - - - CLEANING - - - - - - - - - - 
sudo rm -r start.sh
sudo rm -r wget-hsts
