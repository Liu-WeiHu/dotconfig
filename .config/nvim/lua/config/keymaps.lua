-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- 使用黑洞寄存器配置 s, S, c, C 命令
vim.keymap.set("n", "d", '"_d', { noremap = true, silent = true })
vim.keymap.set("n", "D", '"_D', { noremap = true, silent = true })
vim.keymap.set("n", "c", '"_c', { noremap = true, silent = true })
vim.keymap.set("n", "C", '"_C', { noremap = true, silent = true })

-- 处理可视模式下的情况
vim.keymap.set("v", "d", '"_d', { noremap = true, silent = true })
vim.keymap.set("v", "D", '"_D', { noremap = true, silent = true })
vim.keymap.set("v", "c", '"_c', { noremap = true, silent = true })
vim.keymap.set("v", "C", '"_C', { noremap = true, silent = true })

-- 映射 插入模式下上下左右移动光标
vim.keymap.set("i", "<A-h>", "<Left>", { noremap = true, silent = true })
vim.keymap.set("i", "<A-j>", "<Down>", { noremap = true, silent = true })
vim.keymap.set("i", "<A-k>", "<Up>", { noremap = true, silent = true })
vim.keymap.set("i", "<A-l>", "<Right>", { noremap = true, silent = true })
