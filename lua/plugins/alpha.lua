return {
-- Greeting on opening nvim
  {'goolord/alpha-nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function ()
      local alpha = require('alpha')
      local startify = require('alpha.themes.startify')
      startify.section.header.val = {
[[                                                                                        ▒▒                                                          ]],
[[                                                                                        ██                                                          ]],
[[                                                                                        ▓▓                                                          ]],
[[                                                                                  ░░████▒▒  ██                                                      ]],
[[                            ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓██▓▓▒▒▓▓▓▓▓▓▓▓▒▒██▓▓░░▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓]],
[[██▓▓▓▓▓▓▓▓██                                                                      ░░  ██▓▓██                                                        ]],
[[  ▒▒▒▒▒▒▒▒▒▒                                                                          ▓▓▓▓██                                                        ]],
[[  ██▓▓▓▓▓▓▓▓▓▓                                                                        ██████                                                        ]],
[[    ▒▒▒▒▒▒▒▒▒▒▒▒                                          ██▓▓▓▓██▒▒▒▒████▓▓▓▓██████▓▓▓▓▓▓▓▓████████▓▓▓▓                                            ]],
[[    ██▒▒▒▒▒▒▒▒▒▒▒▒                                  ▓▓██████░░░░░░░░░░░░░░░░░░██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒░░▒▒░░▒▒  ▒▒                                      ]],
[[      ▒▒▒▒▒▒▒▒▒▒▒▒▒▒                              ▒▒▒▒▓▓▓▓██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██▒▒░░░░▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓████▒▒▒▒                                  ]],
[[      ▒▒▒▒▒▒▓▓▓▓▒▒▒▒                              ▓▓▒▒▒▒▓▓██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓▒▒▓▓▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓▓▓▒▒▒▒▒▒▓▓▒▒                                ]],
[[      ▒▒▒▒▓▓▓▓▓▓▓▓▒▒▒▒                              ▒▒██████▓▓▓▓▒▒▓▓▓▓▓▓▒▒▓▓▓▓██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓▒▒▓▓▒▒▓▓▓▓▓▓▒▒██▒▒                              ]],
[[      ▒▒▓▓      ▓▓▓▓▒▒░░▓▓                                ████████▓▓▓▓████████▓▓▓▓▒▒▓▓▓▓▓▓▓▓▓▓▓▓▓▓░░▒▒▓▓▓▓▒▒▒▒▓▓▒▒░░▓▓░░░░░░                        ]],
[[      ▒▒██        ▓▓▓▓▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒░░██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒░░▒▒▒▒▒▒▒▒▒▒░░▒▒▒▒▒▒▒▒▒▒▒▒▓▓░░                    ]],
[[  ░░▒▒▒▒▓▓      ▓▓▓▓▒▒▒▒▒▒▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▒▒▓▓▓▓▓▓▓▓▓▓▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒░░▒▒▒▒▓▓▒▒▒▒▓▓▓▓▓▓▓▓▓▓▒▒▒▒                  ]],
[[  ▒▒▒▒▒▒▓▓▓▓  ██▓▓▓▓▒▒▓▓▒▒▒▒▒▒░░▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓░░▒▒▒▒▒▒▓▓▒▒▒▒▒▒▒▒▓▓░░                ]],
[[  ▓▓░░▒▒▒▒██▓▓▓▓██▒▒▒▒░░▒▒▓▓▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒████▓▓▓▓▓▓▓▓████▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒░░▓▓▓▓▒▒▒▒▒▒░░▒▒▒▒░░              ]],
[[        ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒░░▓▓▓▓██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓▒▒▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▒▒▓▓██▓▓▓▓████▓▓▓▓▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓░░▒▒░░▒▒▒▒▒▒▓▓░░        ]],
[[                ▒▒▒▒░░      ▓▓▓▓                    ██▓▓▓▓▒▒▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓████▓▓▓▓▓▓██▓▓▓▓▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓██▒▒▒▒▒▒▒▒▒▒░░        ]],
[[                  ▒▒▒▒    ▓▓▓▓                            ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓██████████████████████████▓▓▓▓▓▓▓▓▓▓▓▓▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██        ]],
[[                      ▒▒▒▒                                    ▒▒▓▓▓▓▒▒▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓████▓▓▓▓▓▓▓▓██▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓██          ]],
[[                  ▓▓▓▓██                                            ██          ████████████▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓██▓▓▓▓██▓▓██▓▓████▓▓▓▓████              ]],
[[                  ▓▓▓▓██                                                        ▓▓██▒▒▒▒▓▓▓▓▒▒▒▒▒▒  ▓▓▓▓▓▓▓▓████░░▒▒    ░░▓▓▒▒▒▒▓▓▒▒▒▒▓▓▓▓▓▓▓▓▓▓▓▓▓▓]],
[[                  ████                                                          ████▒▒▒▒████▒▒▒▒            ██  ▒▒        ██▒▒▒▒██▒▒▒▒              ]],
[[                                                                                                          ▓▓▓▓▓▓                                    ]],
[[                                                                                                        ▓▓████▓▓                                    ]],
[[                                                                                                        ██████▓▓                                    ]],

      }
      startify.section.top_buttons.val = {
	startify.button( "s", " Search for files", ":Telescope git_files<CR>" ),
	startify.button( "g", " Grep for a phrase", ":Telescope live_grep<CR>" ),
	startify.button( "i", " Edit init.lua", ":edit $NVIM_CONFIG/init.lua <CR>" ),
	startify.button( "m", " Make changes in lua/max", ":edit $NVIM_CONFIG/lua/max <CR>" ),
	startify.button( "r", " Make a remap", ":edit $NVIM_CONFIG/lua/max/remap.lua <CR>" ),
	startify.button( "o", " Change options", ":edit $NVIM_CONFIG/lua/max/options.lua <CR>" ),
	startify.button( "p", " Modify plugins", ":edit $NVIM_CONFIG/lua/plugins <CR>" ),
	startify.button( "a", " Change this screen", ":edit $NVIM_CONFIG/lua/plugins/alpha.lua <CR>" ),
      }
      -- disable MRU
      startify.section.mru.val = { { type = "padding", val = 0 } }
      -- disable MRU cwd
      startify.section.mru_cwd.val = { { type = "padding", val = 0 } }
      startify.section.footer.val = {
	{ type = "text", val = "Youdabest." },
      }
    alpha.setup(startify.config)
    end
  },
}
