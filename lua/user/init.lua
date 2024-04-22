vim.api.nvim_create_autocmd("VimEnter", {
	command = "Neotree toggle",
})
vim.api.nvim_create_autocmd("BufEnter", {
--	command = "set rnu nu",
})
