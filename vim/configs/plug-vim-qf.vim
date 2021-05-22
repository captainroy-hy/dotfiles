" romain/vim-qf

" filter out _test.go files in quickfix
nnoremap <space>rt :Reject test.go<CR>

" enable vim-qf mappings
" s - open entry in a new horizontal window
" v - open entry in a new vertical window
" t - open entry in a new tab
" o - open entry and come back
" O - open entry and close the location/quickfix window
" p - open entry in a preview window
let g:qf_mapping_ack_style = 1
