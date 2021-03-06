use utf8;
package DBwithUTF8::Controller::Root;
use Moose;
use namespace::autoclean;

use strict;
use warnings;
use Encode qw(is_utf8);

use Data::Dumper;

BEGIN { extends 'Catalyst::Controller' }

#
# Sets the actions in this controller to be registered with no prefix
# so they function identically to actions created in MyApp.pm
#
__PACKAGE__->config(namespace => '');

=encoding utf-8

=head1 NAME

DBwithUTF8::Controller::Root - Root Controller for DBwithUTF8

=head1 DESCRIPTION

[enter your description here]

=head1 METHODS

=head2 index

The root page (/)

=cut

sub index :Path :Args(0) {
    my ( $self, $c ) = @_;

    $c->stash( template => "index.html" );

    my $records = $c->model('DB::Record');

    $c->stash( quebec => 'Québec' );

    if (my $new_string = $c->request->params->{ string }) {
        $c->log->debug( "String: " . Dumper($new_string));
        $records->create({ string => $new_string });
        $c->response->redirect( $c->uri_for("/") );
        $c->detach();
    }

    $c->stash( records => [ $records->all ] );

}

=head2 default

Standard 404 error page

=cut

sub default :Path {
    my ( $self, $c ) = @_;
    $c->response->body( 'Page not found' );
    $c->response->status(404);
}

=head2 end

Attempt to render a view, if needed.

=cut

sub end : ActionClass('RenderView') {}

=head1 AUTHOR

Catalyst developer

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

__PACKAGE__->meta->make_immutable;

1;
