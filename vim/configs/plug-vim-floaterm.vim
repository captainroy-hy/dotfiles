" Plug 'voldikss/vim-floaterm'

let g:floaterm_height=0.9
let g:floaterm_width=0.9

" 开启/关闭 FloatTerm，如果没有就创建一个新的
nnoremap   <silent>   <F10>    :FloatermToggle<CR>
tnoremap   <silent>   <F10>   <C-\><C-n>:FloatermToggle<CR>
" 创建一个新的 FloatTerm
nnoremap   <silent>   <F7>    :FloatermNew<CR>
tnoremap   <silent>   <F7>    <C-\><C-n>:FloatermNew<CR>
" 切换到下一个 FloatTerm
nnoremap   <silent>   <F8>    :FloatermPrev<CR>
tnoremap   <silent>   <F8>   <C-\><C-n>:FloatermPrev<CR>
" 创建一个新的 LazyGit FloatTerm
nnoremap   <silent>   <F9>    :FloatermNew lazygit<CR>
tnoremap   <silent>   <F9>    <C-\><C-n>:FloatermNew lazygit<CR>
