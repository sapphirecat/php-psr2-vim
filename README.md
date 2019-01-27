# php-psr2-vim

Sets PSR-2 settings when editing PHP files.

# Installation

Your favorite plugin manager.

# Usage

It just does its thing, calling `setlocal` when PHP filetype is set.

There are four configuration options:

- `g:php_psr2_textwidth`: Integer, default 80.  Value to set the local
  `textwidth` to.
- `g:php_psr2_soft_margin`: Boolean. If set to 0, suppresses `colorcolumn+=80`
- `g:php_psr2_hard_margin`: Boolean. If set to 0, suppresses
  `colorcolumn+=120`
- `g:php_psr2_use_tabs`: Boolean. If set to 1, uses tabs instead of spaces for
  indentation, setting `shiftwidth` to `tabstop` (which is left unchanged.)
  This is technically a violation of PSR-2, but tabs are the one true way to
  indent.

The auto-activation can be disabled with `:PhpPsr2Off` and re-enabled with
`:PhpPsr2On`.  Because I'm like that.

If the plugin has auto-activated in a buffer, its buffer-local settings can be
reset to the global value using `:PhpPsr2Revert`.

# Settings Affected

    autoindent
    smartindent
    nocindent
    [no]expandtab
    shiftwidth
    softtabstop
    tabstop
    textwidth [configurable value]
    colorcolumn [configurable]

Notably, `formatoptions` is **not** affected.  Code will continue to wrap, or
not, according to your preference.

# Requirements

Minimum vim 6.0 with `+autocmd` feature.  Vim 7.0 is required for the margin
highlights (`colorcolumn` option), but the plugin will degrade gracefully.

# License

MIT.
