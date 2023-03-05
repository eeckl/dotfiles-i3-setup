# ALWAYS RUN
# ==========
# things to always set up, even for inactive shells

EDITOR=vim
PAGER=less
PATH=$HOME/.local/bin:$PATH
export EDITOR PAGER PATH

# CHECK INTERACTIVE
# =================
# Don't do anything after this if not running an interactive shell.

case $- in
    *i*) ;;
      *) return ;;
esac

# ALIASES
# =======

# Make these commands shorter:
alias vim="nvim"
alias la="ls -aF"
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'
alias p="sudo pacman"
alias yt="yt-dlp --embed-metadata -i"
alias yta="yt -x --audio-format mp3"
alias troll="neofetch | sed 's/20NRS01P00 ThinkPad L390/NASA ThinkPad/g' | sed 's/i3-8145U (4) @ 3.900GHz/i9-13900K (24) @ 5.800GHz/g' | sed 's/Intel WhiskeyLake-U GT2 \[UHD Graphics 620\]/NVIDIA GeForce RTX 4090/g'"

# Give some color to these commands:
alias ls="ls --color=auto"
alias grep="grep --color=auto"
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias diff="diff --color=auto"

# Make terminal swallow sometimes, using the program 'swallow':
alias feh="swallow feh"
alias mpv="swallow mpv"

# BASH COMPLETION
# ===============
# include bash completions if they exist
# (may need to be adjusted to where the bash completions are stored on the current system)

# Default for FreeBSD:
if [ -f /usr/local/share/bash-completion/bash_completion.sh ]; then
    source /usr/local/share/bash-completion/bash_completion.sh
# Default for Linux:
elif [ -f /usr/share/bash-completion/bash_completion ]; then
    source /usr/share/bash-completion/bash_completion
fi

# VARIABLES
# =========

# don't put duplicate lines or lines starting with a space in history
HISTCONTROL=ingnoreboth
# unlimited history
HISTSIZE=-1
HISTFILESIZE=-1
# set a fancy prompt
PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"
export PS1
# get nice ls colors
LS_COLORS='di=1;35:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35:*.rpm=90:*.png=35:*.gif=36:*.jpg=35:*.c=92:*.jar=33:*.py=93:*.h=90:*.txt=94:*.doc=104:*.docx=104:*.odt=104:*.csv=102:*.xlsx=102:*.xlsm=102:*.rb=31:*.cpp=92:*.sh=92:*.html=96:*.zip=4;33:*.tar.gz=4;33:*.mp4=105:*.mp3=106'
export LS_COLORS

# SHELL OPTIONS
# =============

stty -ixon
set -o vi

bind -m vi-command 'Control-l: clear-screen'
bind -m vi-insert 'Control-l: clear-screen'

shopt -s histappend
shopt -s checkwinsize
shopt -s globstar
shopt -s autocd
