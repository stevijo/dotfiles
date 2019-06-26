# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

export TERM=xterm-256color
export _JAVA_AWT_WM_NONREPARENTING=1

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi
eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
PATH="$HOME/go/bin:$PATH"

export CLUTTER_BACKEND=x11                                                     
export XDG_CURRENT_DESKTOP="GNOME"                                             
export XDG_SESSION_TYPE="wayland dbus-run-session gnome-session"               
export GDK_BACKEND=x11
