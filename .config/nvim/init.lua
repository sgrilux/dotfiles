require("sgrilux.plugins-setup")

require("sgrilux.core.options")
require("sgrilux.core.keymaps")
require("sgrilux.core.colorscheme")

-- plugins
require("sgrilux.plugins.nvim-tree")
require("sgrilux.plugins.lualine")
require("sgrilux.plugins.telescope")
require("sgrilux.plugins.nvim-cmp")
require("sgrilux.plugins.lsp.mason")
require("sgrilux.plugins.lsp.lspconfig")
require("sgrilux.plugins.lsp.lspsaga")
require("sgrilux.plugins.lsp.null-ls")
require("sgrilux.plugins.autopairs")
require("sgrilux.plugins.treesitter")
require("sgrilux.plugins.gitsigns")
require("sgrilux.plugins.toggleterm")
require("sgrilux.plugins.nvim-comment")
require("sgrilux.plugins.todo-comments")
require("sgrilux.plugins.nvim-surround")
require("sgrilux.plugins.terraform")
require("sgrilux.plugins.glow")

-- Delete Trailing spaces
api = vim.api
api.nvim_create_autocmd("BufWritePre", {
	pattern = { "*" },
	command = [[%s/\s\+$//e"]],
})
