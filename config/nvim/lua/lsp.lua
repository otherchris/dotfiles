local lspconfig = require("lspconfig")

lspconfig.pyright.setup({})

lspconfig.tsserver.setup({
	on_attach = function(client)
		client.resolved_capabilities.document_formatting = false
		on_attach(client)
	end,
})

lspconfig.dockerls.setup({})

-- curl -fLO https://github.com/elixir-lsp/elixir-ls/releases/latest/download/elixir-ls.zip
-- unzip elixir-ls.zip -d /path/to/elixir-ls
lspconfig.elixirls.setup({
	cmd = { "/Users/chriscaragianis/.elixir-ls/language_server.sh" },
	settings = {
		elixirLS = {
			projectDir = { "server/world_api", "" },
		},
	},
	on_attach = function(client)
		on_attach(client)
	end,
})

lspconfig.terraformls.setup({
	filetypes = { "terraform", "tf" },
	on_attach = function(client)
		on_attach(client)
	end,
})

lspconfig.html.setup({})

lspconfig.cssls.setup({
	capabilities = capabilities,
})

require("null-ls").setup({
	on_attach = function(client)
		if client.resolved_capabilities.document_formatting then
			vim.cmd([[
            augroup LspFormatting
                autocmd! * <buffer>
                autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()
            augroup END
            ]])
		end
	end,
	sources = {
		require("null-ls").builtins.formatting.stylua,
		require("null-ls").builtins.formatting.black,
		require("null-ls").builtins.diagnostics.mypy,
		require("null-ls").builtins.diagnostics.eslint,
		require("null-ls").builtins.completion.spell,
	},
})
