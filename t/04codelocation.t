#!perl

use Test::More tests => 4;
use Sub::Identify ':all';

sub newton {
    print;
    print;
    print;
    print;
    print;
    print;
    print;
}
*hooke = *newton;
for ( \&newton, \&hooke ) {
    my ($file, $line) = get_code_location($_);
    is( $file, 't/04codelocation.t', 'file' );
    is( $line, 7, 'line' );
}
