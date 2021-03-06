" vim-bookmarks

highlight BookmarkSign ctermbg=NONE ctermfg=160
highlight BookmarkLine ctermbg=194 ctermfg=NONE
let g:bookmark_sign = '🦑'
let g:bookmark_annotation_sign = '🐳'
let g:bookmark_highlight = 1

" | Action                                          | Shortcut| Command                   |
" |-------------------------------------------------|---------|---------------------------|
" | Add/remove bookmark at current line             | `mm`    | `:BookmarkToggle`         |
" | Add/edit/remove annotation at current line      | `mi`    | `:BookmarkAnnotate <TEXT>`|
" | Jump to next bookmark in buffer                 | `mn`    | `:BookmarkNext`           |
" | Jump to previous bookmark in buffer             | `mp`    | `:BookmarkPrev`           |
" | Show all bookmarks (toggle)                     | `ma`    | `:BookmarkShowAll`        |
" | Clear bookmarks in current buffer only          | `mc`    | `:BookmarkClear`          |
" | Clear bookmarks in all buffers                  | `mx`    | `:BookmarkClearAll`       |
