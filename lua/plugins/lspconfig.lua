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

			local on_attach = function(_, bufnr)
				local function opts(desc)
					return { buffer = bufnr, desc = "LSP " .. desc }
				end

				vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts("Go to declaration"))
				vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts("Go to definition"))
				vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts("Go to implementation"))
				vim.keymap.set("n", "<leader>sh", vim.lsp.buf.signature_help, opts("Show signature help"))
				vim.keymap.set("n", "<leader>D", vim.lsp.buf.type_definition, opts("Go to type definition"))
				vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts("Code action"))
				vim.keymap.set("n", "gr", vim.lsp.buf.references, opts("Show references"))
			end

			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			lspconfig.lua_ls.setup({
				settings = {
					Lua = {
						diagnostics = {
							globals = { "vim" },
						},
					},
				},

				capabilities = capabilities,
			})

			lspconfig.pyright.setup({
				on_attach = on_attach,
				capabilities = capabilities,
			})
		end,
	},
}
