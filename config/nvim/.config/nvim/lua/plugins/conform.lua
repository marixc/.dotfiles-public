return {
	-- formatter
	"stevearc/conform.nvim",
	opts = {},
	config = function()
		local conform = require("conform")
		conform.setup({
			formatters_by_ft = {
				lua = { "stylua" },
				-- Conform will run multiple formatters sequentially
				python = { "isort", "black" },
				-- Use a sub-list to run only the first available formatter
				javascript = { { "prettierd", "prettier" } },
			},

			vim.keymap.set("n", "<leader>df", function()
				conform.format({
					timeout_ms = 500,
					lsp_fallback = true,
				})
			end),
		})
	end,
}
