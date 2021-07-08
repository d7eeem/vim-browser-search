# vim-browser-search

This plugin helps perform a quick web search for the text selected in (Neo)Vim

![](https://user-images.githubusercontent.com/20282795/100518567-4f189580-31cd-11eb-91f1-4d9e70f5aa0a.png)

## Installation

### Packer 
```vim
use 'd7eeem/vim-browser-search'
```

## Keymappings

This plugin doesn't supply any default mappings. Here are some recommended key mappings

```lua
vim.api.nvim_set_keymap("v", "<leader>s", ":'<,'>BrowserSearch<CR>", {})
vim.api.nvim_set_keymap("n", "<leader>s", ":BrowserSearch<CR>", {})
```

## Variables

#### **`g:browser_search_default_engine`**

Defaut: `'duckduckgo'`

#### **`g:browser_search_engines`**

Default:

```vim
  {
  \ 'duckduckgo': 'https://duckduckgo.com/?q=%s',
  \ 'github':'https://github.com/search?q=%s',
  \ 'google':'https://google.com/search?q=%s',
  \ 'brave':'https://search.brave.com/search?q=%s',
  \ 'stackoverflow':'https://stackoverflow.com/search?q=%s',
  \ 'translate': 'https://translate.google.com/?sl=auto&tl=it&text=%s',
  \ 'wikipedia': 'https://en.wikipedia.org/wiki/%s',
  \ 'youtube':'https://www.youtube.com/results?search_query=%s&page=&utm_source=opensearch',
  \ }
```

## Commands

#### `:BrowserSearch [text]`

Search `text` with `engine`, if `text` is not given, use the word under
cursor.

Also, you can use this command in visual mode, i.e., `:'<,'>BrowserSearch`
