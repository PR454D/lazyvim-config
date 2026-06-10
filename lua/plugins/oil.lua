return {
  "stevearc/oil.nvim",
  ---@module 'oil'
  opts = {
    default_file_explorer = true,
    columns = {
      "icon",
      "permissions",
      "size",
      "mtime",
    },
    view_options = {
      show_hidden = true,
    },
    float = {
      padding = 2,
      max_height = 0.9,
      max_width = 0.8,
      preview_split = "right",
    },
  },
  lazy = false,
}
