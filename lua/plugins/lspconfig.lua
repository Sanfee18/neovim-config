return {
	{
		"williamboman/mason.nvim",

		opts = {
			ensure_installed = {
				"lua-languaje-server",
				"pyright",
			},
		},

		config = function()
			require("mason").setup({
				ui = {
					icons = {
						package_installed = "✓",
						package_pending = "➜",
						package_uninstalled = "✗",
					},
				},
			})
		end,
	},

	{
		"williamboman/mason-lspconfig.nvim",
	},

	{
		"neovim/nvim-lspconfig",

		config = function()
			local lspconfig = require("lspconfig")

			-- local capabilities = require("cmp_nvim_lsp").default_capabilities()

			lspconfig.lua_ls.setup({
				settings = {
					Lua = {
						diagnostics = {
							globals = { "vim" },
						},
					},
				},

				-- capabilities = capabilities,
			})

			lspconfig.pyright.setup({
				-- capabilities = capabilities,
			})
		end,
	},
}
