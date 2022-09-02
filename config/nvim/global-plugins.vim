call plug#begin(stdpath('data') . '/plugged')
Plug 'nvim-lua/plenary.nvim'

" Display
Plug 'airblade/vim-gitgutter'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'f-person/git-blame.nvim'

" Core LSP
Plug 'neovim/nvim-lspconfig'
Plug 'kabouzeid/nvim-lspinstall'
Plug 'jose-elias-alvarez/null-ls.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'jvirtanen/vim-hcl'
Plug 'tpope/vim-surround'
Plug 'alvan/vim-closetag'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'joshdick/onedark.vim'
Plug 'tpope/vim-commentary'

" Snips and autocompletion

call plug#end()

" Configure cmp
set completeopt=menu,menuone,noselect
