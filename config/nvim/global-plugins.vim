call plug#begin(stdpath('data') . '/plugged')

Plug 'nvim-lua/plenary.nvim'

" Display
Plug 'airblade/vim-gitgutter'
Plug 'kyazdani42/nvim-tree.lua'

" Core LSP
Plug 'neovim/nvim-lspconfig'
Plug 'kabouzeid/nvim-lspinstall'
Plug 'jose-elias-alvarez/null-ls.nvim'

Plug 'jvirtanen/vim-hcl'
Plug 'tpope/vim-surround'
Plug 'alvan/vim-closetag'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'aonemd/kuroi.vim'
Plug 'tpope/vim-commentary'

" Snips and autocompletion
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
Plug 'ray-x/lsp_signature.nvim'

call plug#end()

" Configure cmp
set completeopt=menu,menuone,noselect
