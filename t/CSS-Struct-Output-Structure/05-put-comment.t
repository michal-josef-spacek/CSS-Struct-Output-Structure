use strict;
use warnings;

use CSS::Struct::Output::Structure;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
my $obj = CSS::Struct::Output::Structure->new;
$obj->put(
	['c', 'comment #1', 'comment #2'],
);
my $ret_ar = $obj->flush;
is_deeply(
	$ret_ar,
	[
		['c', 'comment #1', 'comment #2'],
	],
	'Simple comment test (structure).',
);
