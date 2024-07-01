# From: https://zsh.sourceforge.io/Intro/intro_3.html
#
# `.zshenv' is sourced on all invocations of the shell. 
# - SHOULD CONTAIN: commands to set the command search path, plus other 
# important environment variables. 
# - SHOULD NOT CONTAIN: commands that produce output or assume the shell 
# is attached to a tty.


XDG_CONFIG_HOME=$HOME/.config
XDG_DATA_HOME=$HOME/.local/share
XDG_CACHE_HOME=$HOME/.cache


# Before setting the following, study: 
#   https://zsh.sourceforge.io/Doc/Release/Files.html#Files
# ZDOTDIR="$XDG_CONFIG_HOME/zsh"
# ZSH_CACHE_DIR="$XDG_CACHE_HOME/zsh"

