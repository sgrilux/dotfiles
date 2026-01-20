local nvim_comment_status, nvim_comment = pcall(require, "nvim_comment")
if not nvim_comment_status then
	return
end

nvim_comment.setup()
