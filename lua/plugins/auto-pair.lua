return {
  {
    "altermo/ultimate-autopair.nvim",
    event = { "InsertEnter", "CmdlineEnter" },
    branch = "v0.6",
    opts = {
      config_internal_pairs = {
        { "{", "}", suround = true, multiline = true },
        { "[", "]", suround = true, multiline = true },
        { "(", ")", suround = true, multiline = true },
        {
          "'",
          "'",
          conf = { nft = { "rust" } },
        },
      },
    },
  },
}
