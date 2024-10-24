return {
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {
			transparent = true,
		},
	},

	{
		"gbprod/nord.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("nord").setup({})
		end,
	},

	{
		"olimorris/onedarkpro.nvim",
		priority = 1000,
	},

	{
		"loctvl842/monokai-pro.nvim",
	},
}
