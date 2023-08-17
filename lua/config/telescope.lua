-- [[ Whick key to register keymaps]]
local wk = require 'which-key'


-- Neotree mappings
wk.register {
    ['<leader>o'] = { '<cmd>Neotree toggle<cr>', 'Toggle explorer' },
}

-- [[ Configure Telescope ]]
-- See `:help telescope` and `:help telescope.setup()`
require('telescope').setup {
    defaults = {
        mappings = {
            i = {
                ['<C-u>'] = false,
                ['<C-d>'] = false,
            },
        },
    },
}

-- Telescope mappings
local telescope_builtin = require('telescope.builtin')

wk.register {
    ['<leader>f'] = {
        name = '+find/files',
        n = { '<cmd>enew<cr>', 'New File' },
        f = { telescope_builtin.find_files, 'Find File' },
        r = { '<cmd>Telescope oldfiles<cr>', 'Open Recent File' },
        w = { telescope_builtin.live_grep, 'Live Grep String' },
        c = { telescope_builtin.grep_string, 'Find word under cursor' },
        h = { telescope_builtin.help_tags, 'Help Tags' },
        b = { telescope_builtin.buffers, 'Buffers' },
        d = { telescope_builtin.diagnostics, 'Diagnostics' },
        ['?'] = { telescope_builtin.oldfiles, 'Open Recent File' },
        ['/'] = {
            function()
                -- You can pass additional configuration to telescope to change theme, layout, etc.
                telescope_builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
                    winblend = 10,
                    previewer = false,
                })
            end,
            'Themes',
        },
    },
    ['<leader>g'] = {
        name = '+git',
        t = { telescope_builtin.git_status, 'Git Status' },
        b = { telescope_builtin.git_branches, 'Git Branches' },
        f = {
            telescope_builtin.git_files,
            'Search [G]it [F]iles',
        },
    },
}
