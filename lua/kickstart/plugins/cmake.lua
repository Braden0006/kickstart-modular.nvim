return {
  'Civitasv/cmake-tools.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    require('cmake-tools').setup {
      cmake = {
        generator = 'Ninja',
      },
      cmake_build_directory = 'build',
      cmake_generate_options = { '-DCMAKE_EXPORT_COMPILE_COMMANDS=1' },
      cmake_kits_path = '',
    }

    vim.keymap.set('n', '<leader>cg', '<Cmd>CMakeGenerate<CR>')
    vim.keymap.set('n', '<leader>cb', '<Cmd>CMakeBuild<CR>')
    vim.keymap.set('n', '<leader>cr', '<Cmd>CMakeRun<CR>')
  end,
}
