#!perl

use 5.008001; use utf8; use strict; use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
	NAME	=> 'SQL::Routine::SQLBuilder',
	VERSION_FROM => 'lib/SQL/Routine/SQLBuilder.pm', # finds $VERSION
	PREREQ_PM => {
		'Locale::KeyedText' => '1.02',
		'SQL::Routine' => '0.56',
	},
);

1;
