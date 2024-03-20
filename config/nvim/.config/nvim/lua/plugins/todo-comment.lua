return {
	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
            --NOTE: Hides the default neovim disp.??
			require("todo-comments").setup({
				keywords = {
					TODO = { icon = " ", color = "info" },
					HACK = { icon = "󰈸 ", color = "warning" },
					WARN = { icon = " ", color = "warning", alt = { "WARNING", "XXX" } },
					PERF = { icon = " ", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
					NOTE = { icon = "󰍨 ", color = "hint", alt = { "INFO" } },
					TEST = { icon = "󰙨 ", color = "test", alt = { "TESTING", "PASSED", "FAILED" } },
				},
			})
		end,
	},
	vim.keymap.set("n", "st", ":TodoTelescope<CR>"),
}
