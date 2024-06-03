require('lualine').setup {
	options = {
		icons_enabled = true,
		theme = 'gruvbox-material',
	},
	section = {
		lualine_a = {
			{
				'filename',
				path = 1,
			}
		}
	}
}
