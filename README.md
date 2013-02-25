# Description
Vimwiki Template

# Requirements
 * Twitter Bootstrap
 * highlight.js
 * Font Awesome

# .vimrc settings
```vim
" vimwiki settings
let vimwiki_path=$HOME.'/vimwiki/'
let vimwiki_html_path=$HOME.'/vimwiki_html/'
let g:vimwiki_list = [{'path_html':vimwiki_html_path,
                       \ 'template_path':vimwiki_html_path.'vimwiki-assets/',
                       \ 'template_default': 'default',
                       \ 'template_ext': '.tpl',
                       \ 'auto_export': 0}]
```
