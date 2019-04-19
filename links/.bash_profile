# ~/.bash_profile: executed when bash is invoked as an interactive login shell
#                  or as a non-interactive shell with --login
for file in \
  ${HOME}/.bash_colours \
  ${HOME}/.iterm2_shell_integration.bash
do
  test -s "$file" && source "$file"
done

if [[ -d $HOME/.bash.d ]]; then
  for file in $(find $HOME/.bash.d -type l | sort); do
    source "$file"
  done
fi

for file in \
  $PERLBREW_ROOT/etc/bashrc \
  $HOME/.rvm/scripts/rvm \
  /usr/local/etc/bash_completion \
  $HOME/etc/bash_completion.d/* \
  /usr/local/opt/asdf/asdf.sh
do
  test -s "$file" && source "$file"
done

eval "$(pyenv init -)"

# if [ -n "$TMUX" ]; then
  . $POWERLINE_BINDINGS_PATH/bash/powerline.sh
# fi
