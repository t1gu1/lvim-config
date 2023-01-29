-- general
lvim.log.level = "warn"
lvim.format_on_save = {
  enabled = true,
  pattern = "*",
  patterns = "*",
  timeout = 3500
}
lvim.colorscheme = "lunar"
vim.opt.showmode = true
vim.opt.relativenumber = true

-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"

-- What make it considered as a project (if .git = a project)
lvim.builtin.project.patterns = { ".git" }

-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode['<C-t>'] = "<Cmd>lua require('goto-preview').goto_preview_definition()<CR>"


lvim.builtin.which_key.mappings['o'] = {
  ":TermExec cmd='open %:p:h'<cr>",
  "Open the current file directory"
}

-- Menu of keymappings
lvim.builtin.which_key.mappings["t"] = {
  name = "Types preview",
  d = { "<cmd>lua require('goto-preview').goto_preview_definition()<cr>", "Definition" },
  i = { "<cmd>lua require('goto-preview').goto_preview_implementation()<cr>", "Implementation" },
}

lvim.builtin.which_key.mappings["d"] = {
  name = "Debug helper",
  t = { "<cmd>TroubleToggle<cr>", "trouble" },
  w = { "<cmd>TroubleToggle workspace_diagnostics<cr>", "workspace" },
  d = { "<cmd>TroubleToggle document_diagnostics<cr>", "document" },
  q = { "<cmd>TroubleToggle quickfix<cr>", "quickfix" },
  l = { "<cmd>TroubleToggle loclist<cr>", "loclist" },
  r = { "<cmd>TroubleToggle lsp_references<cr>", "references" },
}

lvim.builtin.which_key.mappings["sR"] = {
  "<cmd>lua require('spectre').open()<cr>", "Global Search and replace",
}

lvim.lsp.buffer_mappings.normal_mode['h'] = nil
lvim.builtin.which_key.mappings["h"] = {
  name = "Harpoon",
  m = { "<cmd>:lua require('harpoon.mark').add_file()<cr>", "Mark / Add" },
  h = { "<cmd>:lua require('harpoon.ui').toggle_quick_menu()<cr>", "Menu toogle" },
  b = { "<cmd>:lua require('harpoon.ui').nav_prev()<cr>", "Previous" },
  n = { "<cmd>:lua require('harpoon.ui').nav_next()<cr>", "Next" },
  q = { "<cmd>:lua require('harpoon.ui').nav_file(1)<cr>", "Go to 1" },
  w = { "<cmd>:lua require('harpoon.ui').nav_file(2)<cr>", "Go to 2" },
  e = { "<cmd>:lua require('harpoon.ui').nav_file(3)<cr>", "Go to 3" },
  r = { "<cmd>:lua require('harpoon.ui').nav_file(4)<cr>", "Go to 4" },
  t = { "<cmd>:lua require('harpoon.ui').nav_file(5)<cr>", "Go to 5" },
}

lvim.builtin.which_key.mappings["l"]["f"] = {
  function()
    require("lvim.lsp.utils").format { timeout_ms = 6500 }
  end,
  "Format",
}


-- lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
-- lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"

-- Change theme settings
-- lvim.builtin.theme.options.dim_inactive = true
-- lvim.builtin.theme.options.style = "storm"

-- TODO: User Config for predefined plugins
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false
lvim.builtin.nvimtree.setup.view.side = "left"

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "javascript",
  "json",
  "lua",
  "typescript",
  "tsx",
  "css",
  "markdown",
  "json",
  "html"
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enable = true

local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  { command = "eslint", filetypes = { "typescript", "typescriptreact" } }
}

local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  {
    command = "prettier",
    filetypes = { "typescript", "typescriptreact" },
  },
}


-- Additional Plugins
lvim.plugins = {
  {
    "f-person/git-blame.nvim"
  },
  {
    "windwp/nvim-spectre",
    event = "BufRead",
    config = function()
      require("spectre").setup()
    end,
  },
  {
    "folke/trouble.nvim",
    cmd = "TroubleToggle",
  },
  {
    "ray-x/lsp_signature.nvim",
    config = function()
      require "lsp_signature".setup()
    end,
  },
  {
    "rmagatti/goto-preview",
    config = function()
      require('goto-preview').setup {
        width = 120; -- Width of the floating window
        height = 25; -- Height of the floating window
        default_mappings = false; -- Bind default mappings
        debug = false; -- Print debug information
        opacity = nil; -- 0-100 opacity level of the floating window where 100 is fully transparent.
        post_open_hook = nil -- A function taking two arguments, a buffer and a window to be ran as a hook.
      }
    end
  },
  { "ThePrimeagen/harpoon" },
  { "LunarVim/lvim-themes",
    config = function()
      require("lvim-themes").setup({
        theme = "flat",
        telescope = { set_highlights = true },
      })
    end
  },
  {
    "gbprod/cutlass.nvim",
    config = function()
      require("cutlass").setup()
    end
  },
  { 'echasnovski/mini.nvim',
    config = function()
      require("mini.indentscope").setup()
      require('mini.move').setup()
      require('mini.surround').setup()
      -- sa to add sourroud (visual mode)
      -- sd to remove sourround (visual or normal mode)
      -- saiw to add sourround from normal mode
    end
  },
  { "vuki656/package-info.nvim",
    config = function()
      require("package-info").setup()
    end
  }
}

lvim.keys.visual_mode["<leader>d"] = "d"
