return {
  {
    {
      "folke/flash.nvim",
      event = "VeryLazy",
      vscode = true,
      ---@type Flash.Config
      opts = {
        modes = {
          search = {
            enabled = false,
          },
        },
      },
    },
  },
}
