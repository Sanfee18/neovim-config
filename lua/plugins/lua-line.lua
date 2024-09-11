return {
	"nvim-lualine/lualine.nvim",

	config = function()
		local virtual_env = function()
			-- only show virtual env for Python
			if vim.bo.filetype ~= "python" then
				return ""
			end

			local conda_env = os.getenv("CONDA_DEFAULT_ENV")
			local venv_path = os.getenv("VIRTUAL_ENV")

			if venv_path == nil then
				if conda_env == nil then
					return ""
				else
					return string.format(" %s (conda)", conda_env)
				end
			else
				local venv_name = vim.fn.fnamemodify(venv_path, ":t")
				return string.format(" %s (venv)", venv_name)
			end
		end

		require("lualine").setup({
			options = {
				icons_enabled = true,
				theme = "auto",
				component_separators = { left = "", right = "" },
				section_separators = { left = "", right = "" },
				disabled_filetypes = {
					statusline = {},
					winbar = {},
				},
				ignore_focus = {},
				always_divide_middle = true,
				globalstatus = false,
				refresh = {
					statusline = 1000,
					tabline = 1000,
					winbar = 1000,
				},
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = { "branch", "diagnostics" },
				lualine_c = {{ "filename", path = 1 }},
				lualine_x = {},
				lualine_y = {},
				lualine_z = { virtual_env },
			},
			inactive_sections = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = {{ "filename", path = 1 }},
				lualine_x = { "location" },
				lualine_y = {},
				lualine_z = {},
			},
			tabline = {},
			winbar = {},
			inactive_winbar = {},
			extensions = {},
		})

		-- require("lualine").setup({
		-- 	options = {
		-- 		component_separators = { left = "", right = "" },
		-- 		section_separators = { left = "", right = "" },
		--
		-- 		sections = {
		-- 			lualine_a = { "mode" },
		-- 			lualine_b = { "branch", "diagnostics" },
		-- 			lualine_c = { "filename", path = 1 },
		-- 			lualine_x = { "filetype" },
		-- 			lualine_y = {},
		-- 			lualine_z = { virtual_env },
		-- 		},
		-- 		inactive_sections = {
		-- 			lualine_a = {},
		-- 			lualine_b = {},
		-- 			lualine_c = { "filename" },
		-- 			lualine_x = { "location" },
		-- 			lualine_y = {},
		-- 			lualine_z = {},
		-- 		},
		-- 	},
		-- })
	end,
}
