
-- supperior leader key
vim.g.mapleader = " "

vim.keymap.set("n", "<leader>fd", vim.cmd.Ex)

vim.keymap.set("n", "<A-w>", "yy")
vim.keymap.set({"x", "o"}, "<A-w>", "y")

vim.keymap.set("n", "<Space>so", ":so<CR>:PackerSync<CR>")

vim.keymap.set("n", "<C-_>", "u")

-- Additional Window utility
vim.keymap.set("n", "<leader>sv", "<C-w>v") -- split vertically
vim.keymap.set("n", "<leader>sh", "<C-w>s") -- split horizontally

vim.keymap.set("n", "<leader>sd", "<C-w>c") -- close split window

-- moves selected line (in visual mode) up or down (and format it)
vim.keymap.set("v", "<M-Up>", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "<M-Down>", ":m '>+1<CR>gv=gv")

-- moves line (in normal mode) up or down (and format it)
vim.keymap.set("n", "<M-Up>", ":m -2<CR>v=")
vim.keymap.set("n", "<M-Down>", ":m +1<CR>v=")

-- copy to register a and paste above or below current line 
vim.keymap.set("x", "<M-S-Up>", ":yank a<CR>\"aPV")
vim.keymap.set("x", "<M-S-Down>", ":yank a<CR>\"apV")
 
-- center screen 
vim.keymap.set({"n", "v", "x"}, "<C-l>", "zz")

-- indent/dedent through tabs
vim.keymap.set("x", "<Tab>", ">gv")
vim.keymap.set("x", "<S-Tab>", "<gv")
