return {
  "mikavilpas/yazi.nvim",
  event = "VeryLazy",
  dependencies = {
    -- check the installation instructions at
    -- https://github.com/folke/snacks.nvim
    "folke/snacks.nvim",
  },
  keys = {
    -- 👇 in this section, choose your own keymappings!
    {
      "<leader>n",
      mode = { "n", "v" },
      "<cmd>Yazi<cr>",
      desc = "Open yazi at the current file",
    },
    {
      -- Open in the current working directory
      "<leader>cw",
      "<cmd>Yazi cwd<cr>",
      desc = "Open the file manager in nvim's working directory",
    },
    {
      "<c-up>",
      "<cmd>Yazi toggle<cr>",
      desc = "Resume the last yazi session",
    },
  },
  ---@type YaziConfig | {}
  opts = {
    -- if you want to open yazi instead of netrw, see below for more info
    open_for_directories = false,
    keymaps = {
      show_help = "<f1>",
    },
  },
  -- 👇 if you use `open_for_directories=true`, this is recommended
  init = function()
    -- More details: https://github.com/mikavilpas/yazi.nvim/issues/802
    -- vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
  end,
}

-- <f1>: show the help menu
-- <f1> : 显示帮助菜单
-- <c-v>: open the selected file(s) in vertical splits
-- <c-v> : 以垂直分割方式打开选定的文件
-- <c-x>: open the selected file(s) in horizontal splits
-- <c-x> : 以水平分割方式打开选定的文件
-- <c-t>: open the selected file(s) in new tabs
-- <c-t> : 在新选项卡中打开选定的文件
-- <c-q>: send the selected file(s) to the quickfix list
-- <c-q> : 将选定的文件发送到快速修复列表
