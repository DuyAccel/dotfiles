return {
  'MeanderingProgrammer/render-markdown.nvim',
  lazy= false,

  dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' },
  opts = function ()
    require('render-markdown').setup({
    file_types = {'markdown', 'quatro'}
  })
  end
}


