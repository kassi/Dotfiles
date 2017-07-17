# Dotfiles

My personal dotfiles, optimized for an osx development machine.

## Installation

	curl -fsSL https://raw.github.com/kassi/Dotfiles/master/links/bin/dotfiles | bash -s -- --repo git@github.com:kassi/Dotfiles.git

or if you're not me

  curl -fsSL https://raw.github.com/kassi/Dotfiles/master/links/bin/dotfiles | bash -s -- --repo https://github.com/kassi/Dotfiles.git

## Documentation

On an `install` or `update`

* any directory in `directories` will be created, even nested
* any item in `links` will be processed as follows
    * files will be linked to $HOME
    * directories will checked whether they already exist.
        * If they do, next item is processed
        * If they are linked (already), they will be skipped
        * Otherwise the directory will be linked
    * During processing paths are processed in sequence
* any shell script in `scripts` is run

Example:

Given
```
directories/.config
directories/.vim
links/.config/powerline
links/.config/powerline/some_file_or_directory
links/.vimrc
links/.vim/bundles
links/.vim/bundles/bundle1
links/.vim/bundles/bundle1/file1
```

When `install` is run

Then the following checks are done

* if no hostname is set it will ask for one
* if no ssh key is present (rsa), it will ask to create one

Then the following commands are run

* `mkdir $HOME/.config`
* `mkdir $HOME/.vim`
* `ln -s /path/to/links/.config/powerline $HOME/.config/powerline` because `/path/to/links/.config` is a directory and `powerline` doesn't exist there (usually)
* `ln -s /path/to/links/.vimrc $HOME/.vimrc` because `/path/to/links/.vimrc` doesn't exist
* `ln -s /path/to/links/.vim/bundles $HOME/.vim/bundles` because `/path/to/links/.vim` is a directory and `bundles` doesn't exist there (usually)

And

* All entries like `links/.config/powerline/some_file_or_directory` are ignored, because `links/.config/poweline` is linked
* All entries like `links/.vim/bundles/bundle1` and `links/.vim/bundles/bundle1/file1` are ignored because `links/.vim/bundles` is linked

## Author

Karsten Silkenbäumer
