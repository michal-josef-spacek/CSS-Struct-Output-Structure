use strict;
use warnings;

use CSS::Struct::Output::Structure;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
my $obj = CSS::Struct::Output::Structure->new;
$obj->put(
	['s', '.class'],
	['s', '#id'],
	['s', 'element'],
	['s', 'element.class'],
);
my $ret_ar = $obj->flush;
is_deeply(
	$ret_ar,
	[
		['s', '.class'],
		['s', '#id'],
		['s', 'element'],
		['s', 'element.class'],
	],
	'Simple selector test (structure).',
);
