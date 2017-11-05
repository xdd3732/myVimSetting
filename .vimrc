" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dracula/vim'
Plug 'hdima/python-syntax'
Plug 'scrooloose/nerdtree'
Plug 'Yggdroot/indentLine'
Plug 'majutsushi/tagbar'
Plug 'NLKNguyen/papercolor-theme'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-dispatch'
Plug 'mileszs/ack.vim'
Plug 'flazz/vim-colorschemes'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" Editor setting
set tags=./tags;/
set number " set line number
set numberwidth=2 " set line number width
syntax enable " enable syntax
set ai " auto align indent
set tabstop=4 " use four spaces to replace a tab
set softtabstop=4
set shiftwidth=4 " four spaces for indent
set expandtab " change tab to spaces
set cursorline " highlighting current line
set wildmenu            " visual autocomplete for command menu
set showmatch           " highlight matching [{()}]
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
let python_highlight_all = 1 " enable enhencement ptyhon highlighting
let OPTION_NAME = 1 " same as above
set hidden
set ignorecase 
set smartcase " case sensitive only when you search big case word
set showcmd " show key stroke
set splitbelow
set splitright
set hidden
set backspace=2
set breakindent " auto indent when wrap
"  Explore setting
let g:netrw_browse_split = 4 " set explore list style
let g:netrw_altv = 1 
let g:netrw_winsize = 25
"  Theme setting
set t_Co=256
set background=dark
colorscheme Papercolor
set laststatus=2
"  Plugin setting
"  airline
let g:airline_theme = "dracula"
let g:airline_powerline_fonts = 0 " set 0 if you don't have powerline font, otherwise set 1
let g:airline#extensions#tabline#enabled=1 " enable tabline
let g:airline#extensions#tabline#fnamemod=':t' " show only filename in tabline
let g:enable_bold_font = 1
" indentline
let g:indentLine_leadingSpaceEnabled = 1
let g:indentLine_leadingSpaceChar = '-'
let g:indentLine_char = '|'
" ctrlp
let g:ctrlp_extensions = ['tag']
let g:ctrlp_cmd='CtrlP :pwd'
let g:ctrlp_clear_cache_on_exit = 0 
let g_ctrlp_by_filename = 1
let ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]build$',
    \ 'file': '\v\.(pm|bin|ini)l$',
    \ }
let g:tagbar_map_showproto = "<C-t>"
" ack
let g:ackprg = "grep -RIn"
let g:ack_use_dispatch = 1
" keymapping
let mapleader = "\<Space>"
nnoremap <Tab> :bn<CR>
nnoremap <S-Tab> :bprevious<CR>
nnoremap <leader>ba :buffers<CR>:buffer<Space>
nnoremap <leader>d :bd<CR>
nnoremap <leader>s :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>e :NERDTreeToggle<CR>
nnoremap <C-e> :NERDTreeFind<CR>
nnoremap <S-e> :NERDTreeFocus<CR>
nnoremap <leader>w <C-W>
nnoremap <leader>t :TagbarToggle<CR>
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>h <C-w>h
nnoremap <leader>l <C-w>l
" map Ack command
nnoremap <leader>a :Ack!
" run Ack against current word
nnoremap <leader>A vaw"ay:Ack! <C-R>a
" remove highlight
nnoremap <C-L> :nohl<CR><C-L> 
" Automatically add closing ( { [ ' " `
inoremap { {}<ESC>i
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap ' ''<ESC>i
inoremap " ""<ESC>i
" Swap lines"
nnoremap <S-j> :m .+1<CR>==
nnoremap <S-k> :m .-2<CR>==
vnoremap <S-j> :m '>+1<CR>gv=gv
vnoremap <S-k> :m '<-2<CR>gv=gv
