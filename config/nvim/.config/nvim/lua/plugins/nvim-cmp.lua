return {
	"hrsh7th/nvim-cmp",
	event = "InsertEnter",
	dependencies = {
        "hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		-- luasnip
		"L3MON4D3/LuaSnip", -- snippet engine
		"saadparwaiz1/cmp_luasnip", -- for autocompletion
		"rafamadriz/friendly-snippets", -- snippets for many languages
		"onsails/lspkind.nvim", -- vs-code like pictograms
	},

	config = function()
		local cmp = require("cmp")
		local luasnip = require("luasnip")
		local lspkind = require("lspkind")
		require("luasnip.loaders.from_vscode").lazy_load()

        -- luasnip keymap for jumping between the snippet gaps
		vim.keymap.set({ "i", "s" }, "<C-L>", function()
			luasnip.jump(1)
		end, { silent = true })
		vim.keymap.set({ "i", "s" }, "<C-H>", function()
			luasnip.jump(-1)
		end, { silent = true })

		cmp.setup({
			window = {
				documentation = cmp.config.window.bordered({
					border = { "┌", "─", "┐", "│", "┘", "─", "└", "│" },
				}),
			},

			completion = {
				-- noselect if the first item should not get selected (visually)
				completeopt = "menu, menuone, noinsert, noselect",
			},

			snippet = {
				expand = function(args)
					luasnip.lsp_expand(args.body)
				end,
			},

			mapping = cmp.mapping.preset.insert({
				["<C-b>"] = cmp.mapping.scroll_docs(-4),
				["<C-f>"] = cmp.mapping.scroll_docs(4),
				["<C-Space>"] = cmp.mapping.complete(),
				["<C-e>"] = cmp.mapping.abort(),
				["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
			}),

			sources = cmp.config.sources({
				{ name = "nvim_lsp" },
				{ name = "luasnip" },
				{ name = "path" },
                { name = "buffer" },
			}),

			formatting = {
				format = lspkind.cmp_format({
					maxwidth = 50,
					ellipsis_char = "...",
				}),
			},
		})
	end,
}
