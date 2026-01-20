local status, trouble = pcall(require, "trouble")
if not status then
	return
end

trouble.setup({
	icons = true,
	fold_open = "",
	fold_closed = "",
	indent_lines = false,
	signs = {
		error = "",
		warning = "",
		hint = "ﴞ",
		information = "",
	},
	use_diagnostic_signs = true,
})

-- Keymaps
local keymap = vim.keymap.set
keymap("n", "<leader>xx", "<cmd>TroubleToggle<cr>", { desc = "Toggle Trouble" })
keymap("n", "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>", { desc = "Workspace Diagnostics" })
keymap("n", "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>", { desc = "Document Diagnostics" })
keymap("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>", { desc = "Quickfix List" })
keymap("n", "<leader>xl", "<cmd>TroubleToggle loclist<cr>", { desc = "Location List" })
keymap("n", "gR", "<cmd>TroubleToggle lsp_references<cr>", { desc = "LSP References" })
