# Dotfiles

My personal dotfiles, optimized for an osx development machine.

## Installation

	curl -fsSL https://raw.github.com/kassi/Dotfiles/master/bash/bin/dotfiles | bash -s git@github.com:kassi/Dotfiles.git

## Documentation

I picked up the idea of dividing the dotfiles in semantic parts from [holman/dotfiles](https://github.com/holman/dotfiles) and kept the `*.symlink` logic.
However, I added a little more sugar.

* on first level you'll find directories for different parts/tools/apps. Inside
    * any directory will be created in `$HOME`.
    * any file `xyz` in a directtory `something` will be symlinked to `$HOME/something/xyz`

## Author

Karsten Silkenbäumer
