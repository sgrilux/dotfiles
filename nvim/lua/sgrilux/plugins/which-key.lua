local status, which_key = pcall(require, "which-key")
if not status then
	return
end

which_key.setup({
	preset = "modern",
	delay = 500, -- delay in ms before which-key opens (was 1000ms by default)
	icons = {
		breadcrumb = ">",
		separator = "->",
		group = "+",
		mappings = true, -- enable icon mappings (requires nerd font)
	},
	win = {
		border = "rounded",
		padding = { 1, 2 },
	},
})

-- Register key mappings with new spec format
which_key.add({
	-- File/Find
	{ "<leader>f", group = "File/Find" },
	{ "<leader>ff", desc = "Find files" },
	{ "<leader>fg", desc = "Live grep" },
	{ "<leader>fs", desc = "Find string under cursor" },
	{ "<leader>fb", desc = "Find buffers" },
	{ "<leader>fh", desc = "Find help tags" },

	-- Git
	{ "<leader>g", group = "Git" },
	{ "<leader>gc", desc = "Git commits" },
	{ "<leader>gf", desc = "Git file commits" },
	{ "<leader>gb", desc = "Git branches" },
	{ "<leader>gs", desc = "Git status" },

	-- Git Hunk
	{ "<leader>h", group = "Git Hunk" },
	{ "<leader>hs", desc = "Stage hunk" },
	{ "<leader>hr", desc = "Reset hunk" },
	{ "<leader>hS", desc = "Stage buffer" },
	{ "<leader>hu", desc = "Undo stage hunk" },
	{ "<leader>hR", desc = "Reset buffer" },
	{ "<leader>hp", desc = "Preview hunk" },
	{ "<leader>hb", desc = "Blame line" },
	{ "<leader>hd", desc = "Diff this" },
	{ "<leader>hD", desc = "Diff this ~" },

	-- Toggle
	{ "<leader>t", group = "Toggle" },
	{ "<leader>to", desc = "Open tab" },
	{ "<leader>tx", desc = "Close tab" },
	{ "<leader>tn", desc = "Next tab" },
	{ "<leader>tp", desc = "Previous tab" },
	{ "<leader>tb", desc = "Toggle line blame" },
	{ "<leader>td", desc = "Toggle deleted" },
	{ "<leader>tt", desc = "Toggle terminal" },
	{ "<leader>t1", desc = "Toggle terminal 1" },
	{ "<leader>t2", desc = "Toggle terminal 2" },
	{ "<leader>t3", desc = "Toggle terminal 3" },

	-- Split
	{ "<leader>s", group = "Split" },
	{ "<leader>sv", desc = "Split vertically" },
	{ "<leader>sh", desc = "Split horizontally" },
	{ "<leader>se", desc = "Equal width" },
	{ "<leader>sx", desc = "Close split" },
	{ "<leader>sm", desc = "Maximize toggle" },

	-- Diagnostics
	{ "<leader>x", group = "Diagnostics" },
	{ "<leader>xx", desc = "Toggle Trouble" },
	{ "<leader>xw", desc = "Workspace diagnostics" },
	{ "<leader>xd", desc = "Document diagnostics" },
	{ "<leader>xq", desc = "Quickfix" },
	{ "<leader>xl", desc = "Location list" },

	-- Debug
	{ "<leader>d", group = "Debug" },
	{ "<leader>db", desc = "Toggle breakpoint" },
	{ "<leader>dc", desc = "Continue" },
	{ "<leader>di", desc = "Step into" },
	{ "<leader>do", desc = "Step over" },
	{ "<leader>dO", desc = "Step out" },
	{ "<leader>dr", desc = "Toggle REPL" },
	{ "<leader>dl", desc = "Run last" },
	{ "<leader>du", desc = "Toggle UI" },
	{ "<leader>dt", desc = "Terminate" },

	-- Code
	{ "<leader>c", group = "Code" },
	{ "<leader>ca", desc = "Code action" },
	{ "<leader>cc", desc = "Claude: Continue conversation" },
	{ "<leader>cr", desc = "Claude: Resume conversation" },
	{ "<leader>cv", desc = "Claude: Verbose mode" },

	-- Rename/Restart
	{ "<leader>r", group = "Rename/Restart" },
	{ "<leader>rn", desc = "Rename symbol" },
	{ "<leader>rs", desc = "Restart LSP" },

	-- Misc
	{ "<leader>e", desc = "File explorer" },
	{ "<leader>p", desc = "Markdown preview" },
	{ "<leader>nh", desc = "No highlight" },
	{ "<leader>D", desc = "Line diagnostics" },
})
