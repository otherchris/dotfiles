set backupdir=/tmp/
set directory=/tmp//
set undodir=/tmp//

let mapleader = ","   " sets the <leader> variable to ,
" ; === : so we can just do ;w -- saves a keystroke
nmap ; :

" autosave on change of focus
au FocusLost * :wa

"search
set ignorecase  " case insenstive search
set hlsearch    " highlight search results
set incsearch   " incremental search (as you type)
set smartcase   " .. unless there's a capital
set gdefault

set shiftwidth=2            " Number of spaces to shift for autoindent or >,<

" strip trailing spaces on save
autocmd BufWritePre * :%s/\s\+$//e

set expandtab
set softtabstop=2
set tabstop=2               " The One True Tab
set textwidth=100           " 100 is the new 80

set relativenumber          " Show relative line numbers + current line
set number                  " Show relative line numbers + current line

set scrolloff=3               " keep 3 lines on the screen when scrolling

" makes Vim show invisible characters with the same characters that TextMate
" uses
set list
set listchars=tab:▸\ ,eol:¬

" remap arrow keys in insert mode, so that they escape and move
inoremap <up> <esc>k
inoremap <down> <esc>j

nnoremap <S-tab> %
vnoremap <S-tab> %

" make search results appear in the middle of the screen
nmap n nzz
nmap N Nzz
nmap * *zz
nmap # #zz
nmap g* g*zz
nmap g# g#zz

" typeo corrections / remaps
map :W :w
map :Q :q
nnoremap Q q
nnoremap <C-q> q
inoremap / /
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" syntastic language checkers
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_html_tidy_blocklevel_tags = ['template']
let g:syntastic_html_tidy_empty_tags = ['span']
let g:syntastic_html_tidy_ignore_errors = ['trimming empty <span>']
let g:tsuquyomi_disable_quickfix = 1
let g:syntastic_typescript_checkers = ['tsuquyomi', 'eslint'] " You shouldn't use 'tsc' checker.


" ctrlp config - persistant cache
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_max_height = 20
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:25,results:25'

let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_typecript_checkers = ['eslint']
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_error_symbol = '❌'
let g:syntastic_style_error_symbol = '⁉️'
let g:syntastic_warning_symbol = '⚠️'
let g:syntastic_style_warning_symbol = '💩'

let g:syntastic_aggregate_errors = 1

colorscheme jellybeans

let g:NERDTreeWinPos = "right"

" neomake
let g:neomake_elixir_enabled_makers = ['credo']
autocmd! BufWritePost * Neomake

autocmd BufWritePost *.exs :!mix format %
autocmd BufWritePost *.ex :!mix format %

let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['='],
    \ 'AcceptSelection("t")': ['<cr>'],
    \ }
