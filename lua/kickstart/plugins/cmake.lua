return {
  'Civitasv/cmake-tools.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    require('cmake-tools').setup {
      cmake_soft_link_compile_commands = 1,
    }

    vim.keymap.set('n', '<leader>cg', '<Cmd>CMakeGenerate<CR>')
    vim.keymap.set('n', '<leader>cb', '<Cmd>CMakeBuild<CR>')
    vim.keymap.set('n', '<leader>cr', '<Cmd>CMakeRun<CR>')
  end,
}
