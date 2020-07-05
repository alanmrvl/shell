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

ln -sf $DIR/.vimrc /home/$USER/.vimrc
ln -sf $DIR/.npmrc /home/$USER/.npmrc
