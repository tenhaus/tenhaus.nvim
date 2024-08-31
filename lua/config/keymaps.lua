-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
--
local map = LazyVim.safe_keymap_set

map("n", "<leader>tg", ":!task generate<cr>", { desc = "dart generate" })
map("n", "<leader>ts", ":!task simulator<cr>", { desc = "open simulator" })
map("n", "<leader>td", ":!task dev<cr>", { desc = "start dev" })
map("n", "<tab>", ":BufferLineCycleNext<cr>")
map("n", "<S-tab>", ":BufferLineCyclePrev<cr>")

local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup()
-- REQUIRED

map("n", "<leader>hh", function()
  harpoon.ui:toggle_quick_menu(harpoon:list())
end, { desc = "harpoon ui" })

map("n", "`", function()
  harpoon.ui:toggle_quick_menu(harpoon:list())
end, { desc = "harpoon ui" })

map("n", "+", function()
  harpoon:list():add()
end, { desc = "harpoon add" })

map("n", "<leader>ha", function()
  harpoon:list():add()
end, { desc = "harpoon add" })

map("n", "<leader>1", function()
  harpoon:list():select(1)
end, { desc = "harpoon mark 1" })

map("n", "<leader>2", function()
  harpoon:list():select(2)
end, { desc = "harpoon mark 2" })

map("n", "<leader>3", function()
  harpoon:list():select(3)
end, { desc = "harpoon mark 3" })

map("n", "<leader>4", function()
  harpoon:list():select(4)
end, { desc = "harpoon mark 4" })

map("n", "<leader>5", function()
  harpoon:list():select(5)
end, { desc = "harpoon mark 5" })

map("n", "<leader>6", function()
  harpoon:list():select(6)
end, { desc = "harpoon mark 5" })

-- Toggle previous & next buffers stored within Harpoon list
map("n", "<C-S-P>", function()
  harpoon:list():prev()
end)

map("n", "<C-S-N>", function()
  harpoon:list():next()
end)
