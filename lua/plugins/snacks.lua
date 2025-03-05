local custom_header = [[
    ████                   ████    
   ██▒▒▒▒██              ██▒▒▒▒██  
   ██▒▒▒▒▒▒██          ██▒▒▒▒▒▒██  
   ██▒▒▒▒▒▒▒▒██████████▒▒▒▒▒▒▒▒██  
   ██▒▒▒▒▒▒▒▒▓▓▓▓▓▓▓▓▓▓▒▒▒▒▒▒▒▒██  
 ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██
 ██████████████████████████████████
 ████  ██  ██████▒▒██  ██  ████████
 ██▒▒██  ██████▒▒██▒▒██  ██████░░██
 ██▒▒░░██████▒▒▒▒▒▒▒▒▒▒██████░░░░██
 ██▒▒░░░░░░▒▒▒▒▒▒██▒▒▒▒▒▒▒▒░░░░░░██
   ██▒▒▒▒▒▒▒▒▒▒██████▒▒▒▒▒▒▒▒▒▒██  
     ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██    

███╗   ███╗███████╗ ██████╗ ██╗    ██╗██╗   ██╗██╗███╗   ███╗
████╗ ████║██╔════╝██╔═══██╗██║    ██║██║   ██║██║████╗ ████║
██╔████╔██║█████╗  ██║   ██║██║ █╗ ██║██║   ██║██║██╔████╔██║
██║╚██╔╝██║██╔══╝  ██║   ██║██║███╗██║╚██╗ ██╔╝██║██║╚██╔╝██║
██║ ╚═╝ ██║███████╗╚██████╔╝╚███╔███╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
╚═╝     ╚═╝╚══════╝ ╚═════╝  ╚══╝╚══╝   ╚═══╝  ╚═╝╚═╝     ╚═╝]]
return {
  -- lazy.nvim
  {
    "folke/snacks.nvim",
    keys = {
      {
        "<leader>h",
        function()
          Snacks.dashboard.open()
        end,
        desc = "Homepage",
      },
    },
    opts = {
      explorer = {},
      image = {},
      picker = {},
      dashboard = {
        preset = {
          header = custom_header,
          keys = {
            { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
            -- { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
            {
              icon = " ",
              key = "c",
              desc = "Config",
              action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})",
            },
            -- { icon = " ", key = "s", desc = "Sessions", action = ":lua require('session_manager').load_session(false)" },
            { icon = "󰒲 ", key = "L", desc = "Lazy", action = ":Lazy", enabled = package.loaded.lazy ~= nil },
            { icon = " ", key = "q", desc = "Quit", action = ":qa" },
          },
        },
        sections = {
          { section = "header" },
          { icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1, limit = 10 },
          { icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 1 },
          { section = "keys", gap = 1, padding = 1 },
          { section = "startup" },
        },
      },
    },
  },
}
