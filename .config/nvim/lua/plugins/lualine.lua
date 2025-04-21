return {
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      -- 修改 lualine_c 部分，显示完整路径
      opts.sections.lualine_c = {
        {
          "filename",
          path = 1, -- 0: 仅文件名, 1: 完整路径, 2: 相对路径, 3: 缩短的相对路径
          shorting_target = 40, -- 可选，控制路径缩短的长度
        },
      }
    end,
  },
}
