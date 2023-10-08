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

