#!perl
use 5.008001; use utf8; use strict; use warnings;

use Test::More 0.47;

plan( 'tests' => 9 );

use_ok( 'SQL::Routine::SQLBuilder' );
cmp_ok( $SQL::Routine::SQLBuilder::VERSION, '==', 0.19, "SQL::Routine::SQLBuilder is the correct version" );

use_ok( 'SQL::Routine::SQLBuilder::L::en' );
cmp_ok( $SQL::Routine::SQLBuilder::L::en::VERSION, '==', 0.01, "SQL::Routine::SQLBuilder::L::en is the correct version" );

use lib 't/lib';

use_ok( 't_SRT_SB_Util' );
can_ok( 't_SRT_SB_Util', 'message' );
can_ok( 't_SRT_SB_Util', 'error_to_string' );

use_ok( 't_SRT_SB_Model' );
can_ok( 't_SRT_SB_Model', 'populate_model' );

1;
