" Add command for activating PSR-2 coding standards.

" only define the autocommand once
if version < 600 || ! has("autocmd") || exists("g:loaded_plugin_php_psr2")
	finish
endif

let g:loaded_plugin_php_psr2 = 1

augroup plugin_php_psr2
	au FileType php setlocal ai si et sts=4 sw=4 ts=8 cc+=120
augroup END
