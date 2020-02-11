#!/bin/bash
HERE=$(dirname $(readlink -f $0))

# Fix line endings since this file has to run on cygwin.
sed -i 's/\r$//' $HERE/bash_profile

# v: verbose (the installer says what it did)
# b: backup previous file if any
# f: force overwrite without prompt
# s: symbolic links (not hardlinks!)
# T: target is LITERAL, do not descend into directory target.
ln -vbfs  $HERE/bashrc       $HOME/.bashrc
ln -vbfs  $HERE/bash_profile $HOME/.bash_profile
ln -vbfsT $HERE/bashrc.d     $HOME/.bashrc.d

# VS Code has to go and be "special" about it. Future me, you'll need to
# adjust this if you install VSCODE on something besides windows.
# ~ nupanick@gmail.com 2020-02-04
if [[ $APPDATA ]]; then
    ln -vbf $HERE/vscode_settings.json $APPDATA/Code/User/settings.json
fi

