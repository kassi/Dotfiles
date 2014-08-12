runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
source $HOME/Library/Python/2.7/lib/python/site-packages/powerline/bindings/vim/plugin/powerline.vim

"colorscheme railscasts

set background=light
syntax on
let g:solarized_termcolors=256
colorscheme solarized

filetype indent on                  " determine indentation
filetype plugin on                  " determine file type

set autoindent
set backspace=indent,eol,start      " allow backspacing over everything in insert mode
"set cursorline                      " highlight current line
set encoding=utf-8
set expandtab                       " Spaces instead of tabs
set fileencoding=utf-8
set history=1000                    " store lots of :cmdline history
set hlsearch                        " highlight search results
set incsearch                       " show search results while searching
set laststatus=2                    " Always display the statusline in all windows
set listchars=tab:▷⋅,trail:⋅,nbsp:⋅ " Highlight trailing spaces
set nocompatible                    " ???
set noshowmode                      " Hide the default mode text (e.g. -- INSERT -- below the statusline)
set mouse=a ttymouse=xterm2         " enable the use of the mouse in terminals
set number                          " show line numbers
set ruler                           " show cursor position in statusbar
set shiftwidth=2                    " Amount of columns for indentation in n mode
set shortmess+=I                    " suppress intro message when starting Vim :intro.
set showcmd                         " show commands in statusbar
set showmatch                       " show matching paren/braces
set smartindent                     " set smart indent
set smartcase                       " case sensitiv. only if search term contains uc letter
set softtabstop=2                   " Amount of columns for backspace
set tabstop=2                       " A tab is two colums
set term=xterm-256color
set textwidth=80
set formatoptions+=t
set wrap

if has('autocmd')
  au BufRead,BufNewFile *.md set tw=80
endif

" paste mode auto detection
if &term =~ "xterm.*"
    let &t_ti = &t_ti . "\e[?2004h"
    let &t_te = "\e[?2004l" . &t_te
    function XTermPasteBegin(ret)
        set pastetoggle=<Esc>[201~
        set paste
        return a:ret
    endfunction
    map <expr> <Esc>[200~ XTermPasteBegin("i")
    imap <expr> <Esc>[200~ XTermPasteBegin("")
    cmap <Esc>[200~ <nop>
    cmap <Esc>[201~ <nop>
endif

" powerline
set rtp+={repository_root}/powerline/bindings/vim

" VIM config
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif
let mapleader = ","
nmap <leader>v :tabedit $MYVIMRC<CR>

" Prompt for a command to run
map rp :PromptVimTmuxCommand
" Run last command executed by RunVimTmuxCommand
map rl :RunLastVimTmuxCommand
" Inspect runner pane
map ri :InspectVimTmuxRunner
" Close all other tmux panes in current window
map rx :CloseVimTmuxPanes
" Interrupt any command running in the runner pane
map rs :InterruptVimTmuxRunner

