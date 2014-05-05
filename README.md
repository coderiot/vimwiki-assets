# Description
Vimwiki Template

# Requirements
 * Twitter Bootstrap
 * highlight.js 8.0
 * Font Awesome 4.0.3

# using vimwiki assets
```sh
$ cd $HOME/vimwiki_html/
$ git clone https://github.com/coderiot/vimwiki-assets.git assets
```

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

# Font Awesome are not showing in Firefox
open `about:config` in firefox

change `security.fileuri.strict_origin_policy` from `true` to `false`
