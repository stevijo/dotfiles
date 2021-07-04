# Lines configured by zsh-newuser-install
export XDG_CURRENT_DESKTOP="GNOME"
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/usr/local/lib"

if [ -z "$DISPLAY" ] && [ "$(fgconsole)" -eq 1 ]; then
  exec dbus-launch --sh-syntax --exit-with-session sway > /var/log/sway.log 2>&1
fi

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
alias homestead='function __homestead() { (cd ~/Dev/PhpstormProjects/homesteadDocker && vagrant $*); unset -f __homestead; }; __homestead'
BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"
JAVA_HOME=/usr/lib/jvm/default
export ANDROID_HOME=/opt/android
export SHELL=zsh
export TERM=xterm-256color
export LD_CONFIG_PATH=$LD_CONFIG_PATH:/usr/local/lib:/usr/lib
export EDITOR=vim
export PATH=$PATH:/home/stevijo/.gem/ruby/2.1.0/bin:/home/stevijo/.config/composer/vendor/bin:/opt/android/tools:/opt/android/platform-tools
export VAGRANT_DEFAULT_PROVIDER=docker
export GOPATH=~/.gocode
export GOROOT=/home/stevijo/Dev/go 
export PATH=$PATH:$GOPATH/bin:/home/stevijo/Dev/go/bin

antigen theme agnoster
antigen apply

source /home/stevijo/.profile

source /home/linuxbrew/.linuxbrew/opt/fzf/shell/key-bindings.zsh
source /home/linuxbrew/.linuxbrew/opt/fzf/shell/completion.zsh

###-tns-completion-start-###
if [ -f /home/stevijo/.tnsrc ]; then 
    source /home/stevijo/.tnsrc 
fi
###-tns-completion-end-###
# The following lines were added by compinstall
