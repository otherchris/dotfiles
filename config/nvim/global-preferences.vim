so ~/.config/nvim/colemak-remaps.vim
so ~/.config/nvim/coc-config.vim
so ~/.config/nvim/line-numbers.vim
so ~/.config/nvim/colors.vim
so ~/.config/nvim/lang-tools.vim

" comma leader
let mapleader = ","   " sets the <leader> variable to ,

set expandtab
set softtabstop=2
set tabstop=2

" auto close delimiters and indent
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap { {}<Left>

inoremap <expr> <CR> search('{\%#}', 'n') ? "\<CR>\<CR>\<Up>  " : "\<CR>"

" strip trailing spaces on save
autocmd BufWritePre * :%s/\s\+$//e

" open fzf
nnoremap <silent> <leader>f :FZF<cr>
nnoremap <silent> <leader>F :FZF ~<cr>

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gr <Plug>(coc-references)h

nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

