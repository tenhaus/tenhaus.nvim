return {
  "linux-cultist/venv-selector.nvim",
  dependencies = {
    "neovim/nvim-lspconfig",
    { "mfussenegger/nvim-dap", config = function() end },
    { "mfussenegger/nvim-dap-python" },
    { "nvim-telescope/telescope.nvim", branch = "0.1.x", dependencies = { "nvim-lua/plenary.nvim" } },
  },
  lazy = false,
  branch = "regexp", -- This is the regexp branch, use this for the new version
  config = function()
    require("venv-selector").setup()
  end,
  keys = {
    { "<leader>vs", "<cmd>VenvSelect<cr>" },
  },
}
