# ~/.bash_profile: executed when bash is invoked as an interactive login shell
#                  or as a non-interactive shell with --login
# include .bashrc if it exists
if [ -f "$HOME/.bashrc" ]; then
. "$HOME/.bashrc"
fi
