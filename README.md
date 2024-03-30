<h1 align=center>🧑‍💻️ Personal Dotfiles</h1>

> My dotfiles are managed by [GNU Stow](https://www.gnu.org/software/stow/).

## Table of Content

1. [Qtile](#qtile)
2. [Neovim](#neovim)

## [Qtile](./config/qtile/.config/qtile/)
🌠 Future Outlook

## [Neovim](./config/nvim/.config/nvim/)  setup <a name="neovim"></a>
My Plugin manager of choice is [lazy.nvim](https://github.com/folke/lazy.nvim).
### 📦 Plugins
#### UI
- [kanagawa.nvim](https://github.com/rebelot/kanagawa.nvim) color scheme of
choice, precisely *kanagawa dragon*
- [bufferline.nvim](https://github.com/akinsho/bufferline.nvim) for nicer tabs
- [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) statusline
- [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
indent guides
- [nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons) icons

#### Coding
##### Autocompletion:
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) completion engine
    - [cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
    nvim-cmp source for neovim's built-in language server client.
    - [cmp-buffer](https://github.com/hrsh7th/cmp-buffer) for words in the buffer
    - [cmp-path](https://github.com/hrsh7th/cmp-path) for path completion
    - [LuaSnip](https://github.com/L3MON4D3/LuaSnip) snippet engine 
    - [cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip) luasnip completion source for nvim-cmp
    - [friendly-snippets](https://github.com/rafamadriz/friendly-snippets) snippets collection
    - [lspkind-nvim](https://github.com/onsails/lspkind.nvim) vscode-like pictograms

##### LSP:
- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
configs for the Nvim LSP client
- [mason.nvim](https://github.com/williamboman/mason.nvim)
easily install and manage LSP servers, DAP servers, linters, and formatters
- [mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)
mason-lspconfig bridges mason.nvim with the lspconfig plugin - making it easier to use both plugins together.

##### Formatting:
- [conform.nvim](https://github.com/stevearc/conform.nvim)
lightweight formatter

##### Extras:
- [nvim-autopairs](https://github.com/windwp/nvim-autopairs?tab=readme-ov-file)
autopair for multiple characters
- [nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag)
use treesitter to autoclose and autorename html tag
- [Comment.nvim](https://github.com/numToStr/Comment.nvim) commenting plugin


#### Editor
- [vim-fugitive](https://github.com/tpope/vim-fugitive)
optimizes Git to its fullest potential.
- [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua) file explorer
- [vim-illuminate](https://github.com/RRethy/vim-illuminate) 
highlights other instances of the word the your cursor
- [trouble.nvim](https://github.com/folke/trouble.nvim) 
a pretty list for showing mainly diagnostics
- [todo-comments.nvim](https://github.com/folke/todo-comments.nvim)
highlight your todo comments in different styles
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) fuzzy finder over lists
- [undotree](https://github.com/mbbill/undotree)
makes it easy to browse and switch between different undo branches
- [harpoon](https://github.com/ThePrimeagen/harpoon)
switch easily between files by marking them
- [zen-mode.nvim](https://github.com/folke/zen-mode.nvim) 
distraction-free coding, by hiding UI parts and centering text
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
provides a simple and easy way to use the interface for tree-sitter
- [toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim)
toggle terminal
- [markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim)
preview Markdown files in the browser with synchronised scrolling
- [vimtex](https://github.com/lervag/vimtex) lets you work nicely with LaTeX


####  🌠 Future Outlook
...

