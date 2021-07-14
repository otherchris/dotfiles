local on_attach = require('lsp.on_attach')

-- npm install -g typescript typescript-language-server
require'lspconfig'.tsserver.setup({
  on_attach = function(client, bufnr)
    client.resolved_capabilities.document_formatting = true
    on_attach(client)

    local ts_utils = require("nvim-lsp-ts-utils")

    ts_utils.setup {
        debug = false,
        disable_commands = false,
        enable_import_on_completion = false,
        import_all_timeout = 5000, -- ms

        -- eslint
        eslint_enable_code_actions = true,
        eslint_enable_disable_comments = true,
        eslint_bin = 'eslint_d',
        eslint_config_fallback = nil,
        eslint_enable_diagnostics = true,

        -- formatting
        enable_formatting = true,
        formatter = 'prettier',
        formatter_config_fallback = nil,

        -- parentheses completion
        complete_parens = false,
        signature_help_in_parens = false,

        -- update imports on file move
        update_imports_on_move = true,
        require_confirmation_on_move = true,
        watch_dir = nil,
    }

    ts_utils.setup_client(client)

    vim.api.nvim_buf_set_keymap(bufnr, "n", "<Leader>co", ":TSLspOrganize<CR>", {silent = true})
    vim.api.nvim_buf_set_keymap(bufnr, "n", "qq", ":TSLspFixCurrent<CR>", {silent = true})
    vim.api.nvim_buf_set_keymap(bufnr, "n", "<Leader>cR", ":TSLspRenameFile<CR>", {silent = true})
    vim.api.nvim_buf_set_keymap(bufnr, "n", "<Leader>ci", ":TSLspImportAll<CR>", {silent = true})
  end
})-
