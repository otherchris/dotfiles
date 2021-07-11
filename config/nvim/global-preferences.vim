so ~/.config/nvim/colors.vim
so ~/.config/nvim/closetag-config.vim

" comma leader
let mapleader = ","   " sets the <leader> variable to ,

" strip trailing spaces on save
au BufWritePre * :%s/\s\+$//e

" turn on the linter
au BufWritePost <buffer> lua require('lint').try_lint()

