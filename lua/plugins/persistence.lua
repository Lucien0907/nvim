return {
  {
    "folke/persistence.nvim",
    event = "BufReadPre",
    opts = {},
    keys = {
      { "<leader>qs", false },
      { "<leader>Ss", function() require("persistence").load() end, desc = "Restore Session", },
      { "<leader>qS", false },
      { "<leader>SS", function() require("persistence").select() end, desc = "Select a session to load", },
      { "<leader>ql", false },
      { "<leader>Sl", function() require("persistence").load({ last = true }) end, desc = "Restore Last Session", },
      { "<leader>qd", false },
      { "<leader>Sd", function() require("persistence").stop() end, desc = "Don't Save Current Session", },
    },
  },
}
