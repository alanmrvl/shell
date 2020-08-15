#!/bin/bash

# sudo apt-get update
# 
# sudo apt-get install -y \
#     git \
#     apt-transport-https \
#     ca-certificates \
#     curl \
#     software-properties-common
# 
# curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
# 
# sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
# 
# sudo apt-get update
# 
# sudo apt-get install docker-ce

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

mkdir -p /home/$USER/.config/i3
mkdir -p /home/$USER/.config/nitrogen

ln -sf $DIR/.npmrc /home/$USER/.npmrc
ln -sf $DIR/.vimrc /home/$USER/.vimrc
ln -sf $DIR/.xinitrc /home/$USER/.xinitrc
ln -sf $DIR/.config/i3/config /home/$USER/.config/i3/config
ln -sf $DIR/.config/nitrogen/bg-saved.cfg /home/$USER/.config/nitrogen/bg-saved.cfg
ln -sf $DIR/.config/nitrogen/nitrogen.cfg /home/$USER/.config/nitrogen/nitrogen.cfg
