vim.g.mapleader = ","

local keymap = vim.keymap.set

-- Glow
keymap("n", "<leader>p", "<cmd>Glow<cr>")

keymap("n", "<leader>nh", ":nohl<CR>") -- no highlight

keymap("n", "x", '"_x') -- don't put deleted characted in the buffer

keymap("n", "<leader>+", "<C-a>")
keymap("n", "<leader>-", "<C-x>")

keymap("n", "<leader>sv", "<C-w>v") --split window vertically
keymap("n", "<leader>sh", "<C-w>s") --split window horizontally
keymap("n", "<leader>se", "<C-x>=") -- make split window equal width
keymap("n", "<leader>sx", ":close<CR>") -- close current split window

keymap("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap("n", "<leader>tn", ":tabn<CR>") -- go to next tab
keymap("n", "<leader>tp", ":tabp<CR>") -- go to previous tab

keymap("n", "<leader>sm", ":MaximizerToggle<CR>")

-- Telescope
keymap("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap("n", "<leader>fg", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap("n", "<leader>fs", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

-- telescope git commands
keymap("n", "<leader>gc", "<cmd>Telescope git_commits<cr>") -- list all git commits (use <cr> to checkout) ["gc" for git commits]
keymap("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>") -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
keymap("n", "<leader>gb", "<cmd>Telescope git_branches<cr>") -- list git branches (use <cr> to checkout) ["gb" for git branch]
keymap("n", "<leader>gs", "<cmd>Telescope git_status<cr>") -- list current changes per file with diff preview ["gs" for git status]

-- nvim-tree
keymap("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle file explorer

-- restart lsp server
keymap("n", "<leader>rs", ":LspRestart<CR>") -- mapping to restart lsp if necessary
