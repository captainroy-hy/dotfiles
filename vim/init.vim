" load plugin and set color theme

let $VIM_CONFIG_DIR = '~/.config/nvim/configs'

source $VIM_CONFIG_DIR/basic-config.vim
source $VIM_CONFIG_DIR/basic-keymap.vim

call plug#begin('~/.local/share/nvim/plugged')
" Plug 'scrooloose/nerdtree'
Plug '907th/vim-auto-save'
Plug 'jjo/vim-cue'
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
" Plug 'pangloss/vim-javascript'
Plug 'jiangmiao/auto-pairs'
Plug 'romainl/vim-qf'
"Plug 'chiel92/vim-autoformat'
"
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc.nvim', {'tag': 'v0.0.80'}
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
Plug 'sebdah/vim-delve'
" Plug 'ctrlpvim/ctrlp.vim'
" Markdown Plugins
Plug 'tpope/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
" Plug 'tpope/vim-obsession'
Plug 'luochen1990/rainbow'
Plug 'voldikss/vim-floaterm'
" Plug 'kdheepak/lazygit.nvim'
" Plug 'liuchengxu/vim-clap'
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

" =============== color and scheme ============== 
" 开启24bit的颜色，开启这个颜色会更漂亮一些
set termguicolors
colorscheme one " 主题
" set background=dark " 主题背景 dark-深色; light-浅色
" let g:gruvbox_contrast_dark='default'

" let g:gruvbox_contrast_light='default'
" set splitbelow
" set background=dark

source $VIM_CONFIG_DIR/plug-airline-sts-bar.vim
source $VIM_CONFIG_DIR/plug-coc-nvim.vim
source $VIM_CONFIG_DIR/plug-fugitive.vim
source $VIM_CONFIG_DIR/plug-fzf.vim
source $VIM_CONFIG_DIR/plug-markdown-preview.vim
source $VIM_CONFIG_DIR/plug-nerdcommenter.vim
source $VIM_CONFIG_DIR/plug-quick-scope.vim
source $VIM_CONFIG_DIR/plug-tablemode.vim
source $VIM_CONFIG_DIR/plug-tagbar.vim
source $VIM_CONFIG_DIR/plug-vim-bookmarks.vim
source $VIM_CONFIG_DIR/plug-vim-floaterm.vim
source $VIM_CONFIG_DIR/plug-vim-go.vim
source $VIM_CONFIG_DIR/plug-vim-delve.vim
source $VIM_CONFIG_DIR/plug-vim-projectroot.vim
source $VIM_CONFIG_DIR/plug-vim-qf.vim
