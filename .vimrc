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
Plugin 'Shougo/neocomplete.vim'
Plugin 'davidhalter/jedi-vim'
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

set splitbelow
set splitright

map <F2> :bp<CR>
map <F3> :bn<CR>
nnoremap <F4> :NERDTreeToggle<CR>
nnoremap <C-c> :bp\|bd #<CR>

inoremap <expr><C-g> neocomplete#undo_completion()
inoremap <expr><C-l> neocomplete#complete_common_string()

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

let g:acp_enableAtStartup = 1
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case=1
let g:neocomplete#sources#syntax#min_keyword_length=3

autocmd FileType python setlocal omnifunc=jedi#completions
let g#jedi#completions_enabled=0
let g#jedi#auto_vim_configuration=0

let g:ctrlp_map='<c-p>'
let g:ctrlp_cmd='CtrlP'
let g:ctrlp_working_path_mode='ra'

set noshowmode
