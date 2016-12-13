set encoding=utf-8
set fileencoding=utf-8
set fileformat=unix

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'vim-syntastic/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'jnurmine/Zenburn'

call vundle#end()

set compatible
filetype plugin on

set t_Co=256

colors zenburn
set number
set nocompatible
set autoindent
set laststatus=2
set backspace=2
set tabstop=4
set shiftwidth=4

set showmatch
set textwidth=80
set colorcolumn=+0

map <F2> :bp<CR>
map <F3> :bn<CR>
map <F4> :e %:p:s,.hpp$,.X123X,:s,.cpp$,.hpp,:s,.X123X$,.cpp,<CR>

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
	\ set softtabstop=4 |
	\ set shiftwidth=4 |
	\ set expandtab |
	\ set autoindent |
	\ set fileformat=unix

let python_highlight_all=1
syntax on

let NERDTreeIgnore = ['\.pyc$']
let g:airline#extensions#tabline#enabled=1

"let g:syntastic_python_checkers=['flake8']
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"
"let g:syntastic_always_populate_loc_list=1
"let g:syntastic_auto_loc_list=1
"let g:syntastic_check_on_open=1
"let g:syntastic_check_on_wq=0

set noshowmode