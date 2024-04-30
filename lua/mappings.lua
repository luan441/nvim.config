vim.keymap.set("n", "<C-s>", ":w<CR>", { desc = "Save" })
vim.keymap.set("n", "<C-q>", ":q<CR>", { desc = "Quit" })

-- Navigate vim panes better
vim.keymap.set("n", "<C-k>", ':wincmd k<CR>')
vim.keymap.set("n", "<C-j>", ':wincmd j<CR>')
vim.keymap.set("n", "<C-h>", ':wincmd h<CR>')
vim.keymap.set("n", "<C-l>", ':wincmd l<CR>')

vim.keymap.set("n", "<leader>C", ":noh", { desc = "Clear highlighting" })
