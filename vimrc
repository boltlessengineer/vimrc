syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch

set number relativenumber
highlight LineNr ctermfg=darkgrey
set cursorline
highlight CursorLineNr ctermbg=235 ctermfg=white cterm=none
highlight CursorLine ctermbg=236 cterm=none

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" themes
Plugin 'joshdick/onedark.vim'
Plugin 'itchyny/lightline.vim'

" IDE like
Plugin 'scrooloose/nerdtree'
Plugin 'ycm-core/YouCompleteMe'

" Prettier
Plugin 'prettier/vim-prettier', {'do': 'yarn install'}

" golang
Plugin 'fatih/vim-go'

call vundle#end()
filetype plugin indent on

set t_Co=256
colorscheme onedark
if exists('+termguicolors')
    let &t_8f = "\<ESC>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    set termguicolors
endif
" lightline settings
set laststatus=2
set noshowmode
set ttimeout ttimeoutlen=50
let g:lightline = {
    \ 'colorscheme': 'onedark',
    \ 'branch symbol': '',
    \ 'readonly symbol': '',
    \ 'linecolumn symbol': '',
    \ }
    "\ 'separator': { 'left': '', 'right': '' },
    "\ 'subseparator': { 'left': '', 'right': '' },

" YCM settings
set completeopt-=preview

if has("syntax")
    syntax on
endif

" vim-go settings
let g:go_fmt_command = "goimports"

map <C-B> <ESC>:NERDTreeToggle<CR>
