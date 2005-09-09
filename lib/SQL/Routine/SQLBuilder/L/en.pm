#!perl
use 5.008001; use utf8; use strict; use warnings;

package SQL::Routine::SQLBuilder::L::en;
use version; our $VERSION = qv('0.2.0');

######################################################################

=cut

######################################################################

my $CSB = 'SQL::Routine::SQLBuilder';

my %text_strings = (
    'SRT_SB_METH_ARG_UNDEF' => 
        $CSB.'.{METH}(): undefined (or missing) {ARGNM} argument',
    'SRT_SB_METH_ARG_NO_ARY' => 
        $CSB.'.{METH}(): invalid {ARGNM} argument; '.
        'it is not a Array ref, but rather is "{ARGVL}"',
    'SRT_SB_METH_ARG_NO_HASH' => 
        $CSB.'.{METH}(): invalid {ARGNM} argument; '.
        'it is not a Hash ref, but rather is "{ARGVL}"',
    'SRT_SB_METH_ARG_NO_NODE' => 
        $CSB.'.{METH}(): invalid {ARGNM} argument; '.
        'it is not a Node object, but rather is "{ARGVL}"',

    'SRT_SB_METH_ARG_WRONG_NODE_TYPE' => 
        $CSB.'.{METH}(): invalid {ARGNM} argument; '.
        'it is not a "{EXPNTYPE}" Node, but rather is a "{ARGNTYPE}" Node',

    'SRT_SB_IDENT_STYLE_ARG_INVAL' => 
        $CSB.'.identifier_style(): invalid NEW_VALUE argument; '.
        'it is not one of "{EXPVLS}", but rather is "{ARGVL}"',
);

######################################################################

sub get_text_by_key {
    my (undef, $msg_key) = @_;
    return $text_strings{$msg_key};
}

######################################################################

1;
__END__

=encoding utf8

=head1 NAME

SQL::Routine::SQLBuilder::L::en - Localization of SQL::Routine::SQLBuilder for English

=head1 VERSION

This document describes SQL::Routine::SQLBuilder::L::en version 0.2.0.

=head1 SYNOPSIS

    use Locale::KeyedText;
    use SQL::Routine::SQLBuilder;

    # do work ...

    my $translator = Locale::KeyedText->new_translator( 
        ['SQL::Routine::SQLBuilder::L::', 'SQL::Routine::L::'], ['en'] );

    # do work ...

    eval {
        # do work with SQL::Routine::SQLBuilder, which may throw an exception ...
    };
    if( my $error_message_object = $@ ) {
        # examine object here if you want and programmatically recover...

        # or otherwise do the next few lines...
        my $error_user_text = $translator->translate_message( $error_message_object );
        # display $error_user_text to user by some appropriate means
    }

    # continue working, which may involve using SQL::Routine::SQLBuilder some more ...

=head1 DESCRIPTION

The SQL::Routine::SQLBuilder::L::en Perl 5 module contains localization data for
SQL::Routine::SQLBuilder.  It is designed to be interpreted by
Locale::KeyedText.  Besides localizing generic error messages that
SQL::Routine::SQLBuilder produces itself, this file also provides a ready-made
set of generic database error strings that can be thrown by any
SQL::Routine::SQLBuilder Engine.

This class is optional and you can still use SQL::Routine::SQLBuilder
effectively without it, especially if you plan to either show users different
error messages than this class defines, or not show them anything because you
are "handling it".

=head1 FUNCTIONS

=head2 get_text_by_key( MSG_KEY )

    my $user_text_template = SQL::Routine::SQLBuilder::L::en->get_text_by_key( 'foo' );

This function takes a Message Key string in MSG_KEY and returns the associated
user text template string, if there is one, or undef if not.

=head1 DEPENDENCIES

This module requires any version of Perl 5.x.y that is at least 5.8.1.

It also requires the Perl module L<version>, which would
conceptually be built-in to Perl, but isn't, so it is on CPAN instead.

This module has no enforced dependencies on L<Locale::KeyedText>, which is on 
CPAN, or on L<SQL::Routine::SQLBuilder>, which is in the current distribution, 
but it is designed to be used in conjunction with them.

=head1 INCOMPATIBILITIES

None reported.

=head1 SEE ALSO

L<perl(1)>, L<Locale::KeyedText>, L<SQL::Routine::SQLBuilder>.

=head1 BUGS AND LIMITATIONS

The structure of this module is trivially simple and has no known bugs. 

However, the locale data that this module contains may be subject to large
changes in the future; you can determine the likeliness of this by examining the
development status and/or BUGS AND LIMITATIONS documentation of the other module
that this one is localizing; there tends to be a high correlation in the rate of 
change between that module and this one.

=head1 AUTHOR

Darren R. Duncan (C<perl@DarrenDuncan.net>)

=head1 LICENCE AND COPYRIGHT

This file is part of the SQL::Routine::SQLBuilder reference implementation of a
SQL:2003 string builder that uses the SQL::Routine database portability library.

SQL::Routine::SQLBuilder is Copyright (c) 2002-2005, Darren R. Duncan.  All
rights reserved.  Address comments, suggestions, and bug reports to
C<perl@DarrenDuncan.net>, or visit L<http://www.DarrenDuncan.net/> for more
information.

SQL::Routine::SQLBuilder is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License (GPL) as published by the
Free Software Foundation (L<http://www.fsf.org/>); either version 2 of the License,
or (at your option) any later version.  You should have received a copy of the
GPL as part of the SQL::Routine::SQLBuilder distribution, in the file named
"GPL"; if not, write to the Free Software Foundation, Inc., 51 Franklin St,
Fifth Floor, Boston, MA  02110-1301, USA.

Linking SQL::Routine::SQLBuilder statically or dynamically with other modules is
making a combined work based on SQL::Routine::SQLBuilder.  Thus, the terms and
conditions of the GPL cover the whole combination.  As a special exception, the
copyright holders of SQL::Routine::SQLBuilder give you permission to link
SQL::Routine::SQLBuilder with independent modules, regardless of the license
terms of these independent modules, and to copy and distribute the resulting
combined work under terms of your choice, provided that every copy of the
combined work is accompanied by a complete copy of the source code of
SQL::Routine::SQLBuilder (the version of SQL::Routine::SQLBuilder used to
produce the combined work), being distributed under the terms of the GPL plus
this exception.  An independent module is a module which is not derived from or
based on SQL::Routine::SQLBuilder, and which is fully useable when not linked to
SQL::Routine::SQLBuilder in any form.

Any versions of SQL::Routine::SQLBuilder that you modify and distribute must
carry prominent notices stating that you changed the files and the date of any
changes, in addition to preserving this original copyright notice and other
credits.  SQL::Routine::SQLBuilder is distributed in the hope that it will be
useful, but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

While it is by no means required, the copyright holders of
SQL::Routine::SQLBuilder would appreciate being informed any time you create a
modified version of SQL::Routine::SQLBuilder that you are willing to distribute,
because that is a practical way of suggesting improvements to the standard
version.

=cut
