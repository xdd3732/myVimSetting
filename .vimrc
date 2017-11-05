" Plug{{{
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
"}}}
" Vim setting{{{
" Define tag file path
set tags=./tags;/
set t_Co=256
set background=dark
colorscheme Papercolor
filetype indent on " indent by file
set number " set line number
set numberwidth=2 " set line number width
syntax enable " enable syntax
set ai " auto align indent
set tabstop=4 " use how many space to display one tab 
set softtabstop=4
set shiftwidth=4 " four spaces for indent
set expandtab " change tab to spaces
set modelines=1
set cursorline " highlighting current line
set wildmenu            " visual autocomplete for command menu
set showmatch           " highlight matching [{()}]
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set hidden "in order to switch file which is un save"
set ignorecase 
set smartcase " case sensitive only when you search big case word
set showcmd " show key stroke
set splitbelow
set splitright
set backspace=2 " use backspace"
set breakindent " auto indent when wrap
set foldenable
set laststatus=2 "always show status line"
" }}}
" python-syntax{{{
let python_highlight_all = 1 " enable enhencement ptyhon highlighting
let OPTION_NAME = 1 " same as above
" }}}
" Airline{{{
let g:airline_theme = "dracula"
let g:airline_powerline_fonts = 0 " set 0 if you don't have powerline font, otherwise set 1
let g:airline#extensions#tabline#enabled=1 " enable tabline
let g:airline#extensions#tabline#fnamemod=':t' " show only filename in tabline
let g:enable_bold_font = 1
" }}}
"IndentLine{{{
let g:indentLine_leadingSpaceEnabled = 1
let g:indentLine_leadingSpaceChar = '-'
let g:indentLine_char = '|'
" }}}
" Ctrlp{{{
let g:ctrlp_extensions = ['tag'] " enable tag
let g:ctrlp_cmd='CtrlP :pwd' " use current path
let g:ctrlp_clear_cache_on_exit = 0 " dont delete cache 
let g_ctrlp_by_filename = 1 " default file name mode
let ctrlp_custom_ignore = {
            \ 'dir':  '\v[\/]build$',
            \ 'file': '\v\.(pm|bin|ini)l$',
            \ }
" }}}
" Tagbar{{{
let g:tagbar_map_showproto = "<C-t>"
" }}}
" Ack{{{
let g:ack_use_dispatch = 1
let g:ackprg = "grep -RIn"
" }}}
" Keymap{{{
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
" highlight last inserted text"
nnoremap gV `[v`]
" when wrap, move real one line
nnoremap j gj
nnoremap k gk
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
" }}}
" vim:foldmethod=marker:foldlevel=0
