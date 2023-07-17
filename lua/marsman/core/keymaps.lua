-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps
---------------------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>")

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- delete a word backwords
-- keymap.set("n", "dw", 'vb"_d')

-- select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>") -- increment
keymap.set("n", "<leader>-", "<C-x>") -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

-- move window
keymap.set("n", "<leader>w", "<C-w>w")

-- resize window
keymap.set("n", "<C-w><left>", "<C-w>>")
keymap.set("n", "<C-w><right>", "<C-w><")
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w><down>", "<C-w>-")

-- tab
keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

----------------------
-- Plugin Keybinds
----------------------

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle split window maximization

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle file explorer

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

-- telescope git commands (not on youtube nvim video)
keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>") -- list all git commits (use <cr> to checkout) ["gc" for git commits]
keymap.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>") -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>") -- list git branches (use <cr> to checkout) ["gb" for git branch]
keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>") -- list current changes per file with diff preview ["gs" for git status]

-- restart lsp server (not on youtube nvim video)
keymap.set("n", "<leader>rs", ":LspRestart<CR>") -- mapping to restart lsp if necessary

-- gomove keymap
keymap.set("n", "<S-h>", "<Plug>GoNSMLeft", {}) -- Normal Smart Move
keymap.set("n", "<S-j>", "<Plug>GoNSMDown", {}) -- Normal Smart Move
keymap.set("n", "<S-k>", "<Plug>GoNSMUp", {}) -- Normal Smart Move
keymap.set("n", "<S-l>", "<Plug>GoNSMRight", {}) -- Normal Smart Move

keymap.set("x", "<S-h>", "<Plug>GoVSMLeft", {}) -- Visual Smart Move
keymap.set("x", "<S-j>", "<Plug>GoVSMDown", {}) -- Visual Smart Move
keymap.set("x", "<S-k>", "<Plug>GoVSMUp", {}) -- Visual Smart Move
keymap.set("x", "<S-l>", "<Plug>GoVSMRight", {}) -- Visual Smart Move

keymap.set("n", "<S-Left>", "<Plug>GoNSDLeft", {}) -- Normal Smart Duplicate Move
keymap.set("n", "<S-Down>", "<Plug>GoNSDDown", {}) -- Normal Smart Duplicate Move
keymap.set("n", "<S-Up>", "<Plug>GoNSDUp", {}) -- Normal Smart Duplicate Move
keymap.set("n", "<S-Right>", "<Plug>GoNSDRight", {}) -- Normal Smart Duplicate Move

keymap.set("x", "<S-Left>", "<Plug>GoVSDLeft", {}) -- Visual Smart Move
keymap.set("x", "<S-Down>", "<Plug>GoVSDDown", {}) -- Visual Smart Move
keymap.set("x", "<S-Up>", "<Plug>GoVSDUp", {}) -- Visual Smart Move
keymap.set("x", "<S-Right>", "<Plug>GoVSDRight", {}) -- Visual Smart Move

-- lazygit
keymap.set("n", "<F7>", ":LazyGit<CR>") -- lazygit
