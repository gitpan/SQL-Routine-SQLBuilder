#!perl
use 5.008001; use utf8; use strict; use warnings;

use Test::More;
use version;

plan( 'tests' => 9 );

use_ok( 'SQL::Routine::SQLBuilder' );
is( $SQL::Routine::SQLBuilder::VERSION, qv('0.21.1'), "SQL::Routine::SQLBuilder is the correct version" );

use_ok( 'SQL::Routine::SQLBuilder::L::en' );
is( $SQL::Routine::SQLBuilder::L::en::VERSION, qv('0.2.1'), "SQL::Routine::SQLBuilder::L::en is the correct version" );

use lib 't/lib';

use_ok( 't_SRT_SB_Util' );
can_ok( 't_SRT_SB_Util', 'message' );
can_ok( 't_SRT_SB_Util', 'error_to_string' );

use_ok( 't_SRT_SB_Model' );
can_ok( 't_SRT_SB_Model', 'populate_model' );

1;
