vim.g.mapleader = " "

-- Select all text
vim.keymap.set("n", "<leader>A", "ggVG")

-- Open file tree
vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left toggle<CR>")
vim.keymap.set("n", "<leader>e", ":Neotree focus<CR>")

-- Telescope bindings
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>")
vim.keymap.set("n", "<leader><leader>", ":Telescope find_files<CR>")
vim.keymap.set("n", "<leader>th", ":Telescope colorscheme<CR>")
vim.keymap.set("n", "<leader>of", ":Telescope oldfiles<CR>")
vim.keymap.set("n", "<leader>fw", ":Telescope live_grep<CR>")
vim.keymap.set("n", "<leader>fb", ":Telescope buffers<CR>")

-- Format buffer
vim.keymap.set("n", "<leader>ft", vim.lsp.buf.format, {})

-- Move between buffers
vim.keymap.set("n", "<tab>", ":BufferLineCycleNext<CR>")
vim.keymap.set("n", "<S-tab>", ":BufferLineCyclePrev<CR>")
vim.keymap.set("n", "<leader>w", ":bd<CR>")

-- Comment/uncomment toggle
vim.keymap.set("n", "<leader>/", "gcc", { remap = true })
vim.keymap.set("v", "<leader>/", "gc", { remap = true })

