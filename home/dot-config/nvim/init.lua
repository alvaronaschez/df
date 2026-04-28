vim.cmd([[
  set number relativenumber
  set ignorecase smartcase
  set notermguicolors
  set clipboard=unnamedplus
  set nofoldenable

  set colorcolumn=80
  highlight ColorColumn cterm=NONE ctermbg=236

  augroup language_dependant_settings
          autocmd!
          autocmd Filetype c\|cpp setlocal sw=2 sts=2 et fdm=syntax
          autocmd Filetype python setlocal sw=4 sts=4 et fdm=indent
          autocmd Filetype java\|javascript\|typescript setlocal sw=2 sts=2 et fdm=syntax
  augroup END
  
  " this should be adjusted depending on the project: c -> 1, cpp -> 0
  let g:c_syntax_for_h = 1
]])

vim.pack.add({
  'https://github.com/neovim/nvim-lspconfig',
  'https://github.com/lewis6991/gitsigns.nvim',
  'https://github.com/preservim/tagbar',
  'https://github.com/tpope/vim-fugitive',
  'https://github.com/pechorin/any-jump.vim',
  {
    src = 'https://github.com/junegunn/fzf',
    build = function()
      vim.fn['fzf#install']()
    end,
  },
  'https://github.com/junegunn/fzf.vim',
})

-- tagbar dependency
-- in openbsd install uctags and uncomment following line
--let g:tagbar_ctags_bin="uctags"
--vim.g.tagbar_ctags_bin="uctags"
-- in debian: sudo apt install universal-ctags

-- apt install clangd
vim.lsp.enable('clangd')

-- https://github.com/eclipse-jdtls/eclipse.jdt.ls
vim.lsp.enable('jdtls')

-- npm install -g pyright
vim.lsp.enable('pyright')
-- pip install "python-lsp-server[all]" && pip install pylsp-mypy
-- vim.lsp.enable('pylsp')

-- npm install -g typescript typescript-language-server
-- vim.lsp.enable('ts_ls')

-- npm install -g @postgres-language-server/cli
-- vim.lsp.enable('postgres_lsp')

-- apt install gopls
-- vim.lsp.enable('gopls')
