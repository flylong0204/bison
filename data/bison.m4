                                                            -*- Autoconf -*-

# Language-independent M4 Macros for Bison.
# Copyright (C) 2002, 2004, 2005, 2006, 2007 Free Software Foundation, Inc.

# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA
# 02110-1301  USA


## ---------------- ##
## Identification.  ##
## ---------------- ##

# b4_copyright(TITLE, YEARS)
# --------------------------
m4_define([b4_copyright],
[b4_comment([A Bison parser, made by GNU Bison b4_version.])

b4_comment([$1

m4_text_wrap([Copyright (C) $2 Free Software Foundation, Inc.], [   ])

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2, or (at your option)
any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor,
Boston, MA 02110-1301, USA.])

b4_comment([As a special exception, you may create a larger work that contains
part or all of the Bison parser skeleton and distribute that work
under terms of your choice, so long as that work isn't itself a
parser generator using the skeleton or a modified version thereof
as a parser skeleton.  Alternatively, if you modify or redistribute
the parser skeleton itself, you may (at your option) remove this
special exception, which will cause the skeleton and the resulting
Bison output files to be licensed under the GNU General Public
License without this special exception.

This special exception was added by the Free Software Foundation in
version 2.2 of Bison.])])


## ---------------- ##
## Error handling.  ##
## ---------------- ##

# b4_error(KIND, FORMAT, [ARG1], [ARG2], ...)
# -------------------------------------------
# Write @KIND(FORMAT@,ARG1@,ARG2@,...@) to diversion 0.
m4_define([b4_error],
[m4_divert_push(0)[@]$1[(]$2[]m4_if([$#], [2], [],
[m4_foreach([b4_arg],
            m4_dquote(m4_shift(m4_shift($@))),
            [[@,]b4_arg])])[@)]m4_divert_pop(0)])

# b4_error_at(KIND, START, END, FORMAT, [ARG1], [ARG2], ...)
# ----------------------------------------------------------
# Write @KIND(START@,END@,FORMAT@,ARG1@,ARG2@,...@) to diversion 0.
m4_define([b4_error_at],
[m4_divert_push(0)[@]$1[_at(]$2[@,]$3[@,]$4[]m4_if([$#], [4], [],
[m4_foreach([b4_arg],
            m4_dquote(m4_shift(m4_shift(m4_shift(m4_shift($@))))),
            [[@,]b4_arg])])[@)]m4_divert_pop(0)])

# b4_warn(FORMAT, [ARG1], [ARG2], ...)
# ------------------------------------
# Write @warn(FORMAT@,ARG1@,ARG2@,...@) to diversion 0.
#
# As a simple test suite, this:
#
#   m4_define([asdf], [ASDF])
#   m4_define([fsa], [FSA])
#   m4_define([fdsa], [FDSA])
#   b4_warn([[[asdf), asdf]]], [[[fsa), fsa]]], [[[fdsa), fdsa]]])
#   m4_divert(0)
#   b4_warn([[asdf), asdf]], [[fsa), fsa]], [[fdsa), fdsa]])
#   m4_divert(0)
#   b4_warn([asdf), asdf], [fsa), fsa], [fdsa), fdsa])
#   m4_divert(0)
#   b4_warn()
#   m4_divert(0)
#   b4_warn(1)
#   m4_divert(0)
#   b4_warn(1, 2)
#
# Should produce this:
#
#   @warn([asdf), asdf]@,[fsa), fsa]@,[fdsa), fdsa]@)
#   @warn(asdf), asdf@,fsa), fsa@,fdsa), fdsa@)
#   @warn(ASDF), ASDF@,FSA), FSA@,FDSA), FDSA@)
#   @warn(@)
#   @warn(1@)
#   @warn(1@,2@)
m4_define([b4_warn],
[b4_error([[warn]], $@)])

# b4_warn_at(START, END, FORMAT, [ARG1], [ARG2], ...)
# ---------------------------------------------------
# Write @warn(START@,END@,FORMAT@,ARG1@,ARG2@,...@) to diversion 0.
m4_define([b4_warn_at],
[b4_error_at([[warn]], $@)])

# b4_complain(FORMAT, [ARG1], [ARG2], ...)
# ----------------------------------------
# Write @complain(FORMAT@,ARG1@,ARG2@,...@) to diversion 0.
#
# See the test suite for b4_warn above.
m4_define([b4_complain],
[b4_error([[complain]], $@)])

# b4_complain_at(START, END, FORMAT, [ARG1], [ARG2], ...)
# -------------------------------------------------------
# Write @complain(START@,END@,FORMAT@,ARG1@,ARG2@,...@) to diversion 0.
m4_define([b4_complain_at],
[b4_error_at([[complain]], $@)])

# b4_fatal(FORMAT, [ARG1], [ARG2], ...)
# -------------------------------------
# Write @fatal(FORMAT@,ARG1@,ARG2@,...@) to diversion 0.
#
# See the test suite for b4_warn above.
m4_define([b4_fatal],
[b4_error([[fatal]], $@)])

# b4_fatal_at(START, END, FORMAT, [ARG1], [ARG2], ...)
# ----------------------------------------------------
# Write @fatal(START@,END@,FORMAT@,ARG1@,ARG2@,...@) to diversion 0.
m4_define([b4_fatal_at],
[b4_error_at([[fatal]], $@)])


## ---------------- ##
## Default values.  ##
## ---------------- ##

# m4_define_default([b4_lex_param], [])   dnl breaks other skeletons
m4_define_default([b4_pre_prologue], [])
m4_define_default([b4_post_prologue], [])
m4_define_default([b4_epilogue], [])
m4_define_default([b4_parse_param], [])

# The initial column and line.
m4_define_default([b4_location_initial_column], [1])
m4_define_default([b4_location_initial_line],   [1])


## ------------ ##
## Data Types.  ##
## ------------ ##

# b4_ints_in(INT1, INT2, LOW, HIGH)
# ---------------------------------
# Return 1 iff both INT1 and INT2 are in [LOW, HIGH], 0 otherwise.
m4_define([b4_ints_in],
[m4_eval([$3 <= $1 && $1 <= $4 && $3 <= $2 && $2 <= $4])])



## ------------------ ##
## Decoding options.  ##
## ------------------ ##

# b4_flag_if(FLAG, IF-TRUE, IF-FALSE)
# -----------------------------------
# Run IF-TRUE if b4_FLAG_flag is 1, IF-FALSE if FLAG is 0, otherwise fail.
m4_define([b4_flag_if],
[m4_case(b4_$1_flag,
         [0], [$3],
	 [1], [$2],
	 [m4_fatal([invalid $1 value: ]$1)])])


# b4_define_flag_if(FLAG)
# -----------------------
# Define "b4_FLAG_if(IF-TRUE, IF-FALSE)" that depends on the
# value of the Boolean FLAG.
m4_define([b4_define_flag_if],
[_b4_define_flag_if($[1], $[2], [$1])])

# _b4_define_flag_if($1, $2, FLAG)
# --------------------------------
# This macro works around the impossibility to define macros
# inside macros, because issuing `[$1]' is not possible in M4 :(.
# This sucks hard, GNU M4 should really provide M5 like $$1.
m4_define([_b4_define_flag_if],
[m4_if([$1$2], $[1]$[2], [],
       [m4_fatal([$0: Invalid arguments: $@])])dnl
m4_define([b4_$3_if],
          [b4_flag_if([$3], [$1], [$2])])])


# b4_FLAG_if(IF-TRUE, IF-FALSE)
# -----------------------------
# Expand IF-TRUE, if FLAG is true, IF-FALSE otherwise.
b4_define_flag_if([defines])	        # Whether headers are requested.
b4_define_flag_if([error_verbose])	# Whether error are verbose.
b4_define_flag_if([glr])		# Whether a GLR parser is requested.
b4_define_flag_if([locations])	        # Whether locations are tracked.
b4_define_flag_if([nondeterministic])	# Whether conflicts should be handled.
b4_define_flag_if([pull])	        # Whether pull parsing is requested.
b4_define_flag_if([pure])	        # Whether the interface is pure.
b4_define_flag_if([push])	        # Whether push parsing is requested.
b4_define_flag_if([use_push_for_pull])  # Whether push parsing should be used
                                        # in place of pull parsing (where
                                        # available) for the sake of the test
                                        # suite.
b4_define_flag_if([yacc])	        # Whether POSIX Yacc is emulated.


## ------------------------- ##
## Assigning token numbers.  ##
## ------------------------- ##


## ----------- ##
## Synclines.  ##
## ----------- ##

# b4_basename(NAME)
# -----------------
# Similar to POSIX basename; the differences don't matter here.
# Beware that NAME is not evaluated.
m4_define([b4_basename],
[m4_bpatsubst([$1], [^.*/\([^/]+\)/*$], [\1])])


# b4_syncline(LINE, FILE)
# -----------------------
m4_define([b4_syncline],
[b4_flag_if([synclines], [
b4_sync_end([__line__], [b4_basename(m4_quote(__file__))])
b4_sync_start([$1], [$2])])])

m4_define([b4_sync_end], [b4_comment([Line $1 of $2])])
m4_define([b4_sync_start], [b4_comment([Line $1 of $2])])

# b4_user_code(USER-CODE)
# -----------------------
# Emit code from the user, ending it with synclines.
m4_define([b4_user_code],
[$1
b4_syncline([@oline@], [@ofile@])])


# b4_define_user_code(MACRO)
# --------------------------
# From b4_MACRO, build b4_user_MACRO that includes the synclines.
m4_define([b4_define_user_code],
[m4_define([b4_user_$1],
[b4_user_code([b4_$1])])])


# b4_user_actions
# b4_user_initial_action
# b4_user_post_prologue
# b4_user_pre_prologue
# b4_user_stype
# ----------------------
# Macros that issue user code, ending with synclines.
b4_define_user_code([actions])
b4_define_user_code([initial_action])
b4_define_user_code([post_prologue])
b4_define_user_code([pre_prologue])
b4_define_user_code([stype])


# b4_check_user_names(WHAT, USER-LIST, SKELETON-NAMESPACE)
# --------------------------------------------------------
# Warn if any name of type WHAT is used by the user (as recorded in USER-LIST)
# but is not used by the skeleton (as recorded by macros in the namespace
# SKELETON-NAMESPACE).
#
# USER-LIST must expand to a list specifying all grammar occurrences of all
# names of type WHAT.   Each item in the list must be a triplet specifying one
# occurrence: name, start boundary, and end boundary.  Empty string names are
# fine.  An empty list is fine.
#
# For example, to define b4_foo_user_names to be used for USER-LIST with three
# name occurrences and with correct quoting:
#
#   m4_define([b4_foo_user_names],
#             [[[[[[bar]], [[parser.y:1.7]], [[parser.y:1.16]]]],
#               [[[[bar]], [[parser.y:5.7]], [[parser.y:5.16]]]],
#               [[[[baz]], [[parser.y:8.7]], [[parser.y:8.16]]]]]])
#
# The macro SKELETON-NAMESPACE(bar) must be defined iff the name bar of type
# WHAT is used in the skeleton.  Empty string names are fine, but it would be
# ugly for a Bison skeleton to actually use one.
#
# For example, to use b4_foo_skeleton_names for SKELETON-NAMESPACE and define
# that the names bar and baz are used in the skeleton:
#
#   m4_define([b4_foo_skeleton_names(bar)])
#   m4_define([b4_foo_skeleton_names(baz)])
#
# To invoke b4_check_user_names with TYPE foo, with USER-LIST
# b4_foo_user_names, with SKELETON-NAMESPACE b4_foo_skeleton_names, and with
# correct quoting:
#
#   b4_check_user_names([[foo]], [b4_foo_user_names],
#                       [[b4_foo_skeleton_names]])
m4_define([b4_check_user_names],
[m4_foreach([b4_occurrence], $2,
[m4_pushdef([b4_occurrence], b4_occurrence)dnl
m4_pushdef([b4_user_name], m4_car(b4_occurrence))dnl
m4_pushdef([b4_start], m4_car(m4_shift(b4_occurrence)))dnl
m4_pushdef([b4_end], m4_shift(m4_shift(b4_occurrence)))dnl
m4_ifndef($3[(]m4_quote(b4_user_name)[)],
          [b4_warn_at([b4_start], [b4_end],
                      [[%s `%s' is not used]],
                      [$1], [b4_user_name])])[]dnl
m4_popdef([b4_occurrence])dnl
m4_popdef([b4_user_name])dnl
m4_popdef([b4_start])dnl
m4_popdef([b4_end])dnl
])])

# b4_percent_define_get(VARIABLE)
# -------------------------------
# If the %define variable VARIABLE is defined, emit its value.  Also, record
# the skeleton's usage of VARIABLE by defining
# b4_percent_define_skeleton_variables(VARIABLE).
#
# For example:
#
#   b4_percent_define_get([[foo]])
m4_define([b4_percent_define_get],
[m4_define([b4_percent_define_skeleton_variables(]$1[)])dnl
m4_ifdef([b4_percent_define(]$1[)], [m4_indir([b4_percent_define(]$1[)])])])

# b4_percent_define_ifdef(VARIABLE, IF-TRUE, [IF-FALSE])
# ------------------------------------------------------
# If the %define variable VARIABLE is defined, expand IF-TRUE, else expand
# IF-FALSE.  Also, record the skeleton's usage of VARIABLE by defining
# b4_percent_define_skeleton_variables(VARIABLE).
m4_define([b4_percent_define_ifdef],
[m4_ifdef([b4_percent_define(]$1[)],
	  [m4_define([b4_percent_define_skeleton_variables(]$1[)])$2],
	  [$3])])

# b4_percent_define_flag_if(VARIABLE, IF-TRUE, [IF-FALSE])
# --------------------------------------------------------
# If the %define variable VARIABLE is defined to anything but "0" or "false",
# expand IF-TRUE. If it is defined to "0" or "false", expand IF-FALSE.  If
# it is undefined, raise an error (this macro should be preceded by
# b4_percent_define_default).  Also, record the skeleton's usage of VARIABLE by
# defining b4_percent_define_skeleton_variables(VARIABLE).
m4_define([b4_percent_define_flag_if],
[b4_percent_define_ifdef([$1],
			 [m4_case(b4_percent_define_get([$1]),
			          [0], [$3], [false], [$3],
				  [$2])],
		         [m4_fatal([invalid %define variable passed to b4_percent_define_flag_if: ]$1)])])

# b4_percent_define_default(VARIABLE, DEFAULT)
# --------------------------------------------
# If the %define variable VARIABLE is undefined, set its value to DEFAULT.
#
# For example:
#
#   b4_percent_define_default([[foo]], [[default value]])
m4_define([b4_percent_define_default],
[m4_ifndef([b4_percent_define(]$1[)],
           [m4_define([b4_percent_define(]$1[)], [$2])])])

# b4_percent_code_get([QUALIFIER])
# --------------------------------
# If any %code blocks for QUALIFIER are defined, emit them beginning with a
# comment and ending with synclines and a newline.  If QUALIFIER is not
# specified or empty, do this for the unqualified %code blocks.  Also, record
# the skeleton's usage of QUALIFIER (if specified) by defining
# b4_percent_code_skeleton_qualifiers(QUALIFIER).
#
# For example, to emit any unqualified %code blocks followed by any %code
# blocks for the qualifier foo:
#
#   b4_percent_code_get
#   b4_percent_code_get([[foo]])
m4_define([b4_percent_code_get],
[m4_pushdef([b4_macro_name], [[b4_percent_code(]$1[)]])dnl
m4_ifval([$1], [m4_define([b4_percent_code_skeleton_qualifiers(]$1[)])])dnl
m4_ifdef(b4_macro_name,
[b4_comment([m4_if([$#], [0], [[Unqualified %code]],
                   [[%code "]$1["]])[ blocks.]])
b4_user_code([m4_indir(b4_macro_name)])
])dnl
m4_popdef([b4_macro_name])])

# b4_percent_code_ifdef(QUALIFIER, IF-TRUE, [IF-FALSE])
# -----------------------------------------------------
# If any %code blocks for QUALIFIER (or unqualified %code blocks if
# QUALIFIER is empty) are defined, expand IF-TRUE, else expand IF-FALSE.
# Also, record the skeleton's usage of QUALIFIER (if specified) by defining
# b4_percent_code_skeleton_qualifiers(QUALIFIER).
m4_define([b4_percent_code_ifdef],
[m4_ifdef([b4_percent_code(]$1[)],
          [m4_ifval([$1], [m4_define([b4_percent_code_skeleton_qualifiers(]$1[)])])$2],
	  [$3])])


## --------------------------------------------------------- ##
## After processing the skeletons, check that all the user's ##
## %define variables and %code qualifiers were used.         ##
## --------------------------------------------------------- ##

m4_define([b4_check_user_names_wrap],
[m4_ifdef([b4_percent_]$1[_user_]$2[s],
          [b4_check_user_names([[%]$1 $2],
                               [b4_percent_]$1[_user_]$2[s],
                               [[b4_percent_]$1[_skeleton_]$2[s]])])])

m4_wrap([
b4_check_user_names_wrap([[define]], [[variable]])
b4_check_user_names_wrap([[code]], [[qualifier]])
])