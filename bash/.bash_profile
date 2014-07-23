# ~/.bash_profile: executed when bash is invoked as an interactive login shell
#                  or as a non-interactive shell with --login
[ -f "${HOME}/.bashrc" ]       && . "${HOME}/.bashrc"
[ -f "${HOME}/.bash_colours" ] && . "${HOME}/.bash_colours"
if [[ -d "$HOME/.bash.d" ]]; then
  for file in $(find $HOME/.bash.d -type l); do
    source "$file"
  done
fi
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
