#!/bin/bash

# Fix line endings
sed -i 's/\r$//' .bash_profile

ln -vi .bashrc $HOME
ln -vi .bash_profile $HOME
ln -vi .bash_aliases $HOME

# VS Code has to go and be "special" about it. Future me, you'll need to
# adjust this if you install VSCODE on something besides windows.
# ~ nupanick@gmail.com 2020-02-04
if [[ $APPDATA ]]; then
    ln -vi .vscode_settings.json $APPDATA/Code/User/settings.json
fi
