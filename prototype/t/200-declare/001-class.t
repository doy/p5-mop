#!/usr/bin/perl

use strict;
use warnings;

use Test::More;

use mop;

BEGIN {
    class Foo {}
}

is( Foo->get_name, 'Foo', '... got the name we expected' );
is_deeply( Foo->get_superclasses, [ $::Object ], '... got the superclasses we expected' );

done_testing;