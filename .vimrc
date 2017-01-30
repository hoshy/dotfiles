if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'junegunn/limelight.vim'
Plug 'vim-airline/vim-airline-themes'
Plug 'fugitive.vim'
call plug#end()

if empty(glob('~/.vim/plugged/*'))
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

autocmd FileType gitcommit setlocal textwidth=72
autocmd FileType gitcommit setlocal spell
autocmd FileType gitcommit set colorcolumn=81

let g:airline_powerline_fonts = 1
let g:airline_theme='simple'
let g:airline#extensions#tabline#enabled = 1

set encoding=utf-8
set t_Co=256
set term=xterm-256color
set termencoding=utf-8
set guifont=Source\ Code\ Pro\ for\ Powerline\ 10
set autoindent
set backspace=indent,eol,start
" Indentation without hard tabs
set expandtab
set shiftwidth=2
set softtabstop=2
set laststatus=2
" show line numbers
set number
" gui colors if running iTerm
if $TERM_PROGRAM =~ "iTerm"
  set termguicolors
endif
