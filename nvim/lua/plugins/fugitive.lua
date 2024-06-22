return {
	"tpope/vim-fugitive",
	config = function()
		vim.keymap.set("n", "<leader>ga", ":Git add %:p<CR><CR>")
		vim.keymap.set("n", "<leader>gs", ":Gstatus<CR>")
		vim.keymap.set("n", "<leader>gc", ":Gcommit -v -q<CR>")
		vim.keymap.set("n", "<leader>gt", ":Gcommit -v -q %:p<CR>")
		vim.keymap.set("n", "<leader>gb", ":Git blame<CR>")
		vim.keymap.set("n", "<leader>gbr", ":Git branch<Space>")
		vim.keymap.set("n", "<leader>go", ":Git checkout<Space>")
		vim.keymap.set("n", "<leader>gps", ":Dispatch! git push<CR>")
		vim.keymap.set("n", "<leader>gpl", ":Dispatch! git pull<CR>")
	end,
}
