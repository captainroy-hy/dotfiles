" junegunn/fzf.vim

" nnoremap <Leader>F :<C-u>ProjectRootExe Rg<CR>
" search file content from current dir
" cooperate with plug-in 'vim-projectroot'/ProjectRootCD 
nnoremap <Leader>F :Rg<CR>
nnoremap <leader>b :Buffers<CR>

let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.9 } }
let g:fzf_preview_window = 'down:60%'
let $FZF_DEFAULT_OPTS="--ansi --preview-window 'right:70%' --layout reverse --margin=1,4 --preview 'bat --color=always --style=header,grid --line-range :300 {}' --bind ctrl-k:preview-up,ctrl-j:preview-down,ctrl-u:preview-page-up,ctrl-p:preview-page-down,ctrl-a:toggle-preview"

" search files from Git project root dir
nnoremap <leader>f :ProjectFiles<CR>
function! s:find_git_root()
  return system('git rev-parse --show-toplevel 2> /dev/null')[:-2]
endfunction

command! ProjectFiles execute 'Files' s:find_git_root()
" END search from Git project root

" :BD (upper case) to close buffers in fzf.buffer list
function! s:list_buffers()
  redir => list
  silent ls
  redir END
  return split(list, "\n")
endfunction

function! s:delete_buffers(lines)
  execute 'bwipeout' join(map(a:lines, {_, line -> split(line)[0]}))
endfunction

command! BD call fzf#run(fzf#wrap({
  \ 'source': s:list_buffers(),
  \ 'sink*': { lines -> s:delete_buffers(lines) },
  \ 'options': '--multi --reverse --bind ctrl-a:select-all+accept'
\ }))
" END close selected buffers


" send Rg/Files search results to quickfix window
" ctrl+a  select all results
" ctrl+q  send all selected to quickfix window
let $FZF_DEFAULT_OPTS = '--bind ctrl-a:select-all'

function! s:build_quickfix_list(lines)
  call setqflist(map(copy(a:lines), '{ "filename": v:val }'))
  copen
  cc
endfunction

let g:fzf_action = {
  \ 'ctrl-q': function('s:build_quickfix_list'),
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }
" END send results to quickfix window

" set grepprg=rg\ --vimgrep
" set grepformat^=%f:%l:%c:%m
