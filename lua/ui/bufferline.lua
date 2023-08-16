return {'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons', 
keys = {
    { "<S-h>", "<cmd>BufferLineCyclePrev<cr>", { desc = "Prev buffer" }},
    { "<S-l>", "<cmd>BufferLineCycleNext<cr>", { desc = "Next buffer" }},
    { "[b", "<cmd>BufferLineCyclePrev<cr>", { desc = "Prev buffer" }},
    { "]b", "<cmd>BufferLineCycleNext<cr>", { desc = "Next buffer" }},

},
 opts = {
      options = {
        diagnostics = "nvim_lsp",
        always_show_bufferline = false,
        offsets = {
          {
            filetype = "neo-tree",
            text = "Neo-tree",
            highlight = "Directory",
            text_align = "left",
          },
        },
      },
    },
}
