return {
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {
			-- transparent = true,
		},
	},
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		opts = {
			flavour = "mocha",
			-- transparent_background = true,
		}
	},
	{
		"gmr458/vscode_modern_theme.nvim",
		lazy = false,
		priority = 1000,
		opts = {
			cursorline = true,
			transparent_background = false,
			nvim_tree_darker = true,
		}
	},
	{
		'projekt0n/github-nvim-theme',
		name = 'github-theme',
		lazy = false,
		priority = 1000,
		opts = {}
	},
}
