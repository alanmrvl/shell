#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

export PATH="$HOME/.local/npm/bin:$PATH"
export PATH="$HOME/.apps/bin:$PATH"
export PATH="$HOME/.local/alanmrvl/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

if [ -d "/usr/share/sway/scripts" ]; then
    export PATH="$PATH:/usr/share/sway/scripts"
fi

source "$HOME/.cargo/env"

export MOZ_ENABLE_WAYLAND=1
export GATSBY_TELEMETRY_DISABLED=1
export _JAVA_AWT_WM_NONREPARENTING=1 # https://github.com/swaywm/sway/issues/595
export DOTNET_CLI_TELEMETRY_OPTOUT=1
