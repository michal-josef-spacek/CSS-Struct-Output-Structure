use strict;
use warnings;

use CSS::Struct::Output::Structure;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
my $obj = CSS::Struct::Output::Structure->new;
$obj->put(
	['a', '@charset', 'utf-8'],
);
my $ret_ar = $obj->flush;
is_deeply(
	$ret_ar,
	[
		['a', '@charset', 'utf-8'],
	],
	'Simple at-rule test (structure).',
);
