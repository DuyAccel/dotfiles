--- TREE VIM ---
return  {
  "nvim-tree/nvim-tree.lua",
  dependencies = "nvim-tree/nvim-web-devicons",
  lazy = false,
  config = function()
    local nvimtree = require("nvim-tree")

    -- recommended settings from nvim-tree documentation
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
    nvimtree.setup({
      filters = {
        custom = { ".DS_Store" },
      },
      git = {
        ignore = false,
      },
    })

  end
  }
