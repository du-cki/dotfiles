require("pineapples.remap")
require("pineapples.packer")

vim.opt.foldlevel = 20
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- lets arrow keys wrap lines 
vim.opt.whichwrap:append { 
    ['<'] = true,
    ['<'] = true,
    [']'] = true,
    ['['] = true
}

-- Due to a bug in the GNOME DE, this is really buggy. Haven't got a solution
-- yet, so I'm displaying it for gnome DE. It'll still be enabled for cases
-- like SSH though. https://github.com/neovim/neovim/issues/9806
if os.getenv("DESKTOP_SESSION") ~= "gnome" then
    vim.g.netrw_browse_split = 0
    vim.g.netrw_banner = 0
    vim.g.netrw_winsize = 25
else
    vim.opt.clipboard = 'unnamedplus'
end
