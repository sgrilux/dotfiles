require("sgrilux.plugins-setup")

require("sgrilux.core.options")
require("sgrilux.core.keymaps")
require("sgrilux.core.colorscheme")

-- plugins
require("sgrilux.plugins.nvim-tree")
require("sgrilux.plugins.lualine")
require("sgrilux.plugins.telescope")
require("sgrilux.plugins.nvim-cmp")
require("sgrilux.plugins.terraform")
require("sgrilux.plugins.lsp.mason")
require("sgrilux.plugins.lsp.lspsaga")
require("sgrilux.plugins.lsp.lspconfig")
require("sgrilux.plugins.lsp.null-ls")
require("sgrilux.plugins.autopairs")
require("sgrilux.plugins.treesitter")
require("sgrilux.plugins.gitsigns")
require("sgrilux.plugins.toggleterm")
require("sgrilux.plugins.nvim-comment")
require("sgrilux.plugins.todo-comments")

-- Delete Trailing spaces
api = vim.api
api.nvim_create_autocmd("BufWritePre", {
	pattern = { "*" },
	command = [[%s/\s\+$//e"]],
})

-- hop
-- require'hop'.setup()

-- Aesthetic
-- pcall catches errors if the plugin doesn't load
-- require'nvim-treesitter.configs'.setup { ensure_installed = "all", highlight = { enable = true } }

vim.g.glow_binary_path = vim.env.HOME .. "/bin"
vim.g.glow_use_pager = true
vim.g.glow_border = "shadow"

return mappings
