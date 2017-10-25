package DBwithUTF8::View::HTML;
use Moose;
use namespace::autoclean;

extends 'Catalyst::View::TT';

__PACKAGE__->config(
    TEMPLATE_EXTENSION => '.html',
    render_die => 1,

    INCLUDE_PATH => [
        DBwithUTF8->path_to( 'templates', 'webapp' ),
    ],
);

=head1 NAME

DBwithUTF8::View::HTML - TT View for DBwithUTF8

=head1 DESCRIPTION

TT View for DBwithUTF8.

=head1 SEE ALSO

L<DBwithUTF8>

=head1 AUTHOR

A clever guy

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
