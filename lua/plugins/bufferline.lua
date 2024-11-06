return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	opts = {
		options = {
			always_show_bufferline = false,
			themable = false,
			offsets = {
				{
					filetype = "neo-tree",
					text = "File Explorer",
					highlight = "Directory",
					text_align = "center",
				},
			},
		},
	}
}
