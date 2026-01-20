local status, claude_code = pcall(require, "claude-code")
if not status then
	return
end

claude_code.setup({
	window = {
		split_ratio = 0.3, -- 30% of screen height
		position = "botright", -- bottom right position
		enter_insert = true, -- automatically enter insert mode
	},
	command = "claude", -- claude CLI command
})

-- Keymaps
local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Toggle Claude Code terminal
keymap("n", "<C-,>", ":ClaudeCode<CR>", opts)

-- Continue most recent conversation
keymap("n", "<leader>cc", ":ClaudeCodeContinue<CR>", { noremap = true, silent = true, desc = "Continue conversation" })

-- Show conversation picker
keymap("n", "<leader>cr", ":ClaudeCodeResume<CR>", { noremap = true, silent = true, desc = "Resume conversation" })

-- Enable verbose logging
keymap("n", "<leader>cv", ":ClaudeCodeVerbose<CR>", { noremap = true, silent = true, desc = "Verbose mode" })
