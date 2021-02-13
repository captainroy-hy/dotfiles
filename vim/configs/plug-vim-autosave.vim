" 907th/vim-auto-save
" 自动保存 buffer 内容

" enable AutoSave on Vim startup"
let g:auto_save = 1  
" do not display the auto-save notification"
let g:auto_save_silent = 1 
" check out more events through ':help autocommand-events'
let g:auto_save_events = ["InsertLeave", "TextChanged"]
" write all open buffers as if you would use :wa
let g:auto_save_write_all_buffers = 1  
