return -- lazy.nvim
{
  "folke/snacks.nvim",
  ---@type snacks.Config
  opts = {
    dim = {
      scope = {
        min_size = 5,
        max_size = 20,
        siblings = true,
        treesitter = {
          enabled = false,
        },
      },
    },
    scroll = {},
    animate = {
      -- your animate configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
      fps = 240,
      duration = {
        step = 1,
      },
    },
    -- @class snacks.indent.Config
    indent = {
      enabled = true,
      priority = 200,
      indent = {
        priority = 200,
        only_scope = false,
      },
      scope = {
        enabled = true,
        priority = 200,
        underline = true,
      },
    },
  },
}
