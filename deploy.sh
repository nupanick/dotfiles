#!/bin/bash

ln .bashrc $HOME/.
ln .bash_aliases $HOME/.

# VS Code has to go and be "special" about it. Future me, you'll need to
# adjust this if you install VSCODE on something besides windows.
# ~ nupanick@gmail.com 2020-02-04
if [[ $APPDATA ]]; then
    ln .vscode_settings.json $APPDATA/Code/User/settings.json
fi