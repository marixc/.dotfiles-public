return {
	"RRethy/vim-illuminate",
	config = function()
		require("illuminate").configure({
			under_cursor = false,
		})

		vim.api.nvim_set_hl(0, "IlluminatedWordText", { link = "Visual" })
		vim.api.nvim_set_hl(0, "IlluminatedWordRead", { link = "Visual" })
		vim.api.nvim_set_hl(0, "IlluminatedWordWrite", { link = "Visual" })

		-- Auto update the highlight style on colorscheme change
		vim.api.nvim_create_autocmd({ "ColorScheme" }, {
			pattern = { "*" },
			callback = function(ev)
				vim.api.nvim_set_hl(0, "IlluminatedWordText", { link = "Visual" })
				vim.api.nvim_set_hl(0, "IlluminatedWordRead", { link = "Visual" })
				vim.api.nvim_set_hl(0, "IlluminatedWordWrite", { link = "Visual" })
			end,
		})
	end,
}
