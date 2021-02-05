#!/bin/sh

ROOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

gpg --decrypt --output "$HOME/.config/newsboat/urls" "$DIR/ln/.config/newsboat/urls.gpg"
