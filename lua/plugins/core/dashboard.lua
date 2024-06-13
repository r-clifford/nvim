return {
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    opts = function(_, opts)
      local logo = [[
 _    __ _____  ______            __    
| |  / // ___/ / ____/____   ____/ /___ 
| | / / \__ \ / /    / __ \ / __  // _ \
| |/ / ___/ // /___ / /_/ // /_/ //  __/
|___/ /____/ \____/ \____/ \__,_/ \___/ 
                                             
            ]]

      logo = string.rep("\n", 8) .. logo .. "\n\n"
      opts.config.header = vim.split(logo, "\n")
      opts.theme = "doom"
    end,
  },
}
