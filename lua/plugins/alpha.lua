return {
	"goolord/alpha-nvim",

	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		dashboard.section.header.val = {
			-- "                                                     ",
			-- "      ███████╗ █████╗ ███╗   ██╗███████╗███████╗     ",
			-- "      ██╔════╝██╔══██╗████╗  ██║██╔════╝██╔════╝     ",
			-- "      ███████╗███████║██╔██╗ ██║█████╗  █████╗       ",
			-- "      ╚════██║██╔══██║██║╚██╗██║██╔══╝  ██╔══╝       ",
			-- "      ███████║██║  ██║██║ ╚████║██║     ███████╗     ",
			-- "      ╚══════╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝     ╚══════╝     ",
			"                                                     ",
			"  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
			"  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
			"  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
			"  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
			"  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
			"  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
		}

		dashboard.section.buttons.val = {
			dashboard.button("e", "󰝒  New file", ":ene <BAR> startinsert <CR>"),
			dashboard.button("f", " Find file", ":Telescope find_files<CR>"),
			dashboard.button("r", "  Recent", ":Telescope oldfiles<CR>"),
			dashboard.button("t", "  Terminal", ":ToggleTerm<CR>"),
		}

		dashboard.section.footer.val = {
			-- "",
			-- "--   VisualStudioNeovim Loaded " .. plugins_count .. " plugins    --",
			-- "",
		}

		alpha.setup(dashboard.opts)

		vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
	end,
}