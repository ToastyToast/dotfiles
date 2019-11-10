set encoding=utf-8
set fileencoding=utf-8
set fileformat=unix
    
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'mhinz/vim-signify'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'jnurmine/Zenburn'

Plugin 'Rip-Rip/clang_complete'
Plugin 'tpope/vim-fugitive'
Plugin 'Valloric/YouCompleteMe'
Plugin 'ervandew/supertab'

call vundle#end()
filetype plugin indent on

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
set textwidth=120
set colorcolumn=+0

set splitbelow
set splitright

let g:ycm_global_ycm_extra_confg = '~/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0

map <F2> :bp<CR>
map <F3> :bn<CR>
nnoremap <F4> :NERDTreeToggle<CR>
nnoremap <C-c> :bp\|bd #<CR>

set wildignore+=*/tmp/*,*.so,*.swp,*.zip

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

let g:airline_theme='base16_ashes'
let NERDTreeIgnore = ['\.pyc$']
let g:airline#extensions#tabline#enabled=1

let g:ctrlp_map='<c-p>'
let g:ctrlp_cmd='CtrlP'
let g:ctrlp_working_path_mode='ra'

set noshowmode

let g:clang_library_path='/usr/lib/x86_64-linux-gnu/libclang-6.0.so.1'

set backspace=indent,eol,start
let g:ycm_autoclose_preview_window_after_completion=1

let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

