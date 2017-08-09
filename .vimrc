" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'flazz/vim-colorschemes'
Plug 'dracula/vim'
Plug 'tyrannicaltoucan/vim-quantum'
Plug 'hzchirs/vim-material'
Plug 'morhetz/gruvbox'
Plug 'altercation/vim-colors-solarized'
Plug 'hdima/python-syntax'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" Editor setting
set number " set line number
set numberwidth=2 " set line number width
syntax enable " enable syntax
set ai " auto align indent
set tabstop=4 " use four spaces to replace a tab
set softtabstop=4
set shiftwidth=4 " four spaces for indent
set expandtab " change tab to spaces
set cursorline " highlighting current line
filetype indent on " indent determined by the file type you open
set wildmenu            " visual autocomplete for command menu
set showmatch           " highlight matching [{()}]
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
let python_highlight_all = 1 " enable enhencement ptyhon highlighting
let OPTION_NAME = 1 " same as above
set list " enable invisible charactor
set listchars=space:·,tab:>> " set symbol for invisible charactor
set ignorecase 
set smartcase " case sensitive only when you search big case word
"  Explore setting
let g:netrw_browse_split = 4 " set explore list style
let g:netrw_altv = 1 
let g:netrw_winsize = 25
"  Theme setting
set t_Co=256
set background=dark
colorscheme Papercolor
set laststatus=2
let g:airline_theme = "dracula"
let g:airline_powerline_fonts = 1 " set 0 if you don't have powerline font, otherwise set 1
let g:airline#extensions#tabline#enabled=1 " enable tabline
let g:airline#extensions#tabline#fnamemod=':t' " show only filename in tabline
let g:enable_bold_font = 1
"neovim terminal setting
if has('nvim')
    tnoremap <Esc> <C-\><C-n>
    autocmd TermOpen * set bufhidden=hide
endif
" keymapping
let mapleader = "\<Space>"
nnoremap <leader>bn :bn!<CR>
nnoremap <leader>ba :buffers<CR>:buffer<Space>
nnoremap <leader>w :w<CR>
nnoremap <leader>wq :wq<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>t :vsplit term://zsh<CR>
function! ToggleVExplorer() " toggle netrw
    if exists("t:expl_buf_num")
        let expl_win_num = bufwinnr(t:expl_buf_num)
        if expl_win_num != -1
            let cur_win_nr = winnr()
            exec expl_win_num . 'wincmd w'
            close
            exec cur_win_nr . 'wincmd w'
            unlet t:expl_buf_num
        else
            unlet t:expl_buf_num
        endif
    else
        exec '1wincmd w'
        Vexplore
        let t:expl_buf_num = bufnr("%")
    endif
endfunction
map <leader>e :call ToggleVExplorer()<CR>
" moving line 
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv
" moving view
