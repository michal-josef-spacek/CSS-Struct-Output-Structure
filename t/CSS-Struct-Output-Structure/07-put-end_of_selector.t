use strict;
use warnings;

use CSS::Struct::Output::Structure;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
my $obj = CSS::Struct::Output::Structure->new;
$obj->put(
	['e'],
);
my $ret_ar = $obj->flush;
is_deeply(
	$ret_ar,
	[
		['e'],
	],
	'Simple end of selector test (structure).',
);
