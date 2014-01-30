" Text objects for IP address or MAC address.
" Version: 0.0.1
" Author: deris0126 <deris0126@gmail.com>
" Copyright (C) 2014 deris0126
" License: MIT license  {{{
"     Permission is hereby granted, free of charge, to any person obtaining
"     a copy of this software and associated documentation files (the
"     "Software"), to deal in the Software without restriction, including
"     without limitation the rights to use, copy, modify, merge, publish,
"     distribute, sublicense, and/or sell copies of the Software, and to
"     permit persons to whom the Software is furnished to do so, subject to
"     the following conditions:
"
"     The above copyright notice and this permission notice shall be included
"     in all copies or substantial portions of the Software.
"
"     THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
"     OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
"     MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
"     IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
"     CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
"     TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
"     SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
" }}}

if exists('g:loaded_textobj_ipmac')
  finish
endif
let g:loaded_textobj_ipmac = 1


call textobj#user#plugin('ipmac', {
  \ '-' : {
  \   'pattern' :
  \      '\%(\%(\%('
  \     .'[[:xdigit:]]\{1,4}\%(:[[:xdigit:]]\{1,4}\)\{5}'
  \     .'\|\%([[:xdigit:]]\{1,4}:\)\{4}\%(:[[:xdigit:]]\{1,4}\)\{1}'
  \     .'\|\%([[:xdigit:]]\{1,4}:\)\{3}\%(:[[:xdigit:]]\{1,4}\)\{1,2}'
  \     .'\|\%([[:xdigit:]]\{1,4}:\)\{2}\%(:[[:xdigit:]]\{1,4}\)\{1,3}'
  \     .'\|\%([[:xdigit:]]\{1,4}:\)\{1}\%(:[[:xdigit:]]\{1,4}\)\{1,4}'
  \     .'\|\%([[:xdigit:]]\{1,4}:\)\{1,5}'
  \     .'\|:\%(:[[:xdigit:]]\{1,4}\)\{1,5}'
  \     .'\|:'
  \     .'\):\%(25[0-5]\|2[0-4]\d\|1\d\{2}\|[1-9]\?\d\)\%(\.\%(25[0-5]\|2[0-4]\d\|1\d\{2}\|[1-9]\?\d\)\)\{3}'
  \     .'\|\%('
  \     .'[[:xdigit:]]\{1,4}\%(:[[:xdigit:]]\{1,4}\)\{7}'
  \     .'\|\%([[:xdigit:]]\{1,4}:\)\{6}\%(:[[:xdigit:]]\{1,4}\)\{1}'
  \     .'\|\%([[:xdigit:]]\{1,4}:\)\{5}\%(:[[:xdigit:]]\{1,4}\)\{1,2}'
  \     .'\|\%([[:xdigit:]]\{1,4}:\)\{4}\%(:[[:xdigit:]]\{1,4}\)\{1,3}'
  \     .'\|\%([[:xdigit:]]\{1,4}:\)\{3}\%(:[[:xdigit:]]\{1,4}\)\{1,4}'
  \     .'\|\%([[:xdigit:]]\{1,4}:\)\{2}\%(:[[:xdigit:]]\{1,4}\)\{1,5}'
  \     .'\|\%([[:xdigit:]]\{1,4}:\)\{1}\%(:[[:xdigit:]]\{1,4}\)\{1,6}'
  \     .'\|\%([[:xdigit:]]\{1,4}:\)\{1,7}:'
  \     .'\|:\%(:[[:xdigit:]]\{1,4}\)\{1,7}'
  \     .'\|::'
  \     .'\)'
  \     .'\)'
  \     .'\|\%(25[0-5]\|2[0-4]\d\|1\d\{2}\|[1-9]\?\d\)\%(\.\%(25[0-5]\|2[0-4]\d\|1\d\{2}\|[1-9]\?\d\)\)\{3}'
  \     .'\|[[:xdigit:]]\{2}\%(:[[:xdigit:]]\{2}\)\{5}'
  \     .'\)',
  \   'select' : ['iA', 'aA'],
  \ }})


" __END__  "{{{1
" vim: foldmethod=marker
