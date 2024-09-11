return {
  "b0o/incline.nvim",
  name = "incline",
  enabled = false,
  dependencies = { "SmiteshP/nvim-navic", "nvim-tree/nvim-web-devicons" },
  config = function()
    require("incline").setup({
      window = {
        padding = 0,
        margin = { horizontal = 50 },
        overlap = {
          borders = true,
          statusline = true,
          tabline = true,
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
          local icons = { removed = " ", changed = " ", added = " " }
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
          local icons = { error = "", warn = " ", info = " ", hint = "" }
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
        local dragon_colors = require("kanagawa.colors").setup({ theme = 'dragon'})
        local bgcol_norm = dragon_colors.palette.dragonBlack0
        local bgcol_focus = dragon_colors.palette.dragonBlack4
        local bgcol = props.focused and bgcol_focus or bgcol_norm
        local bgcol_nwin = props.focused and '#9d7cd8' or bgcol

        local buffer = {
          -- { " " .. vim.api.nvim_win_get_number(props.win) .. " ", guibg = bgcol_nwin },
          -- { " " .. (ft_icon or "") .. " ", guifg = ft_color, guibg = bgcol },
          -- { filename .. "      ", gui = modified, guifg = fgcol, guibg = bgcol },
          --
          -- { mod_icon, guifg = fg_icon, guibg = bgcol },
          -- { get_diagnostic_label(), guibg = bgcol },
          -- { get_git_diff(), guibg = bgcol },
        }
        return buffer
      end,
    })
  end,
}
