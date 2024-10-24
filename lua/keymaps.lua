vim.g.mapleader = " "

-- Select all text
-- vim.keymap.set("n", "<leader>A", "ggVG")

-- Map Shift + J and K to scroll half page down
vim.keymap.set("n", "J", "<C-d>", { noremap = true, silent = true })
vim.keymap.set("n", "K", "<C-u>", { noremap = true, silent = true })

-- Open file tree
vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left toggle<CR>")
vim.keymap.set("n", "<leader>e", ":Neotree focus<CR>")

-- Telescope bindings
vim.keymap.set("n", "<leader><leader>", ":Telescope find_files<CR>")
vim.keymap.set("n", "<leader>th", ":Telescope colorscheme<CR>")
vim.keymap.set("n", "<leader>of", ":Telescope oldfiles<CR>")
vim.keymap.set("n", "<leader>fw", ":Telescope live_grep<CR>")
vim.keymap.set("n", "<leader>,", ":Telescope buffers<CR>")

-- Format buffer
vim.keymap.set("n", "<leader>fm", vim.lsp.buf.format, {})

-- Move between buffers
vim.keymap.set("n", "<tab>", ":BufferLineCycleNext<CR>")
vim.keymap.set("n", "<S-tab>", ":BufferLineCyclePrev<CR>")
vim.keymap.set("n", "<leader>x", ":bd<CR>")

-- Comment/uncomment toggle
-- vim.keymap.set("n", "<leader>/", "gcc", { remap = true })
-- vim.keymap.set("v", "<leader>/", "gc", { remap = true })

-- Map Tab to indent selected lines in visual mode
vim.keymap.set("v", "<Tab>", ">gv", { noremap = true, silent = true })
vim.keymap.set("v", "<S-Tab>", "<gv", { noremap = true, silent = true })

-- Map leader + c to copy in visual mode
vim.api.nvim_set_keymap("v", "<leader>c", '"+y', { noremap = true, silent = true })
