# php-psr2-vim

Sets PSR-2 settings when editing PHP files.

# Installation

Your favorite plugin manager.

# Usage

It just does its thing, calling `setlocal` when PHP filetype is set.

There are three configuration options:

- `g:php_psr2_soft_margin`: if set to 0, suppresses `colorcolumn+=80`
- `g:php_psr2_hard_margin`: if set to 0, suppresses `colorcolumn+=120`
- `g:php_psr2_textwidth`: Default 80.  Value to set the local `textwidth` to.

The auto-activation can be disabled with `:PhpPsr2Off` and re-enabled with
`:PhpPsr2On`.  Because I'm like that.

If the plugin has auto-activated in a buffer, its buffer-local settings can be
reset to the global value using `:PhpPsr2Revert`.

# Settings Affected

    autoindent
    smartindent
    expandtab
    shiftwidth
    softtabstop
    tabstop
    textwidth
    colorcolumn [optional]

# Requirements

Minimum vim 6.0 with `+autocmd` feature.  Vim 7.0 is required for the margin
highlights (`colorcolumn` option), but the plugin will degrade gracefully.

# License

MIT.
