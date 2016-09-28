execute pathogen#infect()

syntax on
"colorscheme phix
"colorscheme railscasts

"set background=dark
"colorscheme solarized
"let g:solarized_termcolors=256
colorscheme railscasts

filetype indent on                  " determine indentation
filetype plugin on                  " determine file type

source $PYTHONPATH/powerline/bindings/vim/plugin/powerline.vim

set autoindent
set backspace=indent,eol,start      " allow backspacing over everything in insert mode
set clipboard=unnamed
"set cursorline                      " highlight current line
set encoding=utf-8
set expandtab                       " Spaces instead of tabs
set fileencoding=utf-8
set formatoptions+=t
set history=1000                    " store lots of :cmdline history
set hlsearch                        " highlight search results
set incsearch                       " show search results while searching
set laststatus=2                    " Always display the statusline in all windows
set listchars=tab:▷⋅,trail:⋅,nbsp:⋅ " Highlight trailing spaces
set nocompatible                    " do not use vim in vi compatible mode
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
set textwidth=0                     " Turn off physical line wrapping
set wrap                            " Enable visual wrapping
set wrapmargin=0                    " Turn off physical line wrapping

if has('autocmd')
  augroup MyAutoCmd
    autocmd!
    autocmd MyAutoCmd BufWritePost .vimrc nested source $MYVIMRC
  augroup END
  au BufRead,BufNewFile *.md set tw=80
  au BufRead,BufNewFile *.pro set filetype=prolog
  au filetype crontab setlocal nobackup nowritebackup
endif

" paste mode auto detection
if &term =~ "xterm.*"
    let &t_ti = &t_ti . "\e[?2004h"
    let &t_te = "\e[?2004l" . &t_te
    function! XTermPasteBegin(ret)
        set pastetoggle=<Esc>[201~
        set paste
        return a:ret
    endfunction
    map <expr> <Esc>[200~ XTermPasteBegin("i")
    imap <expr> <Esc>[200~ XTermPasteBegin("")
    cmap <Esc>[200~ <nop>
    cmap <Esc>[201~ <nop>
endif

" VIM config
let mapleader = "\t"
nmap <leader>v :tabedit $MYVIMRC<CR>

map ä :tabnext<CR>
map ö :tabprev<CR>

" CtrlP
let g:ctrlp_show_hidden = 1

" VIM Session
let g:session_autoload = 'no'
let g:session_autosave = 'no'

" NERDTree
map nt :NERDTreeToggle<CR>
map nf :NERDTreeFocus<CR>
let NERDTreeShowHidden=1

" NERDTreeTabs
map <Leader>n <plug>NERDTreeTabsToggle<CR>
let g:nerdtree_tabs_open_on_console_startup=1

" Tabular
nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a= :Tabularize /:\z=<CR>
vmap <Leader>a= :Tabularize /:\z=<CR>
" Automatic Tabular.vim with the (|)
function! s:align()
 let p = '^\s*|\s.*\s|\s*$'
 if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
   let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
   let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
   Tabularize/|/l1
   normal! 0
   call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
 endif
endfunction
" Automatic Mapping with pipe
inoremap <silent> <Bar> <Bar><Esc>:call <SID>align()<CR>a

" Tmux Runner
let g:vtr_filetype_runner_overrides = { 'sh': 'bash {file}' }
map tap :VtrAttachToPane<CR>
map tcr :VtrClearRunner<CR>
map tsc :VtrSendCommandToRunner<CR>
map tsf :VtrSendFile<CR>
map mm :VtrSendFile<CR>

" Powerline
set rtp+={repository_root}/powerline/bindings/vim


