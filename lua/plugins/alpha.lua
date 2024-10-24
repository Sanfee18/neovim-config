return {
	"goolord/alpha-nvim",

	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		-- Center the header by adding padding (empty lines)
		dashboard.section.header.val = {
			"                                                     ",
			"                                                     ",
			"                                                     ",
			"                                                     ",
			"                                                     ",
			"  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
			"  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
			"  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
			"  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
			"  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
			"  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
			"                                                     ",
			"                                                     ",
			"                                                     ",
			"                      								  ",
		}

		-- Add padding around buttons for centering
		dashboard.section.buttons.val = {
			dashboard.button("e", " 󰝒  New file", ":ene <BAR> startinsert <CR>"),
			dashboard.button("f", "   Find file", ":Telescope find_files<CR>"),
			dashboard.button("r", "   Recent", ":Telescope oldfiles<CR>"),
			dashboard.button("t", "   Terminal", ":ToggleTerm<CR>"),
			dashboard.button("q", " 󰩈  Exit", ":qa<CR>"),
		}

		-- Optional: footer or additional padding to move buttons downward
		dashboard.section.footer.val = {
			-- "                                                     ",
		}

		alpha.setup(dashboard.opts)
		vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
	end,
}
