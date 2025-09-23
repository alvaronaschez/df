set nu rnu ic scs noet cb=unnamedplus
"cc=80
"color paramount | set bg=light
set sts=2 sw=2
"set sts=4 sw=4
lua << EOF
vim.lsp.enable('clangd')
vim.lsp.enable('jdtls')
EOF
