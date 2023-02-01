local status_ok, db = pcall(require, "dashboard")
if not status_ok then
	return
end

local header = {
	[[]],
	[[]],
	[[        ▄▄▄▄▄███████████████████▄▄▄▄▄     ]],
	[[      ▄██████████▀▀▀▀▀▀▀▀▀▀██████▀████▄   ]],
	[[     █▀████████▄             ▀▀████ ▀██▄  ]],
	[[    █▄▄██████████████████▄▄▄         ▄██▀ ]],
	[[     ▀█████████████████████████▄    ▄██▀  ]],
	[[       ▀████▀▀▀▀▀▀▀▀▀▀▀▀█████████▄▄██▀    ]],
	[[         ▀███▄              ▀██████▀      ]],
	[[           ▀██████▄        ▄████▀         ]],
	[[              ▀█████▄▄▄▄▄▄▄███▀           ]],
	[[                ▀████▀▀▀████▀             ]],
	[[                  ▀███▄███▀               ]],
	[[                     ▀█▀                  ]],
	[[]]
}

db.setup({
	theme = 'doom',
	config = {
		header = header, --your header
		center = {
			{ icon = '  ',
				icon_hl = 'Title',
				desc = 'Find  File                       ',
				desc_hl = 'String',
				action = 'Telescope find_files find_command=find',
				keymap = 'SPC f f',
				key = 'f',
				key_hl = 'Number',
			},
			{ icon = '  ',
				icon_hl = 'Title',
				desc = 'File Browser                     ',
				desc_hl = 'String',
				action = 'Telescope file_browser',
				keymap = 'SPC f b',
				key = 'b',
				key_hl = 'Number',
			},
			{ icon = '  ',
				icon_hl = 'Title',
				desc = 'Find  word                       ',
				desc_hl = 'String',
				action = 'Telescope live_grep',
				keymap = 'SPC f g',
				key = 'g',
				key_hl = 'Number',
			},
		},
		footer = { '🌱🌱🌱' } --your footer
	}
})

-- db.custom_center = {
-- 	{ icon = '  ',
-- 		desc = 'Recently latest session                 ',
-- 		shortcut = 'SPC g l',
-- 		action = 'SessionLoad' },
-- 	{ icon = '  ',
-- 		desc = 'Find  File                              ',
-- 		action = 'Telescope find_files find_command=find',
-- 		shortcut = 'SPC f f' },
-- 	{ icon = '  ',
-- 		desc = 'File Browser                            ',
-- 		action = 'Telescope file_browser',
-- 		shortcut = 'SPC f b' },
-- 	{ icon = '  ',
-- 		desc = 'Find  word                              ',
-- 		action = 'Telescope live_grep',
-- 		shortcut = 'SPC f g' },
-- }
--
-- vim.api.nvim_set_keymap('n', '<leader>gl', '<Cmd>SessionLoad<CR>', { noremap = true, silent = false })
-- vim.api.nvim_set_keymap('n', '<leader>gs', '<Cmd>SessionSave<CR>', { noremap = true, silent = false })
-- vim.api.nvim_create_autocmd('User', {
-- 	pattern = 'DBSessionSavePre',
-- 	callback = function()
-- 		pcall(vim.cmd, 'NvimTreeClose')
-- 	end,
-- })
--
-- vim.cmd([[
-- hi link DashboardHeader Label
-- hi link DashboardCenter Identifier
-- hi link DashboardShortCut String
-- hi link DashboardFooter Comment
-- ]])
