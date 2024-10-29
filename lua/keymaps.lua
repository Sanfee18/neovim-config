vim.g.mapleader = " "

-- Indent done with "=" operator

-- Map Shift + J and K to scroll half page down
vim.keymap.set("n", "J", "<C-d>", { noremap = true, silent = true })
vim.keymap.set("n", "K", "<C-u>", { noremap = true, silent = true })

-- Open file tree
vim.keymap.set("n", "<leader>e", ":Ex<CR>", { noremap = true, silent = true })

-- Telescope bindings
vim.keymap.set("n", "<leader><leader>", ":Telescope find_files<CR>")
vim.keymap.set("n", "<leader>th", ":Telescope colorscheme<CR>")
vim.keymap.set("n", "<leader>of", ":Telescope oldfiles<CR>")
vim.keymap.set("n", "<leader>fw", ":Telescope live_grep<CR>")
vim.keymap.set("n", "<leader>,", ":Telescope buffers<CR>")

-- Move between buffers
vim.keymap.set("n", "<tab>", ":BufferLineCycleNext<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<S-tab>", ":BufferLineCyclePrev<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>x", ":bd<CR>", { noremap = true, silent = true })

-- Map leader + c to copy in visual mode
vim.api.nvim_set_keymap("v", "<leader>c", '"+y', { noremap = true, silent = true })

