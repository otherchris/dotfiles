so ~/.config/nvim/global-plugins.vim
luafile ~/.config/nvim/lua/init.lua
so ~/.config/nvim/colors.vim
so ~/.config/nvim/nvimtree-config.vim
so ~/.config/nvim/closetag-config.vim

" Escape terminal
if has('nvim')
  tnoremap <Esc> <C-\><C-n>
  tnoremap <C-v><Esc> <Esc>
endif
"
" strip trailing spaces on save
au BufWritePre * :%s/\s\+$//e

