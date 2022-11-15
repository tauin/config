vim.opt.clipboard:append("unnamedplus")
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.scrolloff = 8
vim.g.mapleader = " "
vim.opt.modeline = false
--[[
Modeline is a BIG NO NO, if you want user level
configuration of vim use something like editorconfig.
Modeline has caused secuirty issues in the past:
https://github.com/numirias/security/blob/master/doc/2019-06-04_ace-vim-neovim.md

(Plus I also just think the idea of adding lines to your code
for one text editor is dumb, USE. EDITOR. CONFIG)
]]--
