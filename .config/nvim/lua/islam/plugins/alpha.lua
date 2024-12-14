return {
    "goolord/alpha-nvim",
    event = "VimEnter",
    config = function()
      local alpha = require("alpha")
      local dashboard = require("alpha.themes.dashboard")

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
        
        alpha.setup(dashboard.opts)

	vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])

      end,
}
