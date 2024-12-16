return {
  "jake-stewart/multicursor.nvim",
  enabled = true,
  branch = "1.0",
  config = function()
    local mc = require("multicursor-nvim")

    mc.setup()

    local set = vim.keymap.set

    -- Add or skip cursor above/below the main cursor.
    set({ "n", "v" }, "<leader><up>", function()
      mc.lineAddCursor(-1)
    end)
    set({ "n", "v" }, "<leader><down>", function()
      mc.lineAddCursor(1)
    end)

    -- Add and remove cursors with control + left click.
    set("n", "<c-leftmouse>", mc.handleMouse)

    -- Easy way to add and remove cursors using the main cursor.
    set({ "n", "v" }, "<c-q>", mc.toggleCursor)

    set("n", "<esc>", function()
      if not mc.cursorsEnabled() then
        mc.enableCursors()
      elseif mc.hasCursors() then
        mc.clearCursors()
      else
        -- Default <esc> handler.
      end
    end)

    -- Append/insert for each line of visual selections.
    set("v", "I", mc.insertVisual)
    set("v", "A", mc.appendVisual)

    -- Customize how cursors look.
    local hl = vim.api.nvim_set_hl
    hl(0, "MultiCursorCursor", { link = "Cursor" })
    hl(0, "MultiCursorVisual", { link = "Visual" })
    hl(0, "MultiCursorSign", { link = "SignColumn" })
    hl(0, "MultiCursorDisabledCursor", { link = "Visual" })
    hl(0, "MultiCursorDisabledVisual", { link = "Visual" })
    hl(0, "MultiCursorDisabledSign", { link = "SignColumn" })
  end,
}
