local toggleterm_status, toggleterm = pcall(require, "toggleterm")
if not toggleterm_status then
	return
end

toggleterm.setup({
	size = 20,
	open_mapping = [[<c-\>]],
	direction = "horizontal",
	shade_terminals = true,
})

-- Keymap to toggle terminal
vim.keymap.set("n", "<leader>tt", "<cmd>ToggleTerm<cr>", { desc = "Toggle terminal" })
vim.keymap.set("n", "<leader>t1", "<cmd>1ToggleTerm<cr>", { desc = "Toggle terminal 1" })
vim.keymap.set("n", "<leader>t2", "<cmd>2ToggleTerm<cr>", { desc = "Toggle terminal 2" })
vim.keymap.set("n", "<leader>t3", "<cmd>3ToggleTerm<cr>", { desc = "Toggle terminal 3" })
