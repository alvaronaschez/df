require('vis')

vis.events.subscribe(vis.events.INIT, function()
end)

vis.events.subscribe(vis.events.WIN_OPEN, function(win)
  vis:command('set tabwidth 2')
  vis:command('set expandtab on')
  vis:command('set autoindent on')

  local ft = win.syntax

  if ft == 'python' then
    vis:command('set tabwidth 4')
  elseif ft == 'c' or ft == 'java' then
    vis:command('set tabwidth 2')
  end
end)
