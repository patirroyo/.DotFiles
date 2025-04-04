require('options')
require('keybindings')
require('plugins')
if not vim.g.vscode then
require('blankline-config')
require('colorizer-config')
require('staline-config')
require('lsp')
require('lualine-config')
require('bufferline-config')
require('telescope-config')
require('octo-config')
require('dap-config')
require('dashboard-config')
require('terminal-config')
require("gitsigns-config")
require('nvim-tree-config')
require('lspsaga-config')
require('lua-dev-config')
require('null-ls-config')
require('trouble-config')
require('urlview-config')
require('mini-config')
require('nvim-lint-config')
require('devcontainer-config')
end
require('dial-config')
require('leap-config')
require('surround-config')

-- Automatically source and re-compile packer whenever you save this init.lua
local packer_group = vim.api.nvim_create_augroup('Packer', { clear = true })
vim.api.nvim_create_autocmd('BufWritePost', {
  command = 'source <afile> | PackerCompile',
  group = packer_group,
  pattern = vim.fn.expand '$MYVIMRC',
})

