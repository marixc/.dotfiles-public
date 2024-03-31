return {
	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },

		--NOTE: todo-comments.nvim hides the neovim intro because it redraws the buffer. Event
		-- VimEnter fixes that.
		event = "VimEnter", -- Trigger setup after VimEnter event
		config = function()
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
