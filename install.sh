#!/bin/bash

BACKUP_DIR="bak_`date +%Y_%m%d_%H%M`";
RCFILE_DIR_LK="$HOME/.hsin-rcfiles";


FILES=\
"
.Xdefaults
.bash_aliases
.bashrc
.cgdb
.cshrc
.dir_colors
.git-completion.bash
.gitconfig
.gitignore_global
.octaverc
.screenrc
.profile
.tmux.conf"

mkdir -p $BACKUP_DIR
cp -dpR $FILES $BACKUP_DIR
echo "> Back ok $BACKUP_DIR";

echo "> Make link $PWD to $RCFILE_DIR_LK";
ln -sf $PWD "$RCFILE_DIR_LK"

for i in $FILES;
do
    echo "> ln -s $i";
    ln -sf $RCFILE_DIR_LK/$i $HOME/$i 
done;




