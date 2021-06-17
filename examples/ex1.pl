#!/usr/bin/env perl

use strict;
use warnings;

use CSS::Struct::Output::Structure;
use Data::Printer;

my $css = CSS::Struct::Output::Structure->new;

# Set structure.
$css->put(['a', '@charset', 'utf-8']);
$css->put(['s', 'selector#id']);
$css->put(['s', 'div div']);
$css->put(['s', '.class']);
$css->put(['d', 'weight', '100px']);
$css->put(['d', 'font-size', '10em']);
$css->put(['e']);

# Get structure.
my $css_struct_ar = $css->flush;

# Dump out.
p $css_struct_ar;

# Output:
# \ [
#     [0] [
#         [0] "a",
#         [1] "@charset",
#         [2] "utf-8"
#     ],
#     [1] [
#         [0] "s",
#         [1] "selector#id"
#     ],
#     [2] [
#         [0] "s",
#         [1] "div div"
#     ],
#     [3] [
#         [0] "s",
#         [1] ".class"
#     ],
#     [4] [
#         [0] "d",
#         [1] "weight",
#         [2] "100px"
#     ],
#     [5] [
#         [0] "d",
#         [1] "font-size",
#         [2] "10em"
#     ],
#     [6] [
#         [0] "e"
#     ]
# ]