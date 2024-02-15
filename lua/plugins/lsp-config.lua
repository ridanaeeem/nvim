return {
	{
	"williamboman/mason.nvim",
	config = function()
		require("mason").setup()
	end
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "rust_analyzer", "tailwindcss", "templ", "tsserver", "lemminx", "ocamllsp", "ltex", "jsonls", "gopls", "eslint", "dockerls", "cssls", "clangd", "bashls", "pyright" }
			})
		end
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
		local lspconfig = require("lspconfig")
		lspconfig.lua_ls.setup({
				settings = {
					Lua = {
						diagnostics = {
							globals = { 'vim' }
						}
					}
				}
			})
		vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
			vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
			vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {})
		end
	}
}
