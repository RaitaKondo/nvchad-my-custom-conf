---@type MappingsTable
local M = {}

M.general = {
  n = {
    ["<leader><leader>"] = { ":", "enter command mode", opts = { nowait = true } },

    --  format with conform
    ["<leader>fm"] = {
      function()
        require("conform").format()
      end,
      "formatting",
    },

    -- cycle through buffers
    ["<S-l>"] = {
      function()
        require("nvchad.tabufline").tabuflineNext()
      end,
      "Goto next buffer",
    },

    ["<S-h>"] = {
      function()
        require("nvchad.tabufline").tabuflinePrev()
      end,
      "Goto prev buffer",
    },

    ["<leader>rr"] = { [[:%s/\<<C-r><C-w>\>//gI<Left><Left><Left>]], "change the word in the whole file" },

    ["<A-l>"] = {
      "www",
      "skip 2 words to right",
    },

    ["<A-h>"] = {
      "bbb",
      "skip 2 words to left",
    },
    ["<A-j>"] = { "jjj", "skip 2 lines." },
    ["<A-k>"] = { "kkk", "skip 2 lines." },
    ["U"] = { "<C-r>", "redo" },
    ["o"] = { "o<ESC>", "without insert mode" },
    ["O"] = { "O<ESC>", "without insert mode" },
  },
  v = {
    [">"] = { ">gv", "indent" },
    ["K"] = { ":m '<-2<CR>gv=gv", "up" },
    ["J"] = { ":m '>+1<CR>gv=gv", "down" },
    ["<leader>y"] = { [["+y]], "copy on clipboard" },
    ["<leader>d"] = { [["_d]], "delete and copy on clipboard" },


    ["<A-l>"] = {
      "www",
      "skip 2 words to right",
    },

    ["<A-h>"] = {
      "bbb",
      "skip 2 words to left",
    },
    ["<A-j>"] = { "jjj", "skip 2 lines." },
    ["<A-k>"] = { "kkk", "skip 2 lines." },
  },
}

-- more keybinds!

M.nvterm = {
  plugin = true,

  t = {
    -- toggle in terminal mode

    ["<A-t>"] = {
      function()
        require("nvterm.terminal").toggle "horizontal"
      end,
      "Toggle horizontal term",
    },
  },

  n = {
    -- toggle in normal mode

    ["<A-t>"] = {
      function()
        require("nvterm.terminal").toggle "horizontal"
      end,
      "Toggle horizontal term",
    },
  },
}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = { "<cmd> DapToggleBreakpoint <CR>" },
  },
}

M.dap_python = {
  plugin = true,
  n = {
    ["<leader>dpr"] = {
      function()
        require("dap-python").test_method()
      end,
    },
  },
}

return M
