return {
  "nvim-lualine/lualine.nvim",
  opts = function(_, opts)
    -- 在右侧状态栏末尾追加文件编码
    table.insert(opts.sections.lualine_x, { "encoding" })
  end,
}
