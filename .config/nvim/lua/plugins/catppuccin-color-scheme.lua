return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    -- opts via object to override default fields and keep others
    opts = {
      flavour = "macchiato",
      integrations = {
        neotree = true,
        mason = true,
        gitsigns = true,
        telescope = true,
        leap = true,
        notify = true,
        noice = true,
        cmp = true,
        native_lsp = {
          enabled = true,
        },
        lsp_trouble = true,
        -- mini = true, -- breaks colored | indentation thingy
        navic = {
          enabled = true,
          custom_bg = "NONE",
        },
        which_key = true,
      },
    },
  },
  {
    "akinsho/bufferline.nvim",
    opts = {
      highlights = require("catppuccin.groups.integrations.bufferline").get(),
    },
  },
  --[[ Might not be necessary
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      opts.options.theme = "catppuccin"
    end,
  },
  ]]
  --
  {
    "LazyVim/LazyVim",
    -- opts via function to manually merge fields with defaults
    opts = function(_, opts)
      opts.colorscheme = "catppuccin"
    end,
  },
}
