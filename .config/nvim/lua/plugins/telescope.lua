return {
  "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = function()
    require("telescope").setup {
      pickers = {
        file_ignore_patterns={
          ".git",
          ".cache",
        },
        find_files = {
          hidden = true,
        },
        grep_string = {
          additional_args = {
            "--hidden",
          },
        },
        live_grep = {
          additional_args = {
            "--hidden",
          },
        },
      },
    }
  end,
}
