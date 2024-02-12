M = {}
lvim.leader = "space"

local opts = {noremap = true, silent = true}

local keymap = vim.keymap.set

keymap("n", "<C-Space>", "<cmd>WhichKey \\<space><cr>", opts)
keymap("n", "<leader>bt", "<cmd>tabe<CR>", opts)
keymap("n", "<leader>btt", "<cmd>terminal<CR>", opts)

-- ------
-- Insert_Mode
lvim.keys.insert_mode["jk"] = "<Esc>"



-- ------
-- Normal --

lvim.keys.normal_mode["<leader>t"] = "<cmd>TroubleToggle<CR>"
lvim.keys.normal_mode["<leader>o"] = "<cmd>SymbolsOutline<CR>"
lvim.keys.normal_mode["L"] = "<cmd>:bn<CR>"
lvim.keys.normal_mode["H"] = "<cmd>:bp<CR>"
lvim.keys.normal_mode["<leader>rnn"] = ":%s//gc<Left><Left><Left>"

lvim.keys.normal_mode["<leader><leader>"] = "<cmd>Telescope buffers<CR>"
lvim.keys.normal_mode["<leader>s"] = "<cmd>Telescope treesitter<CR>"
lvim.keys.normal_mode["<leader>S"] = "<cmd>Telescope lsp_dynamic_workspace_symbols<CR>"
lvim.keys.normal_mode["<leader>eo"] = "<cmd>Telescope oldfiles<CR>"

-- ------
-- Visual_Mode ---
lvim.keys.visual_mode["J"] = ":m '>+1<CR>gv=gv"
lvim.keys.visual_mode["K"] = ":m '<-2<CR>gv=gv"

-- Better window navigation
keymap("n", "<m-h>", "<C-w>h", opts)
keymap("n", "<m-j>", "<C-w>j", opts)
keymap("n", "<m-k>", "<C-w>k", opts)
keymap("n", "<m-l>", "<C-w>l", opts)
keymap("n", "<m-tab>", "<c-6>", opts)

-- Resize with arrows
keymap("n", "<C-K>", ":resize -2<CR>", opts)
keymap("n", "<C-J>", ":resize +2<CR>", opts)
keymap("n", "<C-H>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-L>", ":vertical resize +2<CR>", opts)


return M
