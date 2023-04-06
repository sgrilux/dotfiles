-- import glow safely
local glow_status, glow = pcall(require, "glow")
if not glow_status then
	return
end

glow.setup({})

vim.g.glow_binary_path = vim.env.HOME .. "/bin"
vim.g.glow_use_pager = true
vim.g.glow_border = "shadow"
