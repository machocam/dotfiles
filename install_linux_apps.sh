
# !/bin/bash
# Run this to install apps that I like to have on any machine that I use

## From standard repos

sudo apt install vlc snapd git curl keepassxc ssh syncthing fzf ripgrep newsboathtop neovim pandoc pgp universal-ctags python3-pandas python3-pip cups cups-bsd cups-pdf aria2 

## Snap packages
sudo snap install spotify signal-desktop 

## From PIP
pip install folium

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

### Syncthing
echo "deb https://apt.syncthing.net/ syncthing stable" | sudo tee /etc/apt/sources.list.d/syncthing.list
curl -s https://syncthing.net/release-key.txt | sudo apt-key add -
sudo apt update && sudo apt install syncthing

# Cleanup
sudo apt autoremove  
