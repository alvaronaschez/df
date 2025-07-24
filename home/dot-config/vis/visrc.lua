-- load standard vis module, providing parts of the Lua API
require('vis')
require('plugins/vis-lspc')

vis.events.subscribe(vis.events.INIT, function()
	-- Your global configuration options
	-- https://github-wiki-see.page/m/martanne/vis/wiki/Themes
	--vis:command('set theme base16-dracula')
	--vis:command('set theme base16-circus')
	--vis:command('set theme base16-eighties')
	vis:command('set theme seti')
end)

vis.events.subscribe(vis.events.WIN_OPEN, function(win) -- luacheck: no unused args
	-- Your per window configuration options e.g.
	vis:command('set relativenumbers')
end)
