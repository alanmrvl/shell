#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

export PATH="$HOME/.local/npm/bin:$PATH"
export PATH="$HOME/.apps/bin:$PATH"
export PATH="$HOME/.local/alanmrvl/bin:$PATH"
source "$HOME/.cargo/env"
export MOZ_ENABLE_WAYLAND=1
