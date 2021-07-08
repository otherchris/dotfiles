so ~/.config/nvim/colors.vim

" comma leader
let mapleader = ","   " sets the <leader> variable to ,

" strip trailing spaces on save
autocmd BufWritePre * :%s/\s\+$//e
