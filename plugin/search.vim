" ============================================================================
" FileName: search.vim
" Description:
" Author: voldikss <dyzplus@gmail.com>
" GitHub: https://github.com/voldikss
" ============================================================================

if exists('g:did_load_browser_search')
  finish
endif
let g:did_load_browser_search = 1

let g:browser_search_default_engine = get(g:, 'browser_search_default_engine', 'duckduckgo')
let g:browser_search_builtin_engines = {
  \ 'duckduckgo': 'https://duckduckgo.com/?q=%s',
  \ 'github':'https://github.com/search?q=%s',
  \ 'google':'https://google.com/search?q=%s',
  \ 'brave':'https://search.brave.com/search?q=%s',
  \ 'stackoverflow':'https://stackoverflow.com/search?q=%s',
  \ 'translate': 'https://translate.google.com/?sl=auto&tl=it&text=%s',
  \ 'wikipedia': 'https://en.wikipedia.org/wiki/%s',
  \ 'youtube':'https://www.youtube.com/results?search_query=%s&page=&utm_source=opensearch',
  \ }
if exists('g:browser_search_engines')
  call extend(g:browser_search_builtin_engines, g:browser_search_engines)
endif

nnoremap <silent> <Plug>SearchNormal  :let g:browser_search_curpos = getpos('.') \| set operatorfunc=search#search_normal<cr>g@
vnoremap <silent> <Plug>SearchVisual  :<c-u>call search#search_visual()<cr>

command! -nargs=* -range BrowserSearch call search#start(<q-args>, visualmode(), <range>)
