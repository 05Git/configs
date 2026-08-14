vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Netrw
vim.g.netrw_liststyle = 3 -- tree-style netrw dir listing
vim.g.netrw_altv = true -- open new panes on the right
vim.g.netrw_alto = true -- open new panes below the current one
vim.g.netrw_winsize = 75 -- New window takes up 75% of buffer screen space

vim.opt.number = true -- absolute numbers
vim.opt.relativenumber = true -- relative numbers
vim.opt.numberwidth = 4 -- room for 4 digits in the gutter

vim.opt.tabstop = 4 -- <tab> displays as 4 spaces
vim.opt.shiftwidth = 4 -- auto-indent to 4 spaces
vim.opt.softtabstop = 4 -- spaces inserted/removed per <tab>/<bs>
vim.opt.expandtab = true -- convert tabs to spaces

vim.opt.scrolloff = 8 -- minimum 8 lines above/below cursor
