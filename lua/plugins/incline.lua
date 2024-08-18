return {
  "b0o/incline.nvim",
  name = "incline",
  dependencies = { "SmiteshP/nvim-navic", "nvim-tree/nvim-web-devicons" },
  config = function()
    require("incline").setup({
      window = {
        padding = 0,
        margin = { horizontal = 0 },
        overlap = {
          borders = true,
          statusline = false,
          tabline = false,
          winbar = true,
        },
        placement = {
          horizontal = "left",
          vertical = "top",
        },
      },
      render = function(props)
        local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t")
        local ft_icon, ft_color = require("nvim-web-devicons").get_icon_color(filename)
        local modified = vim.bo[props.buf].modified and "bold,italic" or "bold"

        local function get_git_diff()
          local icons = { removed = "", changed = "", added = "" }
          icons["changed"] = icons.modified
          local signs = vim.b[props.buf].gitsigns_status_dict
          local labels = {}
          if signs == nil then
            return labels
          end
          for name, icon in pairs(icons) do
            if tonumber(signs[name]) and signs[name] > 0 then
              table.insert(labels, { icon .. signs[name] .. " ", group = "Diff" .. name })
            end
          end
          if #labels > 0 then
            table.insert(labels, { " " })
          end
          return labels
        end
        local function get_diagnostic_label()
          local icons = { error = "", warn = "", info = "", hint = "" }
          local label = {}

          for severity, icon in pairs(icons) do
            local n = #vim.diagnostic.get(props.buf, { severity = vim.diagnostic.severity[string.upper(severity)] })
            if n > 0 then
              table.insert(label, { icon .. n .. " ", group = "DiagnosticSign" .. severity })
            end
          end
          if #label > 0 then
            table.insert(label, { " " })
          end
          return label
        end

        local fgcol = "#545c7e"
        local mod_icon = ""
        local fg_icon = "#545c7e"
        local mod = vim.bo[props.buf].modified
        if mod then
          fg_icon = "#ff9e64"
          mod_icon = " "
        end
        if props.focused then
          fgcol = "#ffffff"
          if mod then
            fgcol = "#ff9e64"
          end
        end

        local bgcol = props.focused and "#9d7cd8" or "#24283b"
        local buffer = {
          { " " .. vim.api.nvim_win_get_number(props.win) .. " ", guibg = bgcol },
          { " " .. (ft_icon or "") .. " ", guifg = ft_color, guibg = "#24283b" },
          { filename .. " ", gui = modified, guifg = fgcol, guibg = "#24283b" },

          { mod_icon, guifg = fg_icon, guibg = "#24283b" },
          { get_diagnostic_label(), guibg = "#24283b" },
          { get_git_diff(), guibg = "#24283b" },
        }
        return buffer
      end,
    })
  end,
}
