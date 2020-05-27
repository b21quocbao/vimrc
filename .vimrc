"---------------------------BEGIN PLUG----------------------------

call plug#begin()

Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/syntastic'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'
Plug 'majutsushi/tagbar'
Plug 'valloric/youcompleteme'
Plug 'jiangmiao/auto-pairs'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'airblade/vim-gitgutter'
Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'
Plug 'Yggdroot/indentLine'

call plug#end()

"---------------------------END PLUG--------------------------------

" Nerd tree
map <C-b> :NERDTreeToggle<CR>
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
nmap <F8> :TagbarToggle<CR>

" Syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" YouCompleteMe
let g:ycm_clangd_uses_ycmd_caching = 0 " Let clangd fully control code completion
let g:ycm_clangd_binary_path = exepath("clangd") " Use installed clangd, not YCM-bundled clangd which doesn't get updates.i

" Ctrl-P
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0

" Onedark theme
syntax on
colorscheme onedark
let g:onedark_termcolors=256

" Airline
let g:airline_theme='onedark'
let g:airline#extensions#tabline#enabled = 1

" IndentLine
let g:indentLine_char = '┆'  " '|', '¦', '┆', '┊'

" User setting
set tabstop=4
set shiftwidth=4
set expandtab

