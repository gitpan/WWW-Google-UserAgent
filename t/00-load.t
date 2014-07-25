#!perl -T
use 5.006;
use strict;
use warnings FATAL => 'all';
use Test::More;

plan tests => 3;

BEGIN {
    use_ok( 'WWW::Google::UserAgent' ) || print "Bail out!\n";
    use_ok( 'WWW::Google::DataTypes' ) || print "Bail out!\n";
    use_ok( 'WWW::Google::Exception' ) || print "Bail out!\n";
}

diag( "Testing WWW::Google::UserAgent $WWW::Google::UserAgent::VERSION, Perl $], $^X" );
