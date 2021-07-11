so ~/.config/nvim/global-plugins.vim
so ~/.config/nvim/global-preferences.vim
so ~/.config/nvim/nvimtree-settings.vim

luafile ~/.config/nvim/lua/init.lua

if has('nvim')
  tnoremap <Esc> <C-\><C-n>
  tnoremap <C-v><Esc> <Esc>
endif

