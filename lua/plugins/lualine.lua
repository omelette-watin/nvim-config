---@diagnostic disable: undefined-field
return {
  {
    "nvim-lualine/lualine.nvim",
    opts = function()
      local icons = require("lazyvim.config").icons
      local Util = require("lazyvim.util")

      return {
        options = {
          section_separators = "",
          component_separators = "",
          globalstatus = false,
          disabled_filetypes = { statusline = { "neo-tree" } },
        },
        sections = {
          lualine_a = {
            {
              "buffers",
              use_mode_colors = true,
              symbols = {
                alternate_file = "",
              },
              max_length = vim.o.columns * 2 / 5,
            },
          },
          lualine_b = {
            {
              "branch",
            },
            {
              "diff",
              symbols = {
                added = icons.git.added,
                modified = icons.git.modified,
                removed = icons.git.removed,
              },
            },
          },
          lualine_c = {
            {
              "diagnostics",
              symbols = {
                error = icons.diagnostics.Error,
                warn = icons.diagnostics.Warn,
                info = icons.diagnostics.Info,
                hint = icons.diagnostics.Hint,
              },
            },
          },
          lualine_x = {
            {
              function()
                return require("noice").api.status.command.get()
              end,
              cond = function()
                return package.loaded["noice"] and require("noice").api.status.command.has()
              end,
              color = Util.ui.fg("Statement"),
            },
            {
              function()
                return require("noice").api.status.mode.get()
              end,
              cond = function()
                return package.loaded["noice"] and require("noice").api.status.mode.has()
              end,
              color = Util.ui.fg("Constant"),
            },
          },
          lualine_z = { "" },
        },
      }
    end,
  },
}