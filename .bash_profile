# ~/.bash_profile: executed when bash is invoked as an interactive login shell
#                  or as a non-interactive shell with --login

[ -f "${HOME}/.bashrc" ]       && . "${HOME}/.bashrc"
[ -f "${HOME}/.bash_aliases" ] && . "${HOME}/.bash_aliases"
[ -f "${HOME}/.bash_colours" ] && . "${HOME}/.bash_colours"
[ -f "${HOME}/.bash_functns" ] && . "${HOME}/.bash_functns"
[ -f "${HOME}/.bash_environ" ] && . "${HOME}/.bash_environ"
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
