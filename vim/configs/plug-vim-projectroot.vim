" dbakker/vim-projectroot

" Change current working directory to project root
nnoremap <leader>dp :ProjectRootCD<cr>

" Automatically whenever you open a buffer:
" Why need it? Because I need Rg to search file content and send result to
" quickfix window(then I can jump to the search result).
" But Rg can only search in current dir, I need it always search in the whole
" project, so use this function to always jump to project root.
function! <SID>AutoProjectRootCD()
  try
    if &ft != 'help'
      ProjectRootCD
    endif
  catch
    " Silently ignore invalid buffers
  endtry
endfunction

autocmd BufEnter * call <SID>AutoProjectRootCD()
