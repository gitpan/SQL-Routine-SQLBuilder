#!perl
use 5.008001; use utf8; use strict; use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
	'NAME' => 'SQL::Routine::SQLBuilder',
	'VERSION_FROM' => 'lib/SQL/Routine/SQLBuilder.pm', # finds $VERSION
	'PREREQ_PM' => {
		'Test::More' => '0.47', # but only for the test suite
		'Locale::KeyedText' => '1.04',
		'SQL::Routine' => '0.62',
	},
);

1;
