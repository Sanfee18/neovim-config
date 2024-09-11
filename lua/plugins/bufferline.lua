return {
	"akinsho/bufferline.nvim",

	config = function()
		require("bufferline").setup({
			options = {
				themeable = true,
				numbers = "ordinal",
			},
		})
	end,
}