-- gopls 已在系统中预装，不让 Mason 重复安装
return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        gopls = { mason = false },
      },
    },
  },
}
