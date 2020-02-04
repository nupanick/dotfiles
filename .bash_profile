(set -o igncr) 2>/dev/null && set -o igncr; # this comment is required
# ^ the above is a workaround for cygwin bash to get us into "/r/n ok" mode.
# The comment hides the /r from the first line!

# Ignore /r in other files, too:
export SHELLOPTS
set -o igncr

if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi