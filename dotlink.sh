#!/bin/bash
set -x
readonly dotdir=$(pwd)

readonly tempdir=$(mktemp -d -t dotlink-XXXX)
echo "Old files saved at: ${tempdir}"

reset_link() {
    link_name=$1
    if [ -r ~/"${link_name}" ]
    then
      cp -L ~/${link_name} ${tempdir}
      rm ~/${link_name}
    fi
    ln -s ${dotdir}/${link_name} ~/${link_name}
}

reset_link .bashrc
reset_link .exrc
reset_link .gdbinit
reset_link .gitconfig
reset_link .gvimrc
reset_link .vimrc
reset_link .Xresources

# reset_link .ssh/ssh_config
