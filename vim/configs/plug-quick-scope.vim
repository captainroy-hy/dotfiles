" unblevable/quick-scope
" 在一行文本中，染色每个单词的关键字母，按相应字母就跳转

" Trigger a highlight in the appropriate direction when pressing these keys:
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

highlight notesAtxHeading guifg=OrangeRed1 cterm=bold
highlight notesTitle guifg=OrangeRed1 cterm=bold
highlight notesListNumber guifg=Orchid1 cterm=bold
highlight notesRule guifg=White cterm=bold
highlight notesBold guifg=White cterm=bold

augroup qs_colors
  autocmd!
  " autocmd ColorScheme * highlight QuickScopePrimary guifg='#afff5f' gui=underline ctermfg=155 cterm=underline
  autocmd ColorScheme * highlight QuickScopePrimary guifg='#5fffff' gui=underline ctermfg=155 cterm=underline
  autocmd ColorScheme * highlight QuickScopeSecondary guifg='#ffff00' gui=underline ctermfg=81 cterm=underline
augroup END
