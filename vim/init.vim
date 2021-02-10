set nocompatible
set t_Co=256
"  basic vim Settings =====
syntax enable
syntax on
set number
set showcmd
set foldmethod=syntax
set foldlevelstart=20
" change max memory from default 1MB to 50MB
set maxmempattern=50000
" set autochdir
autocmd BufEnter * silent! lcd %:p:h
set cursorline
set incsearch
set hlsearch
set ignorecase

filetype on
" ================ Turn Off Swap Files ==============

set noswapfile
set nobackup
set nowb

" ============ Indentation ============  

set autoindent
set smartindent
set copyindent
set cindent
set smarttab
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
" set tab into 2 spaces in YAML files
autocmd FileType yaml setlocal sw=2 ts=2 et ai
" disable beep and flash with an autocmd
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

"" 退出插入模式指定类型的文件自动保存
au InsertLeave *.* write

"" move to beginning/end of line
nnoremap B ^
nnoremap E $
" $/^ doesn't do anything
nnoremap $ <nop>
nnoremap ^ <nop>

let mapleader=","

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

" "* 表示系统粘贴板的寄存器
" 添加此快捷键方便和系统剪贴板交互
noremap <Leader>p "*p
noremap <Leader>y "*y

call plug#begin('~/.local/share/nvim/plugged')
" Plug 'scrooloose/nerdtree'
" Plug '907th/vim-auto-save'
" Plug 'vim-syntastic/syntastic'
" Plug 'preservim/nerdtree'
" Plug 'jistr/vim-nerdtree-tabs'
" Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" 配色方案
Plug 'ryanoasis/vim-devicons'

" Plug 'morhetz/gruvbox'
" Plug 'crusoexia/vim-monokai'
" Plug 'KeitaNakamura/neodark.vim'
Plug 'rakr/vim-one'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Plug 'itchyny/lightline.vim'

Plug 'scrooloose/nerdcommenter'

" Git config
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'

"Plug 'bling/vim-bufferline'
Plug 'MattesGroeger/vim-bookmarks'
" Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'pangloss/vim-javascript'
Plug 'jiangmiao/auto-pairs'
"Plug 'chiel92/vim-autoformat'
"
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'ycm-core/YouCompleteMe'
"Plug 'acarapetis/vim-colors-github'
"Plug 'JamshedVesuna/vim-markdown-preview'
" 自动生成代码块
" Plug 'SirVer/ultisnips'
" Plug 'honza/vim-snippets'

" 大纲导航栏
Plug 'majutsushi/tagbar'
Plug 'hushicai/tagbar-javascript.vim'
Plug 'fatih/vim-go'
Plug 'ctrlpvim/ctrlp.vim'
" Markdown Plugins
Plug 'tpope/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'tpope/vim-obsession'

Plug 'luochen1990/rainbow'
Plug 'voldikss/vim-floaterm'
Plug 'kdheepak/lazygit.nvim'
Plug 'liuchengxu/vim-clap'
Plug 'unblevable/quick-scope'
Plug 'xolox/vim-notes'
Plug 'xolox/vim-misc'
Plug 'dhruvasagar/vim-table-mode'
Plug 'mtdl9/vim-log-highlighting'
Plug 'towolf/vim-helm'
Plug 'dbakker/vim-projectroot'
" Graphviz Plugins
" Plug 'liuchengxu/graphviz.vim'
"Plug 'wannesm/wmgraphviz.vim'

call plug#end()
filetype plugin indent on    " required
filetype plugin on    " required

" 解决YCM和UltiSnip的热键冲突
"let g:ycm_key_list_select_completion = ['<C-n>', '<space>']
"let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
"let g:SuperTabDefaultCompletionType = '<C-n>'

let g:rainbow_active = 0

" better key bindings for UltiSnipsExpandTrigger
" let g:UltiSnipsExpandTrigger = "<tab>"
" let g:UltiSnipsJumpForwardTrigger = "<tab>"
" let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" NerdTree Plugin Settings =====
" let g:NERDTreeDirArrows=0
" let g:NERDTreeChDirMode=2
" let NERDTreeIgnore = ['\.pyc$']
" map tt :NERDTreeToggle<CR>
" map ff :NERDTreeFind<CR>

map <leader>o :TagbarToggle<CR>

"==============================================================================
" 主题配色
"==============================================================================

augroup qs_colors
  autocmd!
  " autocmd ColorScheme * highlight QuickScopePrimary guifg='#afff5f' gui=underline ctermfg=155 cterm=underline
  autocmd ColorScheme * highlight QuickScopePrimary guifg='#5fffff' gui=underline ctermfg=155 cterm=underline
  autocmd ColorScheme * highlight QuickScopeSecondary guifg='#ffff00' gui=underline ctermfg=81 cterm=underline
augroup END
" 开启24bit的颜色，开启这个颜色会更漂亮一些
set termguicolors
colorscheme one " 主题
" set background=dark " 主题背景 dark-深色; light-浅色
" let g:gruvbox_contrast_dark='default'

" let g:gruvbox_contrast_light='default'
" set splitbelow
" set background=dark

let g:airline_theme='badwolf'

" NerdTree Settings ====
" sync open file with NERDTree
" " Check if NERDTree is open or active
" function! IsNERDTreeOpen()
"   return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
" endfunction

" Call NERDTreeFind iff NERDTree is active, current window contains a modifiable
" file, and we're not in vimdiff
" function! SyncTree()
"   if &modifiable && IsNERDTreeOpen() && strlen(expand('%')) > 0 && !&diff
"     NERDTreeFind
"     wincmd p
"   endif
" endfunction

" Highlight currently open buffer in NERDTree
" autocmd BufEnter * call SyncTree()

" NERDCommenter Settings =====
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDAltDelims_java = 1
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/'  }  }
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDToggleCheckAllLines = 1

let g:table_mode_corner='|'

" NerdTree Tabs Plugin Settings =====
" let g:nerdtree_tabs_open_on_console_startup=1
" let g:nerdtree_tabs_autofind=1

" Tagbar Golang Settings =====
let g:tagbar_type_go = {
        \ 'ctagstype' : 'go',
        \ 'kinds'     : [
                \ 'p:package',
                \ 'i:imports:1',
                \ 'c:constants',
                \ 'v:variables',
                \ 't:types',
                \ 'n:interfaces',
                \ 'w:fields',
                \ 'e:embedded',
                \ 'm:methods',
                \ 'r:constructor',
                \ 'f:functions'
        \ ],
        \ 'sro' : '.',
        \ 'kind2scope' : {
                \ 't' : 'ctype',
                \ 'n' : 'ntype'
        \ },
        \ 'scope2kind' : {
                \ 'ctype' : 't',
                \ 'ntype' : 'n'
        \ },
        \ 'ctagsbin'  : 'gotags',
        \ 'ctagsargs' : '-sort -silent'
\ }

" Tagbar JavaScript Settings =====
let g:tagbar_type_javascript = {
      \ 'ctagstype': 'javascript',
      \ 'kinds': [
      \ 'A:arrays',
      \ 'P:properties',
      \ 'T:tags',
      \ 'O:objects',
      \ 'G:generator functions',
      \ 'F:functions',
      \ 'C:constructors/classes',
      \ 'M:methods',
      \ 'V:variables',
      \ 'I:imports',
      \ 'E:exports',
      \ 'S:styled components'
      \ ]}

" tab 标签页切换快捷键
:nn <Leader>1 1gt
:nn <Leader>2 2gt
:nn <Leader>3 3gt
:nn <Leader>4 4gt
:nn <Leader>5 5gt
:nn <Leader>6 6gt
:nn <Leader>7 7gt
:nn <Leader>8 8gt
:nn <Leader>9 8gt
:nn <Leader>0 :tablast<CR>

" 在tabline中显示tab index
if exists("+showtabline")
    function! MyTabLine()
        let s = ''
        let wn = ''
        let t = tabpagenr()
        let i = 1
        while i <= tabpagenr('$')
            let buflist = tabpagebuflist(i)
            let winnr = tabpagewinnr(i)
            let s .= '%' . i . 'T'
            let s .= (i == t ? '%1*' : '%2*')
            let s .= ' '
            let wn = tabpagewinnr(i,'$')

            let s .= '%#TabNum#'
            let s .= i
            " let s .= '%*'
            let s .= (i == t ? '%#TabLineSel#' : '%#TabLine#')
            let bufnr = buflist[winnr - 1]
            let file = bufname(bufnr)
            let buftype = getbufvar(bufnr, 'buftype')
            if buftype == 'nofile'
                if file =~ '\/.'
                    let file = substitute(file, '.*\/\ze.', '', '')
                endif
            else
                let file = fnamemodify(file, ':p:t')
            endif
            if file == ''
                let file = '[No Name]'
            endif
            let s .= ' ' . file . ' '
            let i = i + 1
        endwhile
        let s .= '%T%#TabLineFill#%='
        let s .= (tabpagenr('$') > 1 ? '%999XX' : 'X')
        return s
    endfunction
    set stal=2
    set tabline=%!MyTabLine()
    set showtabline=1
    highlight link TabNum Special
endif

" ----------------- vim-go config -----------------
"开启vim-go的高亮模式
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
nnoremap <leader>gf :GoFillStruct<CR>

" Remap for move between windows
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l

 " fzf.vim config
" nnoremap <leader>gf :Files ~/go/src<CR>
" nnoremap <leader>F :Files ~/go/src<CR>
" nnoremap <leader>F :RgProjectFiles<CR>
nnoremap <Leader>F :<C-u>ProjectRootExe Rg<CR>
" nnoremap <leader>f :Files<CR>
nnoremap <leader>f :ProjectFiles<CR>
nnoremap <leader>b :Buffers<CR>

let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.9 } }
let g:fzf_preview_window = 'down:60%'
let $FZF_DEFAULT_OPTS="--ansi --preview-window 'right:70%' --layout reverse --margin=1,4 --preview 'bat --color=always --style=header,grid --line-range :300 {}' --bind ctrl-k:preview-up,ctrl-j:preview-down,ctrl-u:preview-page-up,ctrl-p:preview-page-down,ctrl-a:toggle-preview"

function! s:find_git_root()
  return system('git rev-parse --show-toplevel 2> /dev/null')[:-2]
endfunction

command! ProjectFiles execute 'Files' s:find_git_root()
" nmap <silent> <C-m> <Plug>(coc-diagnostic-prev)
" nmap <silent> <C-n> <Plug>(coc-diagnostic-next, 'editor.action.organizeImport')

" ------------------- coc.nvim configuration --------------------
let g:coc_enable_locationlist=1
" if hidden is not set, TextEdit might fail.
set hidden

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

" Smaller updatetime for CursorHold & CursorHoldI
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
" inoremap <silent><expr> <TAB>
"       \ pumvisible() ? "\<C-n>" :
"       \ <SID>check_back_space() ? "\<TAB>" :
"       \ coc#refresh()
" inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
"
" function! s:check_back_space() abort
"   let col = col('.') - 1
"   return !col || getline('.')[col - 1]  =~# '\s'
" endfunction

" Use <c-a> to trigger completion.
inoremap <silent><expr> <c-a> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[c` and `]c` to navigate diagnostics
" nmap <silent> <C-m> <Plug>(coc-diagnostic-prev)
" nmap <silent> <C-n> <Plug>(coc-diagnostic-next)
nmap <silent> [d <Plug>(coc-diagnostic-prev)
nmap <silent> ]d <Plug>(coc-diagnostic-next)
nnoremap <silent><C-n> :cn<CR>
nnoremap <silent><C-m> :cp<CR>
nnoremap <silent><C-x> :ccl<CR>
autocmd BufReadPost quickfix nnoremap <buffer> <CR> <CR>
autocmd BufReadPost fugitive://* set bufhidden=delete

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Remap keys for range select
"
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)

xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')
highlight CocHighlightText guifg=White guibg=blue cterm=bold
" highlight CocHighlightText guifg=black guibg=white cterm=bold

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
" vmap <leader>f  <Plug>(coc-format-selected)
" nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
vmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Use `:Prettier` to format current buffer
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" Add diagnostic info for https://github.com/itchyny/lightline.vim
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'cocstatus', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'cocstatus': 'coc#status'
      \ },
      \ }

" Using CocList
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" " Manage extensions
" nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" " Show commands
" nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" " Find symbol of current document
" nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" " Search workspace symbols
" nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" " Do default action for next item.
" nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" " Do default action for previous item.
" nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" " Resume latest coc list
" nnoremap <silent> <space>p  :<C-u>CocListResume<CR>
" -------------------- coc.nvim configuration finished --------------------

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
" :BD (upper case) to close buffers in fzf.buffer list



" -------------------- vim-go debugger configuration --------------------
nnoremap <leader>ds :GoDebugStart<CR>
nnoremap <leader>dt :GoDebugTest<CR>
nnoremap <leader>dc :GoDebugContinue<CR>
nnoremap <leader>dn :GoDebugNext<CR>
nnoremap <leader>db :GoDebugBreakpoint<CR>

nnoremap <leader>dp :GoDebugStep<CR>

let g:go_debug_windows = {
      \ 'vars':  'rightbelow 60vnew',
\ }


" .............................................................................
" iamcco/markdown-preview.nvim
" .............................................................................

let g:mkdp_auto_close=0
let g:mkdp_refresh_slow=1
let g:mkdp_markdown_css='/User/roy/.config/nvim/github-markdown.css'

" -------------------- vim-bookmarks configuration --------------------
highlight BookmarkSign ctermbg=NONE ctermfg=160
highlight BookmarkLine ctermbg=194 ctermfg=NONE
let g:bookmark_sign = '🦑'
let g:bookmark_annotation_sign = '🐳'
let g:bookmark_highlight = 1

" -------------------- coc-explorer configuration --------------------
nmap tt :CocCommand explorer<CR>
nmap tr :CocCommand explorer /Users/roy<CR>
nmap tg :CocCommand explorer /Users/roy/go/src<CR>

" -------------------- resiize window size --------------------
nnoremap <silent> <Leader>= :exe "vertical resize " . (winwidth(0) * 5/4)<CR>
nnoremap <silent> <Leader>- :exe "vertical resize " . (winwidth(0) * 3/4)<CR>
" nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
" nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>

let g:rainbow_conf = {
\	'guifgs': ['yellow1', 'turquoise2', 'seagreen3', 'darkorange3'],
\	'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
\	'guis': ['bold'],
\	'cterms': ['bold'],
\	'operators': '_,_',
\	'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
\}

" config for floaterm
let g:floaterm_height=0.9
let g:floaterm_width=0.9

nnoremap   <silent>   <F7>    :FloatermNew<CR>
tnoremap   <silent>   <F7>    <C-\><C-n>:FloatermNew<CR>
nnoremap   <silent>   <F8>    :FloatermPrev<CR>
tnoremap   <silent>   <F8>   <C-\><C-n>:FloatermPrev<CR>
nnoremap   <silent>   <F9>    :FloatermNew lazygit<CR>
tnoremap   <silent>   <F9>    <C-\><C-n>:FloatermNew lazygit<CR>
nnoremap   <silent>   <F10>    :FloatermToggle<CR>
tnoremap   <silent>   <F10>   <C-\><C-n>:FloatermToggle<CR>

" Trigger a highlight in the appropriate direction when pressing these keys:
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

highlight notesAtxHeading guifg=OrangeRed1 cterm=bold
highlight notesTitle guifg=OrangeRed1 cterm=bold
highlight notesListNumber guifg=Orchid1 cterm=bold
highlight notesRule guifg=White cterm=bold
highlight notesBold guifg=White cterm=bold
