vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wrap = false
vim.opt.expandtab = false
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.cursorline = true
vim.opt.ignorecase = true
vim.opt.splitbelow = true
vim.opt.scrolloff = 10
vim.opt.termguicolors = true
vim.opt.hlsearch = false
vim.opt.autoindent = true

-- vim.opt.guifont = "MesloLGM Nerd Font"

-- This if so that the new line isn't a comment.
vim.cmd([[autocmd FileType * set formatoptions-=ro]])

-- Highlight yanked text for a brief moment
vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank({
			higroup = "Search", -- You can change this to any highlight group (IncSearch, Visual, Search...)
			timeout = 40, -- Time in milliseconds
		})
	end,
})

-- Automatically start Telescope file finder when no file is specified at startup
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    -- Check if no files were opened
    if #vim.fn.argv() == 0 then
      -- Call Telescope's find_files function
      require('telescope.builtin').find_files()
    end
  end
})

