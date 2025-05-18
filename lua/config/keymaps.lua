-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

map("n", "<Tab>", ":bnext<CR>", {desc = "Next Tab"})

map("n", "<S-Tab>", ":bprevious<CR>", { desc = "Prev Tab"})

-- Set a keymap to insert the text when a specific key is pressed
map('n', '<Leader>m', 'i/ᐠ˵- ⩊ -˵マ<Esc>', { noremap = true, silent = true })

