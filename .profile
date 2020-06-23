# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
#if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    #if [ -f "$HOME/.bashrc" ]; then
	#. "$HOME/.bashrc"
    #fi
#fi

# set PATH so it includes user's private bin directories
PATH="$HOME/bin:$HOME/.local/bin:$PATH"
export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
export MANPATH="/home/linuxbrew/.linuxbrew/share/man:$MANPATH"
export INFOPATH="/home/linuxbrew/.linuxbrew/share/info:$INFOPATH"
export CLUTTER_BACKEND=x11
export XDG_CURRENT_DESKTOP="GNOME"
export XDG_SESSION_TYPE="wayland dbus-run-session gnome-session"
export GDK_BACKEND=x11
export _JAVA_AWT_WM_NONREPARENTING=1
