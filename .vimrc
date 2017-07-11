set nocompatible                " be iMproved, required
filetype off                    " required
syntax enable                   " Syntax highlighting
set tabstop=4
set softtabstop=4
set wildmenu                    " visual autocomplete for command menu
set showmatch                   " highlight matching [{()}]
set incsearch                   " search as characters are entered
set hlsearch                    " highlight matches

set rtp+=~/.vim/bundle/Vundle.vim       " set the runtime path to include Vundle and initialize
call vundle#begin()                     " alternatively, pass a path where Vundle should install plugins
                                        " call vundle#begin('~/some/path/here')
Plugin 'VundleVim/Vundle.vim'           " let Vundle manage Vundle, required
Plugin 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}

" All of your Plugins must be added before the following line
call vundle#end()                       " required
filetype plugin indent on               " required

" Start of Powerline settings
set guifont=Inconsolata\ for\ Powerline:h15
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8
" End of powerline settings

set autoindent
set ignorecase                  " ignore case matching in search keywords
set nu                          " show line numbers
set title
set scrolloff=5                 " set scroll offset of from the top and bottom
set laststatus=2                " show line status
set autoread                    " Set to auto read when a file is changed from the outside
set backspace=indent,eol,start  " Allow backspacing everything in insert mode

" highlight current line
set cursorline cursorcolumn
hi CursorLine   cterm=NONE ctermbg=black ctermfg=NONE
hi CursorColumn   cterm=NONE ctermbg=black ctermfg=NONE

" highlight white spaces at the end of line
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

inoremap jk <esc>
