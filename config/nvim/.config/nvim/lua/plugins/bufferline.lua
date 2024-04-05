return {
	{
		"akinsho/bufferline.nvim",
		requires = { "nvim-web-devicons" },
		config = function()
			local bufferline = require("bufferline")
			bufferline.setup({
				options = {
					mode = "tabs",
					style_preset = {},
					hover = {
						enabled = true,
						delay = 200,
						reveal = { "close" },
					},
					always_show_bufferline = false,
				},
			})
			-- Define key mappings using Vimscript
			vim.keymap.set("", "sbn", ":BufferLineCycleNext<CR>", { noremap = true, silent = true })
			vim.keymap.set("", "sbp", ":BufferLineCyclePrev<CR>", { noremap = true, silent = true })
		end,
	},
}
