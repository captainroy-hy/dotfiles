" 在状态栏显示 fugitive 状态
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

nnoremap <leader>gd :Gvdiffsplit<CR>
nnoremap <leader>gs :Gstatus<CR>
