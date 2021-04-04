local lspconfig = require('lspconfig')

vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.lsp.omnifunc")

local map = vim.api.nvim_set_keymap
local options = { noremap = true, silent = true }

map('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', options)

lspconfig.tsserver.setup {}

lspconfig.svelte.setup {}

lspconfig.cssls.setup {}

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

lspconfig.html.setup {
	capabilities = capabilities,
}

lspconfig.gopls.setup {
	cmd = {"gopls", "serve"},
	settings = {
		gopls = {
			analyses = {
				unusedparams = true,
			},
		},
		staticcheck = true,
	}
}

lspconfig.pyls.setup {}
