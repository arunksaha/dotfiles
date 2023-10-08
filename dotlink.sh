#!/bin/bash
set -x
readonly dotdir=$(pwd)

readonly tempdir=$(mktemp -d -t dotlink-XXXX)
echo "Old files saved at: ${tempdir}"

reset_link() {
    file=$1
    mv ~/${file} ${tempdir}
    ln -s ${dotdir}/${file} ~/${file}
}

reset_link .bashrc
reset_link .exrc
reset_link .gdbinit
reset_link .gitconfig
reset_link .gvimrc
reset_link .vimrc
reset_link .Xresources

reset_link .ssh/ssh_config
