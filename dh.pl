#!/usr/bin/env perl
#
# dh.pl

use App::DH;
{
    package DBwithUTF8::DH;
    use Moose;
    use Path::Class;
    extends 'App::DH';

    has '+connection_name' => (
        default => sub { 'dbi:mysql:utf8db', 'utf8db_user', 'utf8db_pass' }
    );
    has '+schema' => (
        default => sub { 'DBwithUTF8::Schema' }
    );
    has '+include' => (
        default => sub { [ dir( 'lib' )->stringify ] }
    );
    has '+script_dir' => (
        default => sub { dir( 'ddl' )->stringify }
    );

    __PACKAGE__->meta->make_immutable;
}
if (grep { /write_ddl/ } @ARGV) {
    unshift @ARGV, "-d", "MySQL";
}
DBwithUTF8::DH->new_with_options->run;
