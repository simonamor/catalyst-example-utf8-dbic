package DBwithUTF8::Model::DB;

use strict;
use base 'Catalyst::Model::DBIC::Schema';

__PACKAGE__->config(
    schema_class => 'DBwithUTF8::Schema',
    
    connect_info => {
        dsn => 'dbi:mysql:utf8db',
        user => 'utf8db_user',
        password => 'utf8db_pass',
        mysql_enable_utf8 => 1,
    },

#    on_connect_do => [
#        'SET NAMES utf8'
#    ],
);

=head1 NAME

DBwithUTF8::Model::DB - Catalyst DBIC Schema Model

=head1 SYNOPSIS

See L<DBwithUTF8>

=head1 DESCRIPTION

L<Catalyst::Model::DBIC::Schema> Model using schema L<DBwithUTF8::Schema>

=head1 GENERATED BY

Catalyst::Helper::Model::DBIC::Schema - 0.65

=head1 AUTHOR

A clever guy

=head1 LICENSE

This library is free software, you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
