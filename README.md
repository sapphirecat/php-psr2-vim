# php-psr2-vim

Sets PSR-2 settings when editing PHP files.

# Installation

Your favorite plugin manager.

# Usage

It just does its thing, calling `setlocal` when PHP filetype is set.  I can't
see how to use `let` to set a _buffer-local_ option, so `textwidth` and
`formatoptions` are not changed.

I suppose, technically, it can be canceled:

    :aug plugin_php_psr2 | au! | aug END

# Requirements

Minimum vim 6.0 with `+autocmd` feature.

# License

MIT.
