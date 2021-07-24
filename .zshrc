HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
#zstyle :compinstall filename '/home/stevijo/.zshrc'
source ~/.antigen/antigen.zsh

antigen use oh-my-zsh
antigen bundle jump

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions

autoload -Uz colors && colors
autoload -Uz compinit
compinit
alias ls='ls --color=auto'
BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"
export JAVA_HOME=/usr/lib/jvm/default
export SHELL=zsh
export TERM=xterm-256color
export LD_CONFIG_PATH=$LD_CONFIG_PATH:/usr/local/lib:/usr/lib
export EDITOR=vim
export GOPATH=~/.gocode
export GOROOT=/home/stevijo/Dev/go 
export PATH=$PATH:$GOPATH/bin

antigen theme agnoster
antigen apply

source /home/linuxbrew/.linuxbrew/opt/fzf/shell/key-bindings.zsh
source /home/linuxbrew/.linuxbrew/opt/fzf/shell/completion.zsh

###-tns-completion-start-###
if [ -f /home/stevijo/.tnsrc ]; then 
    source /home/stevijo/.tnsrc 
fi
###-tns-completion-end-###
# The following lines were added by compinstall
