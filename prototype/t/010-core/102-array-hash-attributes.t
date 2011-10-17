#!/usr/bin/perl

use strict;
use warnings;

use Test::More;

use mop;

=pod

=cut

BEGIN {
    class Foo {
        has @array;
        has @array_with_default = (1, 2, 3);

        method array { @array }
        method array_with_default { @array_with_default }

        has %hash;
        has %hash_with_default = (a => 1, b => 2);

        method hash { %hash }
        method hash_with_default { %hash }
    }
}

pass("this compiles");

done_testing;
