#! /usr/bin/env bash

org_babel_src_regexp_indent='^([ \t]*)#\+BEGIN_SRC[ \t]+' # indentation
org_babel_src_regexp_lang='([^[:space:]]+)[ \t]*'
org_babel_src_regexp_switches='([^":]*"[^"*]*"[^":]*|[^":]*)'
org_babel_src_regexp_header_arguments='(.*)'
org_babel_src_regexp_body='([^ ]*?\n)??[ \t]*#\+end_src'
org_babel_src_regexp_end='^[ \t]*#\+END_SRC[ \t]*'
# org_babel_src_regexp_indent='^([ \t]*)#\+BEGIN_SRC[ \t]+' # indentation
# org_babel_src_regexp_lang='([^ \f\t\n\r\v]+)[ \t]*'
# org_babel_src_regexp_switches='([^":\n]*"[^"\n*]*"[^":\n]*\|[^":\n]*)'
# org_babel_src_regexp_header_arguments='([^\n]*)\n'
# org_babel_src_regexp_body='([^ ]*?\n)??[ \t]*#\+end_src'
org_babel_src_regexp=${org_babel_src_regexp_indent}${org_babel_src_regexp_lang}${rg_babel_src_regexp_switches}${org_babel_src_regexp_header_arguments}${org_babel_src_regexp_body}

awk "/(${org_babel_src_regexp_indent}${org_babel_src_regexp_lang}${org_babel_src_regexp_switches}${org_babel_src_regexp_header_arguments}|${org_babel_src_regexp_end})/" $1
