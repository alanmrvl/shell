#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/ln"

mkdir -p /$HOME/.apps/bin
mkdir -p /$HOME/.config/i3
mkdir -p /$HOME/.config/nitrogen
mkdir -p /$HOME/.local/share/applications

ln -sf $DIR/.bash_profile /$HOME/.bash_profile
ln -sf $DIR/.npmrc /$HOME/.npmrc
ln -sf $DIR/.vimrc /$HOME/.vimrc
ln -sf $DIR/.xinitrc /$HOME/.xinitrc

ln -sf $DIR/.config/i3/config /$HOME/.config/i3/config
ln -sf $DIR/.config/nitrogen/bg-saved.cfg /$HOME/.config/nitrogen/bg-saved.cfg
ln -sf $DIR/.config/nitrogen/nitrogen.cfg /$HOME/.config/nitrogen/nitrogen.cfg

ln -sf $DIR/.local/applications/firefox-nightly.desktop /$HOME/.local/share/applications/firefox-nightly.desktop

if test -f "/$HOME/.apps/firefox-nightly/firefox"; then
    ln -sf /$HOME/.apps/firefox-nightly/firefox /$HOME/.apps/bin/nightly
fi
