" fatih/vim-go

nnoremap <leader>gf :GoFillStruct<CR>

" 开启vim-go的高亮模式
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators=1
let g:go_highlight_function_parameters = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_variable_declarations = 1
let g:go_highlight_variable_assignments = 1
"保存时自动调整import信息
let g:go_fmt_command = "goimports"
"光标落在func type上时显示输入参数信息
let g:go_auto_type_info=1
"高亮显示相同的identifer
let g:go_auto_sameids = 0

"disable vim-go definition mapping
"use coc-goto instead of vim-go
let g:go_def_mapping_enabled = 0 

let g:go_code_completion_enabled = 0
let g:go_list_type = ""
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'
let g:go_term_enabled = 1
let g:go_term_height = 20
let g:go_term_mode = 'split'
" let g:go_term_close_on_exit = 0
let g:go_sameid_search_enabled = 0
" let g:go_metalinter_autosave=1
" let g:go_metalinter_autosave_enabled=['golangci-lint']

" vim-go debugger configuration
" use vim-delve instead of vim-go as debugger
" configs refer to 'plug-vim-delve.vim'
" nnoremap <leader>ds :GoDebugStart<CR>
" nnoremap <leader>dt :GoDebugTest<CR>
" nnoremap <leader>dc :GoDebugContinue<CR>
" nnoremap <leader>dn :GoDebugNext<CR>
" nnoremap <leader>db :GoDebugBreakpoint<CR>
" nnoremap <leader>dp :GoDebugStep<CR>

let g:go_debug_windows = {
      \ 'vars':  'rightbelow 60vnew',
\ }

