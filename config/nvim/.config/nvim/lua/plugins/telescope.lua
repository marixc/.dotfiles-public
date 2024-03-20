return {
	{ -- fuzy finder
		"nvim-telescope/telescope.nvim",
		tag = "0.1.2",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local builtin = require("telescope.builtin")

			-- vim.keymap.set('n', 'sf', builtin.find_files, {})
			vim.keymap.set("n", "<leader>.", builtin.find_files, {})

			vim.keymap.set("n", "<leader>ps", function()
				builtin.grep_string({ search = vim.fn.input("Grep > ") })
			end)

			vim.keymap.set("n", ";e", function()
				builtin.diagnostics()
			end)

			vim.keymap.set("n", "sf", function()
				builtin.find_files()
			end)

			vim.keymap.set("n", "sa", function()
				builtin.live_grep()
			end)

			vim.keymap.set("n", "<leader>rr", function()
				builtin.lsp_references()
			end)

			vim.keymap.set("n", "<leader>gc", function()
				builtin.git_commits()
			end)

			vim.keymap.set("n", "<leader>gb", function()
				builtin.git_branches()
			end)

			vim.keymap.set("n", "<leader>gs", function()
				builtin.git_status()
			end)

			vim.keymap.set("n", "sd", function()
				builtin.current_buffer_fuzzy_find()
			end)

			vim.keymap.set("n", ";b", function()
				builtin.buffers()
			end)

			vim.keymap.set("n", ";;", function()
				builtin.help_tags()
			end)
		end,
	},
}
