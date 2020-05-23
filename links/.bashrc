for file in \
  ${HOME}/.bash_colours
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
  /usr/local/opt/asdf/asdf.sh \
  $HOME/.rvm/scripts/rvm \
  /usr/local/etc/bash_completion \
  $HOME/etc/bash_completion.d/*
do
  test -s "$file" && source "$file"
done

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
fi

# Stop here if it's not an interactive shell
case $- in
  *i*) ;;
    *) return;;
esac

test -s $POWERLINE_BINDINGS_PATH/bash/powerline.sh && . $POWERLINE_BINDINGS_PATH/bash/powerline.sh

for file in \
  ${HOME}/.iterm2_shell_integration.bash
do
  test -s "$file" && source "$file"
done
