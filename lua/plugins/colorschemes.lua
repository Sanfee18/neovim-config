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
		"rebelot/kanagawa.nvim",
		config = function ()
			require('kanagawa').setup({
				transparent = true,
				colors = {
					theme = {
						all = {
							ui = {
								bg_gutter = "none"
							}
						}
					}
				},
				overrides = function (colors)
					local theme = colors.theme
					return{
						-- Set the Visual selection foreground to grey
						Visual = { bg = "#5A5A5A" },

						Pmenu = { fg = theme.ui.shade0, bg = theme.ui.bg_p1 },  -- add `blend = vim.o.pumblend` to enable transparency
						PmenuSel = { fg = "NONE", bg = theme.ui.bg_p2 },
						PmenuSbar = { bg = theme.ui.bg_m1 },
						PmenuThumb = { bg = theme.ui.bg_p2 },
					}
				end
			})
		end
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
