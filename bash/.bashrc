#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# If running on virtual console, set screen blanking in minutes
if [ "$TERM" == "linux" ]; then
  setterm -blank 10
fi

# If $HOME/bin exists and isn't on $PATH, prepend it
if [ -d "$HOME/bin" ] && [[ ":$PATH:" != *":$HOME/bin:"* ]]; then
  PATH=$HOME/bin:$PATH
fi

# If $HOME/.local/bin exists and isn't on $PATH, append it
if [ -d "$HOME/.local/bin" ] && [[ ":$PATH:" != *":$HOME/.local/bin:"* ]]; then
  PATH=$PATH:$HOME/.local/bin
fi

# dotfiles local repo location
export DOT=$HOME/.dotfiles

# Source .bash_functions if exists
[ -r $HOME/.bash_functions ] && . $HOME/.bash_functions

# Set environment variables
export HISTCONTROL=ignoreboth
export HISTSIZE=10000
export HISTFILESIZE=20000
export EDITOR=/usr/bin/vim
export VISUAL=/usr/bin/vim
export LANG=en_GB.UTF-8
export LC_ALL=en_GB.UTF-8

# Set bash options
shopt -s histappend
shopt -s checkwinsize
shopt -s mailwarn
shopt -s autocd
shopt -s cdable_vars
shopt -s histverify

# Define useful aliases
alias ls='ls --color=auto -N'
alias rmed='find -type d -empty -delete'
alias powertop='sudo powertop'

# Change the window title of X terminals 
case ${TERM} in
	[aEkx]term*|rxvt*|gnome*|konsole*|interix)
		PS1='\[\033]0;\u@\h:\w\007\]'
		;;
	screen*)
		PS1='\[\033k\u@\h:\w\033\\\]'
		;;
	*)
		unset PS1
		;;
esac

# Set prompt user@host dir
PROMPT_COMMAND="history -a;$PROMPT_COMMAND"
PS1='[\u@\h \W]\$ '
