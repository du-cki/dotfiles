-- supperior leader key
vim.g.mapleader = " "

local km = vim.keymap

km.set("n", "<leader>fd", vim.cmd.Ex)
km.set("n", "<leader>fp", function() vim.cmd.Ex('~/.config/nvim') end)

km.set("n", "<A-w>", "yy")
km.set({"x", "o"}, "<A-w>", "y")

km.set("n", "<Space>so", ":so<CR>:PackerSync<CR>")

km.set("n", "<C-_>", "u")

-- Additional Window utility
km.set("n", "<leader>sv", "<C-w>v") -- split vertically
km.set("n", "<leader>sh", "<C-w>s") -- split horizontally

km.set("n", "<leader>sd", "<C-w>c") -- close split window

-- moves selected line (in visual mode) up or down (and format it)
km.set("v", "<M-Up>", ":m '<-2<CR>gv=gv")
km.set("v", "<M-Down>", ":m '>+1<CR>gv=gv")

-- moves line (in normal mode) up or down (and format it)
km.set("n", "<M-Up>", ":m -2<CR>v=")
km.set("n", "<M-Down>", ":m +1<CR>v=")

-- copy to register a and paste above or below current line 
km.set("x", "<M-S-Up>", ":yank a<CR>\"aPV")
km.set("x", "<M-S-Down>", ":yank a<CR>\"apV")
 
-- center screen 
km.set({"n", "v", "x"}, "<C-l>", "zz")

-- indent/dedent through tabs
km.set("x", "<Tab>", ">gv")
km.set("x", "<S-Tab>", "<gv")
