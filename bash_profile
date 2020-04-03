#!/usr/bin/env bash

if [[ $(uname -s) == "CYGWIN"* ]]; then
    # Cygwin workaround for CRLF
    export SHELLOPTS
    set -o igncr
fi

if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi
