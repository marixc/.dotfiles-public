local keymap = vim.keymap

vim.g.mapleader = " "
keymap.set("n", "<leader>,", vim.cmd.Ex)
keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- move code blocks around
keymap.set("v", "K", ":m '<-2<CR>gv=gv") -- move code blocks around

keymap.set("n", "J", "mzJ`z") -- pull lines back with cursor at beginning
keymap.set("n", "<C-d>", "<C-d>zz") -- line jumping with stable cursor
keymap.set("n", "<C-u>", "<C-u>zz") -- line jumping with stable cursor

keymap.set("x", "<leader>p", [["_dP]]) -- paste over without loosing current content

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- New tab
keymap.set("n", "te", ":tabedit")

-- for copying
keymap.set({ "n", "v" }, "<leader>y", [["+y]])
keymap.set("n", "<leader>Y", [["+Y]])

keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]]) -- for word deleting

keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true }) -- make files executable

-- Split window
keymap.set("n", "ss", ":split<Return><C-w>w")
keymap.set("n", "sv", ":vsplit<Return><C-w>w")
-- Move window
keymap.set("n", "<Space>", "<C-w>w")
keymap.set("", "sh", "<C-w>h")
keymap.set("", "sk", "<C-w>k")
keymap.set("", "sj", "<C-w>j")
keymap.set("", "sl", "<C-w>l")

keymap.set("", "<leader>h", "<C-w>h")
keymap.set("", "<leader>k", "<C-w>k")
keymap.set("", "<leader>j", "<C-w>j")
keymap.set("", "<leader>l", "<C-w>l")

-- Resize window
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w>>")
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w><down>", "<C-w>-")

-- For saving and closing
keymap.set("n", "<leader>w", ":w<CR>")
keymap.set("n", "<leader>q", ":q<CR>")
