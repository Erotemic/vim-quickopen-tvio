" vim-quickopen-tvio.vim - QuickOpen Plugin
" Author:       Jon Crall 
" Version:      1.0
" GitRepo: https://github.com/Erotemic/vim-quickopen-tvio.git
"
"
func! QUICKOPEN_leader_tvio(...)
    " Maps <leader>t<key> to tab open a filename
    " Maps <leader>s<key> to vsplit open a filename
    " Maps <leader>i<key> to split open a filename
    let key = a:1
    let fname = a:2
    :exec 'noremap <leader>t'.key.' :tabe '.fname.'<CR>'
    :exec 'noremap <leader>v'.key.' :vsplit '.fname.'<CR>'
    :exec 'noremap <leader>i'.key.' :split '.fname.'<CR>'
    :exec 'noremap <leader>o'.key.' :e '.fname.'<CR>'
endfu
