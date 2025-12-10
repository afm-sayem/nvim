-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }

map("n", ";", ":", {})
map("i", "<C-c>", "<esc>", default_opts)
map("n", "<C-c>", "<esc>", default_opts)

-- buffer management
map("n", "<leader>n", "<C-^>", default_opts)
map("n", "<leader>x", ":bd", default_opts)

-- paste
map("n", "<leader>p", '"_dP', default_opts)

-- telescope
map("n", "<leader>o", ":FzfLua files<CR>", default_opts)
map("n", "<leader>l", ":FzfLua<CR>", default_opts)

-- overseer
map("n", "<leader>r", ":CompilerOpen <CR>", default_opts)

--lsp
map("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", default_opts)

-- trouble
map("n", "<leader>t", "<cmd>Trouble diagnostics<cr>", { silent = true, noremap = true })
