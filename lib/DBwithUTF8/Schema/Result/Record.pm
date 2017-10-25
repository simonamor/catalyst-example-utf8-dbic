use utf8;
package DBwithUTF8::Schema::Result::Record;

use strict;
use warnings;

use Moose;
use MooseX::NonMoose;
use MooseX::MarkAsMethods autoclean => 1;
extends 'DBIx::Class::Core';

__PACKAGE__->load_components(qw(Core));
__PACKAGE__->table('records');
__PACKAGE__->add_columns(
    record_id => { data_type => 'integer', extra => { unsigned => 1 }, is_auto_increment => 1 },
    string => { data_type => 'char', size => 255, is_nullable => 1 },
);

__PACKAGE__->set_primary_key('record_id');

__PACKAGE__->meta->make_immutable;

1;
