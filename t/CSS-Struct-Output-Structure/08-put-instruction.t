use strict;
use warnings;

use CSS::Struct::Output::Structure;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
my $obj = CSS::Struct::Output::Structure->new;
$obj->put(
	['i', 'target', 'code'],
);
my $ret_ar = $obj->flush;
is_deeply(
	$ret_ar,
	[
		['i', 'target', 'code'],
	],
	'Simple instruction test (structure).',
);
