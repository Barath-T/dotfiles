vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>pf", ":find ")
vim.keymap.set("n", "<leader>pb", ":b ")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzz")
vim.keymap.set("n", "N", "Nzzz")

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")

vim.keymap.set("n", "Q", "<nop>")

vim.keymap.set("n", "<leader>f", function()
  -- if vim.bo.filetype == "rust" then 
  --   vim.cmd("silent !cargo fmt")
  -- elseif vim.bo.filetype == "c" then 
  --   vim.cmd("silent !make format")
  -- else
    vim.lsp.buf.format()
  -- end
end)
