return {
	"lukas-reineke/indent-blankline.nvim",
	config = function()
		local hooks = require("ibl.hooks")

        -- local scope = "focus"
        local indent = "passive"
		hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
			vim.api.nvim_set_hl(0, "focus", { fg = "#7486bd" })
			vim.api.nvim_set_hl(0, "passive", { fg = "#2F2F38" })
		end)
		require("ibl").setup({
			enabled = true,
			scope = {
				enabled = false,
				show_start = false,
				show_end = false,
			},
            	indent = { highlight = indent },
			exclude = {
				filetypes = {
					"lspinfo",
					"packer",
					"checkhealth",
					"help",
					"man",
					"gitcommit",
					"TelescopePrompt",
					"TelescopeResults",
					"",
				},
				buftypes = { "terminal", "nofile", "quickfix", "prompt" },
			},
		})
	end,
}
