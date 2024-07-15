require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- " Show hover
map("n", "K", vim.lsp.buf.hover, {desc="Show hover"})
-- nnoremap K <Cmd>lua vim.lsp.buf.hover()<CR>
 -- " Jump to definition
-- nnoremap gd <Cmd>lua vim.lsp.buf.definition()<CR>
 -- " Open code actions using the default lsp UI, if you want to change this please see the plugins above
-- nnoremap <leader>ca <Cmd>lua vim.lsp.buf.code_action()<CR>
 -- " Open code actions for the selected visual range
-- xnoremap <leader>ca <Cmd>lua vim.lsp.buf.range_code_action()<CR>
map("n", "ca", "<Cmd>lua vim.lsp.buf.code_action()<CR>")
-- map("n", "<leader>ca", "<cmd>vim.lsp.buf.range_code_action()<cr>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
