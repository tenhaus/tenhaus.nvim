return {
  -- add cattpuccin
  { "nyoom-engineering/oxocarbon.nvim", name = "oxocarbon", priority = 1001 },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      --      colorscheme = "catppuccin",
      colorscheme = "oxocarbon",
    },
  },
}
