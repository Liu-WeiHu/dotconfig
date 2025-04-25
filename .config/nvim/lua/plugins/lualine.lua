return {
  "nvim-lualine/lualine.nvim",
  opts = function(_, opts)
    local compon = {
      "filename",
      path = 3,
    }
    opts.sections.lualine_c[1] = compon
    return opts
  end,
}
