return {
  'Civitasv/cmake-tools.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    require('cmake-tools').setup {
      cmake_soft_link_compile_commands = 1,
    }
  end,
}
