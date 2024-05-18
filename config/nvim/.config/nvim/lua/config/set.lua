vim.opt.cursorline = true
vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

-- transparency
vim.opt.pumblend = 8

vim.g.mapleader = " "

-- lang. setup
vim.opt.spelllang = "en_us,de_de"
vim.opt.spell = false

vim.api.nvim_create_user_command("SpellEnable", function()
    vim.opt.spell = true
end, {
    desc = "SpellEnable",
})

vim.api.nvim_create_user_command("SpellDisable", function()
    vim.opt.spell = false
end, {
    desc = "SpellDisable",
})
