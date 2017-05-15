" //
" //                       _oo0oo_
" //                      o8888888o
" //                      88" . "88
" //                      (| -_- |)
" //                      0\  =  /0
" //                    ___/`---'\___
" //                  .' \\|     |// '.
" //                 / \\|||  :  |||// \
" //                / _||||| -:- |||||- \
" //               |   | \\\  -  /// |   |
" //               | \_|  ''\---/''  |_/ |
" //               \  .-\__  '-'  ___/-. /
" //             ___'. .'  /--.--\  `. .'___
" //          ."" '<  `.___\_<|>_/___.' >' "".
" //         | | :  `- \`.;`\ _ /`;.`/ - ` : | |
" //         \  \ `_.   \_ __\ /__ _/   .-` /  /
" //     =====`-.____`.___ \_____/___.-`___.-'=====
" //                       `=---='
" //
" //
" //     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" //
" //               Buddha bless the code
" //

syntax on
set viminfo='10,\"100,:20,%,n~/.viminfo
let python_highlight_all=1
set nocompatible
set number
set t_Co=256
colorscheme slate
filetype off
filetype plugin on
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'fatih/vim-go'
Plugin 'scrooloose/syntastic'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'davidhalter/jedi-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Shougo/neocomplete'
Plugin 'mattn/emmet-vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'vim-scripts/indentpython.vim'

call vundle#end()
filetype plugin indent on

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:airline_theme='luna'
let g:neocomplete#enable_at_startup = 1

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab  
set laststatus=2
set hlsearch
set incsearch

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

map <F7> :set paste<CR>
map <F8> :set nopaste<CR>
map <F9> :setfiletype htmldjango<CR>

function! ResCur()
  if line("'\"") <= line("$")
    normal! g`"
    return 1
  endif
endfunction

augroup resCur
  autocmd!
  autocmd BufWinEnter * call ResCur()
augroup END
