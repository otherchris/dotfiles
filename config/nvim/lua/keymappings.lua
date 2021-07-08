local map = vim.api.nvim_set_keymap

map('n', 'n', 'h', { noremap = true })
map('n', 'e', 'j', { noremap = true })
map('n', 'i', 'k', { noremap = true })
map('n', 'o', 'l', { noremap = true })

map('n', 'I', 'i', { noremap = true })
map('n', 'j', 'i', { noremap = true })
map('n', 'h', 'o', { noremap = true })
map('n', 'H', 'O', { noremap = true })
map('n', 'l', 'nzz', { noremap = true })

-- auto close delimiters
map('i', '(', '()<left>', { silent = true, noremap = true })
map('i', '[', '[]<left>', { silent = true, noremap = true })
map('i', '{', '{}<left>', { silent = true, noremap = true })

-- open fzf
map('<leader>f', ':FZF<CR>', { silent = true, noremap = true })
