-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  v = {

    ["<Space>lx"] = { "<cmd>RustCodeAction<CR>", desc = "Rust Code Action" },
    -- ["<Space>la"] = { "<cmd>RustCodeAction<CR>", desc = "Rust Code Action" },
    -- ["<Splace>lx"] = { function() vim.lsp.buf.code_action() end, desc = "Rust Code Action" },
    -- ["<Space>la"] = { function() vim.lsp.buf.code_action() end, desc = "Rust Code Action" },
  },
  n = {
    ["<Space>lx"] = { "<cmd>RustCodeAction<CR>", desc = "Rust Code Action" },
    -- ["<Space>la"] = { function() vim.lsp.buf.code_action() end, desc = "Rust Code Action" },
    -- ["<Space>lx"] = { function() vim.lsp.buf.code_action() end, desc = "Rust Code Action" },

    -- second key is the lefthand side of the map

    -- navigate buffer tabs with `H` and `L`
    -- L = {
    --   function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
    --   desc = "Next buffer",
    -- },
    -- H = {
    --   function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
    --   desc = "Previous buffer",
    -- },

    -- mappings seen under group name "Buffer"
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
