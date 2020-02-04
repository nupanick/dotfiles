(set -o igncr) 2>/dev/null && set -o igncr; # this comment is required
# ^ the above is a workaround for cygwin bash to get us into "/r/n ok" mode.

# We can also set that option globally:
export SHELLOPTS
set -o igncr

# .bash_profile runs on initial login, and .bashrc runs on each new window.
# But cygwin treats every terminal as initial login for some reason.
source ~/.bashrc