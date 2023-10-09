# Prevent group- and other- members from write
# access to the files we create
umask 022

export TZ=PST8PDT

# append to the history file, don't overwrite it
shopt -s histappend

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# Ignore some controlling instructions
export HISTIGNORE="[   ]*:&:bg:fg:exit"

PS0='\[\e[0m\]'

PS1="\n\e[0;33m\D{%F %T }\[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ \n\\[\\e[1;33m\\]"
