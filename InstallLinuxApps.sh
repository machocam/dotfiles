# !/bin/bash
# Run this to install apps that I like to have on any machine that I use

## From standard repos

sudo apt install vlc snapd git curl keepassxc ssh syncthing

## Snap packages
sudo snap install discord spotify signal-desktop 

## New repos
### telegram
sudo add-apt-repository ppa:atareao/telegram  
sudo apt-get update  
sudo apt-get install telegram

### Microsoft teams 
curl https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
 
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/ms-teams stable main" > /etc/apt/sources.list.d/teams.list'
 
sudo apt update
sudo apt install teams

# Cleanup
sudo apt autoremove  
