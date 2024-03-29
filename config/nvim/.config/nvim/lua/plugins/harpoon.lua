return {
	"ThePrimeagen/harpoon",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		local mark = require("harpoon.mark")
		local ui = require("harpoon.ui")

		vim.keymap.set("n", "<leader>a", mark.add_file)
		vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

		vim.keymap.set("n", "<leader>1", function()
			ui.nav_file(1)
		end)
		vim.keymap.set("n", "<leader>2", function()
			ui.nav_file(2)
		end)
		vim.keymap.set("n", "<leader>3", function()
			ui.nav_file(3)
		end)
		vim.keymap.set("n", "<leader>4", function()
			ui.nav_file(4)
		end)
		vim.keymap.set("n", "<leader>5", function()
			ui.nav_file(5)
		end)

		-- for faster accs.
		vim.keymap.set("n", "sy", function()
			ui.nav_file(1)
		end)
		vim.keymap.set("n", "su", function()
			ui.nav_file(2)
		end)
		vim.keymap.set("n", "si", function()
			ui.nav_file(3)
		end)
		vim.keymap.set("n", "so", function()
			ui.nav_file(4)
		end)
		vim.keymap.set("n", "sp", function()
			ui.nav_file(5)
		end)
	end,
}
