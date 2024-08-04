return {
  {
    "folke/persistence.nvim",
    event = "BufReadPre",
    opts = {
      {
        dir = vim.fn.stdpath("state") .. "/sessions/", -- directory where session files are saved
        -- minimum number of file buffers that need to be open to save
        -- Set to 0 to always save
        need = 99,
        branch = false, -- use git branch to save session
      },
    },
    keys = {
      {
        "<leader>Sw",
        function()
          require("persistence").save()
        end,
        desc = "Save current session"
      },
      { "<leader>qs", false },
      -- {
      --   "<leader>Ss",
      --   function()
      --     require("persistence").load()
      --   end,
      --   desc = "Restore Session",
      -- },
      { "<leader>qS", false },
      {
        "<leader>SS",
        function()
          require("persistence").select()
        end,
        desc = "Select a session to load",
      },
      { "<leader>ql", false },
      -- {
      --   "<leader>Sl",
      --   function()
      --     require("persistence").load({ last = true })
      --   end,
      --   desc = "Restore Last Session",
      -- },
      { "<leader>qd", false },
      -- {
      --   "<leader>Sd",
      --   function()
      --     require("persistence").stop()
      --   end,
      --   desc = "Don't Save Current Session",
      -- },
    },
  },
}
