" luochen1990/rainbow
" 给各种括号、花括号染色，配对的括号使用相同颜色
" 但是满屏幕各色括号，看着眼晕
let g:rainbow_active = 0

let g:rainbow_conf = {
\	'guifgs': ['yellow1', 'turquoise2', 'seagreen3', 'darkorange3'],
\	'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
\	'guis': ['bold'],
\	'cterms': ['bold'],
\	'operators': '_,_',
\	'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
\}
