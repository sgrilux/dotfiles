local status, fidget = pcall(require, "fidget")
if not status then
	return
end

fidget.setup({
	progress = {
		display = {
			done_icon = "✔",
		},
	},
	notification = {
		window = {
			normal_hl = "Comment",
			winblend = 0,
			relative = "editor",
		},
	},
})
