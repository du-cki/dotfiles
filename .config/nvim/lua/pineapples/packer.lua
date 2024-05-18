vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use('wbthomason/packer.nvim')

  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })

  use('tpope/vim-fugitive')

  use('mbbill/undotree')

  use('Eandrju/cellular-automaton.nvim')

  -- themes
  use('rose-pine/neovim')
  use('akinsho/horizon.nvim')
end)

