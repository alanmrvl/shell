#!/bin/bash

# sudo apt-get update
# 
# sudo apt-get install -y \
#     git \
#     apt-transport-https \
#     ca-certificates \
#     curl \
#     software-propertie-common
# 
# curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
# 
# sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
# 
# sudo apt-get update
# 
# sudo apt-get install docker-ce

if [[ "$OSTYPE" == "darwin"* ]]; then
    HOMEDIR=Users
else
    HOMEDIR=home
fi

echo "HOMEDIR=$HOMEDIR"

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

mkdir -p /$HOMEDIR/$USER/.apps/bin
mkdir -p /$HOMEDIR/$USER/.config/i3
mkdir -p /$HOMEDIR/$USER/.config/nitrogen
mkdir -p /$HOMEDIR/$USER/.local/share/applications

ln -sf $DIR/.bash_profile /$HOMEDIR/$USER/.bash_profile
ln -sf $DIR/.npmrc /$HOMEDIR/$USER/.npmrc
ln -sf $DIR/.vimrc /$HOMEDIR/$USER/.vimrc
ln -sf $DIR/.xinitrc /$HOMEDIR/$USER/.xinitrc

ln -sf $DIR/.config/i3/config /$HOMEDIR/$USER/.config/i3/config
ln -sf $DIR/.config/nitrogen/bg-saved.cfg /$HOMEDIR/$USER/.config/nitrogen/bg-saved.cfg
ln -sf $DIR/.config/nitrogen/nitrogen.cfg /$HOMEDIR/$USER/.config/nitrogen/nitrogen.cfg

ln -sf $DIR/.local/applications/firefox-nightly.desktop /$HOMEDIR/$USER/.local/share/applications/firefox-nightly.desktop

if test -f "/$HOMEDIR/$USER/.apps/firefox-nightly/firefox"; then
    ln -sf /$HOMEDIR/$USER/.apps/firefox-nightly/firefox /$HOMEDIR/$USER/.apps/bin/nightly
fi
