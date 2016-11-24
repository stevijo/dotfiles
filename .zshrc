# Lines configured by zsh-newuser-install

if [ -z "$DISPLAY" ] && [ "$(fgconsole)" -eq 1 ]; then
  exec startx;
fi

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
#zstyle :compinstall filename '/home/stevijo/.zshrc'
source /usr/share/zsh/scripts/antigen/antigen.zsh

antigen use oh-my-zsh
antigen bundle jump
antigen apply

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions

autoload -Uz colors && colors
autoload -Uz compinit
compinit
alias ls='ls --color=auto'
alias homestead='function __homestead() { (cd ~/Dev/PhpstormProjects/homesteadDocker && vagrant $*); unset -f __homestead; }; __homestead'
BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"
JAVA_HOME=/usr/lib/jvm/default
export SHELL=zsh
export LD_CONFIG_PATH=$LD_CONFIG_PATH:/usr/local/lib:/usr/lib
export EDITOR=vim
export PATH=$PATH:/home/stevijo/.gem/ruby/2.1.0/bin:/home/stevijo/.composer/vendor/bin
export VAGRANT_DEFAULT_PROVIDER=docker

antigen theme agnoster
