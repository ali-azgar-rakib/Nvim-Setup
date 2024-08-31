return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup()
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.clangd.setup({
				capabilities = capabilities,
				on_attach = function(client, bufnr)
					local bufopts = { noremap = true, silent = true, buffer = bufnr }

					-- Keybindings for LSP functions
					vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts) -- Go to definition
					vim.keymap.set("n", "gr", vim.lsp.buf.references, bufopts) -- Find references
					vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts) -- Show hover information
					vim.keymap.set("n", "gi", vim.lsp.buf.implementation, bufopts) -- Go to implementation
					vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, bufopts) -- Rename symbol
					vim.keymap.set("n", "gt", vim.lsp.buf.declaration, bufopts) -- Go to declaration
				end,
			})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
