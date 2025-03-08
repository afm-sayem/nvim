-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
--
local cmd = vim.cmd

-- remove whitespace on save
cmd([[au BufWritePre * :%s/\s\+$//e]])

-- don't auto commenting new lines
cmd([[au BufEnter * set fo-=c fo-=r fo-=o]])

-- ain files are toml files
cmd([[au BufReadPost *.ain set syntax=toml]])

-- register eta files for parsing
vim.treesitter.language.register("embedded_template", "eta") -- the someft filetype will use the python parser and queries.
