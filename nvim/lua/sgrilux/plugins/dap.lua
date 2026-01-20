local dap_status, dap = pcall(require, "dap")
if not dap_status then
	return
end

local dapui_status, dapui = pcall(require, "dapui")
if not dapui_status then
	return
end

local dap_python_status, dap_python = pcall(require, "dap-python")
if not dap_python_status then
	return
end

-- Setup dapui
dapui.setup()

-- Setup Python debugger (uses debugpy)
dap_python.setup("~/.virtualenvs/debugpy/bin/python")

-- Automatically open/close dapui
dap.listeners.after.event_initialized["dapui_config"] = function()
	dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
	dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
	dapui.close()
end

-- Keymaps for debugging
local keymap = vim.keymap.set
keymap("n", "<leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<cr>", { desc = "Toggle Breakpoint" })
keymap("n", "<leader>dc", "<cmd>lua require'dap'.continue()<cr>", { desc = "Continue" })
keymap("n", "<leader>di", "<cmd>lua require'dap'.step_into()<cr>", { desc = "Step Into" })
keymap("n", "<leader>do", "<cmd>lua require'dap'.step_over()<cr>", { desc = "Step Over" })
keymap("n", "<leader>dO", "<cmd>lua require'dap'.step_out()<cr>", { desc = "Step Out" })
keymap("n", "<leader>dr", "<cmd>lua require'dap'.repl.toggle()<cr>", { desc = "Toggle REPL" })
keymap("n", "<leader>dl", "<cmd>lua require'dap'.run_last()<cr>", { desc = "Run Last" })
keymap("n", "<leader>du", "<cmd>lua require'dapui'.toggle()<cr>", { desc = "Toggle UI" })
keymap("n", "<leader>dt", "<cmd>lua require'dap'.terminate()<cr>", { desc = "Terminate" })
