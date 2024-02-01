local existingLspWhichKeys = lvim.builtin.which_key.mappings["l"]
table.insert(existingLspWhichKeys, {
  name = "Inlay Hints",
  h = { "<cmd>lua require('lsp-inlayhints').toggle()<cr>", "Toggle Hints" },
})
