local map = vim.api.nvim_set_keymap

local noremap = { noremap = true }
local silent = { noremap = true, silent = true }

map('n', 'n', 'h', noremap)
map('n', 'e', 'j', noremap)
map('n', 'i', 'k', noremap)
map('n', 'o', 'l', noremap)

map('v', 'n', 'h', noremap)
map('v', 'e', 'j', noremap)
map('v', 'i', 'k', noremap)
map('v', 'o', 'l', noremap)

map('n', 'I', 'i', noremap)
map('n', 'j', 'i', noremap)
map('n', 'h', 'o', noremap)
map('n', 'H', 'O', noremap)
map('n', 'l', 'nzz', noremap)

map('v', 'I', 'i', noremap)
map('v', 'j', 'i', noremap)
map('v', 'h', 'o', noremap)
map('v', 'H', 'O', noremap)
map('v', 'l', 'nzz', noremap)

-- auto close delimiters
map('i', '(', '()<left>', silent)
map('i', '[', '[]<left>', silent)
map('i', '{', '{}<left>', silent)

-- open fzf
map('n', '<leader>f', ':FZF<cr>', silent)
map('n', '<leader>w', ':NvimTreeOpen<cr>', silent)

