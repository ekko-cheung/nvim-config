return {
  "saghen/blink.cmp",
  opts = {
    keymap = {
      preset = "enter", -- Enter 确认选中项
      ["<Tab>"] = { "select_next", "snippet_forward", "fallback" },
      ["<S-Tab>"] = { "select_prev", "snippet_backward", "fallback" },
    },
  },
}
