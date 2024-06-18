vim.g.mapleader = " "

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

--------------------
-- General Keymaps
--------------------

-- remap for dealing with word wrap
vim.keymap.set("n", "k", "v:count == 3 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set("n", "j", "v:count == 3 ? 'gj' : 'j'", { expr = true, silent = true })

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", opts)

-- delete single character without copying into register
keymap.set("n", "x", '"_x', opts)

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", opts)
keymap.set("n", "<leader>-", "<C-x>", opts)

-- save file
keymap.set({ "i", "x", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", opts)

-- select all
keymap.set("n", "<leader>aa", "ggVG", opts)

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", opts) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", opts) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", opts) -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>", opts) -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>", opts) -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>", opts) -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>", opts) -- go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>", opts) -- go to previous tab

-- switch between windows
keymap.set("n", "<C-h>", "<CMD>NavigatorLeft<CR>", opts)
keymap.set("n", "<C-l>", "<CMD>NavigatorRight<CR>", opts)
keymap.set("n", "<C-j>", "<CMD>NavigatorDown<CR>", opts)
keymap.set("n", "<C-k>", "<CMD>NavigatorUp<CR>", opts)

-- switch between buffers
keymap.set("n", "<Tab>", ":bnext<CR>", opts)
keymap.set("n", "<S-Tab>", ":bprev<CR>", opts)
keymap.set("n", "<leader>bx", ":bdelete<CR>", opts)

--------------------
-- Plugin Keybinds
--------------------

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>", opts) -- toggle split window maximization

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- telescope
keymap.set("n", "<leader>ff", ":Telescope find_files<CR>", opts)
keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>", opts)
keymap.set("n", "<leader>fs", ":Telescope grep_string<CR>", opts)
keymap.set("n", "<leader>fb", ":Telescope buffers<CR>", opts)
keymap.set("n", "<leader>fh", ":Telescope help_tags<CR>", opts)

-- persisence
vim.api.nvim_set_keymap("n", "<leader>qs", [[<cmd>lua require("persistence").load()<cr>]], {}) -- restore the session for the current directory
vim.api.nvim_set_keymap("n", "<leader>ql", [[<cmd>lua require("persistence").load({ last = true })<cr>]], {}) -- restore the last session
vim.api.nvim_set_keymap("n", "<leader>qd", [[<cmd>lua require("persistence").stop()<cr>]], {}) -- stop Persistence => session won't be saved on exit
