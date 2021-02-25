set nocompatible
set t_Co=256

if !exists("g:syntax_on")
    syntax enable
endif

" 显示行号
set number
" 显示输入的命令
set showcmd
" 使用语法高亮定义代码折叠 
set foldmethod=syntax
" 开启新buffer时默认不折叠
set foldlevelstart=99
" 匹配模式的最大缓存空间大小
set maxmempattern=50000
" 自动切换到当前buffer的目录下
" set autochdir
" 高亮显示当前光标所在行
set cursorline
" 输入搜索模式时同时高亮部分的匹配
set incsearch
" 高亮最近的匹配搜索模式
set hlsearch
" 搜索模式时忽略大小写
set ignorecase
" 不创建交换文件,交换文件主要用于系统崩溃时恢复文件
set noswapfile
set nobackup
set nowb
" 缩进设置
set autoindent
set smartindent
set copyindent
set cindent
set smarttab
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
" 关闭出错时的蜂鸣声和闪屏
set noerrorbells visualbell t_vb=
" 总是在最右侧垂直创建新窗口
set splitright

" 在 YAML 文件中使用 2 个空格代替 tab 缩进
autocmd FileType yaml setlocal sw=2 ts=2 et ai
autocmd GUIEnter * set visualbell t_vb=
autocmd BufEnter * silent! lcd %:p:h
"" 退出插入模式指定类型的文件自动保存
autocmd InsertLeave *.* write


" 开启文件类型检查，并且载入与该类型对应的缩进规则
" 开启允许插件识别文件类型
filetype indent plugin on
