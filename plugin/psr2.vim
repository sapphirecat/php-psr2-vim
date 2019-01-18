" Add command for activating PSR-2 coding standards.

" only define the autocommand once
if version < 600 || ! has("autocmd") || exists("g:loaded_plugin_php_psr2")
	finish
endif

let g:loaded_plugin_php_psr2 = 1

if ! exists("g:php_psr2_soft_margin")
	let g:php_psr2_soft_margin = 1
endif

if ! exists("g:php_psr2_hard_margin")
	let g:php_psr2_hard_margin = 1
endif

if ! exists("g:php_psr2_textwidth")
	let g:php_psr2_textwidth = 80
endif

function s:SetPSR2Mode()
	setlocal autoindent smartindent nocindent
	setlocal expandtab softtabstop=4 shiftwidth=4 tabstop=8
	execute "setlocal textwidth=".g:php_psr2_textwidth

	if v:version < 700
		return
	endif

	if g:php_psr2_hard_margin
		setlocal cc+=120
	endif
	if g:php_psr2_soft_margin
		setlocal cc+=80
	endif
endfunction

function s:Revert()
	set autoindent< smartindent< cindent<
	set expandtab< softtabstop< shiftwidth< tabstop<
	set textwidth<

	if v:version >= 700
		set colorcolumn<
	endif
endfunction

function s:Deactivate()
	augroup plugin_php_psr2
		au!
	augroup END
endfunction

function s:Activate()
	augroup plugin_php_psr2
		au FileType php call s:SetPSR2Mode()
	augroup END
endfunction

command PhpPsr2On call s:Activate()
command PhpPsr2Off call s:Deactivate()
command PhpPsr2Revert call s:Revert()
call s:Activate()
