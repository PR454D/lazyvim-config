-- using lazy.nvim
return {
  "S1M0N38/love2d.nvim",
  event = "VeryLazy",
  opts = {},
  keys = {
    { "<leader>V", ft = "lua", desc = "LÖVE" },
    { "<leader>Vv", "<cmd>LoveRun<cr>", ft = "lua", desc = "Run LÖVE" },
    { "<leader>Vs", "<cmd>LoveStop<cr>", ft = "lua", desc = "Stop LÖVE" },
  },
}
