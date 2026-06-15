local keymap = vim.keymap.set

-- nvim-tree
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", { silent = true, desc = "Explorer toggle" })
keymap("n", "<leader>o", ":NvimTreeFocus<CR>", { silent = true, desc = "Explorer focus" })

-- fzf
keymap("n", "<leader>ff", ":Files<CR>", { silent = true, desc = "Find files" })
keymap("n", "<leader>fg", ":GFiles<CR>", { silent = true, desc = "Find git files" })
keymap("n", "<leader>fb", ":Buffers<CR>", { silent = true, desc = "Find buffers" })
keymap("n", "<leader>fh", ":History<CR>", { silent = true, desc = "Find history" })

-- buffers
keymap("n", "<leader>bd", ":bd<CR>", { silent = true, desc = "Buffer delete" })
keymap("n", "<leader>bn", ":bnext<CR>", { silent = true, desc = "Buffer next" })
keymap("n", "<leader>bp", ":bprevious<CR>", { silent = true, desc = "Buffer previous" })

-- windows
keymap("n", "<leader>wh", "<C-w>h", { desc = "Window left" })
keymap("n", "<leader>wj", "<C-w>j", { desc = "Window down" })
keymap("n", "<leader>wk", "<C-w>k", { desc = "Window up" })
keymap("n", "<leader>wl", "<C-w>l", { desc = "Window right" })
keymap("n", "<leader>wv", "<C-w>v", { desc = "Window split vertical" })
keymap("n", "<leader>ws", "<C-w>s", { desc = "Window split horizontal" })
keymap("n", "<leader>wc", "<C-w>c", { desc = "Window close" })

-- clear search highlight
keymap("n", "<leader>/", ":nohlsearch<CR>", { silent = true, desc = "Clear search highlight" })

-- coc.nvim
keymap("n", "gd", "<Plug>(coc-definition)", { desc = "Go to definition" })
keymap("n", "gr", "<Plug>(coc-references)", { desc = "Go to references" })
keymap("n", "gi", "<Plug>(coc-implementation)", { desc = "Go to implementation" })
keymap("n", "K", ":call CocActionAsync('doHover')<CR>", { silent = true, desc = "Hover" })

-- coc completion confirm
keymap("i", "<CR>", function()
  if vim.fn["coc#pum#visible"]() == 1 then
    return vim.fn["coc#pum#confirm"]()
  end
  return "<CR>"
end, { expr = true, silent = true, desc = "Confirm completion" })
