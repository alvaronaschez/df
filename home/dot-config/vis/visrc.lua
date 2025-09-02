-- loa vis module, providing parts of the Lua API
require('vis')
require('plugins/vis-lspc')


vis.events.subscribe(vis.events.INIT, function()
	-- colors not working well in foot if $TERM equals foot
	--os.execute('if [ $TERM == foot ]; then export TERM=tmux-256color; fi')

	-- Your global configuration options
	-- https://github-wiki-see.page/m/martanne/vis/wiki/Themes
	--vis:command('set shell /usr/bin/bash')
	--vis:command('set theme base16-circus')
	--vis:command('set theme seti')
	--vis:command('set theme minimal-light')
	vis:command('set theme minimal-dark')
end)

vis.events.subscribe(vis.events.WIN_OPEN, function(win) -- luacheck: no unused args
	-- Your per window configuration options e.g.
	vis:command('set relativenumbers')
	vis:command('set autoindent on')
	vis:command('set colorcolumn 80')
	vis:command('set cursorline on')
	vis:command('set ignorecase on')
	--vis:command('set change256colors on')
	--vis:command('set change256colors off')
	vis:command('set tabwidth 2')
end)
