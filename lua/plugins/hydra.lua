return {
  {
    "nvimtools/hydra.nvim",
    init = function()
      local Hydra = require("hydra")
      local dap = require("dap")

      Hydra({
        name = "Debug keymap (mode)",
        mode = { "n", "v" },
        body = "<leader>dm",
        config = {
          color = "pink",
        },
        heads = {
          {
            "c",
            function()
              dap.continue()
            end,
            { desc = "Continue (F5)" },
          },
          {
            "s",
            function()
              dap.step_into()
            end,
            { desc = "Step into (F6)" },
          },
          {
            "n",
            function()
              dap.step_over()
            end,
            { desc = "Step over (F7)" },
          },
          {
            "o",
            function()
              dap.step_out()
            end,
            { desc = "Step out (F8)" },
          },
          {
            "bb",
            function()
              dap.toggle_breakpoint()
            end,
            { desc = "Toggle breakpoint" },
          },
          {
            "bB",
            function()
              dap.toggle_breakpoint(vim.fn.input("Breakpoint condition: "), nil, nil, true)
            end,
            { desc = "Toggle breakpoint" },
          },
          {
            "B",
            function()
              dap.step_back()
            end,
            { desc = "Step back (F9)" },
          },
          {
            "p",
            function()
              dap.pause()
            end,
            { desc = "Pause (F10)" },
          },
          {
            "t",
            function()
              dap.terminate()
            end,
            { desc = "Terminate (F11)" },
          },
          {
            "C",
            function()
              dap.run_to_cursor()
            end,
            { desc = "Run to Cursor" },
          },
          {
            "r",
            function()
              dap.restart()
            end,
            { desc = "Restart session" },
          },
        },
      })
    end,
  },
}
