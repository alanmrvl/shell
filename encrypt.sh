#!/bin/sh

ROOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

gpg --symmetric --output "$ROOT_DIR/ln/.config/newsboat/urls.gpg" "$HOME/.config/newsboat/urls"
