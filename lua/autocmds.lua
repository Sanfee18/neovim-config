-- This if so that the new line isn't a comment.
vim.cmd([[autocmd FileType * set formatoptions-=ro]])

vim.api.nvim_set_hl(0, 'LineNr', { fg = "#4b5263" })

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

-- Remove trailing whitespace on save
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
    pattern = {"*"},
    callback = function()
      local save_cursor = vim.fn.getpos(".")
      pcall(function() vim.cmd [[%s/\s\+$//e]] end)
      vim.fn.setpos(".", save_cursor)
    end,
})

