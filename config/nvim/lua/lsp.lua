local lspconfig = require("lspconfig")

if lang == "typescript" then
	config.on_attach = function(client)
		client.resolved_capabilities.document_formatting = false
		client.resolved_capabilities.document_range_formatting = false
		on_attach(client)
	end
end

if lang == "javascript" then
	config.on_attach = function(client)
		client.resolved_capabilities.document_formatting = false
		client.resolved_capabilities.document_range_formatting = false
		on_attach(client)
	end
end

lspconfig.dockerls.setup({})
lspconfig.elmls.setup({})
lspconfig.hls.setup({})
lspconfig.elixirls.setup({})

require("null-ls").setup({
	on_attach = function(client)
		if client.resolved_capabilities.document_formatting then
			vim.cmd([[
            augroup LspFormatting
                autocmd! * <buffer>
                autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()
            augroup END
            ]])
		end
	end,
	sources = {
		require("null-ls").builtins.formatting.mix,
		require("null-ls").builtins.diagnostics.credo,
		require("null-ls").builtins.formatting.brittany,
		require("null-ls").builtins.formatting.stylua,
		require("null-ls").builtins.formatting.black,
		require("null-ls").builtins.formatting.prettier,
		require("null-ls").builtins.diagnostics.mypy,
		--require("null-ls").builtins.diagnostics.eslint,
		require("null-ls").builtins.completion.spell,
	},
})
