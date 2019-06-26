export XDG_CURRENT_DESKTOP="GNOME"
export FZF_BASE=/home/linuxbrew/.linuxbrew/opt/fzf
export LD_LIBRARY_PATH=/usr/local/lib:/usr/lib:/usr/local/lib/x86_64-linux-gnu

if [ -z "$DISPLAY" ] && [ "$(fgconsole)" -eq 1 ]; then
	export _JAVA_AWT_WM_NONREPARENTING=1
	exec dbus-launch --sh-syntax --exit-with-session sway > /var/log/sway.log 2>&1
	exit 0
fi

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
#zstyle :compinstall filename '/home/stevijo/.zshrc'
source /home/stevijo/.local/share/antigen/antigen.zsh

antigen use oh-my-zsh
antigen bundle jump

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle fzf

autoload -Uz colors && colors
autoload -Uz compinit
compinit
alias ls='ls --color=auto'
BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"
export TERM=xterm-256color
export SHELL=zsh
export LD_CONFIG_PATH=$LD_CONFIG_PATH:/usr/local/lib:/usr/lib
export EDITOR=vim
eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)

antigen theme agnoster
antigen apply

source ~/.profile
