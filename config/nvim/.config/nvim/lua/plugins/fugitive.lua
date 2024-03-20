return {
	"tpope/vim-fugitive",
	config = function()
		vim.keymap.set("n", "<leader>gg", ":tab Git<CR>")
		vim.api.nvim_set_keymap("n", "<leader>gp", ":Git push<CR>", { noremap = true, silent = true })
		vim.api.nvim_set_keymap("n", "<leader>gP", ":Git pull<CR>", { noremap = true, silent = true })
	end,
}
