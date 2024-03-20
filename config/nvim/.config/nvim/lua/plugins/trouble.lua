return {
	"folke/trouble.nvim",
	config = function()
		require("trouble").setup({
			signs = {
				-- icons / text used for a diagnostic
				error = "",
				warning = "",
				hint = "",
				information = "",
				other = "",
			},
		})
		vim.keymap.set(
			"n",
			"<leader>ed",
			"<cmd>TroubleToggle document_diagnostics<cr>",
			{ silent = true, noremap = true }
		)

		vim.keymap.set(
			"n",
			"<leader>ew",
			"<cmd>TroubleToggle workspace_diagnostics<cr>",
			{ silent = true, noremap = true }
		)
	end,
}
