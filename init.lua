require("keymaps")
require("preferences")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	spec = {
		{ import = "plugins" },
	},

	install = {
		colorscheme = { "tokyonight-night" },
	},

	ui = {
		border = "single",
	},
})

vim.api.nvim_create_autocmd("VimEnter", {
	nested = true,
	callback = function()
		pcall(vim.cmd.colorscheme, vim.g.SCHEME)
	end,
})

vim.api.nvim_create_autocmd("ColorScheme", {
	callback = function(params)
		vim.g.SCHEME = params.match
	end,
})

vim.cmd.colorscheme("tokyonight-night")
