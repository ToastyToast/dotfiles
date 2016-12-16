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
Plugin 'tpope/vim-fugitive'
Plugin 'mhinz/vim-signify'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'jnurmine/Zenburn'

call vundle#end()

filetype plugin on

set t_Co=256

colors zenburn
set background=dark
set number
set nocompatible
set autoindent
set laststatus=2
set backspace=2
set tabstop=4
set shiftwidth=4
set expandtab

set showmatch
set textwidth=80
set colorcolumn=+0

map <F2> :bp<CR>
map <F3> :bn<CR>
map <F4> :e %:p:s,.hpp$,.X123X,:s,.cpp$,.hpp,:s,.X123X$,.cpp,<CR>
nnoremap <F1> :NERDTree<CR>
nnoremap <C-c> :bp\|bd #<CR>

set wildignore+=*/tmp/*,*.so,*.swp,*.zip

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

let python_highlight_all=1
syntax on

let g:airline_theme='base16_ashes'
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

let g:ctrlp_map='<c-p>'
let g:ctrlp_cmd='CtrlP'
let g:ctrlp_working_path_mode='ra'

set noshowmode
