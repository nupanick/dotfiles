# Cygwin workaround for CRLF
export SHELLOPTS
set -o igncr

if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi
