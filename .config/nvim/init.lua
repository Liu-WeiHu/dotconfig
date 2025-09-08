-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- 设置 Tab 键为 4 格缩进
vim.opt.tabstop = 4 -- 设置 Tab 键的宽度为 4
vim.opt.softtabstop = 4 -- 设定插入模式下的 Tab 键宽度
vim.opt.shiftwidth = 4 -- 设置自动缩进时的缩进宽度
vim.opt.autoread = true -- 热重载
vim.opt.diffopt:append("vertical") -- 使用:diffsplit 命令时垂直分割窗口 ]c [c 上/下一个差异 do dp 使用我/他的

-- 在你的 init.lua 或相关配置文件中
vim.keymap.set('n', 'za', function()
  vim.fn.VSCodeNotify('editor.toggleFold')
end)
