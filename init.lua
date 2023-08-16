-- [[ default settings ]]
require 'config.options'

-- [[ keymaps ]]
require 'config.keymaps'

-- [[ Package manager]]
require 'config.lazy'

-- [[ Setup lazy packages]]
require 'config.setup'

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})


