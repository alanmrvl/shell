#!/bin/bash

ROOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
DIR="$ROOT_DIR/ln"
OUT_DIR="$ROOT_DIR/out/ln"

mkdir -p $HOME/.apps/bin
mkdir -p $HOME/.config/i3
mkdir -p $HOME/.config/newsboat
mkdir -p $HOME/.config/nitrogen
mkdir -p $HOME/.local/share/applications

ln -sf $DIR/.bash_profile $HOME/.bash_profile
ln -sf $DIR/.npmrc $HOME/.npmrc
ln -sf $DIR/.vimrc $HOME/.vimrc
ln -sf $DIR/.xinitrc $HOME/.xinitrc
ln -sf $DIR/.local/alanmrvl $HOME/.local/alanmrvl

ln -sf $DIR/.config/i3/config $HOME/.config/i3/config
ln -sf $DIR/.config/newsboat/config $HOME/.config/newsboat/config
ln -sf $DIR/.config/nitrogen/bg-saved.cfg $HOME/.config/nitrogen/bg-saved.cfg
ln -sf $DIR/.config/nitrogen/nitrogen.cfg $HOME/.config/nitrogen/nitrogen.cfg

mkdir -p $OUT_DIR/.local/share/applications
sed "s/{{HOME}}/${HOME//\//\\/}/" $DIR/.local/share/applications/firefox-nightly.desktop > $OUT_DIR/.local/share/applications/firefox-nightly.desktop
ln -sf $OUT_DIR/.local/share/applications/firefox-nightly.desktop $HOME/.local/share/applications/firefox-nightly.desktop

if test -f "$HOME/.apps/firefox-nightly/firefox"; then
    ln -sf $HOME/.apps/firefox-nightly/firefox $HOME/.apps/bin/nightly
fi
