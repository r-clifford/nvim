local cc = require("CopilotChat")
local ccmp = require("copilot.command")
return {
  {
    "zbirenbaum/copilot.lua",
    opts = {
      suggestion = { enabled = false, auto_trigger = false },
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
