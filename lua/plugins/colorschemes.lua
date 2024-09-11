return {
	--NOTE: TokyoNight
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
	},

	--NOTE: Nord
	{
		"gbprod/nord.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("nord").setup({})
		end,
	},

	--NOTE: One Dark
	{
		"olimorris/onedarkpro.nvim",
		priority = 1000,
	},

	--NOTE: Monokai Pro
	{
		"loctvl842/monokai-pro.nvim",
	},
}
