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
require("sgrilux.plugins.dap")
require("sgrilux.plugins.trouble")
require("sgrilux.plugins.indent-blankline")
require("sgrilux.plugins.which-key")
require("sgrilux.plugins.fidget")
require("sgrilux.plugins.yaml-companion")
require("sgrilux.plugins.markdown-preview")
require("sgrilux.plugins.claude-code")

local api = vim.api

-- Delete Trailing spaces
api.nvim_create_autocmd("BufWritePre", {
	pattern = { "*" },
	command = [[%s/\s\+$//e"]],
})

-- Set syntax to json for cfn files
api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
	pattern = { "*.cfn" },
	command = "set syntax=json",
})

-- Enable spell checking for markdown files
api.nvim_create_autocmd("FileType", {
	pattern = { "markdown", "md" },
	callback = function()
		vim.opt_local.spell = true
		vim.opt_local.spelllang = "en_us"
	end,
})
