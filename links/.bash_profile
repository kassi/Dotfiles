# ~/.bash_profile: executed when bash is invoked as an interactive login shell
#                  or as a non-interactive shell with --login
# [ -f "${HOME}/.bashrc" ]       && . "${HOME}/.bashrc"
for file in \
  $HOME/.bash_colours \
  $HOME/.rvm/scripts/rvm \
  /usr/local/opt/nvm/nvm.sh \
  ${HOME}/.iterm2_shell_integration.bash \
  /usr/local/etc/bash_completion
do
  test -s "$file" && source "$file"
done

if [[ -d $HOME/.bash.d ]]; then
  for file in $(find $HOME/.bash.d -type l | sort); do
    source "$file"
  done
fi
