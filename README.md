# Dotfiles

My personal dotfiles, optimized for an osx develeopment machine.

## Installation

	curl -fsSL https://raw.github.com/kassi/Dotfiles.bootstrap/master/bootstrap.sh | bash -s git@github.com:kassi/Dotfiles.git

## Documentation

I picked up the idea of dividing the dotfiles in semantic parts from [holman/dotfiles](https://github.com/holman/dotfiles) and kept the `*.symlink` logic.
However, I added a little more sugar.

* on first level you'll find directories for different parts/tools/apps. Inside
    * any file named `something.symlink` will be symlinked to `$HOME/.something`.
    * any directory named `something.dir` will be created as `$HOME/something`.
    * any file in `bin` will be symlinked to `$HOME/bin`
    * any file in `etc` will be symlinked to `$HOME/etc`
    * any file named in `something.bash` will be concatenated to `$HOME/.bash_something`

## Author

Karsten Silkenbäumer

[![endorse](http://api.coderwall.com/ksi/endorsecount.png)](http://coderwall.com/ksi)
