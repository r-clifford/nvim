local cc = require("CopilotChat")
local ccmp = require("copilot.command")
return {
  {
    "zbirenbaum/copilot.lua",
    enabled = false,
    opts = {
      suggestion = {
        enabled = true,
        auto_trigger = true,
        hide_during_completion = true,
        keymap = {
          accept = "<M-a>",
          next = "<M-n>",
          prev = "<M-p>",
          dismiss = "<M-d>",
        },
      },
    },
    keys = {
      {
        "<leader>aT",
        function()
          ccmp.toggle()
        end,
        desc = "Toggle copilot cmp",
      },
    },
  },
  -- {
  --   "zbirenbaum/copilot-cmp",
  --   enabled = false,
  -- },
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    keys = {
      {
        "<leader>aM",
        function()
          cc.select_model()
        end,
        desc = "Select chat model",
      },
      {
        "<leader>aA",
        function()
          cc.select_agent()
        end,
        desc = "Select chat agent",
      },
    },
  },
}
