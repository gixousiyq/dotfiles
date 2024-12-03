-- number settings
local opt = vim.opt
opt.relativenumber = true
opt.number = true

-- transpary settings
vim.cmd('highlight Normal guibg=NONE ctermbg=NONE')
vim.cmd('highlight NonText guibg=NONE ctermbg=NONE')
vim.cmd('highlight SignColumn guibg=NONE ctermbg=NONE')
vim.cmd('highlight NormalFloat guibg=NONE ctermbg=NONE')
vim.cmd('highlight NormalNC guibg=NONE ctermbg=NONE')


-- lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  "rafamadriz/friendly-snippets",
  "lewis6991/gitsigns.nvim",
  "nvim-lua/plenary.nvim",
  "nvim-lualine/lualine.nvim",
  "nvim-neo-tree/neo-tree.nvim",
  "folke/lazy.nvim",
  {
    "goolord/alpha-nvim",
    config = function()
      local alpha = require 'alpha'
      local dashboard = require 'alpha.themes.dashboard'

      dashboard.section.header.val = {
        [[                                                                       ]],
        [[                                                                     ]],
        [[       ████ ██████           █████      ██                     ]],
        [[      ███████████             █████                             ]],
        [[      █████████ ███████████████████ ███   ███████████   ]],
        [[     █████████  ███    █████████████ █████ ██████████████   ]],
        [[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
        [[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
        [[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
        [[                                                                       ]],
      }

      dashboard.section.buttons.val = {
        dashboard.button('e', '📝  New file', ':ene <BAR> startinsert <CR>'),
        dashboard.button('f', '📂  Search files', ':Telescope find_files <CR>'),
        dashboard.button('q', '❌  Quit Neovim', ':qa<CR>'),
      }

      local function footer()
        local fortune = require 'alpha.fortune'
        local quote = table.concat(fortune(), '\n')
        return quote
      end

      dashboard.section.footer.val = footer()

      -- Settings
      dashboard.section.header.opts.hl = 'Include'
      dashboard.section.buttons.opts.hl = 'Keyword'
      dashboard.section.footer.opts.hl = 'Type'

      alpha.setup(dashboard.opts)
    end
  }
})
require('lualine').setup {
  options = {
    component_separators = '',
    section_separators = { left = '', right = '' },
  },
  sections = {
   -- lualine_a = { { 'mode', separator = { left = '' }, right_padding = 2 } },
    lualine_b = { 'filename', 'branch' },
    lualine_c = {
      '%=', --[[ add your center components here in place of this comment ]]
    },
    lualine_x = {},
    lualine_y = { 'filetype', 'progress' },
    lualine_z = {
   --   { 'location', separator = { right = '' }, left_padding = 2 },
    },
  },
  inactive_sections = {
    lualine_a = { 'filename' },
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = { 'location' },
  },
  tabline = {},
  extensions = {},
}
