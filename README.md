<h1 align=center>Personal Dotfiles</h1>

> My dotfiles are managed by [GNU Stow](https://www.gnu.org/software/stow/).

## Table of Content

1. [Overview](#overview)
2. [Neovim](#neovim)

## Things I Use <a name="overview"></a>
| Things I   | Use    |
|--------------- | --------------- |
| **OS**   | Linux (Arch)   |
| **WM**   | [Qtile](./config/qtile/.config/qtile/)   |
| **Terminal**   | [ Kitty ](./config/kitty/.config/kitty/kitty.conf)   |
| **Text Editor**   | [ Neovim ](./config/nvim/.config/nvim/)   |
| **Shell**   | [ Fish ](./config/fish/.config/fish/)   |
| **PDF Reader**   |  [ Zathura ](./config/zathura/.config/zathura/zathurarc)  |


## [Neovim](./config/nvim/.config/nvim/)  setup <a name="neovim"></a>
My Plugin manager of choice is [lazy.nvim](https://github.com/folke/lazy.nvim).
### 📦 Plugins
#### UI
- [bufferline.nvim](https://github.com/akinsho/bufferline.nvim) for nicer tabs
- [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
indent guides
- [kanagawa.nvim](https://github.com/rebelot/kanagawa.nvim) color scheme of
choice, precisely *kanagawa dragon*
- [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) statusline
- [nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons) icons

#### Coding
##### Autocompletion:
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) completion engine
    - [cmp-buffer](https://github.com/hrsh7th/cmp-buffer) for words in the buffer
    - [cmp-path](https://github.com/hrsh7th/cmp-path) for path completion
    - [cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
    nvim-cmp source for neovim's built-in language server client.
    - [cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip) luasnip completion source for nvim-cmp
    - [lspkind-nvim](https://github.com/onsails/lspkind.nvim) vscode-like pictograms

##### Snippets
- [LuaSnip](https://github.com/L3MON4D3/LuaSnip) snippet engine 
- [friendly-snippets](https://github.com/rafamadriz/friendly-snippets) snippets collection


##### LSP (Language Server Protocol):
- [mason.nvim](https://github.com/williamboman/mason.nvim)
easily install and manage LSP servers, DAP servers, linters, and formatters
- [mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)
mason-lspconfig bridges mason.nvim with the lspconfig plugin - making it easier to use both plugins together.
- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
configs for the Nvim LSP client

##### Formatting:
- [conform.nvim](https://github.com/stevearc/conform.nvim)
lightweight formatter

##### Extras:
- [Comment.nvim](https://github.com/numToStr/Comment.nvim) commenting plugin
    - [nvim-ts-context-commentstring](https://github.com/JoosepAlviste/nvim-ts-context-commentstring)
comment based on the cursor location in the file (jsx, tsx, etc.)
- [nvim-autopairs](https://github.com/windwp/nvim-autopairs?tab=readme-ov-file)
autopair for multiple characters
- [nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag)
use treesitter to autoclose and autorename html tag


#### Editor
- [harpoon](https://github.com/ThePrimeagen/harpoon)
switch easily between files by marking them
- [markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim)
preview Markdown files in the browser with synchronised scrolling
- [mini.surround](https://github.com/echasnovski/mini.surround)
add, delete, replace, find, highlight surrounding
- [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua) file explorer
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
provides a simple and easy way to use the interface for tree-sitter
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
fuzzy finder over lists
- [todo-comments.nvim](https://github.com/folke/todo-comments.nvim)
highlight your todo comments in different styles
- [toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim)
toggle terminal
- [trouble.nvim](https://github.com/folke/trouble.nvim) 
a pretty list for showing mainly diagnostics
- [undotree](https://github.com/mbbill/undotree)
makes it easy to browse and switch between different undo branches
- [vim-illuminate](https://github.com/RRethy/vim-illuminate) 
highlights other instances of the word the your cursor
- [vim-fugitive](https://github.com/tpope/vim-fugitive)
optimizes Git to its fullest potential.
- [vimtex](https://github.com/lervag/vimtex) lets you work nicely with LaTeX
- [zen-mode.nvim](https://github.com/folke/zen-mode.nvim) 
distraction-free coding, by hiding UI parts and centering text


####  🌠 Future Outlook
...

