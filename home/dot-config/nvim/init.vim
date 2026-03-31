set number relativenumber
set ignorecase smartcase
set notermguicolors
set clipboard=unnamedplus
set nofoldenable

"set colorcolumn=80

augroup language_dependant_settings
	autocmd!
	autocmd Filetype c\|cpp setlocal sw=2 sts=2 et fdm=syntax
	autocmd Filetype python setlocal sw=4 sts=4 et fdm=indent
	autocmd Filetype javascript\|typescript setlocal sw=2 sts=2 et fdm=syntax
augroup END

let g:c_syntax_for_h = 1 " this should be adjusted depending on the project: c -> 1, cpp -> 0

" install plug
" https://github.com/junegunn/vim-plug
" sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

call plug#begin()

	" List your plugins here
	" Plug 'tpope/vim-sensible'
	Plug 'neovim/nvim-lspconfig'
	Plug 'lewis6991/gitsigns.nvim'
	Plug 'preservim/tagbar'
	Plug 'tpope/vim-fugitive'
	Plug 'pechorin/any-jump.vim'
	Plug 'junegunn/fzf', {'do': { -> fzf#install()}}
	Plug 'junegunn/fzf.vim'

call plug#end()

" tagbar dependency
" in openbsd install uctags and uncomment following line
"let g:tagbar_ctags_bin="uctags"
" in debian: sudo apt install universal-ctags

lua << EOF
-- apt install clangd
vim.lsp.enable('clangd')
--vim.lsp.enable('jdtls')
-- pip install "python-lsp-server[all]" && pip install pylsp-mypy
vim.lsp.enable('pylsp')
-- npm install -g pyright
-- vim.lsp.enable('pyright')
-- npm install -g typescript typescript-language-server
--vim.lsp.enable('ts_ls')
-- npm install -g @postgres-language-server/cli
--vim.lsp.enable('postgres_lsp')
-- apt install gopls
vim.lsp.enable('gopls')
EOF
